unit l3TreeConst;
 
{$Include l3Define.inc}

interface

uses
  l3Interfaces
  ;

var CF_TreeNode : Tl3ClipboardFormat = 0;
 {* ������ ��� �� ������ ���� � ������}

var CF_TreeNodes : Tl3ClipboardFormat = 0;
 {* ������ ��� ���������� ����� � ������}

implementation

uses
  Windows
  ;


initialization
//#UC START# *48F4B57C010F*
  CF_TreeNode := Windows.RegisterClipboardFormat('Tree Node');
  CF_TreeNodes := Windows.RegisterClipboardFormat('Tree Nodes');
//#UC END# *48F4B57C010F*

end.