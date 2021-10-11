unit Unit_Piano;

interface

uses
  Main, Classes, Forms, SysUtils, ExtCtrls, Graphics,
  mmSystem, Notes_MIDI, Musiques;

type
  TPiano = Class(TThread)
  private
    idNote, BPM: integer;
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

constructor TPiano.Create(Suspended: Boolean);
begin
  FreeOnTerminate := True;
  inherited Create(Suspended);
  OnTerminate := OnTerminateProcedure;
  ThreadTerminated := False;
end;

procedure TPiano.ToucheDown;
begin
  Form1.PianoToucheDown(Musique1_01[idNote].Note1);
end;

procedure TPiano.ToucheUp;
begin
  Form1.PianoToucheUp(Musique1_01[idNote].Note1);
end;

procedure TPiano.Execute;
var
  i: integer;
begin

  // 1000 millisecondes : BPM = 60  (1 battement par seconde, 60 par minute)
  // 500  millisecondes : BPM = 120 (1 battement par 1/2 seconde, 120 par minute)
  // Temps[ms] = (60/BPM)*1000
  BPM := 150;

  // Choix de l'instrument (38 = trompette)
  Instrument := '38';

  for i := 0 to Length(Musique1_01)-1 do
  begin
    if ThreadTerminated then exit;

    idNote := i;

    if Musique1_01[i].Note1<>'' then
      Synchronize(ToucheDown);

    //Application.ProcessMessages;
    Sleep(Round(((60/BPM)*1000) * Musique1_01[i].Duree));

    if Musique1_01[i].Note1<>'' then
      Synchronize(ToucheUp);

    Form1.repaint;
  end;

end;

procedure TPiano.OnTerminateProcedure(Sender: TObject);
begin
  ThreadTerminated:=True;
end;


end.
