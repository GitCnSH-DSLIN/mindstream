{$IfNDef vtStatusPanelFromStack_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/vtStatusPanelFromStack.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::vtStatusPanelFromStack
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define vtStatusPanelFromStack_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
 _vtStatusPanelFromStack_ = {mixin} class(_kwObjectFromStackWord_)
 protected
 // realized methods
   procedure DoObject(anObject: TObject;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoGetvtStatusPanel(aControl: TvtStatusPanel;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_vtStatusPanelFromStack_
{$IfEnd} //not NoScripts

{$Else vtStatusPanelFromStack_imp}

{$IfNDef vtStatusPanelFromStack_imp_impl}
{$Define vtStatusPanelFromStack_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}

// start class _vtStatusPanelFromStack_

procedure _vtStatusPanelFromStack_.DoObject(anObject: TObject;
  const aCtx: TtfwContext);
//#UC START# *4F212BD5010E_53F70336029D_var*
//#UC END# *4F212BD5010E_53F70336029D_var*
begin
//#UC START# *4F212BD5010E_53F70336029D_impl*
 DoGetvtStatusPanel(anObject as TvtStatusPanel, aCtx);
//#UC END# *4F212BD5010E_53F70336029D_impl*
end;//_vtStatusPanelFromStack_.DoObject

{$IfEnd} //not NoScripts

{$Else  vtStatusPanelFromStack_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf vtStatusPanelFromStack_imp_impl}
{$EndIf vtStatusPanelFromStack_imp}
