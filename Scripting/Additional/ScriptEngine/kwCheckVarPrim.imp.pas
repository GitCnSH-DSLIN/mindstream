{$IfNDef kwCheckVarPrim_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCheckVarPrim.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::MembersWorking::kwCheckVarPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwCheckVarPrim_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
 _kwCheckVarPrim_ = {abstract mixin} class(_tfwWordWorker_)
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 protected
 // overridden protected methods
   procedure DoCompiledWord(aWord: TtfwWord;
     const aContext: TtfwContext); override;
 end;//_kwCheckVarPrim_
{$IfEnd} //not NoScripts

{$Else kwCheckVarPrim_imp}

{$IfNDef kwCheckVarPrim_imp_impl}
{$Define kwCheckVarPrim_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class _kwCheckVarPrim_

function _kwCheckVarPrim_.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_53E22FD30376_var*
//#UC END# *4DCBD67C0362_53E22FD30376_var*
begin
//#UC START# *4DCBD67C0362_53E22FD30376_impl*
 Result := TkwCompiledCheckVarByRef;
//#UC END# *4DCBD67C0362_53E22FD30376_impl*
end;//_kwCheckVarPrim_.CompiledWorkerClass

procedure _kwCheckVarPrim_.DoCompiledWord(aWord: TtfwWord;
  const aContext: TtfwContext);
//#UC START# *4DB9BBD6024F_53E22FD30376_var*
//#UC END# *4DB9BBD6024F_53E22FD30376_var*
begin
//#UC START# *4DB9BBD6024F_53E22FD30376_impl*
 inherited;
//#UC END# *4DB9BBD6024F_53E22FD30376_impl*
end;//_kwCheckVarPrim_.DoCompiledWord

{$IfEnd} //not NoScripts

{$Else  kwCheckVarPrim_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwCheckVarPrim_imp_impl}
{$EndIf kwCheckVarPrim_imp}
