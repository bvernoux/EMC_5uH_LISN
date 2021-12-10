***********************************************************
*
* BAV99
*
* Nexperia
*
* High-speed switching diodes
* IFmax = 215mA
* VRmax = 100V
* VFmax = 1,25V  @ IF = 150mA
* IRmax = 0,5µA  @ VR = 80V
*
*
* Package pinning does not match Spice model pinning.
* Package: SOT23
* 
* Package Pin 1: Anode   D1
* Package Pin 2: Cathode D2
* Package Pin 3: Cathode D1; Anode D2
*
*
*
* Extraction date (week/year): 22/2020
* Simulator: SPICE3
*
***********************************************************
*
* Please note: This device is an array and the
* symbol has to be placed twice on the schematic.
*
* The resistor R1 and the diode D2  
* do not reflect physical devices.
* Instead they improve modeling in the 
* forward and reverse mode of operation.
*
.SUBCKT BAV99 1 2
R1 1 2 5E+009
D1 1 2
+ DIODE1
D2 1 2
+ DIODE2
*
.MODEL DIODE1 D
+ IS = 3.2E-009
+ N = 1.85
+ BV = 128
+ IBV = 5E-005
+ RS = 1.6
+ CJO = 6E-013
+ VJ = 0.0001
+ M = 0.02
+ FC = 0.5
+ TT = 0
+ EG = 1.1
+ XTI = 3
.MODEL DIODE2 D
+ IS = 3E-013
+ N = 1.1
+ RS = 280
.ENDS
*
