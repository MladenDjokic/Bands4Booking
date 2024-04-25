program Bands4Booking;

uses
  System.StartUpCopy,
  FMX.Forms,
  uIntro in 'uIntro.pas' {FrmIntro},
  uIzbor in 'uIzbor.pas' {FrmIzbor},
  uKorisnikSignIn in 'uKorisnikSignIn.pas' {FrmKorisnikSignIn},
  uKorisnikMain in 'uKorisnikMain.pas' {FrmKorisnikMain},
  uDM in 'uDM.pas' {dm: TDataModule},
  uKorisnikSignUp in 'uKorisnikSignUp.pas' {FrmKorisnikSignUp},
  uIzvodjacSignIn in 'uIzvodjacSignIn.pas' {FrmIzvodjacSignIn},
  uIzvodjacSignUp in 'uIzvodjacSignUp.pas' {FrmIzvodjacSignUp};

//error

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFrmIntro, FrmIntro);
  Application.CreateForm(TFrmIzbor, FrmIzbor);
  Application.CreateForm(TFrmKorisnikSignIn, FrmKorisnikSignIn);
  //Application.CreateForm(TDataModule, data);
  Application.CreateForm(TFrmKorisnikSignUp, FrmKorisnikSignUp);
  Application.CreateForm(TFrmIzvodjacSignIn, FrmIzvodjacSignIn);
  Application.CreateForm(TFrmIzvodjacSignUp, FrmIzvodjacSignUp);
  //error
  Application.Run;
end.
