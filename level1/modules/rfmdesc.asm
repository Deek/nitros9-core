********************************************************************
* RFMDesc - Remote File Manager Device Descriptor Template
*
* $Id$
*
* Edt/Rev  YYYY/MM/DD  Modified by
* Comment
* ------------------------------------------------------------------
*   0      2003/03/28  Boisy G. Pitre
* Created.

         nam   RFMDesc
         ttl   Remote File Manager Device Descriptor Template

         ifp1  
         use   defsfile
         endc  


tylg     set   Devic+Objct
atrv     set   ReEnt+rev
rev      set   $00

DNum     set   0

         mod   eom,name,tylg,atrv,mgrnam,drvnam

         fcb   DIR.!SHARE.!PEXEC.!PWRIT.!PREAD.!EXEC.!UPDAT. mode byte
         fcb   HW.Page    extended controller address
         fdb   $0000+DNum      physical controller address
         fcb   initsize-*-1 initilization table size
         fcb   DT.RFM    device type:0=scf,1=rbf,2=pipe,3=scf
         fcb   dnum       drive number
initsize equ   *

         IFNE  DD
name     fcs   /DD/
         ELSE
name     fcc   /Y/
         fcb   176+DNum
         ENDC

mgrnam   fcs   /RFM/
drvnam   fcs   /RFMDrv/


         emod  
eom      equ   *
         end   

