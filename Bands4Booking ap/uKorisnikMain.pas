unit uKorisnikMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TFrmKorisnikMain = class(TForm)
    Top: TLayout;
    Bottom: TLayout;
    Middle: TLayout;
    lUser: TLabel;
    btClose: TButton;
    UpHalf: TLayout;
    recBG: TRectangle;
    lZdravo: TLabel;
    recTopBG: TRectangle;
    cProfilePic: TCircle;
    Image1: TImage;
    recPretraga: TRoundRect;
    lPretraga: TLabel;
    Image2: TImage;
    btSort: TCornerButton;
    imgSort: TImage;
    BotHalf: TLayout;
    recBotHalf: TRectangle;
    MidSlika: TLayout;
    imgSlikaMain: TImage;
    recBottomBG: TRectangle;
    Opcije: TLayout;
    btBend: TCornerButton;
    btPevac: TCornerButton;
    btDJ: TCornerButton;
    btGitarista: TCornerButton;
    BotIzvodjaci: TLayout;
    recIzvodjac: TRectangle;
    recSlika: TRectangle;
    imgBend: TImage;
    lNazivBenda: TLabel;
    lVrsta: TLabel;
    recDodaj: TRoundRect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmKorisnikMain: TFrmKorisnikMain;

implementation

{$R *.fmx}

end.
