unit kwNewWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "kwNewWord.pas"
// �����: 26.04.2011 17:31
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::WordsDefinition::NewWord
//
// ����������� ����� ����. ������:
// {code}
// : Hello
// 3 FOR
// 'Hello' .
// NEXT
// ;
// {code}
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwStandardProcedure
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwNewWord = {scriptword} class(TtfwStandardProcedure)
  {* ����������� ����� ����. ������: 
[code]
: Hello
 3 FOR
  'Hello' .
 NEXT
;
[code] }
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwNewWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwNewWord

class function TkwNewWord.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := ':';
end;//TkwNewWord.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� NewWord
 TkwNewWord.RegisterInEngine;
{$IfEnd} //not NoScripts

end.