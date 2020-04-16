unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  Menus;

type

  { TForm4 }

  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
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
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;
   a, b, c : Real;
  n : integer;
  const sist:string[16]='0123456789ABCDEF'; //цифры в СС 2-16
implementation
uses Unit1,Unit5,Unit8,Unit9,Unit3, math;

{$R *.lfm}

{ TForm4 }
operator ** (a1,a2 : Extended) Rez : Extended;  // для x^x
//Xn=e n*ln(x)
begin
  Rez := exp(a2*ln(a1));
end;
 function fact(n:integer):longint; //factorial
begin
if n=1 then fact:=1
         else fact:=fact(n-1)*n;
end;
 function FromDec(n,r:integer):string; // перевод в систему счисления
begin
result:='';
repeat
result:=sist[(n mod r)+1]+result;
n:=n div r;
until n=0;
end;
procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
  a:=StrToFloat(edit1.Text);{Переводим текст, находящийся в поле ввода edit1 в вещественное число. Если необходимо работать с целыми числами, то используется функция StrToInt}
  b:=StrToFloat(edit2.Text);
  c:=a+b;
  Memo1.Text:=FloatToStr(c); {В текстовое поде ввода edit3 выводим полученную сумму, не забыв при этом сделать обратное преобразование вещественного числа result в строку. Если необходимо работать с целыми числами, то используется функция IntToStr}

end;

procedure TForm4.SpeedButton10Click(Sender: TObject);
begin
  a:=StrToFloat(edit1.Text);
  b:=StrToFloat(edit2.Text);
  c:=a/b;
  Memo1.Text:=FloatToStr(c);
end;

procedure TForm4.MenuItem3Click(Sender: TObject);
begin
  Edit1.PasteFromClipboard;
end;

procedure TForm4.MenuItem7Click(Sender: TObject);
begin
  Unit1.form1.show;
  Unit4.form4.Hide;
end;

procedure TForm4.MenuItem9Click(Sender: TObject);
begin
  Unit8.form8.show;
end;

procedure TForm4.MenuItem11Click(Sender: TObject);
begin
  Unit3.form3.show;
  Unit4.form4.Hide;
end;

procedure TForm4.MenuItem10Click(Sender: TObject);
begin
  Unit9.form9.show;
end;

procedure TForm4.MenuItem13Click(Sender: TObject);
begin
  Unit5.form5.show;
  Unit4.form4.Hide;
end;

procedure TForm4.MenuItem2Click(Sender: TObject);
begin
  Edit1.CopyToClipboard;
end;

procedure TForm4.SpeedButton11Click(Sender: TObject);
begin
   a:=StrToFloat(Edit1.Text);
  a:=log10(a);
  Memo1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm4.SpeedButton12Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=abs(a);
  Memo1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm4.SpeedButton13Click(Sender: TObject);
begin
  n:=StrToInt(edit1.Text);
  c:=fact(n);
  Memo1.Text:=FloatToStr(c);
end;

procedure TForm4.SpeedButton14Click(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Memo1.text:=FromDec(n,2)
end;

procedure TForm4.SpeedButton15Click(Sender: TObject);
begin
  a := StrToInt(Edit1.Text); // Здесь - угол в градусах
  Memo1.Text := FloatToStr(cos(degtorad(a)));
end;

procedure TForm4.SpeedButton16Click(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Memo1.text:=FromDec(n,8)
end;

procedure TForm4.SpeedButton17Click(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Memo1.text:=FromDec(n,16)
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
  a:=StrToFloat(edit1.Text);
  b:=StrToFloat(edit2.Text);
  c:=a*b;
  Memo1.Text:=FloatToStr(c);
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=a/100;
  Memo1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
begin
   a := StrToFloat(Edit1.Text);
  a := sqr(a);
  Memo1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm4.SpeedButton5Click(Sender: TObject);
begin
  a := StrToInt(Edit1.Text); // Здесь - угол в градусах
  Memo1.Text := FloatToStr(sin(degtorad(a)));
end;

procedure TForm4.SpeedButton6Click(Sender: TObject);
begin
   a:=StrToFloat(edit1.Text);
  b:=StrToFloat(edit2.Text);
  c:=a-b;
  Memo1.Text:=FloatToStr(c);
end;

procedure TForm4.SpeedButton7Click(Sender: TObject);
begin
  a := StrToFloat(Edit1.Text);
  a := sqrt(a);
  Memo1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm4.SpeedButton8Click(Sender: TObject);
var
  a,b:Extended;
begin
  a:= StrToFloat(Edit1.Text);
  b:= StrToFloat(Edit2.Text);
  Memo1.Clear;
  Memo1.Text:=FloatToStr(a ** b);
end;

procedure TForm4.SpeedButton9Click(Sender: TObject);
begin
  a:=StrToFloat(edit1.Text);
  b:=StrToFloat(edit2.Text);
  c:=ln(b)/ln(a);
  Memo1.Text:=FloatToStr(c);
end;

end.

