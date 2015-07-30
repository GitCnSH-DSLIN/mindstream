unit kwINHERITED;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwINHERITED.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::Compilation::INHERITED
//
// ����� ��� ������ ��������������� ������
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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
 TkwINHERITED = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ��� ������ ��������������� ������ }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwINHERITED
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwINHERITED

procedure TkwINHERITED.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F420DAD0039_var*
//#UC END# *4DAEEDE10285_4F420DAD0039_var*
begin
//#UC START# *4DAEEDE10285_4F420DAD0039_impl*
 RunnerError('����� INHERITED ���� �� �����������', aCtx);
//#UC END# *4DAEEDE10285_4F420DAD0039_impl*
end;//TkwINHERITED.DoDoIt

class function TkwINHERITED.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'INHERITED';
end;//TkwINHERITED.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� INHERITED
 TkwINHERITED.RegisterInEngine;
{$IfEnd} //not NoScripts

end.