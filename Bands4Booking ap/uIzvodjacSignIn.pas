unit uIzvodjacSignIn;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation, FMX.Layouts;

type
  TFrmIzvodjacSignIn = class(TForm)
    Layout1: TLayout;
    Text1: TText;
    Text2: TText;
    Layout2: TLayout;
    Rectangle3: TRectangle;
    Text3: TText;
    Linput: TLayout;
    reUsername: TRectangle;
    lineUsername: TLine;
    lbUsername: TLabel;
    edUsername: TEdit;
    rePassword: TRectangle;
    linePassword: TLine;
    lbPassword: TLabel;
    edPassword: TEdit;
    cbShowPassword: TCheckBox;
    btLogin: TButton;
    Image2: TImage;
    btGoToKorisnikSignUp: TButton;
    procedure btGoToKorisnikSignUpClick(Sender: TObject);
    procedure edUsernameKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure cbShowPasswordChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIzvodjacSignIn: TFrmIzvodjacSignIn;

implementation

{$R *.fmx}

uses uIzvodjacSignUp;

procedure TFrmIzvodjacSignIn.btGoToKorisnikSignUpClick(Sender: TObject);
begin
FrmIzvodjacSignUp.show;
end;

procedure TFrmIzvodjacSignIn.cbShowPasswordChange(Sender: TObject);
begin
edPassword.Password:= not cbShowPassword.IsChecked;
end;

procedure TFrmIzvodjacSignIn.edUsernameKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
if key=vkreturn then edpassword.SetFocus;
if key=vktab then edpassword.SetFocus;
end;

end.
