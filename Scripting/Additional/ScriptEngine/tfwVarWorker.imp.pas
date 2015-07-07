{$IfNDef tfwVarWorker_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwVarWorker.imp.pas"
// �����: 12.05.2011 16:23
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting Axiomatics::tfwVarWorker
//
// ��������� ���� ��� ������ � �����������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwVarWorker_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
 _tfwVarWorker_ = {abstract mixin} class(_tfwBeginLikeWord_)
  {* ��������� ���� ��� ������ � �����������. }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext;
     aSilent: Boolean): RtfwWord; override;
 protected
 // overridden protected methods
   function AfterWordMaxCount(const aCtx: TtfwContext): Cardinal; override;
   procedure DoCompiledWord(aWord: TtfwWord;
     const aContext: TtfwContext); override;
   function CompiledWordClass(const aCtx: TtfwContext): RkwCompiledWordPrim; override;
 protected
 // protected methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; virtual; abstract;
 end;//_tfwVarWorker_
{$IfEnd} //not NoScripts

{$Else tfwVarWorker_imp}

{$IfNDef tfwVarWorker_imp_impl}
{$Define tfwVarWorker_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}

// start class _tfwVarWorker_

function _tfwVarWorker_.EndBracket(const aContext: TtfwContext;
  aSilent: Boolean): RtfwWord;
//#UC START# *4DB6C99F026E_4DCBD36B01C4_var*
//#UC END# *4DB6C99F026E_4DCBD36B01C4_var*
begin
//#UC START# *4DB6C99F026E_4DCBD36B01C4_impl*
 Result := DisabledEndBracket(aContext, aSilent);
//#UC END# *4DB6C99F026E_4DCBD36B01C4_impl*
end;//_tfwVarWorker_.EndBracket

function _tfwVarWorker_.AfterWordMaxCount(const aCtx: TtfwContext): Cardinal;
//#UC START# *4DB9B446039A_4DCBD36B01C4_var*
//#UC END# *4DB9B446039A_4DCBD36B01C4_var*
begin
//#UC START# *4DB9B446039A_4DCBD36B01C4_impl*
 Result := 1;
//#UC END# *4DB9B446039A_4DCBD36B01C4_impl*
end;//_tfwVarWorker_.AfterWordMaxCount

procedure _tfwVarWorker_.DoCompiledWord(aWord: TtfwWord;
  const aContext: TtfwContext);
//#UC START# *4DB9BBD6024F_4DCBD36B01C4_var*
var
 l_VarWorker : TkwCompiledVarWorker;
//#UC END# *4DB9BBD6024F_4DCBD36B01C4_var*
begin
//#UC START# *4DB9BBD6024F_4DCBD36B01C4_impl*
 CompilerAssert(aWord.CodeCount = 1, '����� ��������� ������ ���� �������� ������', aContext);
 l_VarWorker := CompiledVarWorkerClass.Create((aWord As TkwCompiledWordPrim).GetCode(aContext)[0]);
 try
  if (l_VarWorker.Key = nil) then
   l_VarWorker.Key := Self.Key;
   // - ����� ����� ���� ���������� ����� �� �� Runner'��
  inherited DoCompiledWord(l_VarWorker, aContext);
 finally
  FreeAndNil(l_VarWorker);
 end;//try..finally
//#UC END# *4DB9BBD6024F_4DCBD36B01C4_impl*
end;//_tfwVarWorker_.DoCompiledWord

function _tfwVarWorker_.CompiledWordClass(const aCtx: TtfwContext): RkwCompiledWordPrim;
//#UC START# *4DBAEE0D028D_4DCBD36B01C4_var*
//#UC END# *4DBAEE0D028D_4DCBD36B01C4_var*
begin
//#UC START# *4DBAEE0D028D_4DCBD36B01C4_impl*
 //Result := CompiledVarWorkerClass;
 Result := TkwVarWorkerCompiledCode;
 //Result := inherited CompiledWordClass(aCtx);
//#UC END# *4DBAEE0D028D_4DCBD36B01C4_impl*
end;//_tfwVarWorker_.CompiledWordClass

{$IfEnd} //not NoScripts

{$Else  tfwVarWorker_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwVarWorker_imp_impl}
{$EndIf tfwVarWorker_imp}
