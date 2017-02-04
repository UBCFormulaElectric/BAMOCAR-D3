#include "..\include\LF2812_Regs.h"
#include "..\include\version.h"
/*----------------------------
	2006
	~~~~
150	May 17	- Pre-release
200	May 31	- Amalgamated ACI and PMSM code
201	Mar 23	- Prototype ATS-2
202	Dec 20	- Release ATS-2
	2007
	~~~~
203	Jun. 14	- Prototype TMS2-2
204	Sep. 11	- Release RAS
205	Sep. 25	- CAN Status MBox (event & timer)
206	Sep. ..	- RS232 / CAN statistics
	Oct. 04	- Speed_I_Reduce
207 Oct. 19 - BL-Tacho integrated
208 Nov. 06 - AC-open loop integrated
210 Dez. 12 - TMS2-3, hardware related
	2008
	~~~~
210 Jan. 24 - in between version, diverse Probleme bei Erstauslieferung von
			  TMS2-3 in KW 13, Auslieferung an Boschert
210 Mar. 07 - updated for beldrive, no encoder trace, trigger di/dt
212 Mar. 10 - decimal incperrev, (Pabst, Harmonic), dacout auf Basis regid into 0xdc
214 Apr. 04 - can request, update for Boschert
			  weitere Auslieferungen an Boschert und andere mit dieser Version
215 Apr. 08 - intern Test for Perm, Bewertung kp Stromregler neu, vorher 2%, neu 20 %
216 Apr. 11 - update for Perm, Heinzmann, Faktor Vollaussteuerung angepasst
              am 15.04 bei Heinzmann installiert
217 Apr. 11 - Effekte Speedfilter und Stromregler untersuchen, Einstellungvarianten
217	Apr. 25 - Test Version Perm, Heinzmann, Aussteuergrenze PWM_MIN von 50 -> 32,
			  Bewertung Paras I-Regler wie 215, 216, SpeedActual filter neu
			  Auslieferung an Heinzmann, wurde von Ihnen nicht zum Einsatz gebracht
218 Apr. 28 - PWM_MIN wieder 50, Überprüfung mit Resolver Motor SAD 6000 rpm,
			  Filter wegen scope-Messungen umgangen,
	Apr. 30 - bei Funktion speed ramp 0 driftet Motor weg, keine Lageregelung, ATS
	Mai  06 - drift Fehler behoben, wegen Kompatibität zu ausgeliferten 214 Versionen
			  mehrstufigen switch compat in LF2812_Regs.h eingeführt,
			  betrifft Bewertung ikp in core.c, speed-Filter in core.c,
			  bit FOC (0x0800 in 0x5a) default aktiviert,
			  REGID_DEFINE_DAC in 0xdc, dort z.B. 0x30 eingeben gibt Drehzahl aus,
			  wird in NDrive nicht im Parametersatz abgespeichert,
			  Auslieferung an ATS
219 Mai 09 -  Analoges T-IGBT Signal, Auswertung zwecks Reduzierung Imax bis Icon,
			  Verlagerung aller Stromreduzierungsfunktionen nach main.c, SysTimerPoll(),
			  KernOptions bit 10, 0x0400 in ID 0x5a,		1 = Hall2 invertiert, Octacom
			  Bei Hochlauf Firmware-Version in 7-Segment Anzeige, 3-stellig
			  Auslieferung vorgesehen an Octacom
220 Mai 20 -  Weiterarbeit an FOC Richtung tuning
			  FUN_SPECIAL in REGID 0x85, s. CheckSemaphore und ControlMode,
	Mai 27 -  Bei Funktion Lese x Ndrive wurden Encodercounter genullt,
			  Fehler behoben in kern_update() case 0:
			  Entlade "R" für Integrator Speedregler mit 0.1 Promille
			  init_recoded_tab() in main.c vor Lesen Eeprom,
			  nur relevant mit KernStatus2.bit.sat==1 für neue Komm-Org.,
			  Firmware-Version in 7-Seg. 4-stellig mit leading zero blanking,
			  para_tab erweitert um Liste Funktionsaufrufe
220 Jun 05 -  Lieferversion für Test aufs Netzwerk
221 Jun 06 -  Weiterarbeit tuning+phasing
220 Jun 13 -  Zusammenfassung der Stromreduzierungsfunktionen,
			  nacheinander geschaltet und Aktivierung durch Wirksamkeit
			  der zugeordneten Parameter
			  1. Reduzierung als f(Speed), 	Wert I_RedSpd_Beg in REGID 0x3c
			  	 aktiv if(abs(SpeedActualdisp) > I_RedSpd_Beg) (I_RedSpd_Beg < 32767)
			  2. Reduzierung als f(T-IGBT), Wert I_RedTmp_Beg in REGID 0x58
			  	 							Wert I_RedTmp_End in REGID 0x4c
			  	 aktiv 	if(T_igbt > I_RedTmp_Beg)
			  3. Reduzierung als f(T-Motor),Wert MotorTemp_Degrade in REGID 0xA2
				 aktiv if((MotorTemp_Degrade>0) && (T_motor>MotorTemp_Degrade))
			  KernOptions bit 15 vorgesehen Umschaltung I2t / It
220	Jun 20 -  Stromreduzierungen überarbeitet, Check_I_err entschärft,
			  Alarm-bits neu geordnet, wie neue Beschreibung, aufs Netzwerk
221 Jun 23 -  BL-Tacho ok, SinCos Geber im Zuge Sensorik Vereinheitlichung überarbeiten,
			  Stromvorzeichen und Phasenfolge,
222 Aug 20 -  SC, BL, IN, neu,
			  Phsaenfolge Hall-Signale mit KernOptions bit 9, 0x0200 in ID 0x5a,
			  0 = EMOD IN, 1 = EMOD BL,
223 Aug 28 -  SC ohne Encoderspur überarbeitet,
			  BL Hall-Auswertung überarbeitet, Zwischenstep 30°,
			  Anpassung I-Kp als f(Iqerr), Kp*0.25 bei Iqerr=0, Kp*1 bei Iqerr>0.3
			  Auslösen Sonderfunktionen nur bei nicht freigegebenem Regler,
			  Schreiben REGID 0x85 mit Wert wie unten,
			  Anzeige in 7-seg display, Starten Wert + 0 folgt, Ende Wert + 9 folgt,
			  Phasing rotating	:	4, innerhalb 10 s freigeben, cw-Drehung mit Nennstrom
			  Drehzahl zu phasing von "Pos reference, Speed from"
			  DC-Bestromung		:	5, dito, kont. Veränderung Winkel möglich
			  Tachoabgleich		:	7, Abbruch bei Freigabe oder Hallwechsel
			  Werte Tacho Abgleich werden in benutzte, aber nicht RW REGIDS gespeichert
			  phasing für BL fertig, neue interne Kommu-Struktur aktiviert (Test + Eeprom)
224 Sep 05 -  Drehzahlistwert Polarität mit KernOptions bit 2, 0x0004 in ID 0x5a invertierbar.
225 Sep 24 -  wenn Funktion Stromreduzierung als f(T-IGBT) aktiv (s. FW 220),
			  dann Reduzierung über Zeit ausblenden.
			  T_igbt nur über pointer-Funktion, Adresse 0x900b
226 Sep 29 -  bei Berechnung elektrischen Winkel (MPOS_elec), Anzahl GEBER_pole mit dabei,
			  Funktion phasing auf Resolver erweitert.
227 Oct 16 -  Geber EQN 1125 an WCM-Motor, Encoderkanäle auf SinCos-inputs verdrahtet,
			  Amplituden Überwachung nur in 227 aktiv
226 Oct 20 -  DC-Servo, Polzahl zwangsweise 2, Gebersysteme erweitert, siehe Toms Liste,
			  Zugriff nur mit manual Write in 0xA4,
			  2 Phasen aktiv nach Offsetwinkel, 0° = M2-M3, 120° = M3-M1, -120° = M1-M2,
			  T_igbt nur über pointer-Funktion, Adresse 0x9013
              Kommutierung mit 6poliger Resolver, Drehzahl Istwert noch falsch
	Oct 30 -  Phasing mit Motor SC, RS, IN, BL bestätigt,
	          Genauigkeit bei IN durch Auswertung mehrere Übergänge verbessert
	Nov 07 -  Stromreduzierungsfunktionen nochmals überarbeitet,
			  parallel geschaltet und Aktivierung durch Wirksamkeit
			  der zugeordneten Parameter, Minimum wird weiter verarbeitet,
			  Umbenennung wegen Übereinstimmung mit NDrive Oberfläche,
			  zugeordnete flags in KernStatus2								flags
			  1. Reduzierung als f(Speed), 	Wert I_rd_N in REGID 0x3c
			  	 aktiv	if((I_rd_N > 0) && (abs(SpeedActualdisp) > I_rd_N)) => IrdN
			  2. Reduzierung als f(T-IGBT), Wert I_rd_TD in REGID 0x58
			  	 							Wert I_rd_TE in REGID 0x4c
			  	 aktiv	if((I_rd_TD > 0) && (I_rd_TD  < I_rd_TE)			=> IrdTI
			  	 		if(T_igbt > I_rd_TD)								=> IrdTIR
			  3. Reduzierung als f(T-Motor),Wert I_rd_TM in REGID 0xA2
				 aktiv	if((I_rd_TM > 0) && (T_motor > I_rd_TM))			=> IrdTM
			  Minimum wird verarbeitet und in It-Algorithmus verarbeitet,
			  siehe Diagram vom 07.11.08,
			  Temperaturen und Ergebnis in freie MotorPosx_S Variablen,
			  MotorPos1_S	0x49	Tmotor
			  MotorPos2_S	0x4a	Tigbt
			  MotorPos3_S	0x4b	Tair
			  I_u'o'voltage	0xEB	VdcBus
			  MotorPos3_T   0x48	aktuelle Stromgrenze, CurrentAllowed_inuse
227 Nov 26    Test Feldschwächung
	2009
	~~~~
227 Jan 08	  Sensorik Resolver Offsetwinkel fix addiert, damit nach Neuordnung Phasen
			  Kompatibilitaet zu vorhandenen Parametersätzen besteht (EMOD -60°)
	Jan 09    Parameter (teilweise) für FU in Kommukation und Eeprom übernommen,
	          diese sind in NDrive noch nicht enthalten, mit manual entry oder Skript beschreiben,
			  REGID 0x0a (umin, boost bei 0 Hz) 						z.B. 40 = 4%
			  REGID 0x0b (fmin, Mindestfrequenz, unterhalb DC)			z.B. 20 = 2.0 Hz
			  REGID 0x0c (ueck, Prozent von DC-Bus bei feck)			z.B. 1000 = 100 %
			  REGID 0x0d (feck, Frequenz bei der ueck erreicht wird)    z.B  870 = 870.0 Hz
			  REGID 0xf1 (brake-delay, Zeitdauer DC-Bremse)				z.B. 250 = 250 ms
			  Umrechnung Drehzahl in Hz über Polzahl, nmax bestimmt fmax,
	          Überführung FU-Komponenten in logic.c, in ntcalc.c nur noch VF-Berechnung,
	 Jan 13   enable mit Sollwert-Freigabe verknüpft, ein Eingang als speed ramp 0 mit active low,
	          REGID 0x5f für extra gefilterten Stromistwert, simple running through filter div by 80,
	          I_ist -> 10 ms Zeitkonstante -> I_ist_filt
	 Jan 15   Operanden in Logik-Menue, z.B. Pos actual, wirklich 32 bit,
228  Jan 16   Lieferversion, Anwendung FU und Auswertung Pos actual
229  Jan 19   verschiedene Umrechnungsroutinen für Ausgabe auf DAC
	 Jan 21   in FU Funktion Analog2 als Abschwächer für Spannung, Format Ain2 = Ilimit,
	  		  mit 1000 Hz, Trafo, 5kV, Ozon-Röhre,
	 Jan 22	  weiter mit tuning
	 Jan 27   I_ist_filt -> Ifilt_16, mit Vorzeichen
230  Jan 29   für Seilwinde und "altes" IN1<->IN2 Problem in dieser Version mit
			  Compilerswitch und Sonderversion Vertauschung bewirkt, für Standard ist
			  diese Versionsnummer weiterhin frei, da Hardwarebasis unterschiedlich
230  Feb 02   vor Auslieferung Seilwinde Überwachung Motortemperatur wie in Standard,
230  Feb 16	  Standard, Überwachung VdcBus bei DS48, Lierversion FU-BonVec
232	 Mar 03   Umschaltung seriell RS232 auf 9600 Baud, Ankopplung Steuerung mit 9600,
			  REGID 0x5a, 0x8000, bit 15,
			  nach Power-On und Anzeige Firmware-Version z.B. 232 wird zusätzlich die
			  eingestellte Baudrate angezeigt, "bd0" = 115 kBd, "bd1" = 9.6 kBd,
			  volle Funktionalität wie gehabt bereits nach 100 ms unabhängig von Anzeige,
			  wird erster Kommunikationsversuch mit falscher Baudrate durchgeführt,
			  ist Einrasten der Kommunikation bei richtiger Baudrate gewährleistet,
			  2 Sekunden Pause ohne Aktivität RxData erforderlich,
233 Mar 05    It-Algorithmus nicht auf 100% bezogen, sondern auf eingestellte
			  Icon, Imax Werte,
	Mar 09    Behebung Vorzeichen-Fehler in Can-Modul bei 16->32 bit auf Basis 233,
			  Testversion aufs Netz, vorgesehen als neue Liefer-Version,
			  ausserdem in REGID 0xf6 Power= abs(Ifilt_16*Temp_Debug),
			  Skalierung auf Watt extern, ca. 8000 bis 16000 = Nennleistung,
			  Funktion Nlimit in Ain1 korrigiert,
	Mar 12	  AnalogIn1,2 mit scale und switch new32,
	Mar 24	  Varianten-Handling Endstufen-Typen, PowerID analog und ParaID Eeprom,
			  default-Werte in Drive Firmware,
			  Ballast Aktivierung von Prozessor,
	Mar 30	  Messung VdcBus und Normierung Vd, Vq, dann gesamtes Vout-checking,
			  Merger FW 233 ( Ifilt, Ilim, It, Baudrate, Can, Nlimit, Nclip, AnalogIn)
			  mit FW 237 (pwm-Frequenz bis 20 kHz, oversampling, Laufzeitoptimierung),
	Apr 07    auf Basis obigem Merger (noch nicht vollständig getestet) Schlupfausgleich
			  in Modus FU implementiert, wegen Benutzung bereits vorhandener Routinen
			  aus Bereich tuning, müssen jetzt auch
			  REGID_UF_POWF			0xe		z.B. 78	=  (0.78) und
			  REGID_MOTOR_NOM_F		0x5		z.B. 500 = (50.0 Hz)
			  mit manuell entry definiert werden,
			  MOTOR_rpm_max muss dazu passen, ebenso MOTOR_pole, z.B.
			  MOTOR_rpm_max = 1380, MOTOR_pole = 4, REGID_UF_POWF = 78,
	Apr 17	  Merger weitgehend fertig, Testversion auf Netz, auch FW 251 für new32,
			  neue Menge für new32,
	Apr 28	  ErrorBitMap und Status 32 bit, als FW 255 aufs Netz für NDrive 216
	Apr 29    Positionierung ok, Laufzeiten optimal
	Mai 12	  REGID 0x19 vorläufig für Umschalten PWM-Frequenz,
			  default 	8 kHz,	24,	20,		16,		12,		8,		6		4
			  Wert		0		1	2		3		4		5		6		7
			  online Umschalten PWM-Frequenz bis incl. 20 kHz,
			  Anzeige nach Reset erweitert um "CA",	"0": EC-Servo	"2": FU-Servo
			  (Control Algorithm)					"1": FU			"3": DC-Servo
257 Mai 20    Mit Ndrive223 4 Rampen ok, Ireduce-functions in checking,
234 Mai 28    Lieferversion als FU für S&H,
			  REGID 0x5a, bit 0x0800 nicht mehr FOC, da jetzt immer FOC,
			  stattdessen für enable OpenLoop_compensation,
236 Jun 02	  noch Erfassung Sinus, Cosinus korrigiert, Testversion Hydac
236 Jun 09    Verbesserung phasing, Adaption SC-Signale mit SBL-Motor,
236 Jun 16    Adaption SC-Signale mit Mittelwertbildung, Errechnen if REGID 0xa4 bit11 noenc,
			  Anwenden bei Servo if REGID , 0x5a bit11 = 1, (vormals FOC, jetzt OL_comp),
			  Testversion Giselis,
237 Jun 22    Sicherheitsvorhang(-matte) Fensterfunktion auf Analogeingang. In LOGIC_OUTx (opn),
			  low nibble manuell auf 0xf setzen, Vergleichswert mit Fenster z.B. var1 +/- var1/4,
			  z.B. bei vorhandener Verdrahtung mit Versorgung +24 V an Matte und An1+,
			  AnalogIn1 = 2000, var1 = 2000, Bereich ok von 1500 bis 2500,
237 Jun 24    SpeedRegler miit anti-windup wie neue Stromregler, scopes dazu archiviert,
257 Jun 24    dito wie 237 für NDrive 223 neue Oberflaeche
238 Jun 26    Testversion RAS, Sicherheitsmatte, TJ_special wieder für Resolver,
			  field-weakening und OL_comp ausgeblendet,(Problem Ref&LimitPlus und AnalogIn
238 Jun 30	  Referenzieren beide Richtungen wieder ok, Filterung Ain1,2 und Ref150 mit
			  gleichen Zeitkonstanten, bessere Brummunterdrückung,
			  Sicherheitsmatte auch mit 214 und Offset kompensiert Ainx, Funktion abs<,
238	Jul 07    Filter für gefilterten Stromwert bei Schlupfkompensation auf eine elektrische
			  Polteilung bei Nenndrehzahl Motor, nach unten länger bis zu Faktor 20,
			  Lieferversion S&H, DLR
239 Jul 14    DC-Bestromung unabhängig umin, REGID 0x8 0.1%,
239 Jul 16    Analog als Cmd korrigiert, Lieferversion Kamm
239 Jul 17    anti-wind up PID-Regler verbessert
239 Jul 22    FU power-miss and restart on power-back
259 Jul 23    as 239, Testversion auf n:\
240 Jul 23    Lieferversion DC-Servo mit Resolver
258 Jul 23    as 259, Totzeiten pwm*2
241 Jul 28    Temperaturen, VdcBus geteilt 2, d.h. 0 bis 32767
			  Ui-Begrenzung in Stromregler nicht mit _IQsat,
242 Jul 29    Version bei Hydac
243 Jul 31	  Test bei Kamm, Stronbegrenzung nicht effektiv, restart Probleme
243 Aug 06    anti-wind up in reg3 + reg4 no change of sign for Ui
			  deadtime *2 if REGID , 0x5a bit14 = 1, 0x4000
259 Aug 06    dito for Ndrive 2.xx
244 Aug 24    reset_error bei Übergang enable_state von ES_OFF nach ES_CHARGE_1MS,
			  hpres einheitlich für einen Zyklus von 0.5 ms high,
			  reset_error nach 60 ms (Offset Messung fertig) wegen Unterschiede
			  power-up diverse Endstufen und Controller,
			  Lieferversion Kompakt-Pumpen Bamobil, macht RUN statt ES_INIT !,
245 Aug 26    Aussteuergrenze, Heinzmann, im stationaeren Betriebspunkt wird die
			  regenerative Stromgrenze auf Stromgrenze*Ilimdig gesetzt,
			  Aktivierung mit 0x0800 in 0x5a, ebenso Sinus-Cosinus Adaption,
			  nach reset_error nach 60 ms ES_INIT forced,
	Sep 02	  einmaliges Vorbesetzen scope-pointer, speicherbar, abhängig 0xdc
			  Inhalt REGID 			0xdc	*ptr1			*ptr2			temp_debug
			  REGID_MOTOR_OPTIONS	0xa4	&Sinus			&Cosinus		Tacho
			  REGID_MOTOR_TEMP_ERR. 0xa3	&Sinus			&Cosinus		Ref150a
			  REGID_AIN1			0xd5	&Ref150			&AnalogIn1_F	Dir150
			  REGID_AIN2			0xd6	&Ref150			&AnalogIn2_F	Dir151
			  REGID_T_MOTOR)		0x49	&T_motor		&VdcBus			Ref150a
			  REGID_T_IGBT)			0x4a	&T_igbt			&T_air			T_motor
			  REGID_SPEED_ERRSUMMAX	0x3b	&Ui_16			&Up_16			SpeedReg.trace
			  REGID_I_ERRSUMMAX		0x2b	&IqUi_16		&IqUp_16		pid4_Iq.trace
			  REGID_VOUT			0x8a	&Vkor_16		&Ipeak_cnt		Vout_16
			  REGID_DEVICE_DCBUS_M.	0xa5	&Vkor_16		&enable_sate	Vout_16
			  REGID_STATUS_MASK		0x52	&Iqref_16		&tune_state
			  REGID_STATUS			0x40	&ControlMode	&enable_state	Current_mode
			  REGID_INCR_DELTA		0x41	&ControlMode	&enable_state	semaphore_cnt
			  REGID_LOGIC_HZ		0xab	&InfoTimer1_diff&LOGIC_hz		timer_delta
			  REGID_MOTOR_STATOR_R	0xbc	&Vq_16			&IxR_comp		timer_delta
			  REGID_DEVICE_AUTO_ID	0x67	&Debug2			&Debug3			Ref150a
			  REGID_LOGIC_I_UESP	0xeb	&Vtemp			&VdcBus_m		ballast_duration

			  else							&SpeedActualfilt&I_ist_filt		Vout_16

245 Sep 03	  Lieferversion Heinzmann
246 Sep 04	  Funktion Bremse ok mit (!= 1) und (= 0),
247 Sep 10    Analog2 als Cmd Fehler behoben,
347 Sep 10	  dito NDrive 2.xx
247 Sep 15	  state-machine CurrentMode überarbeitet betreffend CHARGE und 50_50,
347 Sep 15	  dito NDrive 2.xx
247 Sep 21	  I-limit von AnalogIn2 inclusive Offset + scale
347 Sep 21	  dito NDrive 2.xx
348 Sep 24    motion function electric-brake, Motorbremse,
			  Offset ins minus und Nclip+ als Faktor bei Gaspedal Minimum,
			  Eingang manuell zB. In1 0xc0 auf 0x17, electric brake, Faktor Nclip-
			  Test Fraeger,
248 Sep 29	  Vollaussteuerung wieder gewährleistet (neu.c), leakage function pid_reg4.c,
			  DS470 Fa. Test so ausgeliefert,
249 Sep 30	  CAN-COBID 29bit für BMS von Tom implementiert,
350 Sep 30	  mit CAN 29 bit und NDrive 2.xx, Fraeger update
249 Okt 05	  DC-Armature mit IxR-Kompensation,
			  Bewertung EMK mit REGID 0xa6, REGID_MOTOR_GEBER_INCPERREV
			  Bewertung IxR mit REGID 0xbc, REGID_MOTOR_STATOR_R
249 Okt 13	  BL-Maschine, Tacho-Bewertung auch REGID_MOTOR_GEBER_INCPERREV,
			  Lieferversion für Maschinen- und Anlagenbau Siegfried Meyer ..,
247 Okt 26	  timing-Problem mit GO und Neu-Start behoben,
			  wegen NDrive und Versionsnummern für Haupt eine nicht im Umlauf
			  befindliche Versionsnummer reaktiviert,
251 Okt 27	  Laufzeitsymmetrierung, LogicOut -> LogicOut1,2
			  BL ADC-Acquisition untersucht, Speedfilter wie bei digital, Bereich 1:1000,
252 Nov 30	  Lieferversion Liebherr mit cyber motor, 16 kHz pwm,
352 Nov 30	  dito für NDrive2.31
253 Nov 30	  16/32 bit switch-Menge umdefiniert, AIn1,2 nur 16 bit, zusätzlich
			  AIn1,2 kalkuliert inkl. Offset und Skalierung, REGIDs 0xF6, 0xF7,
254 Dez 03	  Calibierzyklus liess sich nicht mehr aktivieren, ab 245
			  Reihenfolge in logic.c korrigiert.
354 Dez 03	  dito für NDrive 2.xx
255 Dez 08	  Laufzeitoptimierung SC_noenc atan-function, Compilerswitch debug diagnosis,
			  CURRENT_PWM_50_50 eliminiert, richtiges ES_CHARGE,
256 Dez 17	  in Vorbereitung auf CAN-Open mit uniformen PDOs pro CAN-Adresse, wird für alle CAN-Open
			  Anwender mit flag 0x01xx in regid 0xdc die Funktion expand 16 to 32 bit enabled,
			  mit manual entry Lese 0xdc, Wert verodern 0x0100, Schreiben neuer Wert in 0xdc,
			  speichern in Eeprom mit Schreibe 0,
356 Dez 17	dito für NDrive 2.xx
257 Dez 18	feedforward Komponente in Iq_Regler basierend auf D-Anteil(Iq_ref)*Tim(PI-Regler),
2010	2010	2010
	~~~~
357 Jan 07	dito für Ndrive 2.xx
258 Jan 29	Ballast-Schaltung von TMS2-3c, Zwischenkreismessung,
			Fallunterscheidung IN-OUT mittels PwrId1,2, REGID_DEVICE_AUTO_ID	0x67
357 Feb 02	wegen leichtem Übersehen der Einstellung, feed-forward erst mal wieder stillgelegt,
			für Bamocar PWM_min auch *2, wenn Totzeiten*2,
			bei Unterdrückung Fehler 5, POWERVOLTAGE, Begrenzung Idq-Out abhängig VdcBus,
			Aufruf Check_ReGen_Bleeder() wieder aus Interrupt, 1/DZR = 250 us,
			Messung VdcBus mit HP7520 Bereich 2,5 bis 5,0 Volt default,
			mit value 0x7e in low byte REGID 0x67 (Type), auf 0 bis 5 änderbar
258 Feb 04	Lieferung an Boschert wegen Ansteuerung Bremse
259 Feb 08	Reaktion auf  Undervoltage UV ohne delay, BTB und UV ohne Freigabe wie bisher,
			bei neuem enable wird maximal 1 sec. auf !UV gewartet, dann Fehler mit !BTB,
			bei neuem enable und !UV sofort weiter wie gehabt ( 1ms in state WAIT_POWER),
359 Feb 08	dito NDrive 2.xx
360 Feb 09	bei Aufschalten auf drehenden Motor Stromanstieg und ggf. Fehlerabschaltung,
			Zeiten für Charge und 50:50 verkleinert, Regler greift schneller
361 Feb 12	Fehler Quittierung auch bei Fehlerspeicher auf Endstufe bei erster Flanke
			Reglerfreigabe (Bamocar, Digi-5a)
362 Mar 16	wie 363 mit neuer DS403, ausserdem Max-Einschaltzeit 100ms * Faktor(extern)
			PWM-Frequenzen mit doppeltem Interrupt ausgeblendet, nicht mehr lauffähig,
363 Mar 03	CAN: aktivierung Osci Befehle, SC andere Strichzahlen als 2048,
	  		sc2_rot= UserMotorOptions.bit.sc2_inv; war vorher fix=1, only SC-Geber,
			Toleranzbereiche PwrId Mitte +/- 0x500 auf 0x680 erweitert,
			Spannung nach OP und Referenzen sehr stabil,
			Streuung durch ADC selber und durch Temperatur TMS,
			bei badparas (!no magic), set_defaults() eingeführt, Meldung wird nicht
			von auto-cancel-error überschrieben,
			363 bis hier in 362 enthalten, weiteres nicht mehr
			Mit Bewertung von Ref150a bei PwrId können Toleranzen wieder enger sein,
365 Mar 22	Bei Einschalten pwm Unterscheidung zwischen boots-trap und autarker
			Versorgung der high-side Treiber. Bei autark kein gemeinsames Einschalten
			der unteren 3 Zweige.
			Bei double-Interrupt Aufruf der adc-Sequenz korrigiert.
			Track-Liste *ptr1, *ptr2 TempDebug erweitert, siehe FW245 oben,
364 Mar 23	Quittierung Powervoltage mit BTB (ohne error) korrigiert. Alzmetall im Einsatz.
264 Mar 23	dito NDrive 1xx
365 Mar 23	Abstand zu Aussteuergrenze testweise verdoppelt bei Bamocar,
365 Mar 25	Rekuperation betr. Gaspedal und digitalem Input auf alle Kombinationen
			für Ain1 von +Cmd, -Cmd, scale +, scale - erweitert,
			Messbereich VdcBus default 0 % 5 Volt, Bereich 2.5 % 5 erfordert IDok,
			Schaltschwellen Ballast aus DC_BUS max berechnet, REGID 0xA5,high
			Vdcfault = 0xA5 high,		Abschaltschwelle Software
			Bal_On  = Vdcfault - 6.25%,
			Bal_Off = Bal_On   - 12.5%,
366 Mar 26	Vorzeichen von Vfilt_16 war verschlampt worden, wird bei DC-ARM-VIR aber
			benötigt, wiederbelebt, bei DC ohne Sensorik und Tempsensor beachten, das
			REGID 0xa2, I_RD_TM auf 0x7fff gesetzt werden muss,
367 Mar 30	Begrenzung Vd<->Vq nahe/in Spannungsgrenze neu gestaltet,
			e-brake Vorzeichen neu, erst abs(SpeedActual), danach definiertes Vorzeichen,
			Effekt trat erst bei anderen Reibungs/Trägheitsmoment-Verhältnissen auf,
358 Mar 31	CAN-open Testversion
369 Apr 19	CANopen mit Node-ID 1, (statt 127)
370 Mai 03	CheckSemaphore wegen schnellerer Sollwerübernahme wieder aus Interrupt, 250 us
270 Mai 04	dito NDrive 1xx
371 Mai 05	Arbeitsversion, Tpeak stillstand fix 1s, car-version
374 Jun 18	comp.-switch compat eliminiert, comp.-switch canopen eingeführt, Reg2812_co
373 Jun 28	PowerID bei DS205 nicht stabil, komplett eliminieren und auf Regid 0x67 setzen,
			kann manuell oder per script beschrieben werden, geschützt vor Schreiben,
			mit dem Wert aus unterstem byte in Liste für Hardware-Attribute,
375 Jun 29	Vorzeichen car-brake (recuperation) mit SpeedActual verknüpft
374 Jul 01	Track-Liste mit Status-Map, Warn-Err-Map erweitert, bei Ausgangsfunktion
			und aus Para-Liste.ntyp== BP (bit-pattern), dann Verknüpfung OFF(=OR), ON(=AND) mit op2,
			z.B, Status-Map, ON, Var4, Var4 = 0x1000, = cal, bit 12 per & auskodiert,
377 Jul 12	Arbeitsversion, Drive attributes aus Soft_ID,
			cur_mod-Modul von TI eingebaut, Sensorik nur ROT Kommutierung ok,
376 Jul 28	Sensorik nur ROT SpeedActual brauchbar, für TU-Berlin so aufs Netz,
			Drehzahlberechnung aus Absolutspuren SC mit GeberPole korrigiert,
			REGID_WORK 0xf7, WorkOut, als Integral REGID_POWER 0xf6, PowerOut,
377 Jul 29	Funktion Feldregler in REGID 0x5a, mit bit26 0x04000000, Type = DC,
377 Aug 25	ACIM mit FOC, Motor dreht geregelt
			weiter mit tuning
378 Sep 10	letzten gültiges Hall-Signal beibehalten, wenn ungültig, TU-Berlin, Einzelstück, kommt zurück
378 Sep 23	Boschert wegen CAN-Kopplung und Lageregelung (war unruhig, speed-common),
			ausserdem obiges Hall-handling beibehalten inklusive Fehler nach 2000 Zyklen,
379 Sep 24	Ain12Cutoff geht nicht mehr, behoben,
380 Sep 29	Für F/U-Anwendung ohne Begrenzung im generatorischem Betrieb, DS8020,
381 Sep 30	OV-Abschaltung per Software aktiviert, Schwelle = DC-Bus max, 0xa5H,
			VdcBus_filt generiert, Abfrage !RFE zweimal erforderlich,
381 Okt 13	für Feldregler shut-down bei Wegnahme RUN mit RCW-Lim, max. 1500 ms,
382 Okt 25	Änderungen krumme Geberzahlen bei ACIM, Spannungsrampe ustp_iq gegen null abgesichert
383 Nov 12	Handrad Logik by Tom
383 Nov 19	speedclip default resetted,
383 Dez 02	Überstrom unter 2 Hz für x Sekunden, size-dependant, bei Bamocar 5 s
			Umkopieren KernOptions mit Maske size-dependant, application-specific, size_defaults()
384 Dez 07	bei Feldregler während Beschleunigung Fixwert für Strom aus Nclip+
385 Dez 09	Statik-Funktion für mechanisch gekoppelte Antriebe, Test in Fahrzeug Siemens UT,
			REGID 0xcd, Bereich 0 bis 16384, maximal 50 % Drehzahl subtrahieren,
386 Dez 21	Abschaltverhalten in torque-modus, logic_go->go schneller,
			Untersuchung bit autark in KernOptions,
2011	2011	2011
	~~~~
			obige 386 für Scheibenläufer Prototyp eingesetzt
387 Jan 13	weiter mit tuning magn_rot
377 Jan 31	CAN-open, baud-rate 500,250 umschaltbar,
387 Feb 02	für Drehzahlregler wieder SpeedActual32 einführen
	Feb 04	Test mit Totzeit*2, bit27, 0x0800 0000 in REGID 0x5a
	Feb 10	Ilimit über Ain2, negativen Input als absolut bearbeiten,
	Mar 14	IPEAK_CNS setzt im modus torque-speed_limited nicht CurrentAllowed_con
			als Stromgrenze,
			Momentenrampe rekuperativ RCCW-Acc, motorisch RCCW-Dec,
388 Mar 31	Abschalten mit CoastStop On in PWM_reset_isr unterschieden,
			DZR_select bei 20 + 24 kHz korrigiert
	Apr 06	Umrechnungen _iq in int16 nicht in I_Reg, sondern I_components,
	Apr 08	Übergabe Speed an cm1.Wr, _IQ(1.0) = Synchrondrehzahl bei Fnom,
389 Apr 18	in modus torque-speed-begrenzt, im cutoff-Breich Sollwert Drehzahl null,
	Apr 21	SPEED_rpm_max_int darf bis 200% MOTOR_rpm_max sein
	Apr 26	bei Begrenzung Iout und torque-modus Unterscheidung asyn
			Lieferversion Lorey + Kaufel
390 Apr 29	TorqueRampe überarbeitet, Test im Fahrzeug bei uns,
391 Mai 04	SpeedActual32 auch bei Tacho und Rot, update Kaufel
392 Mai 11	TorqueTempomat_ramped bipolar, Test im Fahrzeug bei uns,
393 Mai 18	bei PMSM ohne Absolutspur einmaliges DC-phasing nach erster Freigabe,
394 Mai 25	CAN-open mit Compiler-switch can_switch in can.h,
			Anwendung in can.c, interrupt.c, main.c,
			project-file \port1step\port04step.can, Lieferversion SMS-Siemag,
395 Mai	27	kontinuierliche Kompensation der Sinus- Cosinus-Signale bei feedback ABS_SC,
			Umschaltung Original/Kompensation mittels bit ehemals UserMotorOptions.bit.sc1_noenc,
			umbenannt in UserMotorOptions.bit.sc1_comp,
			bit OL_comp wirkt weiterhin auf Begrenzung regen-torque, aber nur mit ABS_SC
396 Jun 28	SPEED_rpm_max_int,0xce= SPEED_rpm_max,0xc8, keine Verknüpfung mehr mit MOTOR_rpm_max,
			Feldschwächung nach 1/omega-Modell für asyn,
397 Jun 29	Weiterarbeit tuning mit NDrive
398 Jul 05	DC-Regler I2_ist=0 vor clarke, Mess-Jitter reduzieren
399 Jul 06	abs-Operator auf Drehzahlistwert bei Feldschwächung erforderlich
	Jul 07	Endpunkt Drehzahl für Idmin unabhängig Nlim, Vred dafür benutzen
400 Jul 12	Maske Sonderfunktionen bisher nur bei tuning, jetzt auch bei allen anderen,
	Jul 18	digitale Drehmomentvorgabe wiederbelebt,
401 Jul 27	Feldschwächung auf Basis Voltage-Regler asynchron, Test Fräger,
402 Aug 22	Prüfung ABS_SC, auto-Abgleich überarbeitet,
			sq(cmd) Analog-Format mit Vorzeichen, OV-Meldung mit ANAUESP verriegelt,
	Aug 31	Momentenvorgabe überarbeitet, s. Filter_I_ref(),
	Sep 05	BrakeCar auch bei DigitalTorque,
	Sep 06	Fehlerquittierung korrigiert, wie <FW 400
	Sep 07	switch new32 erweitert, Motor_Lsd, -_Lsq, -_Lm, -_Rs, -_Rr, -_Tr, 32 bit
	Sep 09	AnalogIn1, -2 Funktion 4 bis 20 mA uns 1 V bis 9 V,
	Sep 13	It_Monitor eigene REGID 0x61 wegen scope
	Sep 16	para_typ.c, wegen Datei-Austausch und -Auswertung NDrive
	Sep 21	MotorPole maximal von 64 auf 96, ebenfalls in NDrive MinMax.txt
	Sep 22	Weiterarbeit an motor-tuning
	Okt 04	Filter für Anzeigewerte klassisch PT1, track-Liste mit zero-capture und fpga-reg,
	Okt 06	T_igbt Auswertung gerätespezifisch, Warnung- und Error-Schwelle,
403 Okt 06	Testversion pre-trigger für Alex
404 Okt 07	Einbau aller ISLE Komponenten, 11.10.11 Test in Ilmenau erfolgreich
405 Okt 12	einige Anpassungen wegen Kompatibilität zu anderen Unitek Anwendungen
406 Okt 13	Anpassungen für Parametrierung und asynchron
	Okt 14	Begrenzungen Voltage-Regler aus Parametern, Lsigma aus Parametern,
			Bewertung Lsigma in uH,
406	Okt 18	mit Kuenle-Motor prinzipiell ok, zum Test an Fräger
407 Okt 24	Arbeitsversion,
408 Nov 09	Rampen in CAN-open integriert, SDO- und PDO-access, CTI
407 Nov 17	Testversion Kaufel, SpeedReg.UiMin= 0, vorbesetzen SpeedReg.Ui bei Umschalten Para-bank,
409 Nov 18	calc_kern_update auch bei updaten REGID_MOTOR_NOM_F
			LogicUpdate() für Polarität nach Reset vor DoLogicReadPort, Klammern in DoLogicReadPort,
			Umschalten para-banks überarbeitet,
410 Nov 29	Umschalten para-banks nochmals überarbeitet,
411 Dez 02	Fehler SpeedActual32 in Zusammenhang mit ISLE-Filter behoben,
411 Dez 05	weitere mit PT1-Filter
			VdcBus		->	VdcBus_filt
			T_motor_m	->	T_motor
			T_igbt_m	->	T_igbt
411 Dez 08	Not-ramp-down, dann fatal bei CAN-Timeout, Temp-Fehlern
	Dez 12	andere Sensoriken Drehzahlistwert auch mit PT1,
	Dez 13	AnaIn1,-2 mit Filter default 2 ms, später über Oberfläche
	Dez 21	Berechnung Idnom, Idmin, convert_amp() mit Vorzeichen,
	~~~~
2012	2012	2012
	~~~~
412	Jan 09	FW 412 CAN-open mit cancel_error,
413 Jan 18	Typkennung BAMOBIL-D3.3, DC-Bus und Tigbt wie BAMOCAR,
			Sonderbehandlung Block-Kommutierung bei Sensorik ROT,
			KernOptions regid 0x5a, bit 28, 0x1000 0000, setze Vd.Out auf null,
414 Jan 27	Get_mpos32() in SPEED_CALIBRATION
414 Jan 31	Tim Current bis 500 % theoretisch, nach Entkopplung Begrenzung,
			Erweiterung TU-Ilmenau in ntcalc.c eingearbeitet,
415	Feb 08	Pseudo-Drehzahlistwert bei Feedback SLS korrigiert,
			Verhalten enable wie bei FU auch bei FU-Servo programmierbar
			mit KernOptions.bit.enab_asFU bit 29, 0x2000 0000 in regid 0x5a,
416 Feb 10	Phasing mit Inkrementalgeber alle Möglichkeiten implementiert,
	Feb 23	define_carrier_freq() bei Lese 0,1,2,
	Feb 28	Ueberschreitung Notrampe (RC-Glied intern) mit Warnung 0 signalisieren, nicht Fehler 1
	Feb 29	Timing bei Abschalten FU überarbeitet
	Mar 02	fmax-Berechnung neu (oberhalb Nenndrehzahl),
417 Mar 07	nur 2 Phasen takten bei Blockkommutierung, ACTRA mit forced-low,
			enable mit regid 0x5a  KernOptions bit 28, 0x1000 0000
418 Apr 24	CAN-open "cancel-error" auch als PDO, als SDO nach wie vor,
419 Apr 25	Port-Configuration-Manager kann angeblich keine bits als PDO konfigurieren,
			co_cancal_error als Uint16,
417 Apr 26	Blockkommutierung als Testversion an TU Leoben,
			KernOptions bit 27 autark nicht mehr für Vollaussteuerung, nur nicht bootstrap,
417	Mai 02	CAN-timeout, Testversion an FH Kiel raceyard,
		10	Zeitbasis für Periodendauermessung feedback=ROT von 4kHz auf timer-delta (40000 rpm),
		14	bit OL_comp wirkt weiterhin auf Begrenzung regen-torque, unabhängig Sensorik
		21	bei DC einiges von Entkopplungsnetzwerk ausklammern,
		22	Imax-, Icon-derating in Abhängigkeit von Gerätetyp und Schaltfrequenz,
			kein RFE als Warnung, Erkennung RFE_puls,
420 Jun 15	Generierung RFE_puls in logik mit Off,=,1
			Stromanzeige in DC-Betrieb korrigiert (vorher *1,414 zu gross)
421 Jun 26	Definition V95pc anfangs I_Reg_init(),
		28	in FU-Betrieb Kippschutz eingebaut
421 Jul 10	Lieferversion für neue Anwendungen EC-Servo,
422 Jul 10	in FU-Betrieb noch Weiterarbeit Kippschutz, Test in HD ok,
423 Jul 13	weiter FU-Betrieb, Stromgrenze
	Aug 01	Auswertung fpga-string mit I_FAULT verriegelt,
			FU-Betrieb Stromgrenze Test geeignet,
	Aug 27	Einschalten in logik mit separatem boots-trap der W-,V-,U-Phasen,
	Aug 31	Torque-modus mit besserer Begrenzung Drehzahlregler, torque digital-analog vereinheitlicht
	Sep 03	CAN mit 1Mbaud,
	Sep 05	resetten ext_-flags nicht mehr in Init_basics(), Kommunikation während Sonderfunktionen,
			Check_Raceaway() mit !torque_activ verknüpft,
424 Sep 05	Lieferversion neues BAMOBIL-D3.3
425 Sep 20	Weiterarbeit tuning, dabei EC_Servo mit Lsd und Lsq, anisotrope Motore,
			Vkp nicht mehr begrenzt auf max. 0.2047, Bewertung Eingabe gleich
	Okt 10	Warnung 1 bei FCOMPOE gekippt, mehrpolige Resolver wiederbelebt, VdcBus_filt,
			Normierung Uz Geräte abhängig mit AD2Volt, Test TUM + creative
426 Okt 18	zusätzliche Inkrementalgeberüberwachung mit Nullimpuls,
		25	Tigbt Abschaltwert für BAMO definiert,
		29	Drehzahl-Rampen minimal 1ms,
428 Nov 09	Konflikt Fehler Motortemp und RUN=1 bei Reset behoben,
		15	Umschaltung torque<->speed, RFE-puls, Test bei creative-data,
429 Nov 20	Bewertung Tibgt durch Änderung Hardware einheitlich,
430 Nov 23	Nullimpuls-Überwachung abschaltbar, default off, bit 2 in regid 0x5a,
430 Nov	27	Filter Analog-inputs nicht mehr fix, regid 0x60, low byte Ain1, high byte Ain2,
	~~~~
2013	2013	2013
	~~~~
431	Jan 23	SpeedRamp 0 + Position, an Kunden zur Erprobung
432	Jan 23	Vorzeichen Vfilt_16 war verschlampt, wird bei DC_ARM_VIR benötigt,
433 Feb 07	omega-Berechnung in ISLE-routinen noch abhängig von Motordaten,
			stattdessen von Parameter Nmax,
			DC_1Q3P, regid 0x5a, bit 14, 0x4xxx xxxx, 3 unteren parallel,
			im Bereich Feldschwächung synchron, 5 % Rest im Strom übrig lassen für Iq,
	Mar 01	Problem set_size_defaults() bei BAMOCAR beseitigt (!20kHz),
	Mar 05	ballast_trip nicht mehr fix, int: ratio fix 1:100, once max. 400ms,
	 		ext: Ballast P,  von 25 bis 5000, ratio max 1:2, once max. 40 s,
	Mar 11	DC_1QdirVolt, regid 0x5a bit 0x2xx, direkte Spannungsvorgabe mit Strombegrenzung
	Mar 13	check_Soft_ID() in kern_update(0), also auch bei Lese 0,1,
434 Mar 27	digitale Erfassung (DS4xx) Uzk korrigiert,
435 Apr 12	pwm Pulsmuster für DC 1-Quadrant minimale Verluste realisiert,
			KernOptions.bit.DC_1QMV, bit 29, 0x2000xxxx,
			direkte Spannungsvorgabe mittels Drehzahlsollwert jetzt in
			KernOptions.bit.DC_1QdirVolt, bit 25, 0x0200 xxxx
436 Apr 15	bootstrap DC-4Q (do_current())
436	Mai 03	mit DC_1Q3P und DPC460 Stromistwert anders bewertet,
			bei Logik Funktion Brake-Car disable recuperation mit recu_disab,
437 Mai 15	Bewertung analoger Messwert Zwischenkreis nur mit bit 0 in
			regid 0x5a, KernOptions.bit.DC_BUS_comp
438 Jun 10	Kombi-Input [Start] Dest = Var1,2,3,4, 4 Positionen mit 2 Inputs,
			[Start] cw = Var1,2,3,4, 4 Positionen innerhalb einer Umdrehung,
			Teilkreis, mit Resolver kein Referieren erforderlich,
			ballast-trip bis Ballast-P=10000, ergibt 15 sec. Dauer,
439 Jun 21	BAMO D3-360-240 in Typ-Liste, Tigbt range
439 Jul 17	recuperation Gaspedal war nicht mehr in Ordnung, behoben
440 Jun 14	Funktionell wie 438, CANopen wie 419, wegen Tigbt BAMOBIL
441 Aug 29	bei Sensor ROT, Id-Regler Parameter abschwächen,
442 Sep 11	Typ BAMOCAR-700-DC auch in interne Typen-Liste,
			Tigbt nochmals angepasst, 24600, 25200
443 Sep 23	VdcBus bei 2,5 bis 5 Volt Messung ohne +0x800
444 Dec 02	Regid 0x21, REGID_I_SOLLOFFSET, als Sollwert Id umfunktioniert,
			wie Sollwert Iq, 0x90, REGID_TORQUE_CMD_SETPOINT,int16
445 Dec 13  wegen CAN-open einige Umstellungen bei REGID_FUN_xxx
	~~~~
2014	2014	2014
	~~~~
445 Jan 22	Input-Funktion "[Switch] Cmd = !Dig/Ana" schaltet auf analogen Sollwert,
			bei zurück wird digitaler Sollwert zu null gesetzt,
			als beta-Version für Ematik veröffentlicht,
446 Jan 29	Version firecan
447 Feb 12	firecan, Drehzahl in 0.01 U/s, (Hz war missverständlich),
			in firecan DLC immer 8,
448 Mar 13	firecan, delay Freigabe Sollwert in firecan.c,
			Vorzeichen Stromistwert von Vorzeichen Iq,
449 Mar 27	wie 445 mit 500kBd
450 Apr 09	firecan, Umrechnung Frequenz in rpm mit Vorzeichen, button ccw mit
			Faktor -1 in Umrechnung, bei Handbetrieb kein Speren über CAN und Warnung 100,
451	Mai 16	PDO4state handling in main.c, bits 2,3 (Drehzahl!=0) und 4,5 (Überlast)
			KernStatus.bit.Iovnom (bit30, letztes freies) benutzt für Überlast.
455 Okt 29	Konflikt Messung DC-Bus Bereich 2.5 bis 5 VDC, Ref150a, Uint16 behoben,
455 Nov 13	neue Version codrv_can_hecc.c von emtas implementiert
456 Dec 17	siehe 455, plus Check_Raceaway(); auskommentiert
-------------------------------------------------------------------------------------------*/


#pragma DATA_SECTION(kern_version,"VersionData");
#pragma DATA_SECTION(tms_version,"VersionData");

const int16	kern_version= Version;				// in version.h
const int16 	tms_version=	TMS_VERSION;	// in LF2812_Regs.h

const char name[30]="ganzsuperneuername.out";
//#pragma DATA_SECTION(name,"VersionData");

//#pragma DATA_SECTION(id0,"VersionData");
//const struct ident id0 =
//{__FILE__,"vom ",__DATE__," um ",__TIME__};

