unit ImageEnViewRegistrator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$ImageEn"
// ������: "ImageEnViewRegistrator.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: SimpleClass::Class Shared Delphi::ScriptEngine$ImageEn::ImageEnView::TImageEnViewRegistrator
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  imageenview
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TImageEnViewRegistrator = {abstract} class(TImageEnView)
 end;//TImageEnViewRegistrator
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwClassRef
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}


{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� TImageEnViewRegistrator
 TtfwClassRef.Register(TImageEnViewRegistrator);
{$IfEnd} //not NoScripts

end.