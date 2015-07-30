unit kwWordWorkerWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "kwWordWorkerWord.pas"
// �����: 26.01.2012 22:09
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::WordsDefinition::WordWorkerWord
//
// ���������� �����, ������� ����� �������� �� ������ ���������� �� ��� ��������������� � ����.
// �������� ��� @
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwWordWorkerWordBase
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwWordWorkerWord = {scriptword} class(TkwWordWorkerWordBase)
  {* ���������� �����, ������� ����� �������� �� ������ ���������� �� ��� ��������������� � ����. �������� ��� @ }
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWordWorkerWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWordWorkerWord,
  kwCompiledPopToVar,
  kwCompiledVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwWordWorkerWord

class function TkwWordWorkerWord.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WORDWORKER';
end;//TkwWordWorkerWord.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� WordWorkerWord
 TkwWordWorkerWord.RegisterInEngine;
{$IfEnd} //not NoScripts

end.