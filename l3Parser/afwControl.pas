unit afwControl;

 
{$Include w:\common\components\gui\Garant\AFW\afwDefine.inc}

interface

uses
  afwBaseControl
  ;

type
 TafwControl = class(TafwBaseControl)
  {* ������� ����� ��� ����������� ��������� }
 end;//TafwControl

implementation

uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwClassRef
  {$IfEnd} //not NoScripts
  
  ;


initialization
{$If not defined(NoScripts)}
// ����������� TafwControl
 TtfwClassRef.Register(TafwControl);
{$IfEnd} //not NoScripts

end.