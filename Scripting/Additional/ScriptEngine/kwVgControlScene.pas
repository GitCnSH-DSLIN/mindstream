unit kwVgControlScene;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwVgControlScene.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::VGSceneWords::vg_control_Scene
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts) AND not defined(NoVGScene)}
uses
  vgVisualObject,
  tfwScriptingInterfaces,
  Classes,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts AND not NoVGScene

{$If not defined(NoScripts) AND not defined(NoVGScene)}
type
 {$Include ..\ScriptEngine\kwVGVisualObjectWord.imp.pas}
 TkwVgControlScene = {final} class(_kwVGVisualObjectWord_)
 protected
 // realized methods
   procedure DoVisualObject(anObject: TvgVisualObject;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwVgControlScene
{$IfEnd} //not NoScripts AND not NoVGScene

implementation

{$If not defined(NoScripts) AND not defined(NoVGScene)}
uses
  vg_controls,
  vg_listbox,
  vg_scene
  {$If not defined(NoVCM)}
  ,
  vcmForm
  {$IfEnd} //not NoVCM
  ,
  afwFacade,
  Controls,
  Windows,
  Forms,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts AND not NoVGScene

{$If not defined(NoScripts) AND not defined(NoVGScene)}

type _Instance_R_ = TkwVgControlScene;

{$Include ..\ScriptEngine\kwVGVisualObjectWord.imp.pas}

// start class TkwVgControlScene

procedure TkwVgControlScene.DoVisualObject(anObject: TvgVisualObject;
  const aCtx: TtfwContext);
//#UC START# *4EE605B00380_538DA23D0297_var*
//#UC END# *4EE605B00380_538DA23D0297_var*
begin
//#UC START# *4EE605B00380_538DA23D0297_impl*
 aCtx.rEngine.PushObj(anObject.Scene.GetSceneControl);
//#UC END# *4EE605B00380_538DA23D0297_impl*
end;//TkwVgControlScene.DoVisualObject

class function TkwVgControlScene.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'vg:control:Scene';
end;//TkwVgControlScene.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVGScene

initialization
{$If not defined(NoScripts) AND not defined(NoVGScene)}
 {$Include ..\ScriptEngine\kwVGVisualObjectWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVGScene

end.