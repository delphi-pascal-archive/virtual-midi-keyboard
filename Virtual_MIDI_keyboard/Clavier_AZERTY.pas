unit Clavier_AZERTY;

interface

type
  TKeys = Record
    Key : Word;
    Note : string;
    Down: boolean;
end;

var
  // Paramétrage des touches pour un clavier AZERTY (La2 -> Mi4)
  Keys: Array[0..19] of TKeys =(
                                          // Touches du clavier :
    (Key:81;  Note:'La2';  Down:false),   // q
    (Key:83;  Note:'Si2';  Down:false),   // s
    (Key:68;  Note:'Do3';  Down:false),   // d
    (Key:70;  Note:'Re3';  Down:false),   // f
    (Key:71;  Note:'Mi3';  Down:false),   // g
    (Key:72;  Note:'Fa3';  Down:false),   // h
    (Key:74;  Note:'Sol3'; Down:false),   // j
    (Key:75;  Note:'La3';  Down:false),   // k
    (Key:76;  Note:'Si3';  Down:false),   // l
    (Key:77;  Note:'Do4';  Down:false),   // m
    (Key:192; Note:'Re4';  Down:false),   // ù
    (Key:220; Note:'Mi4';  Down:false),   // *

    (Key:90;  Note:'La2d';  Down:false),  // z
    (Key:82;  Note:'Do3d';  Down:false),  // r
    (Key:84;  Note:'Re3d';  Down:false),  // t
    (Key:85;  Note:'Fa3d';  Down:false),  // u
    (Key:73;  Note:'Sol3d'; Down:false),  // i
    (Key:79;  Note:'La3d';  Down:false),  // o
    (Key:221; Note:'Do4d';  Down:false),  // ^
    (Key:186; Note:'Re4d';  Down:false)   // $
  );


implementation

end.
