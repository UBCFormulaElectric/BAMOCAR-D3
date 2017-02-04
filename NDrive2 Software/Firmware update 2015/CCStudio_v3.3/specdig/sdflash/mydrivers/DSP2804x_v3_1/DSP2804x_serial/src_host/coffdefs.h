/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src_host/coffdefs.h                $
* $Revision:: 4                                                              $
* $Date:: 10/29/03 11:34a                                                    $
* $Author:: Tonyc                                                            $
*
* DESCRIPTION:
*    Generic coff reader.
*
* USAGE/LIMITATIONS:
*
* NOTES:
*   
* (C) Copyright 1997 by Spectrum Digital Incorporated
* All rights reserved
*
*H***************************************************************************/
/*------------------------------------------------------------------------*/
/*   STORAGE CLASSES                                                      */
/*------------------------------------------------------------------------*/
#define  TI_C_NULL          0
#define  TI_C_AUTO          1     /* AUTOMATIC VARIABLE                      */
#define  TI_C_EXT           2     /* EXTERNAL SYMBOL                         */
#define  TI_C_STAT          3     /* STATIC                                  */
#define  TI_C_REG           4     /* REGISTER VARIABLE                       */
#define  TI_C_EXTREF        5     /* EXTERNAL DEFINITION                     */
#define  TI_C_LABEL         6     /* LABEL                                   */
#define  TI_C_ULABEL        7     /* UNDEFINED LABEL                         */
#define  TI_C_MOS           8     /* MEMBER OF STRUCTURE                     */
#define  TI_C_ARG           9     /* FUNCTION ARGUMENT                       */
#define  TI_C_STRTAG        10    /* STRUCTURE TAG                           */
#define  TI_C_MOU           11    /* MEMBER OF UNION                         */
#define  TI_C_UNTAG         12    /* UNION TAG                               */
#define  TI_C_TPDEF         13    /* TYPE DEFINITION                         */
#define  TI_C_USTATIC       14    /* UNDEFINED STATIC                        */
#define  TI_C_ENTAG         15    /* ENUMERATION TAG                         */
#define  TI_C_MOE           16    /* MEMBER OF ENUMERATION                   */
#define  TI_C_REGPARM       17    /* REGISTER PARAMETER                      */
#define  TI_C_FIELD         18    /* BIT FIELD                               */
#define  TI_C_UEXT          19    /* TENTATIVE EXTERNAL DEFINITION           */
#define  TI_C_STATLAB       20    /* STATIC LOAD-TIME LABEL                  */
#define  TI_C_EXTLAB        21    /* EXTERNAL LOAD-TIME LABEL                */
#define  TI_C_VREG          22    /* VIRTUAL REGISTER VARIABLE               */
#define  TI_C_SYSTEM        23    /* SYSTEM-WIDE SYMBOL                      */
#define  TI_C_STATREG       24    /* STATIC REGISTER VARIABLE                */
#define  TI_C_EXTREG        25    /* EXTERNAL REGISTER VARIABLE              */
#define  TI_C_EXTREFREG     26    /* EXTERNAL REGISTER VARIABLE REFERENCE    */
#define  TI_C_VARARG        27    /* LAST DECLARED PARAMETER OF VARARG FN    */
#define  TI_C_EXTDEF        28    /* C_EXT DEFINED IN DIFFERENT FILE         */
#define  TI_C_USTATREG      29    /* UNDEFINED STATIC REGISTER VARIABLE      */

#define  TI_C_BLOCK         100   /* ".BB" OR ".EB"                          */
#define  TI_C_FCN           101   /* ".BF" OR ".EF"                          */
#define  TI_C_EOS           102   /* END OF STRUCTURE                        */
#define  TI_C_FILE          103   /* FILE NAME                               */
#define  TI_C_LINE          104   /* DUMMY SCLASS FOR LINE NUMBER ENTRY      */
#define  TI_C_ALIAS         105   /* DUPLICATE TAG                           */
#define  TI_C_PREF          106   /* DUMMY SCLASS FOR REF PRAGMA TABLE ENTRY */

#define  TI_C_GRPTAG        107   /* TAG FOR GROUPED GLOBAL VARIABLES        */
#define  TI_C_SMOG          108   /* STATIC MEMBER OF GROUP                  */
#define  TI_C_EMOG          109   /* EXTERN MEMBER OF GROUP                  */
#define  TI_C_EOG           110   /* END OF GROUP                            */

/*------------------------------------------------------------------------*/
/* STORAGE CLASS QUALIFIERS                                               */
/*------------------------------------------------------------------------*/
#define  TI_CQ_NEAR         0x1
#define  TI_CQ_FAR          0x2
#define  TI_CQ_INLINE       0x4
#define  TI_CQ_SUPPRESS     0x8
#define  TI_CQ_CONTROL      0x10
#define  TI_CQ_INTERRUPT    0x20
#define  TI_CQ_TRAP         0x40
#define  TI_CQ_GREGISTER    0x80
#define  TI_CQ_PORT         0x100
#define  TI_CQ_SYSTEM       0x200
#define  TI_CQ_SYSTEMPP     0x400
#define  TI_CQ_REENTRANT    0x800

/*------------------------------------------------------------------------*/
/* STORAGE CLASS MACROS                                                   */
/*------------------------------------------------------------------------*/
#define TI_ISLOCAL(c) ((c) == TI_C_AUTO   || (c) == TI_C_REG     || (c) == TI_C_VREG)
#define TI_ISPARM(c)  ((c) == TI_C_ARG    || (c) == TI_C_REGPARM || (c) == TI_C_VARARG)
#define TI_ISAUTO(c)  ((c) == TI_C_AUTO   || (c) == TI_C_ARG     || (c) == TI_C_VARARG)
#define TI_ISREG(c)   ((c) == TI_C_REG    || (c) == TI_C_REGPARM || (c) == TI_C_VREG || \
                    (c) == TI_C_EXTREG || (c) == TI_C_STATREG || (c) == TI_C_EXTREFREG)
#define TI_ISTAG(c)   ((c) == TI_C_STRTAG || (c) == TI_C_UNTAG   || (c) == TI_C_ENTAG)
#define TI_ISGROUP(c) ((c) == TI_C_GRPTAG)

#define TI_ISMOS(c)   ((c) == TI_C_MOS    || (c) == TI_C_MOU     || \
		    (c) == TI_C_MOE    || (c) == TI_C_FIELD)

#define TI_ISXDEF(c)  ((c) == TI_C_STAT   || (c) == TI_C_STATREG || \
                    (c) == TI_C_EXT    || (c) == TI_C_EXTDEF  || (c) == TI_C_EXTREG)

#define TI_ISEXT(c)   ((c) == TI_C_USTATIC || (c) == TI_C_STAT   || (c) == TI_C_STATREG  ||\
                    (c) == TI_C_EXTREF  || (c) == TI_C_UEXT   || (c) == TI_C_EXTREFREG||\
                    (c) == TI_C_EXT     || (c) == TI_C_EXTDEF || (c) == TI_C_EXTREG   ||\
		    (c) == TI_C_EXTLAB  || (c) == TI_C_SYSTEM)

#define TI_ISGLOB(c)  ((c) == TI_C_EXTREF  || (c) == TI_C_UEXT   || (c) == TI_C_EXTREFREG||\
                    (c) == TI_C_EXT     || (c) == TI_C_EXTDEF || (c) == TI_C_EXTREG   ||\
		    (c) == TI_C_EXTLAB  || (c) == TI_C_SYSTEM)

#define TI_ISNEAR(cq)        (((cq) & TI_CQ_NEAR) != 0)
#define TI_ISFAR(cq)         (((cq) & TI_CQ_FAR) != 0)
#define TI_ISCONTROL(cq)     (((cq) & TI_CQ_CONTROL) != 0)
#define TI_ISPORT(cq)        (((cq) & TI_CQ_PORT)    != 0)
#define TI_ISINTERRUPT(cq)   (((cq) & TI_CQ_INTERRUPT) != 0)
#define TI_ISREENTRANT(cq)   (((cq) & TI_CQ_REENTRANT) != 0)
#define TI_ISTRAP(cq)        (((cq) & TI_CQ_TRAP) != 0)
#define TI_ISINT_OR_TRAP(cq) (((cq) & (TI_CQ_TRAP | TI_CQ_INTERRUPT)) != 0)



/*------------------------------------------------------------------------*/
/* BASIC TYPES - PACKED INTO THE LOWER 4 BITS OF THE TYPE FIELD           */
/*------------------------------------------------------------------------*/
#define  TI_T_NULL     0x80       /* UNDEFINED OR ERROR TYPE (NO TYPE INFO)  */
#define  TI_T_VOID     0          /* VOID TYPE                               */
#define  TI_T_SCHAR    1          /* CHARACTER (EXPLICITLY "signed")         */
#define  TI_T_CHAR     2          /* CHARACTER (IMPLICITLY SIGNED)           */
#define  TI_T_SHORT    3          /* SHORT INTEGER                           */
#define  TI_T_INT      4          /* INTEGER                                 */
#define  TI_T_LONG     5          /* LONG INTEGER                            */
#define  TI_T_FLOAT    6          /* SINGLE PRECISION FLOATING POINT         */
#define  TI_T_DOUBLE   7          /* DOUBLE PRECISION FLOATING POINT         */
#define  TI_T_STRUCT   8          /* STRUCTURE                               */
#define  TI_T_UNION    9          /* UNION                                   */
#define  TI_T_ENUM     10         /* ENUMERATION                             */
#define  TI_T_LDOUBLE  11         /* LONG DOUBLE FLOATING POINT              */
#define  TI_T_UCHAR    12         /* UNSIGNED CHARACTER                      */
#define  TI_T_USHORT   13         /* UNSIGNED SHORT                          */
#define  TI_T_UINT     14         /* UNSIGNED INTEGER                        */
#define  TI_T_ULONG    15         /* UNSIGNED LONG                           */

/*------------------------------------------------------------------------*/
/* SIGNED AND UNSIGNED ARE NOT ACTUALLY STORED IN THE TYPE FIELD BUT      */
/* USED TO MODIFY THE BYTPE ACCORDINGLY.                                  */
/*------------------------------------------------------------------------*/
#define  TI_T_SIGNED   16         /* BECOMES CHAR, SHORT, INT, OR LONG       */
#define  TI_T_UNSIGNED 17         /* BECOMES UCHAR, USHORT, UINT, OR ULONG   */

/*------------------------------------------------------------------------*/
/* DERIVED TYPES: 2 BITS EACH                                             */
/*------------------------------------------------------------------------*/
#define  TI_DT_NON     0x0        /* NO DERIVED TYPE                         */
#define  TI_DT_PTR     0x1        /* POINTER                                 */
#define  TI_DT_FCN     0x2        /* FUNCTION                                */
#define  TI_DT_ARY     0x3        /* ARRAY                                   */

/*------------------------------------------------------------------------*/
/* TYPE QUALIFIERS - USES SAME ENCODING AS TYPE FIELDS                    */
/*------------------------------------------------------------------------*/
#define  TI_Q_CONST    0x1
#define  TI_Q_VOLATILE 0x2


/*------------------------------------------------------------------------*/
/* TYPE FIELD MASKS AND SIZES                                             */
/*------------------------------------------------------------------------*/
#define  TI_N_BTMASK     0xF      /* MASK FOR BASIC TYPE                     */
#define  TI_N_TMASK      0x30     /* MASK FOR FIRST DERIVED TYPE             */    
#define  TI_N_DTMAX      12       /* MAXIMUM DERIVED TYPES                   */
#define  TI_N_BTSHFT     4        /* SHIFT AMOUNT (WIDTH) FOR BASIC TYPE     */
#define  TI_N_TSHIFT     2        /* SHIFT AMOUNT (WIDTH) FOR DERIVED TYPES  */

/*------------------------------------------------------------------------*/
/* TYPE MANIPULATION MACROS                                               */
/*                                                                        */
/*    BTYPE(t)    - Return basic type from t                              */
/*    DTYPE(t)    - Return all derived types from t                       */
/*    DTYPE1(t)   - Return 1st derived type from t                        */
/*    TQUAL(t,q)  - Return qualification of type                          */
/*    UNQUAL(t,q) - Return unqualified version of type                    */
/*                                                                        */
/*    MKTYPE()    - Build a type from basic and several derived types     */
/*    DERIVE(d,t) - Build a type from basic and one derived type          */
/*    INCREF(t)   - Convert 't' into pointer to 't'                       */
/*    DECREF(t)   - Remove first derviation from t                        */
/*                                                                        */
/*    ISINT(t)    - TRUE if t is an integral type                         */
/*    ISSGN(t)    - TRUE if t is a signed type                            */
/*    ISUNS(t)    - TRUE if t is an unsigned type                         */
/*    ISFLT(t)    - TRUE if t is a floating point type                    */
/*    ISDBL(t)    - TRUE if t is a double or long double type             */
/*    ISPTR(t)    - TRUE if t is a pointer                                */
/*    ISFCN(t)    - TRUE if t is a function                               */
/*    ISARY(t)    - TRUE if t is an array                                 */
/*    ISSTR(t)    - TRUE if t is a struct, union, or enum type            */
/*    ISAGG(t)    - TRUE if t is an array, struct, or union               */
/*                                                                        */
/*    ITOU(t)     - convert signed type to unsigned equivalent            */
/*    UTOI(t)     - convert unsigned type to signed equivalent            */
/*    NOSIGN(t)   - convert signed or unsigned type to "plain" equivalent */
/*------------------------------------------------------------------------*/
#define  TI_BTYPE(t)    ((int)((t) & TI_N_BTMASK))  
#define  TI_DTYPE(t)    ((t) & ~TI_N_BTMASK)
#define  TI_DTYPE1(t)   (((t) & TI_N_TMASK) >> TI_N_BTSHFT)

#define  TI_TQUAL(t,q)  ((int)(TI_DTYPE(t) ? TI_DTYPE1(q) : TI_BTYPE(q)))
#define  TI_UNQUAL(t,q) (TI_ISPTR(t) ? ((q) & ~TI_N_TMASK) : ((q) & ~TI_N_BTMASK))

#define  TI_MKTYPE(basic, d1,d2,d3,d4,d5,d6) \
                     ((basic) | ((d1) <<  4) | ((d2) <<  6) | ((d3) <<  8) |\
                                ((d4) << 10) | ((d5) << 12) | ((d6) << 14))
#define  TI_DERIVE(d,t) ((TI_DTYPE(t) << TI_N_TSHIFT) | ((d)    << TI_N_BTSHFT) | TI_BTYPE(t))
#define  TI_INCREF(t)   ((TI_DTYPE(t) << TI_N_TSHIFT) | (TI_DT_PTR << TI_N_BTSHFT) | TI_BTYPE(t))
#define  TI_DECREF(t)   (TI_DTYPE((t) >> TI_N_TSHIFT) | TI_BTYPE(t))

#define  TI_ISSGN(t)    (((t) >= TI_T_SCHAR && (t) <= TI_T_LONG)  || (t) == TI_T_ENUM)
#define  TI_ISUNS(t)    ((t) >= TI_T_UCHAR  && (t) <= TI_T_ULONG)
#define  TI_ISINT(t)    (((t) >= TI_T_SCHAR && (t) <= TI_T_LONG)  || (t) == TI_T_ENUM || \
                      ((t) >= TI_T_UCHAR  && (t) <= TI_T_ULONG))
#define  TI_ISFLT(t)    ((t) == TI_T_FLOAT || (t) == TI_T_DOUBLE || (t) == TI_T_LDOUBLE)
#define	 TI_ISDBL(t)    ((t) == TI_T_DOUBLE || (t) == TI_T_LDOUBLE)
#define  TI_ISPTR(t)    (((t) & TI_N_TMASK) == (TI_DT_PTR << TI_N_BTSHFT)) 
#define  TI_ISFCN(t)    (((t) & TI_N_TMASK) == (TI_DT_FCN << TI_N_BTSHFT))
#define  TI_ISARY(t)    (((t) & TI_N_TMASK) == (TI_DT_ARY << TI_N_BTSHFT))
#define  TI_ISSTR(t)    ((t) == TI_T_STRUCT || (t) == TI_T_UNION || (t) == TI_T_ENUM)
#define  TI_ISAGG(t)    (TI_ISARY(t) || (t) == TI_T_STRUCT || (t) == TI_T_UNION)
#define  TI_ISCHAR(t)   ((t) == TI_T_CHAR || (t) == TI_T_SCHAR || (t) == TI_T_UCHAR)
#define  TI_ISSHORT(t)  ((t) == TI_T_SHORT || (t) == TI_T_USHORT)
#define  TI_ISLONG(t)   ((t) == TI_T_LONG || (t) == TI_T_ULONG)

#define  TI_ITOU(t)     ((t) + (TI_T_UCHAR - ((t) == TI_T_SCHAR ? TI_T_SCHAR : TI_T_CHAR)))
#define  TI_UTOI(t)     ((t) - (TI_T_UCHAR - TI_T_CHAR))
#define  TI_NOSIGN(t)   (TI_ISUNS(t) ? TI_UTOI(t) : (t) == TI_T_SCHAR ? TI_T_CHAR : (t))

/*------------------------------------------------------------------------*/
/* ILLEGAL TYPES USED TO MARK SPECIAL OBJECTS.                            */
/*                                                                        */
/* TI_T_VENEER  - DENOTES A VENEER OF A FUNCTION.                            */
/*------------------------------------------------------------------------*/
#define TI_T_VENEER     (MKTYPE(TI_T_VOID, TI_DT_FCN, TI_DT_FCN, 0, 0, 0, 0))
#define TI_ISVENEER(t)  ((t) == TI_T_VENEER)
