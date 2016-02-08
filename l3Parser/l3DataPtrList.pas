unit l3DataPtrList;
 
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
 _ItemType_ = Pointer;
 _l3DataPtrList_Parent_ = Tl3SimpleDataContainer;
 {$Define l3Items_IsProto}
 {$Include l3DataPtrList.imp.pas}
 Tl3DataPtrList = class(_l3DataPtrList_)
  {* ������ ���������� �� ����� ������. ������ �� �����������. }
 end;//Tl3DataPtrList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

type _Instance_R_ = Tl3DataPtrList;

{$Include l3DataPtrList.imp.pas}

end.