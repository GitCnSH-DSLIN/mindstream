unit kwFindMember;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "kwFindMember.pas"
// �����: 15.02.2012 21:25
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::MembersWorking::MembersWorkingPack::FindMember
//
// ���� ����� ������ ����, ������� ����� �� �����
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwWordWorker,
  tfwScriptingInterfaces,
  kwCompiledWordWorker
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwFindMember = {final scriptword} class(TtfwWordWorker)
  {* ���� ����� ������ ����, ������� ����� �� ����� }
 protected
 // realized methods
   function CompiledWorkerClass(const aCtx: TtfwContext): RkwCompiledWordWorker; override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFindMember
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledFindMember
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwFindMember

function TkwFindMember.CompiledWorkerClass(const aCtx: TtfwContext): RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4F3BEA4F0240_var*
//#UC END# *4DCBD67C0362_4F3BEA4F0240_var*
begin
//#UC START# *4DCBD67C0362_4F3BEA4F0240_impl*
 Result := TkwCompiledFindMember;
//#UC END# *4DCBD67C0362_4F3BEA4F0240_impl*
end;//TkwFindMember.CompiledWorkerClass

class function TkwFindMember.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '%%';
end;//TkwFindMember.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� FindMember
 TkwFindMember.RegisterInEngine;
{$IfEnd} //not NoScripts

end.