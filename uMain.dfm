object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 516
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 528
    Top = 50
    Width = 321
    Height = 383
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 8
    Top = 50
    Width = 385
    Height = 383
    Lines.Strings = (
      '  objJSON := TJSONObject.Create;'
      '  try'
      '    objJSON.AddPair('#39'pid'#39','#39'PID Value'#39') ;'
      '    objJSON.AddPair('#39'claimType'#39', '#39'ClaimType Value'#39') ;'
      '    objJSON.AddPair('#39'mobile'#39', '#39'Mobile Value'#39') ;'
      '    objJSON.AddPair('#39'correlationId'#39', '#39'CorrelationId Value'#39') ;'
      '    objJSON.AddPair('#39'number'#39', TJSONNumber.create(123)) ;'
      '  finally'
      '    Memo1.lines.clear ;'
      '    Memo1.Lines.Add( TJSON.Format( objJSON ) ) ;'
      '    Memo1.Lines.Add('#39'------------'#39') ;'
      '    Memo1.Lines.Add( objJSON.ToString )  ;'
      '    Memo1.Lines.Add('#39'------------'#39') ;'
      ''
      '    Memo1.lines.Add('#39'pid = '#39' + objJSON.GetValue('#39'pid'#39').Value) ;'
      
        '    Memo1.lines.Add('#39'claimType = '#39' + objJSON.GetValue('#39'claimType' +
        #39').Value) ;'
      '    Memo1.lines.Add('#39'correlationId = '#39' + objJSON.GetValue'
      '('#39'correlationId'#39').Value) ;'
      '    Memo1.lines.Add('#39'number = '#39' + IntToStr(objJSON.GetValue'
      '('#39'number'#39').Value.ToInteger)) ;'
      ''
      '    objJSON.Free;'
      '  end;')
    TabOrder = 1
  end
end
