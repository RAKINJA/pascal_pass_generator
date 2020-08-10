unit main_class;

{$mode objfpc}{$H+}

interface

uses
    Classes, SysUtils;

const
    // Range Variables
    PWGENERICLOWERCASEARRAY : String = 'abcdefghijklmnopqrstuvwxyz';
    PWGENERICUPPERCASEARRAY : String = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    PWGENERICNUMBERARRAY    : String = '1234567890';
    PWGENERICSPECIALARRAY   : String = '!#$%&+@.,;-=';

type

    TPWData = record { TPWData RECORD }
        pwmin_size, pwmax_size : Integer;   // Both 9
        LWCASSE, UPPCASE : boolean;         // Both False
        numbers : boolean;                  // True
        special : boolean;                  // False
    end; { END : TPWData RECORD }

var

implementation

end.

