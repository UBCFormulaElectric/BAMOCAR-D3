/*****************************************************************************/
/*  LOWLEV.C v3.09                                                          */
/*  Copyright (c) 1995-2003 Texas Instruments Incorporated                   */
/*****************************************************************************/

/*****************************************************************************/
/* Low level I/O routines                                                    */
/*                                                                           */
/* Functions:                                                                */
/*   getnexfildes()    - Allocate next entry in stream table.                */
/*   tabinit()         - Initialize the stream and device tables.            */
/*   finddevice()      - Search the device table for a device name.          */
/*   getdevice()       - Extract the device name and <find> it.              */
/*   add_device()      - Add a device record to the device table.            */
/*   removedevice()    - Remove the specified device record from the device  */
/*                              table.                                       */
/*   open()            - Open file/device and assign file descriptor.        */
/*   read()            - Read data from an open file/device.                 */
/*   write()           - Write to an open file/device.                       */
/*   lseek()           - Perform lseek on open file/device.                  */
/*   close()           - Close an open file/device.                          */
/*   unlink()          - Perform unlink on file/device.                      */
/*   rename()          - Rename file                                         */
/*   ioctl()           - Perform lowlevel device control                     */
/*****************************************************************************/
#include <stdio.h>
#include <string.h>
#include <_lock.h>
#include "file.h"

#if defined( INCL_CIO_SUPPORT )

typedef struct {
   char           name[9];
   unsigned short flags;
   int 	  	  (*OPEN) (const char *path, unsigned flags, int llv_fd);
   int 	  	  (*CLOSE) (int dev_fd);
   int 	  	  (*READ) (int dev_fd, char *buf, unsigned count);
   int 	  	  (*WRITE) (int dev_fd, const char *buf, unsigned count);
   off_t 	  (*LSEEK) (int dev_fd, off_t offset, int origin);
   int 	  	  (*UNLINK) (const char *path);
   int 	  	  (*RENAME) (const char *old_name, const char *new_name);
   int        (*IOCTL) (int dev_fd, int req_code, long arg);     
} _DEVICE;

#if defined( INCL_STD_CIO )
extern _CODE_ACCESS int HOSTopen(const char *path, unsigned flags, int llv_fd),
                        HOSTclose(int dev_fd),
                        HOSTread(int dev_fd, char *buf, unsigned count),
                        HOSTwrite(int dev_fd, const char *buf, unsigned count),
                        HOSTunlink(const char *path),
                        HOSTrename(const char *old_name, const char *new_name);
extern _CODE_ACCESS off_t HOSTlseek(int dev_fd, off_t offset, int origin);
#endif

static _CODE_ACCESS void tabinit(void);
static _CODE_ACCESS _DEVICE *finddevice(const char *devname);
static _CODE_ACCESS _DEVICE *getdevice (const char **path);

#if defined( INCL_STD_CIO )
static _DEVICE  _device[_NDEVICE] = { 
   	   _MSA,
   	   HOSTopen,
   	   HOSTclose,
   	   HOSTread,
   	   HOSTwrite,
   	   HOSTlseek,
   	   HOSTunlink,
   	   HOSTrename,
   	   NULL};     
#else   	   	      	     
// Do not autoinit these functions
static _DEVICE  _device[_NDEVICE];
#endif

#define stdevice (&_device[0]) /* Default device (host) */

static struct stream_info { _DEVICE *dev; int dfd; } 
_stream[_NSTREAM] =  { { stdevice, 0 },  
		       { stdevice, 1 }, 
		       { stdevice, 2 } };

static char *current_devname = NULL;
/*****************************************************************************/
/*  TABINIT() - initialize the stream table and the device table             */
/*****************************************************************************/

static _CODE_ACCESS void tabinit(void)
{
   struct stream_info *st;
   _DEVICE            *dt;

   static _DATA_ACCESS int init = 0;

   _lock();

   if (!init)
   {
  
   	   memset(_device,0,sizeof(_device));
   	   
#if defined( INCL_STD_CIO ) 
   	   _device[0].flags  = _MSA;
   	   _device[0].OPEN   = HOSTopen;
   	   _device[0].CLOSE  = HOSTclose;
   	   _device[0].READ   = HOSTread;
   	   _device[0].WRITE  = HOSTwrite;
   	   _device[0].LSEEK  = HOSTlseek;
   	   _device[0].UNLINK = HOSTunlink;
   	   _device[0].RENAME = HOSTrename;
   	   _device[0].IOCTL  = NULL;       
#endif   	   	      	     
       /*--------------------------------------------------------------------*/
       /* STEP THROUGH THE TABLES SETTING NAME AND DEVICE ENTRIES TO NULL    */
       /* (SKIP PREDEFINED DEVICE AND STREAMS)				     */
       /*--------------------------------------------------------------------*/
       for (st = &_stream[3]; st != &_stream[_NSTREAM]; (st++)->dev = NULL);
       for (dt = &_device[1]; dt != &_device[_NDEVICE]; *(dt++)->name = '\0');
       init = 1;
   }

   _unlock();
}

/*****************************************************************************/
/*  FINDDEVICE() - find the device record that matches devname in the device */
/*                     table                                                 */
/*****************************************************************************/

static _CODE_ACCESS _DEVICE *finddevice(const char *devname)
{
   _DEVICE *dt;

   if (devname[0] == '\0') return NULL;

   /*------------------------------------------------------------------------*/
   /* SEARCH THE STREAM TABLE FOR THE DEVICE NAME - RETURN NULL IF NOT FOUND */
   /*------------------------------------------------------------------------*/
   for (dt = &_device[1]; dt != &_device[_NDEVICE]; ++dt)
       if (!strcmp(dt->name, devname)) return dt;

   return NULL;
}


/*****************************************************************************/
/*  GETDEVICE() - extract the device name and call finddevice                */
/*****************************************************************************/

static _CODE_ACCESS _DEVICE *getdevice (const char **path)
{
   char devname[9];
   char *colon = strchr(*path, ':');
   _DEVICE *dev;

   if (colon != NULL)
   {
       int devnamlen = colon - *path;
       if (devnamlen > 8) devnamlen = 8;

       strncpy(devname, *path, devnamlen);
       devname[devnamlen] = '\0';
       dev = finddevice(devname);

       if (dev) { *path = colon + 1; return dev; }
   }

   return stdevice; /* the "standard" device - host I/O */
}


/*****************************************************************************/
/*  ADDEVICE() - add a device record to the device table                     */
/*****************************************************************************/

#if defined( INCL_STD_CIO )
_CODE_ACCESS
int add_device(char     *name,
               unsigned  flags,
               int     (*dopen)  (const char *path, unsigned flags, int llv_fd),
               int     (*dclose) (int dev_fd),
               int     (*dread)  (int dev_fd, char *buf, unsigned count),
               int     (*dwrite) (int dev_fd, const char *buf, unsigned count),
               off_t   (*dlseek) (int dev_fd, off_t offset, int origin),
               int     (*dunlink)(const char *path),
               int     (*drename)(const char *old_name, const char *new_name))
{
   _DEVICE *dt;

   tabinit();

   _lock();

   /*-------------------------------------------------------------------------*/
   /* SEARCH THE DEVICE TABLE FOR AN EMPTY SLOT, RETURN -1 IF NONE FOUND      */
   /*-------------------------------------------------------------------------*/
   for (dt = &_device[1]; dt != _device+_NDEVICE && dt->name[0] != '\0'; ++dt);
   if (dt == &_device[_NDEVICE]) { _unlock(); return -1; }

   strncpy(dt->name,name,8);
   dt->name[8] = '\0';
   dt->flags   = flags;
   dt->OPEN    = dopen;
   dt->CLOSE   = dclose;
   dt->READ    = dread;
   dt->WRITE   = dwrite;
   dt->LSEEK   = dlseek;
   dt->UNLINK  = dunlink;
   dt->RENAME  = drename;
   dt->IOCTL   = NULL;

   _unlock();

   return 0;
}
#endif

_CODE_ACCESS
int add_iodevice(
    char     *name,			           
    unsigned  flags,
    int      (*dopen)(const char *path, unsigned flags, int llv_fd),
    int      (*dclose)(int dev_fd),
    int      (*dread)(int dev_fd, char *buf, unsigned count),
    int      (*dwrite)(int dev_fd, const char *buf, unsigned count),
    int      (*dioctl)(int dev_fd, int req_code, long arg))
    
{
   _DEVICE *dt;

   tabinit();

   _lock();

   /*-------------------------------------------------------------------------*/
   /* SEARCH THE DEVICE TABLE FOR AN EMPTY SLOT, RETURN -1 IF NONE FOUND      */
   /*-------------------------------------------------------------------------*/
   for (dt = &_device[1]; dt != _device+_NDEVICE && dt->name[0] != '\0'; ++dt);
   if (dt == &_device[_NDEVICE]) { _unlock(); return -1; }

   strncpy(dt->name,name,8);
   dt->name[8] = '\0';
   dt->flags   = flags;
   dt->OPEN    = dopen;
   dt->CLOSE   = dclose;
   dt->READ    = dread;
   dt->WRITE   = dwrite;
   dt->LSEEK   = NULL;
   dt->UNLINK  = NULL;
   dt->RENAME  = NULL;
   dt->IOCTL   = dioctl;
   _unlock();

   return 0;
}

/******************************************************************************/
/*  REMOVEDEVICE() - remove the specified device record from the device table */
/******************************************************************************/

_CODE_ACCESS int remove_device(char *name)
{
   _DEVICE *ptr;

   _lock();

   /*------------------------------------------------------------------------*/
   /* FIND RECORD AND SET NAME TO NULL					     */
   /*------------------------------------------------------------------------*/
   if ( !(ptr = finddevice(name)) ) { _unlock(); return -1; }

   ptr->name[0] = '\0';

   _unlock();

   return 0;
}


/*****************************************************************************/
/*  OPEN() - open file/device specified by path and assign file descriptor   */
/*****************************************************************************/

_CODE_ACCESS int open(const char *path, unsigned flags, int mode)
{
   struct stream_info *ptr;
   _DEVICE    	      *dev;
   int        	      dev_fd = -1;
   int        	      llv_fd;

   /*-------------------------------------------------------------------------*/
   /* INITIALIZE STREAM AND DEVICE TABLE FIRST TIME AROUND                    */
   /*-------------------------------------------------------------------------*/
   tabinit();

   _lock();

   /*-------------------------------------------------------------------------*/
   /* GET THE NEXT AVAILABLE FILE DESCRIPTOR - RETURN -1 IF NONE AVAILABLE    */
   /*-------------------------------------------------------------------------*/
   for (ptr = &_stream[3]; ptr != &_stream[_NSTREAM] && ptr->dev; ++ptr);
   if (ptr == &_stream[_NSTREAM]) { _unlock(); return -1; }
   llv_fd = ptr - &_stream[0];

   /*------------------------------------------------------------------------*/
   /* GET DEVICE AND PEFORM OPEN - SET STREAM TABLE ENTRY AND FLAGS          */
   /*------------------------------------------------------------------------*/
   dev    = getdevice(&path);
   current_devname = dev->name;
   
   if( dev->OPEN != NULL )
   	  dev_fd = (dev->flags & _BUSY) ? -1 : (*(dev->OPEN))(path,flags,llv_fd);

   if (dev_fd < 0) { _unlock(); return dev_fd; }
   
   _stream[llv_fd].dev = dev;
   _stream[llv_fd].dfd = dev_fd;
   if ( !(dev->flags & _MSA) ) dev->flags |= _BUSY;

   _unlock();

   return llv_fd;
}

/*****************************************************************************/
/*  READ() - read data from an open device/file                              */
/*****************************************************************************/

_CODE_ACCESS int read(int llv_fd, char *bufptr, unsigned cnt)
{
   int result = -1;

   if (llv_fd < 0 || llv_fd >= _NSTREAM) return -1;

   _lock();

   if (_stream[llv_fd].dev == NULL) { _unlock(); return -1; }

   /*------------------------------------------------------------------------*/
   /* CALL FUNCTION FROM DEVICE TABLE TO PERFORM READ FOR THIS DEVICE/FILE   */
   /*------------------------------------------------------------------------*/
   if( _stream[llv_fd].dev->READ != NULL )
       result = (*(_stream[llv_fd].dev->READ)) (_stream[llv_fd].dfd,bufptr,cnt);

   _unlock();

   return result;
}

/*****************************************************************************/
/*  WRITE() - write data to an open device/file                              */
/*****************************************************************************/

_CODE_ACCESS int write(int llv_fd, const char *bufptr, unsigned cnt)
{
   int result = -1;

   if (llv_fd < 0 || llv_fd >= _NSTREAM) return -1;

   _lock();

   if (_stream[llv_fd].dev == NULL) { _unlock(); return -1; }

   /*------------------------------------------------------------------------*/
   /* CALL FUNCTION FROM DEVICE TABLE TO PERFORM WRITE FOR THIS DEVICE/FILE  */
   /*------------------------------------------------------------------------*/
   if( _stream[llv_fd].dev->WRITE != NULL )
       result = (*(_stream[llv_fd].dev->WRITE)) (_stream[llv_fd].dfd,bufptr,cnt);

   _unlock();

   return result;
}

/*****************************************************************************/
/*  LSEEK() - lseek on an open device/file                                   */
/*****************************************************************************/

_CODE_ACCESS off_t lseek(int llv_fd, off_t offset, int origin)
{
   off_t result = -1;

   if (llv_fd < 0 || llv_fd >= _NSTREAM) return -1;

   _lock();

   if (_stream[llv_fd].dev == NULL) { _unlock(); return -1; }

   /*------------------------------------------------------------------------*/
   /* CALL FUNCTION FROM DEVICE TABLE TO PERFORM LSEEK FOR THIS DEVICE/FILE  */
   /*------------------------------------------------------------------------*/
   if( _stream[llv_fd].dev->LSEEK != NULL )
       result = (*(_stream[llv_fd].dev->LSEEK)) (_stream[llv_fd].dfd,offset,origin);

   _unlock();

   return result;
}

/*****************************************************************************/
/*  CLOSE() - close an open device/file                                      */
/*****************************************************************************/

_CODE_ACCESS int close(int llv_fd)
{
   int result = -1;

   if (llv_fd < 0 || llv_fd >= _NSTREAM) return -1;

   _lock();

   if (_stream[llv_fd].dev == NULL) { _unlock(); return -1; }

   /*------------------------------------------------------------------------*/
   /* CALL FUNCTION FROM DEVICE TABLE TO PERFORM CLOSE FOR THIS DEVICE/FILE  */
   /* CLEAR STREAM TABLE ENTRY AND DEVICE FLAGS                              */
   /*------------------------------------------------------------------------*/
   if( _stream[llv_fd].dev->CLOSE != NULL )
   {
	   if ( (result = (*(_stream[llv_fd].dev->CLOSE))(_stream[llv_fd].dfd)) != -1 )
	   {
	      _stream[llv_fd].dev->flags &= ~_BUSY;
	      _stream[llv_fd].dev = NULL;
	   }
	}
   _unlock();

   return result;
}

/*****************************************************************************/
/*  UNLINK() - unlink an open device/file                                    */
/*****************************************************************************/

_CODE_ACCESS int unlink(const char *path)
{
   _DEVICE *dev;
   int      result = -1;

   _lock();

   dev = getdevice(&path);

   /*------------------------------------------------------------------------*/
   /* CALL FUNCTION FROM DEVICE TABLE TO PERFORM UNLINK FOR THIS DEVICE/FILE */
   /*------------------------------------------------------------------------*/
   if( dev->UNLINK != NULL )
       result = (*(dev->UNLINK)) (path);

   _unlock();

   return result;
}

/*****************************************************************************/
/*  RENAME() - rename a device/file                                          */
/*****************************************************************************/

_CODE_ACCESS int rename(const char *old_name, const char *new_name)
{
   _DEVICE *old_dev, *new_dev;
   int result = -1;

   _lock();

   old_dev = getdevice(&old_name);
   new_dev = getdevice(&new_name);

   /*------------------------------------------------------------------------*/
   /* IF THE DEVICES ARE NOT THE SAME, RENAME WOULD REQUIRE A FILE COPY.     */
   /*------------------------------------------------------------------------*/
   if (old_dev != new_dev) { _unlock(); return -1; }

   /*------------------------------------------------------------------------*/
   /* CALL FUNCTION FROM DEVICE TABLE TO PERFORM RENAME FOR THIS DEVICE/FILE */
   /*------------------------------------------------------------------------*/
   if( old_dev->RENAME != NULL )
       result = (*(old_dev->RENAME)) (old_name, new_name);

   _unlock();
   
   return result;
}

/*****************************************************************************/
/*  IOCEL() - write data to an open device/file                              */
/*****************************************************************************/

_CODE_ACCESS int ioctl (int llv_fd, int req_code, long arg)
{
   int result = -1;

   if (llv_fd < 0 || llv_fd >= _NSTREAM) return -1;

   _lock();

   if (_stream[llv_fd].dev == NULL) { _unlock(); return -1; }

   /*------------------------------------------------------------------------*/
   /* CALL FUNCTION FROM DEVICE TABLE TO PERFORM WRITE FOR THIS DEVICE/FILE  */
   /*------------------------------------------------------------------------*/
   if( _stream[llv_fd].dev->IOCTL != NULL )
       result = (*(_stream[llv_fd].dev->IOCTL)) (_stream[llv_fd].dfd,req_code, arg);

   _unlock();

   return result;
}

#endif // end of #if defined( INCL_CIO_SUPPORT )
