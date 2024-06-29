unit Unit4;

interface

uses
  SysUtils, Classes, DB, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, ZAbstractRODataset;

type
  TDataModule4 = class(TDataModule)
    con: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation
       
uses Unit1, Unit2, Unit3;
{$R *.dfm}

end.
