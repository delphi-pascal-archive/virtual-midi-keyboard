unit Unit_Piano;

interface

uses Main, Classes, Forms, SysUtils, ExtCtrls, Graphics, mmSystem, Notes_MIDI;

type
  TPiano = Class(TComponent)
  public
  //
    procedure PianoToucheDown(Touche: string);
    procedure PianoToucheUp(Touche: string);
  private
  //
  end;

var
  Piano: TPiano;
  Form1: TForm1;
  MidiOut: hMidiOut;
  Instrument: string;

implementation

{---------------------GESTION DU SON-------------------------------}

procedure PianoToucheDown(Touche: string);
var
  i : integer;
  Note : cardinal;
begin
  for i := 0 to Length(Notes) - 1 do
  begin
    if Notes[i].Note=Touche then
    begin
      // Paramétrage de l'instrument
      Form1.lblInstrument.Caption := Instrument;

      // Formatage de la note
         // midiOutShortMsg(MidiOut, $007F3C90);
         // 1er octet  = 00 - inutilisé)
         // 2ème octet = 7F - vélocité 0..7F
         // 3ème octet = 3C - la note à jouer (DO3 par exemple)
         // 4ème octet = le status + canal midi
            // 90 = jouer la note sur le canal midi 1
            // 80 = stopper la note sur le canal midi 1
      Note := StrToInt('$007F' + Notes[i].SonMidi + '90');

      // Selection de l'instrument
         // midiOutShortMsg(MidiOut, $0000C4C0);
         // 1er octet  = C4 - numéro du programme (0..127)
         // 2ème octet = C0 - commande + canal midi
         // 3ème octet = C  - ProgramChange
         // 4ème octet = 0  - canal midi 1
      midiOutShortMsg(MidiOut, StrToInt('$0000' + Instrument + 'C0'));

      // Jeu de la note
      midiOutShortMsg(MidiOut, Note);

      // Affichage de la note en toute lettre
      Form1.lblNote.Caption := Touche;
      Form1.lblNote.Visible := true;

      // Affichage de la note sur la touche du piano (format américain)
      if Copy(Touche, Length(Touche), 1)<>'d' then
        Form1.Panel1.Visible := true
      else
        Form1.Panel2.Visible := true;
      TImage(Form1.FindComponent('lbl' + Touche)).Visible := true;

      // Affichage de la note sur la partition (Do1..Do5)
      //   Si c'est un Do3 la note s'affiche à la fois
      //   sur la clé de Sol et la clé de Fa
      if i<50 then
      begin
        if Touche='Do3' then
        begin
          TImage(Form1.FindComponent('imgDo3_1')).Visible := true;
          TImage(Form1.FindComponent('imgDo3_2')).Visible := true;
        end
        else if Touche='Do3d' then
        begin
          TImage(Form1.FindComponent('imgDo3d_1')).Visible := true;
          TImage(Form1.FindComponent('imgDo3d_2')).Visible := true;
        end
        else TImage(Form1.FindComponent('img' + Touche)).Visible := true;
      end;

      // Modification de la couleur de la touche du piano appuyée
      if TShape(Form1.FindComponent(Touche)).Brush.Color=clWhite then
        TShape(Form1.FindComponent(Touche)).Brush.Color:=clRed
      else if TShape(Form1.FindComponent(Touche)).Brush.Color=clBlack then
        TShape(Form1.FindComponent(Touche)).Brush.Color:=clLime;
    end;
  end;
end;

procedure PianoToucheUp(Touche: string);
var
  i : integer;
  Note:Cardinal;
begin
  for i := 0 to Length(Notes) - 1 do
  begin
    Form1.lblNote.Visible := false;
    if Copy(Touche, Length(Touche), 1)<>'d' then
      Form1.Panel1.Visible := false
    else
      Form1.Panel2.Visible := false;
    TImage(Form1.FindComponent('lbl' + Touche)).Visible := false;

    if Notes[i].Note=Touche then
    begin
      Note := StrToInt('$007F' + Notes[i].SonMidi + '80');
      midiOutShortMsg(MidiOut, Note);

      if i<50 then
      begin
        if Touche='Do3' then
        begin
          TImage(Form1.FindComponent('imgDo3_1')).Visible := false;
          TImage(Form1.FindComponent('imgDo3_2')).Visible := false;
        end
        else if Touche='Do3d' then
        begin
          TImage(Form1.FindComponent('imgDo3d_1')).Visible := false;
          TImage(Form1.FindComponent('imgDo3d_2')).Visible := false;
        end
        else TImage(Form1.FindComponent('img' + Touche)).Visible := false;
      end;

      // Modification de la couleur de la touche du piano relâchée
      if TShape(Form1.FindComponent(Touche)).Brush.Color=clRed then
        TShape(Form1.FindComponent(Touche)).Brush.Color:=clWhite
      else if TShape(Form1.FindComponent(Touche)).Brush.Color=clLime then
        TShape(Form1.FindComponent(Touche)).Brush.Color:=clBlack;
    end;
  end;
end;

{------------------------------------------------------------------}


end.
