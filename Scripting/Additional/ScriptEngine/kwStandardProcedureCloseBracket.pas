unit kwStandardProcedureCloseBracket;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwStandardProcedureCloseBracket.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting Axiomatics::StandardProcedureCloseBracket
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwRegisterableWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwCloseBracket.imp.pas}
 TkwStandardProcedureCloseBracket = {final} class(_kwCloseBracket_)
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwStandardProcedureCloseBracket
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3String,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwStandardProcedureCloseBracket;

{$Include ..\ScriptEngine\kwCloseBracket.imp.pas}

// start class TkwStandardProcedureCloseBracket

class function TkwStandardProcedureCloseBracket.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := ';';
end;//TkwStandardProcedureCloseBracket.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwCloseBracket.imp.pas}
{$IfEnd} //not NoScripts

end.