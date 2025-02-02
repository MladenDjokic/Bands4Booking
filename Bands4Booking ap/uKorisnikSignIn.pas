unit uKorisnikSignIn;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Edit, FMX.StdCtrls, FMX.Controls.Presentation;

type
  TFrmKorisnikSignIn = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Image1: TImage;
    Text1: TText;
    Text2: TText;
    btLogin: TButton;
    Rectangle3: TRectangle;
    Text3: TText;
    Linput: TLayout;
    lineUsername: TLine;
    lbUsername: TLabel;
    edUsername: TEdit;
    linePassword: TLine;
    lbPassword: TLabel;
    edPassword: TEdit;
    reUsername: TRectangle;
    rePassword: TRectangle;
    cbShowPassword: TCheckBox;
    btGoToKorisnikSignUp: TButton;
    procedure cbShowPasswordChange(Sender: TObject);
    procedure edUsernameKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edPasswordKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btLoginClick(Sender: TObject);
    procedure btGoToKorisnikSignUpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmKorisnikSignIn: TFrmKorisnikSignIn;

implementation


{$R *.fmx}
uses uDM, uKorisnikMain, uKorisnikSignUp;


procedure TFrmKorisnikSignIn.btGoToKorisnikSignUpClick(Sender: TObject);
begin
FrmKorisnikSignUp.show;
end;

procedure TFrmKorisnikSignIn.btLoginClick(Sender: TObject);
 var pwd: string;
begin
if trim(edUsername.Text)='' then
begin
  Showmessage('Please enter user name');
  edUsername.SetFocus;
end
else
begin
  // validate the username and password
  with dm do begin
    dbLibrary.Open();
    qTemp.SQL.Clear;
    qTemp.SQL.Text:='Select * From users Where username='+quotedstr(edUsername.Text);
     //checking username in database
     qTemp.Open();
     if qTemp.RecordCount = 0 then
     begin
      pwd:=qtemp.FieldByName('password').AsString;
     if pwd=edPassword.Text then
      begin
        //valid user and password, go to main
        //hide fmrLogin and create and show Main menu
        // login success
        FrmKorisnikSignIn.Hide;
        //show main menu
        if not Assigned(FrmKorisnikMain) then
        FrmKorisnikMain:=FrmKorisnikMain.Create(self);
        FrmKorisnikMain.lUser.text:='User Name: ' +edUsername.Text;
        FrmKorisnikMain.ShowModal(
        procedure(ModalResult: TModalResult)
        begin
          if ModalResult = mrClose then Application.Terminate;

        end);



      end
      else
      begin
         showmessage('Incorrect Password!');
      end;
     end
     else begin
      //does not exist
     showmessage(' User name is not valid');
     end;
  end; //end with
end;

end;

procedure TFrmKorisnikSignIn.cbShowPasswordChange(Sender: TObject);
begin
edPassword.Password:= not cbShowPassword.IsChecked;
end;

procedure TFrmKorisnikSignIn.edPasswordKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
if key=vkreturn then btLogin.SetFocus;
end;

procedure TFrmKorisnikSignIn.edUsernameKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
if key=vkreturn then edpassword.SetFocus;
if key=vktab then edpassword.SetFocus;

end;

end.
