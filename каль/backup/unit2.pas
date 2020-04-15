unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure ClickButt(Sender: TObject);
    procedure ClickZnakk(Sender: TObject);



  private

  public

  end;

var
  Form2: TForm2;
  a, b, c : Real; //Для хранения промежуточных значений
    znak : String;
implementation
    uses Unit1, math;

{$R *.lfm}

{ TForm2 }
procedure TForm2.ClickButt(Sender: TObject);  // Для кнопок от 0 до 9
    begin
       Edit2.Text:=Edit2.Text + ( Sender as TButton).Caption;


end;

procedure TForm2.Button22Click(Sender: TObject);  // posl simvol
var
   str: String;
begin
   str := Edit2.Text;
   if str <> '' then
   Delete(str, Length(str),1);
   edit2.Text:= str;
end;

procedure TForm2.Button24Click(Sender: TObject);  // sin
begin
  a := StrToInt(Edit2.Text); // Здесь - угол в градусах
  Edit2.Text := FloatToStr(sin(degtorad(a))); // Здесь - значение синуса этого угла
end;

procedure TForm2.Button25Click(Sender: TObject); // cos
begin
 a := StrToInt(Edit2.Text); // Здесь - угол в градусах
  Edit2.Text := FloatToStr(cos(degtorad(a))); // Здесь - значение синуса этого угла
end;

procedure TForm2.Button26Click(Sender: TObject);
Var X : Double;
begin


X := Power(a + b, -c);
end;

procedure TForm2.Button21Click(Sender: TObject);  // vse simvoli ydalenie
begin
  Edit2.Clear;
end;

procedure TForm2.Button20Click(Sender: TObject);  // a i b ydalenie
begin
  Edit2.Clear;
  a:=0;
  b:=0;
  c:=0;
end;

procedure TForm2.Button16Click(Sender: TObject);  // =
begin
   b := strToFloat(Edit2.Text);
   Edit2.Clear;
  case znak of
  '+' : c := a+b;
  '-' : c := a-b;
  '*' : c := a*b;
  '/' : c := a/b;

 end;
  Edit3.Text:= FloatToStr(c);
end;

procedure TForm2.Button17Click(Sender: TObject); //koren'
begin
  a := StrToFloat(Edit2.Text);
  a := sqrt(a);
  Edit2.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm2.Button18Click(Sender: TObject); // x^2
begin
   a := StrToFloat(Edit2.Text);
  a := sqr(a);
  Edit2.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm2.ClickZnakk(Sender: TObject);
begin
  a := StrToFloat(Edit2.Text);
    Edit2.Clear;

    znak :=(Sender as TButton).Caption;
end;







end.

