unit Musiques;

interface

type
  TMusiques = Record
    Note1  : string;
    Note2  : string;
    Note3  : string;
    Note4  : string;
    Duree : single;
end;
const
  // The Bare Necessities

  // MELODIE (Main droite)
  Musique1_MD: Array[0..27] of TMusiques =(
     (Duree:1;)
    ,(Note1:'Do3';  Duree:1;)
    ,(Note1:'Re3';  Duree:1;)
    ,(Note1:'Fa3';  Duree:1;)

    ,(Duree:1;)
    ,(Note1:'La3';  Duree:2;)
    ,(Note1:'Sol3d';Duree:1;)

    ,(Note1:'La3';  Duree:1;)
    ,(Note1:'Sol3'; Duree:1;)
    ,(Note1:'Fa3';  Duree:1;)
    ,(Note1:'Fa3';  Duree:1;)

    ,(Note1:'Sol3'; Duree:1;)
    ,(Note1:'Fa3';  Duree:1;)
    ,(Note1:'Sol3'; Duree:1;)
    ,(Note1:'Fa3';  Duree:1;)

    ,(Note1:'Sol3'; Duree:1;)
    ,(Note1:'Fa3';  Duree:1;)
    ,(Note1:'Re3';  Duree:1;)
    ,(Note1:'Do3';  Duree:1;)

    ,(Note1:'Fa3';  Duree:1;)
    ,(Note1:'Do3';  Duree:1;)
    ,(Note1:'Fa3';  Duree:1;)
    ,(Note1:'La3';  Duree:1;)

    ,(Note1:'Re4';  Duree:1;)
    ,(Note1:'Do4';  Duree:1;)
    ,(Note1:'La3d'; Duree:1;)
    ,(Note1:'La3';  Duree:1;)

    ,(Note1:'Sol3'; Duree:4;)
  );

  // ACCOMPAGNEMENT "Mélodie" (Main gauche)
  Musique1_MG: Array[0..30] of TMusiques =(
     (Duree:4;)

    ,(Note1:'Fa1';  Duree:1;)
    ,(Duree:1;)
    ,(Note1:'Do1';Duree:1;)
    ,(Duree:1;)

    ,(Note1:'Fa1';  Duree:1;)
    ,(Duree:1;)
    ,(Note1:'La1';Duree:1;)
    ,(Duree:1;)

    ,(Note1:'La1d';  Duree:1;)
    ,(Duree:1;)
    ,(Note1:'Fa1';Duree:1;)
    ,(Duree:1;)

    ,(Note1:'La1d';  Duree:1;)
    ,(Duree:1;)
    ,(Note1:'Sol1';Duree:1;)
    ,(Duree:1;)

    ,(Note1:'Fa1';  Duree:1;)
    ,(Duree:1;)
    ,(Note1:'Re1d';Duree:1;)
    ,(Duree:1;)

    ,(Note1:'Re1';  Duree:1;)
    ,(Duree:1;)
    ,(Note1:'Fa1d';Duree:1;)
    ,(Duree:1;)

    ,(Note1:'Sol1';  Duree:1;)
    ,(Note1:'La1';  Duree:1;)
    ,(Note1:'La1d';Duree:1;)
    ,(Note1:'La1d';  Duree:1;)

    ,(Note1:'Do2';  Duree:1;)
    ,(Duree:3;)
  );

  {
  // Accompagnement "Accords" (Main Gauche)
  Musique1_MG: Array[0..8] of TMusiques =(
     (Duree:4;)

    ,(Note1:'Fa2';  Note2:'La2';  Note3:'Do3';  Note4:'Mi3';  Duree:4;)

    ,(Note1:'Fa2';  Note2:'La2';  Note3:'Do3';  Note4:'Re3d'; Duree:4;)

    ,(Note1:'Fa2';  Note2:'La2';  Note3:'Do3d'; Note4:'Re3';  Duree:4;)

    ,(Note1:'Fa2';  Note2:'Sol2'; Note3:'La3d'; Note4:'Re3';  Duree:4;)

    ,(Note1:'Fa2';  Note2:'La2';  Note3:'Do3';  Note4:'Re3';  Duree:2;)
    ,(Note1:'Sol2'; Note2:'La2';  Note3:'Do3';  Note4:'Re3d'; Duree:2;)

    ,(Note1:'Fa2d'; Note2:'La2';  Note3:'Do3';  Note4:'Re3';  Duree:4;)

    ,(Note1:'Fa2';  Note2:'Sol2'; Note3:'Si2';  Note4:'Re3';  Duree:4;)

  );
  }

implementation

end.
