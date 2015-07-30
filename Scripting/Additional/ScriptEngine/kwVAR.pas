unit kwVAR;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$Core"
// �����: ����� �.�.
// ������: "kwVAR.pas"
// �����: 29.04.2011 22:36
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine$Core::CompiledWords::VAR
//
// ���������� ����������.
// ������:
// {code}
// VAR l_Text
// 'Text' >>> l_Text
// l_Text .
// {code}
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwVAR = {scriptword} class(TtfwVar)
  {* ���������� ����������. 
������: 
[code]
 VAR l_Text 
 'Text' >>> l_Text
 l_Text .
[code] }
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwVAR
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwVAR

class function TkwVAR.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'VAR';
end;//TkwVAR.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� VAR
 TkwVAR.RegisterInEngine;
{$IfEnd} //not NoScripts

end.