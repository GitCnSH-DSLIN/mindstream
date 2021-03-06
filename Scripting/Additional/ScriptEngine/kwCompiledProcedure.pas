unit kwCompiledProcedure;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwCompiledProcedure.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: SimpleClass::Class Shared Delphi Low Level::ScriptEngine::Scripting Axiomatics::TkwCompiledProcedure
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces,
  kwCompiledWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledProcedure = class(TkwCompiledWord)
 protected
 // overridden property methods
   function pm_GetResultTypeInfo(const aCtx: TtfwContext): TtfwTypeInfo; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   procedure SetResultTypeInfo(const aValue: TtfwTypeInfo;
     const aCtx: TtfwContext); override;
 protected
 // protected fields
   f_Modifiers : TtfwTypeInfo;
 end;//TkwCompiledProcedure
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwClassRef
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledProcedure

procedure TkwCompiledProcedure.Cleanup;
//#UC START# *479731C50290_4F216D8D01A0_var*
//#UC END# *479731C50290_4F216D8D01A0_var*
begin
//#UC START# *479731C50290_4F216D8D01A0_impl*
 f_Modifiers.Clear;
 inherited;
//#UC END# *479731C50290_4F216D8D01A0_impl*
end;//TkwCompiledProcedure.Cleanup

procedure TkwCompiledProcedure.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F216D8D01A0_var*
//#UC END# *4DAEEDE10285_4F216D8D01A0_var*
begin
//#UC START# *4DAEEDE10285_4F216D8D01A0_impl*
 try
  inherited;
 except
  on EtfwExit do
   ;
  on EtfwBreak do
   raise EtfwCodeFlowError.Create('BREAK �� ����� ���������� ������� ���������');
  on EtfwContinue do
   raise EtfwCodeFlowError.Create('CONTINUE �� ����� ���������� ������� ���������'); 
 end;//try..except
//#UC END# *4DAEEDE10285_4F216D8D01A0_impl*
end;//TkwCompiledProcedure.DoDoIt

function TkwCompiledProcedure.pm_GetResultTypeInfo(const aCtx: TtfwContext): TtfwTypeInfo;
//#UC START# *52CFC11603C8_4F216D8D01A0get_var*
//#UC END# *52CFC11603C8_4F216D8D01A0get_var*
begin
//#UC START# *52CFC11603C8_4F216D8D01A0get_impl*
 Result := f_Modifiers; 
//#UC END# *52CFC11603C8_4F216D8D01A0get_impl*
end;//TkwCompiledProcedure.pm_GetResultTypeInfo

procedure TkwCompiledProcedure.SetResultTypeInfo(const aValue: TtfwTypeInfo;
  const aCtx: TtfwContext);
//#UC START# *52EA6A2C0111_4F216D8D01A0_var*
//#UC END# *52EA6A2C0111_4F216D8D01A0_var*
begin
//#UC START# *52EA6A2C0111_4F216D8D01A0_impl*
 CompilerAssert(aValue.Modifiers - [tfw_wmPrivate, tfw_wmVirtual..tfw_wmPublic, tfw_wmRealize, tfw_wmOverride, tfw_wmRedefinition, tfw_wmAggregation .. tfw_wmSealed, tfw_wmCanBeMerged, tfw_wmVoid, tfw_wmImmediate] = [], '�������� ������ �������������', aCtx);
 f_Modifiers := aValue
//#UC END# *52EA6A2C0111_4F216D8D01A0_impl*
end;//TkwCompiledProcedure.SetResultTypeInfo

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� TkwCompiledProcedure
 TkwCompiledProcedure.RegisterClass;
{$IfEnd} //not NoScripts

end.