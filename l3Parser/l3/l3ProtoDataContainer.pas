unit l3ProtoDataContainer;
 
{$Include ..\L3\l3Define.inc}

interface

uses
  l3ProtoObject
  ;

type
 _l3DataContainer_Parent_ = Tl3ProtoObject;
 {$Include ..\L3\l3DataContainer.imp.pas}
 Tl3ProtoDataContainer = {abstract} class(_l3DataContainer_)
  {* ����� ����������� ��������� ������ }
 end;//Tl3ProtoDataContainer

implementation

{$Include ..\L3\l3DataContainer.imp.pas}

end.