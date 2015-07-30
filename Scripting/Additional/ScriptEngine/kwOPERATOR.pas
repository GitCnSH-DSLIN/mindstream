unit kwOPERATOR;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwOPERATOR.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::WordsDefinition::OPERATOR
//
// ���������� ���������, ������� ����� ��������� ����� ��� �����, ��� � ������
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwWordWorkerWordBase,
  l3Interfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwOPERATOR = {final scriptword} class(TkwWordWorkerWordBase)
  {* ���������� ���������, ������� ����� ��������� ����� ��� �����, ��� � ������ }
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
   function AddedParameters: Tl3CStringArray; override;
 end;//TkwOPERATOR
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwOPERATOR

class function TkwOPERATOR.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'OPERATOR';
end;//TkwOPERATOR.GetWordNameForRegister

function TkwOPERATOR.AddedParameters: Tl3CStringArray;
//#UC START# *4F3FF55403AB_53E466AC0341_var*
//#UC END# *4F3FF55403AB_53E466AC0341_var*
begin
//#UC START# *4F3FF55403AB_53E466AC0341_impl*
 Result := nil;
//#UC END# *4F3FF55403AB_53E466AC0341_impl*
end;//TkwOPERATOR.AddedParameters

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� OPERATOR
 TkwOPERATOR.RegisterInEngine;
{$IfEnd} //not NoScripts

end.