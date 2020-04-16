unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  Buttons;

type

  { TForm6 }

  TForm6 = class(TForm)
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    procedure ClickBut1(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);

    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private

  public

  end;

var
  Form6: TForm6;
   a, b, c : Real; //Для хранения промежуточных значений
  znak : String;
implementation
Uses Unit1,Unit3,Unit8,Unit9,Unit7;
{$R *.lfm}
 procedure TForm6.ClickBut1(Sender: TObject);  // Для кнопок от 0 до 9
begin
   Edit1.Text:=Edit1.Text + ( Sender as TSpeedButton).Caption;
end;

procedure TForm6.Edit1Change(Sender: TObject);
begin

end;

procedure TForm6.FormCreate(Sender: TObject);
begin

end;

procedure TForm6.MenuItem11Click(Sender: TObject);
begin
   Unit1.form1.show;
  Unit6.form6.Hide;
end;

procedure TForm6.MenuItem13Click(Sender: TObject);
begin
  Unit7.form7.show;
  Unit6.form6.Hide;
end;

procedure TForm6.MenuItem2Click(Sender: TObject);
begin
  Edit1.CopyToClipboard;
end;

procedure TForm6.MenuItem6Click(Sender: TObject);
begin
  Unit8.form8.show;
end;

procedure TForm6.MenuItem7Click(Sender: TObject);
begin
  Unit9.form9.show;
end;

procedure TForm6.MenuItem8Click(Sender: TObject);
begin
  Unit3.form3.show;
  Unit6.form6.Hide;
end;

procedure TForm6.MenuItem9Click(Sender: TObject);
begin
  Edit1.PasteFromClipboard;
end;



procedure TForm6.SpeedButton18Click(Sender: TObject);
begin
  Edit1.Clear;
  a:=0;
  b:=0;
  c:=0;
end;

procedure TForm6.SpeedButton19Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm6.SpeedButton20Click(Sender: TObject);
  var
   str: String;
begin
   str := Edit1.Text;
   if str <> '' then
   Delete(str, Length(str),1);
   edit1.Text:= str;
end;

procedure TForm6.SpeedButton21Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=a/100;
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm6.SpeedButton22Click(Sender: TObject);
begin
   a := StrToFloat(Edit1.Text);
  a := sqr(a);
  Edit1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm6.SpeedButton23Click(Sender: TObject);
begin
  a := StrToFloat(Edit1.Text);
  a := sqrt(a);
  Edit1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
  if Edit1.Text <> '0' then
  begin
    if Edit1.Text[1] = '-' then Edit1.Text := RightStr(Edit1.Text, Length(Edit1.Text) - 1)
    else Edit1.Text := '-' + Edit1.Text;
  end;
end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + ( Sender as TButton).Caption;
end;

procedure TForm6.ClickZnak(Sender: TObject);
begin
  a := StrToFloat(Edit1.Text);
 Edit1.Clear;
 znak :=(Sender as TSpeedbutton).Caption;
end;

procedure TForm6.SpeedButton5Click(Sender: TObject);
begin
  b := strToFloat(Edit1.Text);
  Edit1.Clear;
  case znak of
  '+' : c := a+b;
  '-' : c := a-b;
  '*' : c := a*b;
  '/' : c := a/b;

 end;
  Edit1.Text:= FloatToStr(c);
end;



end.

