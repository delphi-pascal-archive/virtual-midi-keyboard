unit Notes_Midi;

interface

type
  TNotes = Record
    Note : string;
    SonMidi : string;
    Down : boolean;
end;

var
  Notes: Array[0..60] of TNotes =(

    // CLE DE FA
    (Note:'Do1';   SonMidi:'24'; Down: false;),
    (Note:'Do1d';  SonMidi:'25'; Down: false;),
    (Note:'Re1';   SonMidi:'26'; Down: false;),
    (Note:'Re1d';  SonMidi:'27'; Down: false;),
    (Note:'Mi1';   SonMidi:'28'; Down: false;),
    (Note:'Fa1';   SonMidi:'29'; Down: false;),
    (Note:'Fa1d';  SonMidi:'2A'; Down: false;),
    (Note:'Sol1';  SonMidi:'2B'; Down: false;),
    (Note:'Sol1d'; SonMidi:'2C'; Down: false;),
    (Note:'La1';   SonMidi:'2D'; Down: false;),
    (Note:'La1d';  SonMidi:'2E'; Down: false;),
    (Note:'Si1';   SonMidi:'2F'; Down: false;),

    (Note:'Do2';   SonMidi:'30'; Down: false;),
    (Note:'Do2d';  SonMidi:'31'; Down: false;),
    (Note:'Re2';   SonMidi:'32'; Down: false;),
    (Note:'Re2d';  SonMidi:'33'; Down: false;),
    (Note:'Mi2';   SonMidi:'34'; Down: false;),
    (Note:'Fa2';   SonMidi:'35'; Down: false;),
    (Note:'Fa2d';  SonMidi:'36'; Down: false;),
    (Note:'Sol2';  SonMidi:'37'; Down: false;),
    (Note:'Sol2d'; SonMidi:'38'; Down: false;),
    (Note:'La2';   SonMidi:'39'; Down: false;),
    (Note:'La2d';  SonMidi:'3A'; Down: false;),
    (Note:'Si2';   SonMidi:'3B'; Down: false;),

    // CLE DE SOL
    (Note:'Do3';   SonMidi:'3C'; Down: false;),
    (Note:'Do3d';  SonMidi:'3D'; Down: false;),
    (Note:'Re3';   SonMidi:'3E'; Down: false;),
    (Note:'Re3d';  SonMidi:'3F'; Down: false;),
    (Note:'Mi3';   SonMidi:'40'; Down: false;),
    (Note:'Fa3';   SonMidi:'41'; Down: false;),
    (Note:'Fa3d';  SonMidi:'42'; Down: false;),
    (Note:'Sol3';  SonMidi:'43'; Down: false;),
    (Note:'Sol3d'; SonMidi:'44'; Down: false;),
    (Note:'La3';   SonMidi:'45'; Down: false;),
    (Note:'La3d';  SonMidi:'46'; Down: false;),
    (Note:'Si3';   SonMidi:'47'; Down: false;),

    (Note:'Do4';   SonMidi:'48'; Down: false;),
    (Note:'Do4d';  SonMidi:'49'; Down: false;),
    (Note:'Re4';   SonMidi:'4A'; Down: false;),
    (Note:'Re4d';  SonMidi:'4B'; Down: false;),
    (Note:'Mi4';   SonMidi:'4C'; Down: false;),
    (Note:'Fa4';   SonMidi:'4D'; Down: false;),
    (Note:'Fa4d';  SonMidi:'4E'; Down: false;),
    (Note:'Sol4';  SonMidi:'4F'; Down: false;),
    (Note:'Sol4d'; SonMidi:'50'; Down: false;),
    (Note:'La4';   SonMidi:'51'; Down: false;),
    (Note:'La4d';  SonMidi:'52'; Down: false;),
    (Note:'Si4';   SonMidi:'53'; Down: false;),

    (Note:'Do5';   SonMidi:'54'; Down: false;),
    (Note:'Do5d';  SonMidi:'55'; Down: false;),
    (Note:'Re5';   SonMidi:'56'; Down: false;),
    (Note:'Re5d';  SonMidi:'57'; Down: false;),
    (Note:'Mi5';   SonMidi:'58'; Down: false;),
    (Note:'Fa5';   SonMidi:'59'; Down: false;),
    (Note:'Fa5d';  SonMidi:'5A'; Down: false;),
    (Note:'Sol5';  SonMidi:'5B'; Down: false;),
    (Note:'Sol5d'; SonMidi:'5C'; Down: false;),
    (Note:'La5';   SonMidi:'5D'; Down: false;),
    (Note:'La5d';  SonMidi:'5E'; Down: false;),
    (Note:'Si5';   SonMidi:'5F'; Down: false;),

    (Note:'Do6';   SonMidi:'60'; Down: false;)
  );

implementation

end.
