unit kwItarateSubDescriptors;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwItarateSubDescriptors.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::SubPanelWords::ItarateSubDescriptors
//
// ���������� ��� SubDescriptot �� SubPanel, ������� ����� ���� ������������ (!). ����� ������
// �������� �� ����� ��������������/��������� ���������. � �� ������� �� ���� �����������.
// ������:
// {code}
// @ aWord aLayerID aSubPanel ItarateSubDescriptors
// {code}
// aLayerID - ����, � ������� ������������ ��������
// aSubPanel - ������� ���������.
// aWord - ������� ��� ��������� ����:
// {code}
// PROCEDURE CheckDescription OBJECT IN aSubDescription
// // � ����� ������������ ���������� aSubDescription
// ;
// {code}
// ��� ���������� ������ ��������� �� aSubDescription ���� ����� �������: subdescriptor:GetDrawType
// � �.�.
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
  tfwScriptingInterfaces,
  evSubPn,
  Controls,
  Classes,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwSubPanelFromStackWord.imp.pas}
 TkwItarateSubDescriptors = {final} class(_kwSubPanelFromStackWord_)
  {* ���������� ��� SubDescriptot �� SubPanel, ������� ����� ���� ������������ (!). ����� ������ �������� �� ����� ��������������/��������� ���������. � �� ������� �� ���� �����������.
������:
[code]
@ aWord aLayerID aSubPanel ItarateSubDescriptors
[code]
aLayerID - ����, � ������� ������������ ��������
aSubPanel - ������� ���������.
aWord - ������� ��� ��������� ����:
[code]
PROCEDURE CheckDescription OBJECT IN aSubDescription
 // � ����� ������������ ���������� aSubDescription
;
[code]
��� ���������� ������ ��������� �� aSubDescription ���� ����� �������: subdescriptor:GetDrawType � �.�. }
 protected
 // realized methods
   procedure DoWithSubPanel(aControl: TevCustomSubPanel;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwItarateSubDescriptors
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwItarateSubDescriptors;

{$Include ..\ScriptEngine\kwSubPanelFromStackWord.imp.pas}

// start class TkwItarateSubDescriptors

procedure TkwItarateSubDescriptors.DoWithSubPanel(aControl: TevCustomSubPanel;
  const aCtx: TtfwContext);
//#UC START# *52D6471802DC_52D643C100A8_var*
var
 i        : Integer;
 l_Obj    : TObject;
 l_Layer  : TevSubLayerDescriptor;
 l_Lambda : TtfwWord;
 l_LayerID: Integer;
//#UC END# *52D6471802DC_52D643C100A8_var*
begin
//#UC START# *52D6471802DC_52D643C100A8_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '���� ����� �� �����.', aCtx);
 l_LayerID := aCtx.rEngine.PopInt;
 RunnerAssert(l_LayerID = 0, '�� ������������ �����.', aCtx);
 
 RunnerAssert(aCtx.rEngine.IsTopObj, '� �������� �� �������� �����.', aCtx);
 l_Obj := aCtx.rEngine.PopObj;
 RunnerAssert(l_Obj is TtfwWord, '� �������� �� �������� �����.', aCtx);

 l_Lambda := l_Obj as TtfwWord;
 l_Layer := TevSubLayerDescriptor(aControl.SubDescriptors[l_LayerID]);
 RunnerAssert(l_Layer <> nil, '��� ������ ���� �����.', aCtx);
 for i := 0 to 7 do
 try
  aCtx.rEngine.PushObj(l_Layer.Flags[i]);
  l_Lambda.DoIt(aCtx);
 except
  on EtfwBreakIterator do
   Exit;
 end;//try..except
//#UC END# *52D6471802DC_52D643C100A8_impl*
end;//TkwItarateSubDescriptors.DoWithSubPanel

class function TkwItarateSubDescriptors.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ItarateSubDescriptors';
end;//TkwItarateSubDescriptors.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwSubPanelFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.