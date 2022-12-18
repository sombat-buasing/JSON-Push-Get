unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  rest.json, System.JSON;

type
  TfrmMain = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  objJson : TJSONOBject;

implementation

{$R *.dfm}


procedure TfrmMain.FormCreate(Sender: TObject);
begin
  objJSON := TJSONObject.Create;
  try
    objJSON.AddPair('pid','PID Value') ;
    objJSON.AddPair('claimType', 'ClaimType Value') ;
    objJSON.AddPair('mobile', 'Mobile Value') ;
    objJSON.AddPair('correlationId', 'CorrelationId Value') ;
    objJSON.AddPair('number', TJSONNumber.create(123)) ;
  finally
    Memo1.lines.clear ;
    Memo1.Lines.Add( TJSON.Format( objJSON ) ) ;
    Memo1.Lines.Add('------------') ;
    Memo1.Lines.Add( objJSON.ToString )  ;
    Memo1.Lines.Add('------------') ;

    Memo1.lines.Add('pid = ' + objJSON.GetValue('pid').Value) ;
    Memo1.lines.Add('claimType = ' + objJSON.GetValue('claimType').Value) ;
    Memo1.lines.Add('correlationId = ' + objJSON.GetValue('correlationId').Value) ;
    Memo1.lines.Add('number = ' + IntToStr(objJSON.GetValue('number').Value.ToInteger)) ;

    objJSON.Free;
  end;
end;

end.
