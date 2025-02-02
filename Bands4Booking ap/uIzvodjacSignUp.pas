unit uIzvodjacSignUp;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts;

type
  TFrmIzvodjacSignUp = class(TForm)
    Layout1: TLayout;
    Image1: TImage;
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
    btSignin: TButton;
    reEmail: TRectangle;
    lineEmail: TLine;
    lbEmail: TLabel;
    edEmail: TEdit;
    rePassword2: TRectangle;
    linePassword2: TLine;
    lbPassword2: TLabel;
    edPassword2: TEdit;
    btGoToKorisnikLogIn: TButton;
    procedure btGoToKorisnikLogInClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIzvodjacSignUp: TFrmIzvodjacSignUp;

implementation

{$R *.fmx}

uses uIzvodjacSignIn;

procedure TFrmIzvodjacSignUp.btGoToKorisnikLogInClick(Sender: TObject);
begin
FrmIzvodjacSignIn.show;
end;

end.
