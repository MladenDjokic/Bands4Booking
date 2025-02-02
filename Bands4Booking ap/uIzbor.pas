unit uIzbor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFrmIzbor = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Image1: TImage;
    Text1: TText;
    Text2: TText;
    btnKorisnik: TCornerButton;
    btnIzvodjac: TCornerButton;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    procedure btnKorisnikClick(Sender: TObject);
    procedure btnIzvodjacClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIzbor: TFrmIzbor;

implementation

{$R *.fmx}

uses uKorisnikSignIn, uIzvodjacSignIn;

procedure TFrmIzbor.btnIzvodjacClick(Sender: TObject);
begin
FrmIzvodjacSignIn.Show;
end;

procedure TFrmIzbor.btnKorisnikClick(Sender: TObject);
begin
FrmKorisnikSignIn.Show;
end;

end.
