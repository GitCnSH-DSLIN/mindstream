{$IfNDef kwSubDescriptorFromStackWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwSubDescriptorFromStackWord.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::SubPanelWords::kwSubDescriptorFromStackWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwSubDescriptorFromStackWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
 _kwSubDescriptorFromStackWord_ = {mixin} class(_kwObjectFromStackWord_)
 protected
 // realized methods
   procedure DoObject(anObject: TObject;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoWithSubDescriptor(aControl: TevSubDescriptor;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwSubDescriptorFromStackWord_
{$IfEnd} //not NoScripts

{$Else kwSubDescriptorFromStackWord_imp}

{$IfNDef kwSubDescriptorFromStackWord_imp_impl}
{$Define kwSubDescriptorFromStackWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}

// start class _kwSubDescriptorFromStackWord_

procedure _kwSubDescriptorFromStackWord_.DoObject(anObject: TObject;
  const aCtx: TtfwContext);
//#UC START# *4F212BD5010E_52D65E6902A8_var*
//#UC END# *4F212BD5010E_52D65E6902A8_var*
begin
//#UC START# *4F212BD5010E_52D65E6902A8_impl*
 DoWithSubDescriptor(anObject as TevSubDescriptor, aCtx);
//#UC END# *4F212BD5010E_52D65E6902A8_impl*
end;//_kwSubDescriptorFromStackWord_.DoObject

{$IfEnd} //not NoScripts

{$Else  kwSubDescriptorFromStackWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwSubDescriptorFromStackWord_imp_impl}
{$EndIf kwSubDescriptorFromStackWord_imp}
