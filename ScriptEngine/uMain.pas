unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    btnFindAndCopy: TButton;
    procedure btnFindAndCopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btnFindAndCopyClick(Sender: TObject);
var
 l_Files : TStrings;
begin
// todo ��� ����� ��������� ������ ������ � ������ ��, � ���������� � ��� � �����.
end;

end.
