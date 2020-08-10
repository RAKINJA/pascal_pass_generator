
{ ************************************************* }
{ This program is under GNUGPL                      }
{ ************************************************* }
{ Created by: Victor Hdez                           }
{ Date: 16 / 03 / 2020                              }

unit pass_generator;
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  Menus, ExtCtrls, MaskEdit, Spin, main_class;

const
  // Range Variables
    PWGENERICLOWERCASEARRAY : String = 'abcdefghijklmnopqrstuvwxyz';
    PWGENERICUPPERCASEARRAY : String = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    PWGENERICNUMBERARRAY    : String = '1234567890';
    PWGENERICSPECIALARRAY   : String = '!#$%&+@';

type

	{ Tmain_form }

    Tmain_form = class(TForm) { -- 'Tmain_form' CLASS -- }
        // Main Menu
        main_menu: TMainMenu;
            help_menu: TMenuItem;
            help_item: TMenuItem;
			max_pass_length_text: TLabel;

        // Top Group
        min_pass_lenght: TEdit; min_pass_lenght_text: TLabel;

        max_pass_lenght: TEdit; max_pass_lenght_text: TLabel;

        check_size: TCheckBox;

        config_group_box: TGroupBox; // Group Box

        // Botton Group
        check_special: TCheckBox;
	    check_lower: TCheckBox;
	    check_upper: TCheckBox;
	    check_number: TCheckBox;
		min_pass_length_text: TLabel;

        // RESULTS

		pass_result_field: TMaskEdit;
        Generate: TBitBtn;

        show_pass: TBitBtn;
    	copy_pass: TBitBtn;
		SpinEdit1: TSpinEdit;
		SpinEdit2: TSpinEdit;

        // --- PROCEDURES
		procedure check_sizeChange(Sender: TObject);
        procedure FormCreate(Sender: TObject);
		procedure GenerateClick(Sender: TObject);

	    private
        public
    end; { -- END: FORM CLASS -- }




var // LOCAL VARIABLES
    main_form: Tmain_form;
    PWData : TPWData = ( pwmin_size:9; pwmax_size :9; LWCASSE :False; UPPCASE :False; numbers :True; special :False; );

implementation

{$R *.lfm}

{ Tmain_form }

procedure Tmain_form.FormCreate(Sender: TObject);
begin

end;

procedure Tmain_form.check_sizeChange(Sender: TObject);
begin
    if (max_pass_lenght.Enabled) then begin
        max_pass_lenght_text.Enabled := false;
        max_pass_lenght.Enabled    := false;

        PWData.pwmax_size := PWData.pwmin_size;
    end else begin
        max_pass_lenght_text.Enabled := true;
        max_pass_lenght.Enabled      := true;

        PWData.pwmax_size := max_pass_lenght.cap;

    end;
end;

procedure Tmain_form.GenerateClick(Sender: TObject);
begin

end;

end.

