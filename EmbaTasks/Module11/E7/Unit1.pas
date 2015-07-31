unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    pbxEx: TPaintBox;
    pnlButtons: TPanel;
    btnDraw: TButton;
    lblNPoints: TLabel;
    edtNPoints: TEdit;
    procedure btnDrawClick(Sender: TObject);
  private
    { Private declarations }
    procedure Draw;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnDrawClick(Sender: TObject);
begin
  Draw;
end;

procedure TfrmMain.Draw;
var
  Radius,
  NPoints : integer;

  LeftTop,
  RightBottom,
  CenterPoint,
  StartPoint,
  EndPoint : TPoint;

  Angle : Double;
begin
  pbxEx.Canvas.Pen.Color:= clBlack;
  pbxEx.Canvas.Pen.Width:= 2;
  pbxEx.Canvas.MoveTo(pbxEx.Width div 2, pbxEx.Height div 2);

  pbxEx.Canvas.LineTo(pbxEx.Width div 2 - 20, pbxEx.Height div 2 - 20);

end;


end.
