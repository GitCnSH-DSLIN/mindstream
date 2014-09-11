unit u_fmGUITestRunner;

interface

uses
 TestFramework,
 System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
 FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
 FMX.Layouts, FMX.TreeView;

type
 TfmGUITestRunner = class(TForm)
  tvTests: TTreeView;
  btnAddItem: TButton;
  btnGetSelectedItems: TButton;
  procedure btnAddItemClick(Sender: TObject);
  procedure FormCreate(Sender: TObject);
  procedure btnGetSelectedItemsClick(Sender: TObject);
  procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
 private
 protected
  FSuite: ITest;
  FTests: TInterfaceList;
  procedure SetSuite(Value: ITest);
  procedure InitTree;
 public
  {: The test suite to be run in this runner }
  property Suite: ITest read FSuite write SetSuite;

 end;

procedure RunTestModeless(aTest: ITest);
procedure RunRegisteredTestsModeless;

var
 fmGUITestRunner: TfmGUITestRunner;

implementation

uses
 System.Generics.Collections;
{$R *.fmx}

procedure RunTestModeless(aTest: ITest);
var
 l_GUI :TfmGUITestRunner;
begin
// l_GUI := TfmGUITestRunner.create(nil);
// ������� ��� ������, ��� �� ��� ����� ����� ����.
 Application.CreateForm(TfmGUITestRunner, l_GUI);
 l_GUI.Suite := aTest;
 l_GUI.Show;
end;

procedure RunRegisteredTestsModeless;
begin
 RunTestModeless(registeredTests)
end;

procedure TraverseTreeItems(const anItem : TTreeViewItem; var ResultList : TList<TTreeViewItem>);
var
 i : Integer;
begin
 if anItem.IsChecked then
  ResultList.Add(anItem);

 for i := 0 to Pred(anItem.Count)  do
  TraverseTreeItems(anItem.Items[i], ResultList);
end;

procedure TraverseTree(const aTree: TTreeView; var ResultList : TList<TTreeViewItem>);
var
 i : integer;
begin
 for i := 0 to Pred(aTree.Count) do
  TraverseTreeItems(aTree.Items[i], ResultList);
end;

procedure TfmGUITestRunner.btnAddItemClick(Sender: TObject);
var
 l_TreeViewItem: TTreeViewItem;
begin
 tvTests.BeginUpdate;

 l_TreeViewItem := TTreeViewItem.Create(self);
 l_TreeViewItem.Text := 'Item' + IntToStr(tvTests.GlobalCount);

 if tvTests.Selected = nil then
  tvTests.AddObject(l_TreeViewItem)
 else
  tvTests.Selected.AddObject(l_TreeViewItem);

 tvTests.InvalidateContentSize;
 tvTests.EndUpdate;
end;

procedure TfmGUITestRunner.btnGetSelectedItemsClick(Sender: TObject);
var
 ResultList : TList<TTreeViewItem>;
 l_Item: TTreeViewItem;
 l_ResutlMsg: string;
begin
 ResultList := TList<TTreeViewItem>.Create;

 TraverseTree(tvTests, ResultList);

 for l_Item in ResultList do
  l_ResutlMsg := l_ResutlMsg + l_Item.Text + ';';

 ShowMessage(l_ResutlMsg);

 FreeAndNil(ResultList);
end;

procedure TfmGUITestRunner.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Application.Terminate;
end;

procedure TfmGUITestRunner.FormCreate(Sender: TObject);
begin
 inherited;
 tvTests.ShowCheckboxes := True;

 FTests := TInterfaceList.Create;
end;

procedure TfmGUITestRunner.FormDestroy(Sender: TObject);
begin
 Suite := nil;
 FreeAndNil(FTests);
 inherited;
end;

procedure TfmGUITestRunner.InitTree;
begin
 FTests.Clear;

end;

procedure TfmGUITestRunner.SetSuite(Value: ITest);
begin
 //FSuite, ��� �� �������, ��� ��� Application.CreateForm �� ����� ����, ���� ��� �� ����� ���� - "�� ������� ����, ���������� ����, � ���� ������ �� ������� ������.
 // ��� ������������� ������ �� ����� ������, ������� ������ �� nil, ��� �� �� �������� ����"

 // ������ ������� � System._IntfCopy(var Dest: IInterface; const Source: IInterface);
 // � ������� ������ ��� � ��� � Dest ����� ������������� ���������, � �� nil.

 // ���� ���� �� ���� ������� ��������, ��� �� ����
 FSuite := nil;
 FSuite := value;

 if FSuite <> nil then
  InitTree;
end;

end.
