unit m2InternalInterfaces;
 
{$Include ..\m2\m2Define.inc}

interface

type
 Im2StoreStat = interface(IUnknown)
  {* ���������� � ��������� }
   ['{1B212038-ED47-447A-811D-CA3891B5B5E0}']
   function pm_GetAccess: LongInt;
   function pm_GetLocksSupported: LongInt;
   function pm_GetSize: Int64;
   function pm_GetPosition: Int64;
   function Get_Name: WideString;
   property Access: LongInt
     read pm_GetAccess;
     {* ����� ������� }
   property LocksSupported: LongInt
     read pm_GetLocksSupported;
     {* ����� ����� ��������? }
   property Size: Int64
     read pm_GetSize;
     {* ������ }
   property Position: Int64
     read pm_GetPosition;
     {* ������� }
   property Name: WideString
     read Get_Name;
 end;//Im2StoreStat

implementation

end.