unit uNewParser;
interface

uses
 Classes
 ,SysUtils
 ;

type
 TscriptTokenType = (ttUnknown, ttString, ttToken, ttEOF, ttBoolean);

type
 TScriptParser = class
 private
  f_Stream: TStream;
  f_EOF: Boolean;
  f_UnknownToken: String;
  f_PosInCurrentToken: Integer;
  f_Token: String;
  f_TokenType: TscriptTokenType;
  {f_IsBlockComment: Boolean;
  f_IsString : Boolean;
  f_IsSymbol : Boolean;}
 procedure NextChar;
 // ����������� f_PosInCurrentToken �� 1
 function CurrentChar : Char;
 protected
  function ReadUnknownToken: String;
 protected
  function GetChar(out aChar: AnsiChar): Boolean;
 public
  constructor Create(const aStream: TStream); overload;
  constructor Create(const aFileName: String); overload;
  destructor Destroy; override;

  function EOF: Boolean;
  { * - ��������� ����� �������� ������. }
  procedure NextToken;
  { * - ������� ��������� ����� �� �������� ������. }
 public
  property TokenString: String read f_Token;
  { * - ������� �����. }
  property TokenType: TscriptTokenType read f_TokenType;
  { * - ��� �������� ������. }
 end; // TscriptParser

implementation

uses
 System.Character
 ;

{ TScriptParser }

constructor TScriptParser.Create(const aStream: TStream);
begin

end;

constructor TScriptParser.Create(const aFileName: String);
begin

end;

function TScriptParser.CurrentChar: Char;
begin

end;

destructor TScriptParser.Destroy;
begin

  inherited;
end;

function TScriptParser.EOF: Boolean;
begin

end;

function TScriptParser.GetChar(out aChar: AnsiChar): Boolean;
begin

end;

procedure TScriptParser.NextChar;
begin

end;

procedure TScriptParser.NextToken;
begin

end;

function TScriptParser.ReadUnknownToken: String;
begin

end;

end.
