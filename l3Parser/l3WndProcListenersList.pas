unit l3WndProcListenersList;



// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include l3Define.inc}

interface

uses
  l3Interfaces,
  l3ProtoDataContainer,
  l3Types,
  l3Memory,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = Il3WndProcListener;
 _l3InterfacePtrList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include l3InterfacePtrList.imp.pas}
 Tl3WndProcListenersList = class(_l3InterfacePtrList_)
 end;//Tl3WndProcListenersList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

type _Instance_R_ = Tl3WndProcListenersList;

{$Include l3InterfacePtrList.imp.pas}

end.