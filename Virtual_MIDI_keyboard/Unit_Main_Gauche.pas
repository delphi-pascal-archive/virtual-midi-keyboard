unit Unit_Main_Gauche;

interface

uses
  Main, Classes, Forms, SysUtils, ExtCtrls, Graphics,
  mmSystem, Notes_MIDI, Musiques;

type
  TMain_Gauche = class(TThread)
  private
    idNote: integer;
    procedure OnTerminateProcedure(Sender : TObject);
  protected
    procedure ToucheDown;
    procedure ToucheUp;
    procedure Execute; override;
  public
    ThreadTerminated : Boolean;
    constructor Create(Suspended : Boolean);
  end;


implementation

constructor TMain_Gauche.Create(Suspended: Boolean);
begin
  FreeOnTerminate := True;
  inherited Create(Suspended);
  OnTerminate := OnTerminateProcedure;
  ThreadTerminated := False;
end;

procedure TMain_Gauche.ToucheDown;
begin
  Form1.PianoToucheDown(Musique1_MG[idNote].Note1);
end;

procedure TMain_Gauche.ToucheUp;
begin
  Form1.PianoToucheUp(Musique1_MG[idNote].Note1);
end;

procedure TMain_Gauche.Execute;
var
  i: integer;
begin

  for i := 0 to Length(Musique1_MG)-1 do
  begin
    if ThreadTerminated then exit;
    idNote := i;

    if Musique1_MG[i].Note1<>'' then
      Synchronize(ToucheDown);

    Sleep(Round(((60/BPM)*1000) * Musique1_MG[i].Duree));

    if Musique1_MG[i].Note1<>'' then
      Synchronize(ToucheUp);
  end;

end;

procedure TMain_Gauche.OnTerminateProcedure(Sender: TObject);
begin
  ThreadTerminated:=True;
end;

end.
