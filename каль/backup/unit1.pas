unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
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
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
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
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);

    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
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
  Form1: TForm1;
  a, b, c : Real; //Для хранения промежуточных значений
  znak : String;
implementation
   Uses Unit3,Unit5,Unit6,Unit7,Unit8,Unit9, Unit4; // юзяем формы
{$R *.lfm}

{ TForm1 }

procedure TForm1.ClickBut(Sender: TObject);  // Для кнопок от 0 до 9
begin
   Edit1.Text:=Edit1.Text + ( Sender as TButton).Caption;
end;

procedure TForm1.Button22Click(Sender: TObject);  // Удаление последнего символа
var
   str: String;
begin
   str := Edit1.Text;
   if str <> '' then
   Delete(str, Length(str),1);
   edit1.Text:= str;
end;

procedure TForm1.Button23Click(Sender: TObject); // Измененине знака
begin
  if Edit1.Text <> '0' then
  begin
    if Edit1.Text[1] = '-' then Edit1.Text := RightStr(Edit1.Text, Length(Edit1.Text) - 1)
    else Edit1.Text := '-' + Edit1.Text;
  end;
end;

procedure TForm1.Button21Click(Sender: TObject);  // Удаление всех символов
begin
  Edit1.Clear;
end;

procedure TForm1.Button16Click(Sender: TObject); // равно
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

procedure TForm1.Button17Click(Sender: TObject);  // Корень из числа
begin
  a := StrToFloat(Edit1.Text);
  a := sqrt(a);
  Edit1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm1.Button18Click(Sender: TObject); // Квадрат числа
begin
  a := StrToFloat(Edit1.Text);
  a := sqr(a);
  Edit1.Text:=FloatToStr(a);
  a := 0;
end;



procedure TForm1.Button20Click(Sender: TObject); // ydalenie a i b
begin
  Edit1.Clear;
  a:=0;
  b:=0;
  c:=0;
end;

procedure TForm1.ClickZnak(Sender: TObject);  //
begin
 a := StrToFloat(Edit1.Text);
 Edit1.Clear;
 znak :=(Sender as Tbutton).Caption;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  Unit6.form6.show;
  Unit1.form1.Hide;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  Unit7.form7.show;
  Unit1.form1.Hide;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  Edit1.CopyToClipboard;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  Unit8.form8.show;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  Unit9.form9.show;
end;

procedure TForm1.MenuItem8Click(Sender: TObject); // расширенный калькулятор
begin
  Unit3.form3.show;
  Unit1.form1.Hide;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  Edit1.PasteFromClipboard;
end;





end.

