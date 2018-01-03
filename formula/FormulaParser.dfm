object FormulaEditor: TFormulaEditor
  Left = 192
  Top = 127
  Caption = 'Formula editor'
  ClientHeight = 528
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 726
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 764
    object TabControl1: TTabControl
      Left = 8
      Top = 8
      Width = 569
      Height = 55
      Style = tsButtons
      TabOrder = 0
      Tabs.Strings = (
        '3D formula'
        '3D analytic formula'
        '4D formula'
        '4D analytic formula'
        'Addon formula')
      TabIndex = 0
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 35
        Height = 13
        Caption = 'Inputs:'
      end
      object StaticText1: TStaticText
        Left = 56
        Top = 30
        Width = 25
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Caption = 'X'
        TabOrder = 0
      end
      object StaticText2: TStaticText
        Left = 88
        Top = 30
        Width = 25
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Caption = 'Y'
        TabOrder = 1
      end
      object StaticText3: TStaticText
        Left = 120
        Top = 30
        Width = 25
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Caption = 'Z'
        TabOrder = 2
      end
      object StaticText4: TStaticText
        Left = 152
        Top = 30
        Width = 25
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Caption = 'W'
        TabOrder = 3
      end
      object StaticText5: TStaticText
        Left = 184
        Top = 30
        Width = 49
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Caption = 'Deriv'
        TabOrder = 4
      end
      object StaticText10: TStaticText
        Left = 240
        Top = 30
        Width = 25
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Caption = 'Cx'
        TabOrder = 5
      end
      object StaticText11: TStaticText
        Left = 272
        Top = 30
        Width = 25
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Caption = 'Cy'
        TabOrder = 6
      end
      object StaticText12: TStaticText
        Left = 304
        Top = 30
        Width = 25
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Caption = 'Cz'
        TabOrder = 7
      end
      object StaticText13: TStaticText
        Left = 336
        Top = 30
        Width = 25
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Caption = 'Cw'
        TabOrder = 8
      end
      object StaticText14: TStaticText
        Left = 368
        Top = 30
        Width = 49
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Caption = 'Iteration'
        TabOrder = 9
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 402
    Width = 726
    Height = 126
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 444
    ExplicitWidth = 764
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Functions:'
    end
    object StaticText6: TStaticText
      Left = 72
      Top = 14
      Width = 25
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BevelKind = bkFlat
      BevelOuter = bvRaised
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object StaticText7: TStaticText
      Left = 104
      Top = 14
      Width = 25
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BevelKind = bkFlat
      BevelOuter = bvRaised
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object StaticText8: TStaticText
      Left = 136
      Top = 14
      Width = 25
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BevelKind = bkFlat
      BevelOuter = bvRaised
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object StaticText9: TStaticText
      Left = 168
      Top = 14
      Width = 25
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BevelKind = bkFlat
      BevelOuter = bvRaised
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 541
    Top = 65
    Width = 185
    Height = 337
    Align = alRight
    TabOrder = 2
    ExplicitLeft = 579
    ExplicitHeight = 357
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 65
    Width = 541
    Height = 337
    Align = alClient
    BorderWidth = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      ''
      ''
      ''
      'X'#39'  =  X + Cx'
      'Y'#39'  =  Y + Cy'
      'Z'#39'  =  Z + Cz'
      'W'#39'  =  W + Cw'
      'Deriv'#39'  =  Deriv * 2')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    WordWrap = False
    Zoom = 100
    ExplicitWidth = 579
    ExplicitHeight = 406
  end
end
