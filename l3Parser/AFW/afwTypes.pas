unit afwTypes;

{$IfDef DesignTimeLibrary}
{.$WEAKPACKAGEUNIT ON}
{$EndIf DesignTimeLibrary}
 
{$Include ..\AFW\afwDefine.inc}

interface

type
 TafwPrintPage = record
  {* ���� ��� ������ �������� ��������� }
   rNumber : Integer; // ����� �������� ������� � 0
 end;//TafwPrintPage

 TafwPrintPagesArray = array of TafwPrintPage;
  {* ������ ������� preview. }

 TafwPagesInterval = (
  {* �������� ������. }
   afw_piAll
 , afw_piOdd
 , afw_piEven
 );//TafwPagesInterval

 TafwCommands = array of AnsiString;

implementation

end.