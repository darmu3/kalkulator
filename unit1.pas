unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, LCLType;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button16: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button31: TButton;
    Edit1: TEdit;
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  ch1, ch2, rez: real;
  znak: char;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button20Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '1';
end;

procedure TForm1.Button19Click(Sender: TObject);
var j, i:string;
begin
  j:=Edit1.Text;
  if j <> '' then Delete(j, Length(j), 1);
  Edit1.Text:=j;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  if Edit1.Text = '' then abort;
  ch1 := StrToFloat(Edit1.Text);
  if ch1 > 0 then
  rez := sqrt(ch1);
  Edit1.Text:=FloatToStr(rez);
  if ch1<0 then Edit1.Text:='';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  if Edit1.Text = '' then abort;
  ch1:=StrToFloat(Edit1.Text);
  znak:= '+';
  Edit1.Clear;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  if Edit1.Text = '' then abort;
  ch1:=StrToFloat(Edit1.Text);
  znak:= '-';
  Edit1.Clear;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  if Edit1.Text = '' then abort;
  ch1:=StrToFloat(Edit1.Text);
  znak:= '*';
  Edit1.Clear;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  if Edit1.Text = '' then abort;
  ch1:=StrToFloat(Edit1.Text);
  znak:= '/';
  Edit1.Clear;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '2';
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '3';
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '4';
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '5';
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '6';
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '7';
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '8';
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '9';
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + '0';
end;

procedure TForm1.Button31Click(Sender: TObject);
begin
  if Edit1.Text = '' then abort;
  ch2 := StrToFloat(Edit1.Text);
  Edit1.Clear;
  if znak = '+' then
  begin
    rez := ch1 + ch2;
  end;
  if znak = '-' then
  begin
    rez := ch1 - ch2;
  end;
  if znak = '*' then
  begin
    rez := ch1 * ch2;
  end;
  if znak = '/' then
  begin
    if ch2 = 0 then begin ShowMessage('Деление на ноль невозможно!'); Abort; end;
    rez := ch1 / ch2;
  end;
  Edit1.Text:= FloatToStr(rez);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Edit1.MaxLength:=13;
end;








end.

