unit VCMWordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/VCMWordsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::VCMWords::VCMWordsPack
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts) AND not defined(NoVCM)}
{$IfEnd} //not NoScripts AND not NoVCM

implementation

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  kwVcmDispatcherLock,
  kwVcmDispatcherUnlock,
  kwVcmDispatcherBeginOp,
  kwVcmDispatcherEndOp,
  kwVcmHistoryGetBackCount,
  kwVcmHistoryGetBackItem,
  kwVcmHistoryGetForwardCount,
  kwVcmHistoryGetForwardItem,
  kwVcmOpEnabled,
  kwVcmOpVisible,
  kwVcmOpChecked,
  kwVcmOpDefault,
  kwVcmOpCaption,
  kwVcmOpHint,
  kwVcmOpImageIndex,
  kwVcmOpShortcut,
  kwVcmOpLongHint,
  RegisterVcmControls,
  kwVcmHistoryDeleteBackItem,
  kwVcmFindForm,
  kwVcmHistoryClear,
  kwVcmHistoryDeleteForwardItem
  ;

{$IfEnd} //not NoScripts AND not NoVCM
end.