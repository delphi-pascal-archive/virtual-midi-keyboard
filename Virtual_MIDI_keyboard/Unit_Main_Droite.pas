unit Unit_Main_Droite;

interface

uses
  Main, Classes, Forms, SysUtils, ExtCtrls, Graphics,
  mmSystem, Notes_MIDI, Musiques;

type
  TMain_Droite = Class(TThread)
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

constructor TMain_Droite.Create(Suspended: Boolean);
begin
  FreeOnTerminate := True;
  inherited Create(Suspended);
  OnTerminate := OnTerminateProcedure;
  ThreadTerminated := False;
end;

procedure TMain_Droite.ToucheDown;
begin
  Form1.PianoToucheDown(Musique1_MD[idNote].Note1);
end;

procedure TMain_Droite.ToucheUp;
begin
  Form1.PianoToucheUp(Musique1_MD[idNote].Note1);
end;

procedure TMain_Droite.Execute;
var
  i: integer;
begin

  for i := 0 to Length(Musique1_MD)-1 do
  begin
    if ThreadTerminated then exit;
    idNote := i;

    if Musique1_MD[i].Note1<>'' then
      Synchronize(ToucheDown);

    Sleep(Round(((60/BPM)*1000) * Musique1_MD[i].Duree));

    if Musique1_MD[i].Note1<>'' then
      Synchronize(ToucheUp);
  end;

end;

procedure TMain_Droite.OnTerminateProcedure(Sender: TObject);
begin
  ThreadTerminated:=True;
end;

end.
