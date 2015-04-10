{$IfNDef kwVGControlWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwVGControlWord.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::VGSceneWords::kwVGControlWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwVGControlWord_imp}
{$If not defined(NoScripts) AND not defined(NoVGScene)}
 {$Include ..\ScriptEngine\kwVGVisualObjectWord.imp.pas}
 _kwVGControlWord_ = {mixin} class(_kwVGVisualObjectWord_)
 protected
 // realized methods
   procedure DoVisualObject(anObject: TvgVisualObject;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoVGControl(anObject: TvgControl;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwVGControlWord_
{$IfEnd} //not NoScripts AND not NoVGScene

{$Else kwVGControlWord_imp}

{$IfNDef kwVGControlWord_imp_impl}
{$Define kwVGControlWord_imp_impl}

{$If not defined(NoScripts) AND not defined(NoVGScene)}


{$Include ..\ScriptEngine\kwVGVisualObjectWord.imp.pas}

// start class _kwVGControlWord_

procedure _kwVGControlWord_.DoVisualObject(anObject: TvgVisualObject;
  const aCtx: TtfwContext);
//#UC START# *4EE605B00380_538DA04E02B7_var*
//#UC END# *4EE605B00380_538DA04E02B7_var*
begin
//#UC START# *4EE605B00380_538DA04E02B7_impl*
 RunnerAssert(Assigned(anObject), '������� nil', aCtx);
 RunnerAssert(anObject is TvgControl, '��� �� TvgControl, � ' + anObject.ClassName, aCtx);
 DoVGControl(anObject as TvgControl, aCtx);
//#UC END# *4EE605B00380_538DA04E02B7_impl*
end;//_kwVGControlWord_.DoVisualObject

{$IfEnd} //not NoScripts AND not NoVGScene

{$Else  kwVGControlWord_imp_impl}
{$If not defined(NoScripts) AND not defined(NoVGScene)}
 {$Include ..\ScriptEngine\kwVGVisualObjectWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVGScene

{$EndIf kwVGControlWord_imp_impl}
{$EndIf kwVGControlWord_imp}
