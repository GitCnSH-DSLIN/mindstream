unit uL3ParserVsNewParser;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, System.SysUtils, Vcl.Graphics, Winapi.Windows, System.Variants,
  Vcl.Dialogs, Vcl.Controls, Vcl.Forms, Winapi.Messages, System.Classes, uMain,
  l3Parser;

type
 TL3ParserVsTNewParser = class(TTestCase)
  private
   function FileName: string;
  published
   procedure First;
   procedure CheckL3Parser;
 end;

implementation

uses
 l3Filer
 , l3Types
 ;
{ TL3ParserVsTNewParser }

const
 cParseOptions = [l3_poCheckKeyWords,
                  l3_poCheckInt,
                  //l3_poCheckFloat,
                  //l3_poCheckHex,
                  //l3_poCheckComment,
                  //l3_poCheckStringBracket,
                  l3_poAddDigits2WordChars,
                  l3_poNullAsEOF];

procedure TL3ParserVsTNewParser.First;
begin
 Check(True);
end;

procedure TL3ParserVsTNewParser.CheckL3Parser;
var
 l_Parser : Tl3CustomParser;
 l_Filer : Tl3DosFiler;
 l_TokenType : Tl3TokenType;
 l_Tokens : string;
begin
 l_Filer := Tl3DosFiler.Make('Test_4_1.txt');
 l_Parser := Tl3CustomParser.Create;
 l_Filer.Open;
 l_Parser.Filer := l_Filer;
 l_Tokens := ' ';
 l_TokenType := l3_ttBOF;
 try
  while not (l_TokenType = l3_ttEOF) do
  begin
   l_TokenType := l_Parser.NextToken;
   l_Tokens := l_Tokens + l_Parser.TokenString;
  end;
 finally
  FreeAndNil(l_Filer);
  FreeAndNil(l_Parser);
 end;
 ShowMessage(l_Tokens);
end;

function TL3ParserVsTNewParser.FileName: string;
begin
 Result := 'test';
end;

initialization
  // Register any test cases with the test runner
// RegisterTest(TL3ParserVsTNewParser.Suite);
end.

