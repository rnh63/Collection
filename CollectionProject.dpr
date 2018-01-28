program CollectionProject;

uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {Form5},
  uZNodeCollection in 'uZNodeCollection.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
