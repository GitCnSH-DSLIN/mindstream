unit l3ObjectRefArray;
 
{$Include l3Define.inc}

interface

uses
  l3ProtoObjectRefList
  ;

type
 _l3OpenArray_Parent_ = Tl3ProtoObjectRefList;
 {$Include l3OpenArray.imp.pas}
 Tl3ObjectRefArray = class(_l3OpenArray_)
  {* "�������� ������". ������, ������� ������������� ����������� ��� ���������� �������� �� �������� ��������� }
 end;//Tl3ObjectRefArray

implementation

uses
  l3Base
  ;

type _Instance_R_ = Tl3ObjectRefArray;

{$Include l3OpenArray.imp.pas}

end.