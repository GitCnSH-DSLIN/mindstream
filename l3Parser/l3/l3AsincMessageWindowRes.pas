unit l3AsincMessageWindowRes;
 
{$Include ..\L3\l3Define.inc}

interface

uses
  l3StringIDEx
  ;

var
  { ������������ ������ Local }
 str_l3mmLongOperation : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'l3mmLongOperation'; rValue : '����������� ���������� ��������...');
  { '����������� ���������� ��������...' }

implementation

uses
  l3MessageID
  ;


initialization
// ������������� str_l3mmLongOperation
 str_l3mmLongOperation.Init;

end.