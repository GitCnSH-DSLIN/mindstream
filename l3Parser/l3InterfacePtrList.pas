unit l3InterfacePtrList;


{$Include l3Define.inc}

interface

uses
  l3SimpleDataContainer,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = IUnknown;
 _l3InterfacePtrList_Parent_ = Tl3SimpleDataContainer;
 {$Define l3Items_IsProto}
 {$Include l3InterfacePtrList.imp.pas}
 Tl3InterfacePtrList = class(_l3InterfacePtrList_)
  {* ������ ���������� �� ����������. �� ������� ���. }
 end;//Tl3InterfacePtrList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

type _Instance_R_ = Tl3InterfacePtrList;

{$Include l3InterfacePtrList.imp.pas}

end.