unit msLineCrossTest;

interface

uses
 msLoggedTest,
 msLineF
 ;

type
 TmsLineCrossTest = class(TmsLoggedTest)
 private
  f_L1 : TmsLineF;
  f_L2 : TmsLineF;
 protected
  function InnerFolders: String; override;
 published
  procedure DoIt;
 end;//TmsLineCrossTest

implementation

uses
 TestFrameWork,

 FMX.DUnit.msLog
 ;

// TmsLineCrossTest

function TmsLineCrossTest.InnerFolders: String;
begin
 Result := ClassName + '\';
end;

procedure TmsLineCrossTest.DoIt;
begin
 OutToFileAndCheck(
  procedure (aLog: TmsLog)
  begin
   aLog.ToLog('L1:');
   f_L1.ToLog(aLog);
   aLog.ToLog('L2:');
   f_L2.ToLog(aLog);
   aLog.ToLog('failed');
  end
 );
end;

initialization
 TestFramework.RegisterTest(TmsLineCrossTest.Suite);
end.
