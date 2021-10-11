program ClavierMIDI;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  Musiques in 'Musiques.pas',
  Notes_Midi in 'Notes_Midi.pas',
  Clavier_AZERTY in 'Clavier_AZERTY.pas',
  Aide_Clavier in 'Aide_Clavier.pas' {Form2},
  Unit_Main_Droite in 'Unit_Main_Droite.pas',
  Unit_Main_Gauche in 'Unit_Main_Gauche.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Clavier MIDI virtuel';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
