unit l3DataContainerWithoutIUnknown;
 
{$Include ..\L3\l3Define.inc}

interface

uses
  l3DataContainerWithoutIUnknownPrim,
  l3PureMixIns
  ;

type
 _l3Changing_Parent_ = Tl3DataContainerWithoutIUnknownPrim;
 {$Include ..\L3\l3Changing.imp.pas}
 Tl3DataContainerWithoutIUnknown = {abstract} class(_l3Changing_)
  {* ��������� ������ ��� ���������� IUnknown, �� �� ���� ������������ ���������� }
 end;//Tl3DataContainerWithoutIUnknown

implementation

{$Include ..\L3\l3Changing.imp.pas}

end.