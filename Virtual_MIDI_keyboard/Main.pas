unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls, ComCtrls, jpeg,
  mmSystem, Clavier_AZERTY, Musiques, Notes_Midi, Menus, ToolWin, ActnMan,
  ActnCtrls, ActnMenus, Buttons, Aide_Clavier;

{----------------------------------------------------------------}
type
  TForm1 = Class(TForm)
    Systeme: TPanel;
    imgSysteme: TImage;
    imgDo1: TImage;
    imgMi1: TImage;
    imgRe1: TImage;
    imgFa1: TImage;
    imgSol1: TImage;
    imgLa1: TImage;
    imgSi1: TImage;
    imgDo2: TImage;
    imgRe2: TImage;
    imgMi2: TImage;
    imgFa2: TImage;
    imgSol2: TImage;
    imgLa2: TImage;
    imgSi2: TImage;
    imgDo3_2: TImage;
    imgDo3_1: TImage;
    imgRe3: TImage;
    imgMi3: TImage;
    imgFa3: TImage;
    imgSol3: TImage;
    imgLa3: TImage;
    imgSi3: TImage;
    imgDo4: TImage;
    imgRe4: TImage;
    imgMi4: TImage;
    Image23: TImage;
    Piano: TPanel;
    La1: TShape;
    Mi4: TShape;
    Re4: TShape;
    Do4: TShape;
    Si4: TShape;
    La4: TShape;
    Sol4: TShape;
    Fa4: TShape;
    Mi3: TShape;
    Re3: TShape;
    Do3: TShape;
    Si3: TShape;
    La3: TShape;
    Sol3: TShape;
    Fa3: TShape;
    Mi2: TShape;
    Re2: TShape;
    Do2: TShape;
    Si2: TShape;
    La2: TShape;
    Sol2: TShape;
    Fa2: TShape;
    Mi1: TShape;
    Re1: TShape;
    Do1: TShape;
    Si1: TShape;
    Sol1: TShape;
    Fa1: TShape;
    Do1d: TShape;
    Fa1d: TShape;
    La1d: TShape;
    Sol1d: TShape;
    Re1d: TShape;
    Fa2d: TShape;
    La2d: TShape;
    Sol2d: TShape;
    Re2d: TShape;
    Do2d: TShape;
    Fa3d: TShape;
    La3d: TShape;
    Sol3d: TShape;
    Re3d: TShape;
    Do3d: TShape;
    Fa4d: TShape;
    La4d: TShape;
    Sol4d: TShape;
    Re4d: TShape;
    Do4d: TShape;
    Mi5: TShape;
    Re5: TShape;
    Do5: TShape;
    Si5: TShape;
    La5: TShape;
    Sol5: TShape;
    Fa5: TShape;
    Re5d: TShape;
    Fa5d: TShape;
    La5d: TShape;
    Sol5d: TShape;
    Do5d: TShape;
    Do6: TShape;
    imgFa4: TImage;
    imgSol4: TImage;
    imgLa4: TImage;
    imgSi4: TImage;
    imgDo5: TImage;
    imgDo1d: TImage;
    imgRe1d: TImage;
    imgFa1d: TImage;
    imgSol1d: TImage;
    imgLa1d: TImage;
    imgDo2d: TImage;
    imgRe2d: TImage;
    imgFa2d: TImage;
    imgSol2d: TImage;
    imgLa2d: TImage;
    imgDo3d_2: TImage;
    imgDo3d_1: TImage;
    imgRe3d: TImage;
    imgFa3d: TImage;
    imgSol3d: TImage;
    imgLa3d: TImage;
    imgDo4d: TImage;
    imgRe4d: TImage;
    imgFa4d: TImage;
    imgSol4d: TImage;
    imgLa4d: TImage;
    imgDo5d: TImage;
    GroupBox1: TGroupBox;
    UpDown1: TUpDown;
    lblInstrument: TLabel;
    GroupBox2: TGroupBox;
    lblNote: TLabel;
    MainMenu1: TMainMenu;
    Fic1: TMenuItem;
    Edition1: TMenuItem;
    Baloo1: TMenuItem;
    Fermer1: TMenuItem;
    Aide1: TMenuItem;
    Clavier1: TMenuItem;
    Outils1: TMenuItem;
    Prfrences1: TMenuItem;
    Player: TGroupBox;
    btnPlay: TSpeedButton;
    btnPause: TSpeedButton;
    btnStop: TSpeedButton;
    Groupe_Notes: TGroupBox;
    Notes_Alterees: TPanel;
    lblDo1d: TLabel;
    lblRe1d: TLabel;
    lblFa1d: TLabel;
    lblSol1d: TLabel;
    lblLa1d: TLabel;
    lblDo2d: TLabel;
    lblRe2d: TLabel;
    lblFa2d: TLabel;
    lblSol2d: TLabel;
    lblLa2d: TLabel;
    lblDo3d: TLabel;
    lblRe3d: TLabel;
    lblFa3d: TLabel;
    lblSol3d: TLabel;
    lblLa3d: TLabel;
    lblDo4d: TLabel;
    lblRe4d: TLabel;
    lblFa4d: TLabel;
    lblSol4d: TLabel;
    lblLa4d: TLabel;
    lblDo5d: TLabel;
    lblRe5d: TLabel;
    lblFa5d: TLabel;
    lblSol5d: TLabel;
    lblLa5d: TLabel;
    Notes_Primaires: TPanel;
    lblDo1: TLabel;
    lblRe1: TLabel;
    lblMi1: TLabel;
    lblFa1: TLabel;
    lblSol1: TLabel;
    lblLa1: TLabel;
    lblSi1: TLabel;
    lblDo2: TLabel;
    lblRe2: TLabel;
    lblMi2: TLabel;
    lblFa2: TLabel;
    lblSol2: TLabel;
    lblLa2: TLabel;
    lblSi2: TLabel;
    lblDo3: TLabel;
    lblRe3: TLabel;
    lblMi3: TLabel;
    lblFa3: TLabel;
    lblSol3: TLabel;
    lblLa3: TLabel;
    lblSi3: TLabel;
    lblDo4: TLabel;
    lblRe4: TLabel;
    lblMi4: TLabel;
    lblFa4: TLabel;
    lblSol4: TLabel;
    lblLa4: TLabel;
    lblSi4: TLabel;
    lblDo5: TLabel;
    lblRe5: TLabel;
    lblMi5: TLabel;
    lblFa5: TLabel;
    lblSol5: TLabel;
    lblLa5: TLabel;
    lblSi5: TLabel;
    lblDo6: TLabel;
    Procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    Procedure FormDestroy(Sender: TObject);
    procedure PianoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PianoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure Baloo1Click(Sender: TObject);
    procedure Fermer1Click(Sender: TObject);
    procedure Clavier1Click(Sender: TObject);
    procedure PianoToucheDown(Touche: string);
    procedure PianoToucheUp(Touche: string);
    procedure btnPauseClick(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Melodie;
    procedure Accompagnement;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  MidiOut: hMidiOut;
  Instrument: string;
  BPM: integer;
  Pause: boolean;
  Stop: boolean;

implementation

uses Unit_Main_Droite, Unit_Main_Gauche;

{$R *.dfm}



{---------------------GESTION DU MENU---------------------------}

procedure TForm1.btnPauseClick(Sender: TObject);
begin
  midiOutShortMsg(MidiOut, $00007BB0);
  Stop := false;
  Pause := true;
  btnPlay.Visible  := true;
  btnPause.Visible := false;
end;

procedure TForm1.btnPlayClick(Sender: TObject);
begin
  Stop  := false;
  Pause := false;
  btnPlay.Visible  := false;
  btnPause.Visible := true;
end;

procedure TForm1.btnStopClick(Sender: TObject);
begin
  midiOutShortMsg(MidiOut, $00007BB0);
  Pause := false;
  Stop  := true;
end;

procedure TForm1.Clavier1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Fermer1Click(Sender: TObject);
begin
  Stop := true;
  application.terminate;
end;

{---------------------GESTION DES MUSIQUES-------------------------}

// -- BALOO -- //
procedure TForm1.Baloo1Click(Sender: TObject);
begin
  Pause := false;
  Stop  := false;
  Player.Visible := true;

  // 1000 millisecondes : BPM = 60  (1 battement par seconde, 60 par minute)
  // 500  millisecondes : BPM = 120 (1 battement par 1/2 seconde, 120 par minute)
  // Temps[ms] = (60/BPM)*1000
  BPM := 150;
  // Choix de l'instrument (38 = trompette)
  Instrument := '38';

  // Lancement de la procédure Melodie,
  // qui se charge de lancer l'accompagnement
  Melodie;
  //Accompagnement; { pour les tests }

  // Affichage du Player "Play", "Pause", "Stop"
  Player.Visible := false;
end;

procedure TForm1.Melodie;
var
  MD : TMain_Droite;
begin

  // Lancement du Thread TMain_Droite (Mélodie)
  MD := TMain_Droite.Create(False);

  // Lancement de la procédure Accompagnement
  Accompagnement;

  Repeat
    Application.ProcessMessages;
    if Stop  then MD.ThreadTerminated := true;
    if Pause then MD.Suspended := true;
    //if MD.Suspended AND NOT Pause then MD.Resume; { déclenche une erreur en fin de mélodie }
   until MD.ThreadTerminated;

end;
procedure TForm1.Accompagnement;
var
  MG : TMain_Gauche;
begin
  // Lancement du Thread TMain_Gauche (Accompagnement)
  MG := TMain_Gauche.Create(False);

  Repeat
    Application.ProcessMessages;
    if Stop  then MG.ThreadTerminated := true;
    if Pause then MG.Suspended := true;
    if MG.Suspended AND NOT Pause then MG.Resume;
  until MG.ThreadTerminated;

end;


{---------------------GESTION DE LA FORM---------------------------}

Procedure TForm1.FormCreate(Sender: TObject);
var
  Res: DWORD; msg: String;
Begin
  // Instanciation de l'objet MidiOut
  Res := midiOutOpen(@MidiOut, MIDI_MAPPER, Handle, 0, CALLBACK_WINDOW);
  If Res <> 0 Then Begin
    Case Res Of
      MMSYSERR_BADDEVICEID: msg := 'Périphérique invalide';
      MMSYSERR_ALLOCATED: msg := 'Périphérique déja alloué';
      MMSYSERR_NOMEM: msg := 'Mémoire insuffisante';
      MIDIERR_NOMAP: msg := 'Mapper MIDI non trouvé';
      MIDIERR_NODEVICE: msg := 'Périphérique non trouvé';
    Else msg := 'Erreur inconnue';
    End;
    MessageBox(Form1.Handle, pChar(msg), 'Error', MB_OK);
    Close;
  End;

  // Instrument 00 (Grand Piano) par défaut
  Instrument:='00';

  // Initialisation du métronome
  BPM:=1;

  // Initialisation du player
  Pause := false;
  Stop  := false;
End;

procedure TForm1.FormPaint(Sender: TObject);
begin
  // Permet de rendre actives les touches du clavier
  // à l'ouverture de la Form
  Form1.SetFocus;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Stop := true;
end;

Procedure TForm1.FormDestroy(Sender: TObject);
Begin
  // Réinitialisation des notes
  midiOutShortMsg(MidiOut, $00007BB0);
  // Fermeture de l'objet MidiOut
  midiOutClose(MidiOut);
End;

{---------------------GESTION DU CLAVIER---------------------------}

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i,j : integer;
  Touche: string;
begin
  for i := 0 to Length(Keys) - 1 do
  begin
    if Keys[i].Key = Key then
    begin
      Touche := Keys[i].Note;
      if Keys[i].Down = false then
      begin
        for j := 0 to Length(Notes) - 1 do
          if Notes[j].Note=Touche then Notes[j].Down:=true;
        PianoToucheDown(Touche);
        Keys[i].Down := true;
      end;
    end;
  end;
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i, j: integer;
  Touche: string;
begin
  for i := 0 to Length(Keys) - 1 do
  begin
    if Keys[i].Key = Key then
    begin
      Touche := Keys[i].Note;
      Keys[i].Down := false;
      for j := 0 to Length(Notes) - 1 do
        if Notes[j].Note=Touche then Notes[j].Down:=false;
      PianoToucheUp(Touche);
    end;
  end;
end;


{---------------------GESTION DE LA SOURIS-------------------------}

procedure TForm1.PianoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Touche : string;
begin
  Touche := TShape(Sender).Name;
  if Button=mbLeft then
    PianoToucheDown(Touche);
end;

procedure TForm1.PianoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Touche : string;
  i : integer;
  Note:Cardinal;
begin
  Touche := TShape(Sender).Name;
  if Button=mbLeft then
    PianoToucheUp(Touche);
end;

{---------------------GESTION DE L'INSTRUMENT----------------------}

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var
  InstrumentINT: integer;
begin
  // Choix de l'instrument (0..79)
  lblInstrument.Caption := IntToStr(UpDown1.Position);
  if Length(lblInstrument.Caption)=1 then lblInstrument.Caption := '0' + lblInstrument.Caption;
  Instrument := lblInstrument.Caption;
end;

{---------------------GESTION DU PIANO-----------------------------}

procedure TForm1.PianoToucheDown(Touche: string);
var
  i : integer;
  Note : cardinal;
begin
  for i := 0 to Length(Notes) - 1 do
  begin
    if Notes[i].Note=Touche then
    begin
      // Paramétrage de l'instrument
      lblInstrument.Caption := Instrument;

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
      lblNote.Caption := Touche;
      lblNote.Visible := true;

      // Affichage de la note sur la touche du piano (format américain)
      if Copy(Touche, Length(Touche), 1)<>'d' then
      begin
        Notes_Primaires.Visible := true;
        Notes_Alterees.Visible  := false;
      end
      else
      begin
        Notes_Primaires.Visible := false;
        Notes_Alterees.Visible  := true;
      end;
      TImage(FindComponent('lbl' + Touche)).Visible := true;

      // Affichage de la note sur la partition (Do1..Do5)
      //   Si c'est un Do3 la note s'affiche à la fois
      //   sur la clé de Sol et la clé de Fa
      if i<50 then
      begin
        if Touche='Do3' then
        begin
          TImage(FindComponent('imgDo3_1')).Visible := true;
          TImage(FindComponent('imgDo3_2')).Visible := true;
        end
        else if Touche='Do3d' then
        begin
          TImage(FindComponent('imgDo3d_1')).Visible := true;
          TImage(FindComponent('imgDo3d_2')).Visible := true;
        end
        else TImage(Form1.FindComponent('img' + Touche)).Visible := true;
      end;

      // Modification de la couleur de la touche du piano appuyée
      if TShape(FindComponent(Touche)).Brush.Color=clWhite then
        TShape(FindComponent(Touche)).Brush.Color:=clRed
      else if TShape(FindComponent(Touche)).Brush.Color=clBlack then
        TShape(FindComponent(Touche)).Brush.Color:=clLime;
    end;
  end;
end;

procedure TForm1.PianoToucheUp(Touche: string);
var
  i : integer;
  Note:Cardinal;
begin
  for i := 0 to Length(Notes) - 1 do
  begin

    if Notes[i].Note=Touche then
    begin
      Note := StrToInt('$007F' + Notes[i].SonMidi + '80');
      midiOutShortMsg(MidiOut, Note);

      // Si la touche du clavier est relâchée
      if (Notes[i].Down=false) then
      begin

        // Affichage des notes sur la partition
        // On n'affiche pas les notes Ré5 à Do6
        if i<50 then
        begin
          if Touche='Do3' then
          begin
            TImage(FindComponent('imgDo3_1')).Visible := false;
            TImage(FindComponent('imgDo3_2')).Visible := false;
          end
          else if Touche='Do3d' then
          begin
            TImage(FindComponent('imgDo3d_1')).Visible := false;
            TImage(FindComponent('imgDo3d_2')).Visible := false;
          end
          else TImage(Form1.FindComponent('img' + Touche)).Visible := false;
        end;

        // On rend invisible l'affichage de la note jouée
        lblNote.Visible := false;
        // Si la note jouée n'est pas une note altérée,
        // alors on rend invisible le groupe de notes altérées
        if Copy(Touche, Length(Touche), 1)<>'d' then
        begin
          Notes_Primaires.Visible := false;
          Notes_Alterees.Visible  := true;
        end
        // Sinon on rend invisible le groupe de notes primaires
        else
        begin
          Notes_Primaires.Visible := true;
          Notes_Alterees.Visible := false;
        end;
        // Puis on affiche la note en question
        TImage(FindComponent('lbl' + Touche)).Visible := false;

        // Modification de la couleur de la touche du piano relâchée
        if TShape(FindComponent(Touche)).Brush.Color=clRed then
          TShape(FindComponent(Touche)).Brush.Color:=clWhite
        else if TShape(FindComponent(Touche)).Brush.Color=clLime then
          TShape(FindComponent(Touche)).Brush.Color:=clBlack;
      end;

    end;
  end;
end;


{------------------------------------------------------------------}

end.

