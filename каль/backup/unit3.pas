unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
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
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);


  private

  public

  end;

var
  Form3: TForm3;
  a, b, c : Real;
  n : integer;
  const sist:string[16]='0123456789ABCDEF'; //цифры в СС 2-16
implementation
 uses Unit1,Unit4,Unit5,Unit8,Unit9, math;
{$R *.lfm}

 { TForm3 }
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
 procedure TForm3.Button1Click(Sender: TObject);  //+
 begin
  a:=StrToFloat(edit1.Text);{Переводим текст, находящийся в поле ввода edit1 в вещественное число. Если необходимо работать с целыми числами, то используется функция StrToInt}
  b:=StrToFloat(edit2.Text);
  c:=a+b;
  Memo1.Text:=FloatToStr(c); {В текстовое поде ввода edit3 выводим полученную сумму, не забыв при этом сделать обратное преобразование вещественного числа result в строку. Если необходимо работать с целыми числами, то используется функция IntToStr}
 end;

procedure TForm3.Button10Click(Sender: TObject); //cos
begin
  a := StrToInt(Edit1.Text); // Здесь - угол в градусах
  Memo1.Text := FloatToStr(cos(degtorad(a))); // Здесь - значение синуса этого угла
end;

procedure TForm3.Button11Click(Sender: TObject);
begin
  a:=StrToFloat(edit1.Text);
  b:=StrToFloat(edit2.Text);
  c:=ln(b)/ln(a);
  Memo1.Text:=FloatToStr(c);
end;

procedure TForm3.Button12Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=log10(a);
  Memo1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm3.Button13Click(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=abs(a);
  Memo1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm3.Button14Click(Sender: TObject);//factorial

begin
  n:=StrToInt(edit1.Text);
  c:=fact(n);
  Memo1.Text:=FloatToStr(c);
end;

procedure TForm3.Button15Click(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Memo1.text:=FromDec(n,2)
end;

procedure TForm3.Button16Click(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Memo1.text:=FromDec(n,8)
end;

procedure TForm3.Button17Click(Sender: TObject);
begin
  n:=StrToInt(Edit1.Text);
  Memo1.text:=FromDec(n,16)
end;

procedure TForm3.Button2Click(Sender: TObject); //-
begin
  a:=StrToFloat(edit1.Text);
  b:=StrToFloat(edit2.Text);
  c:=a-b;
  Memo1.Text:=FloatToStr(c);
end;

procedure TForm3.Button3Click(Sender: TObject); //*
begin
  a:=StrToFloat(edit1.Text);
  b:=StrToFloat(edit2.Text);
  c:=a*b;
  Memo1.Text:=FloatToStr(c);
end;

procedure TForm3.Button4Click(Sender: TObject);  // delenie
begin
  a:=StrToFloat(edit1.Text);
  b:=StrToFloat(edit2.Text);
  c:=a/b;
  Memo1.Text:=FloatToStr(c);
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
   a:=StrToFloat(Edit1.Text);
  a:=a/100;
  Memo1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm3.Button6Click(Sender: TObject);  //x^2
begin
  a := StrToFloat(Edit1.Text);
  a := sqr(a);
  Memo1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm3.Button7Click(Sender: TObject);//kor
begin
  a := StrToFloat(Edit1.Text);
  a := sqrt(a);
  Memo1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm3.Button8Click(Sender: TObject); //x^x
var
  a,b:Extended;
begin
  a:= StrToFloat(Edit1.Text);
  b:= StrToFloat(Edit2.Text);
  Memo1.Clear;
  Memo1.Text:=FloatToStr(a ** b);
end;

procedure TForm3.Button9Click(Sender: TObject); //sin
begin
  a := StrToInt(Edit1.Text); // Здесь - угол в градусах
  Memo1.Text := FloatToStr(sin(degtorad(a))); // Здесь - значение синуса этого угла
end;

procedure TForm3.MenuItem10Click(Sender: TObject);
begin
  Unit9.form9.show;
end;

procedure TForm3.MenuItem12Click(Sender: TObject);
begin
  Unit4.form4.show;
  Unit3.form3.Hide;
end;

procedure TForm3.MenuItem13Click(Sender: TObject);
begin
  Unit5.form5.show;
  Unit3.form3.Hide;
end;

procedure TForm3.MenuItem2Click(Sender: TObject);
begin
  Edit1.CopyToClipboard;
end;

procedure TForm3.MenuItem6Click(Sender: TObject);
begin
  Edit1.PasteFromClipboard;
end;

procedure TForm3.MenuItem7Click(Sender: TObject);
begin
  Unit1.form1.show;
  Unit3.form3.Hide;
end;

procedure TForm3.MenuItem8Click(Sender: TObject);
begin

end;

procedure TForm3.MenuItem9Click(Sender: TObject);
begin
  Unit8.form8.show;
end;

 { TForm3 }



{ TForm3 }


end.

