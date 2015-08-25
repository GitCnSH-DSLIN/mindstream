unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmMain = class(TForm)
    btnDoIt: TButton;
    pnlMain: TPanel;
    memMain: TMemo;
    procedure btnDoItClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

procedure TfmMain.btnDoItClick(Sender: TObject);
  function PlMin(numStr:integer):integer;
  var
   Index,Min : integer;
  begin
    Min:=NumStr;//����� ������, ������� �� ����� num_str, ����������

    //��� ���� �����, ������� � ������ num_str
    for Index := Min + 1 to memMain.Lines.Count - 1 do
      //���� ������� ������ ������ �����������, ��
      if memMain.Lines[Index] < memMain.Lines[Min] then
        Min:=Index;//�������������� ����� ����������� ������

    PlMin:=Min;//�������� ������� ����������� ����� ���-��� ������
  end;

var
  Index, MinLineIndex:integer;
begin
   for Index:=0 to memMain.Lines.Count - 1 do
   //��� ������ ������ �� ����
   begin
     //���������
     MinLineIndex:=plmin(Index);
     //������� ����� ���. ������, ������� � Index-���� ������
     memMain.Lines.Exchange(Index, MinLineIndex);//������ �� � �������.
   end;
end;

end.
