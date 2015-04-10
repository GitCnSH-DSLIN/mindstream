unit kwImageEnViewerSaveBitmap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwImageEnViewerSaveBitmap.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ImageEnView::ImageEnViewer_SaveBitmap
//
// ������:
// {code}
// aFileName ImageEnViewer:SaveBitmap
// {code}
// ��� aFileName - ��� �����, ���� ���������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  imageenview,
  tfwScriptingInterfaces,
  Controls,
  Classes,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\ImageEnControl.imp.pas}
 TkwImageEnViewerSaveBitmap = {final} class(_ImageEnControl_)
  {* ������:
[code]
aFileName ImageEnViewer:SaveBitmap
[code]
��� aFileName - ��� �����, ���� ���������. }
 protected
 // realized methods
   procedure DoWithImageEn(aControl: TImageEnView;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwImageEnViewerSaveBitmap
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwImageEnViewerSaveBitmap;

{$Include ..\ScriptEngine\ImageEnControl.imp.pas}

// start class TkwImageEnViewerSaveBitmap

procedure TkwImageEnViewerSaveBitmap.DoWithImageEn(aControl: TImageEnView;
  const aCtx: TtfwContext);
//#UC START# *52E20FD6017C_52E20E70006F_var*
const
 csBMPExt = '.bmp';
var
 l_FileName: AnsiString;
//#UC END# *52E20FD6017C_52E20E70006F_var*
begin
//#UC START# *52E20FD6017C_52E20E70006F_impl*
 l_FileName := ChangeFileExt(aCtx.rScriptFilename, csBMPExt);
 l_FileName := ExtractFileName(l_FileName);
 l_FileName := aCtx.rCaller.ResolveInputFilePath(l_FileName);
 aControl.Bitmap.SaveToFile(l_FileName);
//#UC END# *52E20FD6017C_52E20E70006F_impl*
end;//TkwImageEnViewerSaveBitmap.DoWithImageEn

class function TkwImageEnViewerSaveBitmap.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ImageEnViewer:SaveBitmap';
end;//TkwImageEnViewerSaveBitmap.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\ImageEnControl.imp.pas}
{$IfEnd} //not NoScripts

end.