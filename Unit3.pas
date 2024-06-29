unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl1: TLabel;
    DBGrid1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses Unit1, Unit2, Unit4;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule4.zqry1.SQL.Clear;
DataModule4.zqry1.SQL.Add('insert into kategori values(null,"'+edt1.Text+'")');
DataModule4.zqry1.ExecSQL;

DataModule4.zqry1.SQL.Clear;
DataModule4.zqry1.SQL.Add('select * from kategori');
DataModule4.zqry1.Open;
ShowMessage('Data Berhasil Tersimpan !');
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.zqry1.Fields[1].AsString;
a:= DataModule4.zqry1.Fields[0].AsString;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
with DataModule4.zqry1 do
begin
  SQL.Clear;
  SQL.Add('update kategori set nama="'+edt1.Text+'" where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('select * from kategori');
  Open;
ShowMessage('Data Berhasil Terupdate !');

end;

end;

procedure TForm3.btn3Click(Sender: TObject);
begin  
with DataModule4.zqry1 do
begin
  SQL.Clear;
  SQL.Add('delete from kategori where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('select * from kategori');
  Open;
ShowMessage('Data Berhasil Terhapus !');

end;

end;

end.
 