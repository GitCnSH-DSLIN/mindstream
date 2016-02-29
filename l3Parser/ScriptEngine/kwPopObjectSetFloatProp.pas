unit kwPopObjectSetFloatProp;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$RTLandVCL"
// ������: "kwPopObjectSetFloatProp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine$RTLandVCL::RTTI::pop_object_SetFloatProp
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwObjectFromStackWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwRTTIWord.imp.pas}
 TkwPopObjectSetFloatProp = {final scriptword} class(_kwRTTIWord_)
 protected
 // realized methods
   procedure DoObject(anObject: TObject;
     const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopObjectSetFloatProp
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  TypInfo
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

{$Include ..\ScriptEngine\kwRTTIWord.imp.pas}

// start class TkwPopObjectSetFloatProp

procedure TkwPopObjectSetFloatProp.DoObject(anObject: TObject;
  const aCtx: TtfwContext);
//#UC START# *4F212BD5010E_513876E1027C_var*
var
 l_N : AnsiString;
 l_V : Integer;
//#UC END# *4F212BD5010E_513876E1027C_var*
begin
//#UC START# *4F212BD5010E_513876E1027C_impl*
 l_N := aCtx.rEngine.PopDelphiString;
 l_V := aCtx.rEngine.PopInt;
 SetFloatProp(anObject, l_N, l_V);
//#UC END# *4F212BD5010E_513876E1027C_impl*
end;//TkwPopObjectSetFloatProp.DoObject

class function TkwPopObjectSetFloatProp.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:object:SetFloatProp';
end;//TkwPopObjectSetFloatProp.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� pop_object_SetFloatProp
 TkwPopObjectSetFloatProp.RegisterInEngine;
{$IfEnd} //not NoScripts

end.