object GUINav: TGUINav
  Left = 189
  Top = 151
  ActiveControl = Panel_N_1
  BorderStyle = bsDialog
  Caption = 'NavGUI'
  ClientHeight = 543
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnHide = FormHide
  OnKeyDown = FormKeyDown
  OnMouseMove = FormMouseMove
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image_N_1: TImage
    Left = 0
    Top = 0
    Width = 640
    Height = 400
    Hint = 
      'Leftclick:  go into mouse-mode.. view by mouse, +right mousebutt' +
      'on.. rolling'#13#10'(Leftclick again or ESC to exit the mouse-mode)'
    ParentShowHint = False
    ShowHint = False
    OnClick = Image_N_1Click
    OnDblClick = Image_N_1DblClick
    OnMouseDown = Image_N_1MouseDown
    OnMouseMove = Image_N_1MouseMove
  end
  object Label_N_27: TLabel
    Left = 8
    Top = 384
    Width = 3
    Height = 13
    Visible = False
  end
  object Label_N_28: TLabel
    Left = 96
    Top = 384
    Width = 3
    Height = 13
    Visible = False
  end
  object Label_N_29: TLabel
    Left = 200
    Top = 384
    Width = 3
    Height = 13
    Visible = False
  end
  object Label_N_30: TLabel
    Left = 304
    Top = 384
    Width = 3
    Height = 13
    Visible = False
  end
  object Image_N_6: TImage
    Left = 260
    Top = 168
    Width = 120
    Height = 120
    Transparent = True
    Visible = False
    OnClick = Image_N_1Click
    OnDblClick = Image_N_1DblClick
    OnMouseDown = Image_N_1MouseDown
    OnMouseMove = Image_N_1MouseMove
  end
  object Panel_N_3: TPanel
    Left = 486
    Top = 0
    Width = 152
    Height = 543
    Align = alRight
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 2
    Visible = False
    object Button_N_2: TSpeedButton
      Left = 0
      Top = 71
      Width = 152
      Height = 21
      Hint = 'Click to hide/show'
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Julia values (x,y,z):'
      ParentShowHint = False
      ShowHint = True
      OnClick = Button_N_2Click
    end
    object Button_N_3: TSpeedButton
      Left = 0
      Top = 81
      Width = 152
      Height = 21
      Hint = 'Click to hide/show'
      AllowAllUp = True
      GroupIndex = 2
      Down = True
      Caption = 'Formula values:'
      ParentShowHint = False
      ShowHint = True
      OnClick = Button_N_3Click
    end
    object Button_N_4: TSpeedButton
      Left = 0
      Top = 95
      Width = 152
      Height = 21
      Hint = 'Click to hide/show'
      AllowAllUp = True
      GroupIndex = 3
      Caption = '4d rotation (xw,yw,zw): '
      ParentShowHint = False
      ShowHint = True
      OnClick = Button_N_4Click
    end
    object Button_N_5: TSpeedButton
      Left = 0
      Top = 108
      Width = 152
      Height = 21
      Hint = 'Click to hide/show'
      AllowAllUp = True
      GroupIndex = 4
      Caption = 'Misc:'
      ParentShowHint = False
      ShowHint = True
      OnClick = Button_N_5Click
    end
    object Panel_N_4: TPanel
      Left = 0
      Top = 135
      Width = 152
      Height = 139
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label_N_41: TLabel
        Tag = 2
        Left = 99
        Top = 94
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object Label_N_39: TLabel
        Left = 99
        Top = 44
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object Label_N_40: TLabel
        Tag = 1
        Left = 99
        Top = 69
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object SpeedButton_N_24: TSpeedButton
        Left = 2
        Top = 117
        Width = 71
        Height = 20
        Hint = 'Input the original values from the main program parameters.'
        Caption = 'Reset values'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_N_24Click
      end
      object SpeedButton_N_25: TSpeedButton
        Left = 80
        Top = 117
        Width = 71
        Height = 20
        Hint = 'Put the adjusted julia values into the main program parameters.'
        Caption = 'Send values'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_N_25Click
      end
      object Image_N_8: TImage
        Left = 110
        Top = 24
        Width = 40
        Height = 12
        Picture.Data = {
          07544269746D61709E000000424D9E000000000000003E000000280000002800
          00000C000000010001000000000060000000C30E0000C30E0000020000000200
          000000000000FFFFFF00FFFFFFFFFF000000EFFEFFBFFB000000DFFF7FDFFD00
          0000BDE6779C7E000000B8EFEBFEFE000000BF6FDDF83E000000BD6FDDF6DE00
          0000BD0FC1F6DE000000B977DDF83E000000DB37EBFEFD000000ECCFF7FC7B00
          0000FFFFFFFFFF000000}
        Stretch = True
        Transparent = True
      end
      object CheckBox_N_8: TCheckBox
        Left = 8
        Top = 21
        Width = 100
        Height = 17
        Hint = 'Change the julia values with radius, longitude and latitude'
        Caption = 'Spherical coords'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object CheckBox_N_7: TCheckBox
        Left = 8
        Top = 2
        Width = 73
        Height = 17
        Hint = 'Turn on/off the julia mode'
        Caption = 'Julia mode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = CheckBox_N_7Click
      end
      object TrackBarEx_N_2: TTrackBarEx
        Tag = 1
        Left = 0
        Top = 66
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 2
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object TrackBarEx_N_3: TTrackBarEx
        Tag = 2
        Left = 0
        Top = 91
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 3
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object TrackBarEx_N_1: TTrackBarEx
        Left = 0
        Top = 41
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 4
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
    end
    object Panel_N_5: TPanel
      Left = 0
      Top = 278
      Width = 152
      Height = 212
      TabOrder = 2
      OnMouseMove = FormMouseMove
      object Label_N_45: TLabel
        Left = 1
        Top = 7
        Width = 24
        Height = 13
        Caption = 'F.nr:'
      end
      object Label_N_V0: TLabel
        Tag = 3
        Left = 98
        Top = 65
        Width = 51
        Height = 16
        Hint = 'You can also click on a value to change it'
        Alignment = taCenter
        AutoSize = False
        Caption = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnMouseDown = Label_N_39MouseDown
        OnMouseMove = FormMouseMove
      end
      object Label_N_F0: TLabel
        Left = 2
        Top = 49
        Width = 43
        Height = 13
        Caption = 'fp name:'
      end
      object SpeedButton_N_26: TSpeedButton
        Left = 2
        Top = 169
        Width = 71
        Height = 20
        Hint = 'Input the original value from the main program parameters.'
        Caption = 'Reset value'
        Enabled = False
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_N_26Click
      end
      object SpeedButton_N_27: TSpeedButton
        Left = 80
        Top = 169
        Width = 71
        Height = 20
        Hint = 'Put this adjusted value into the main program parameter.'
        Caption = 'Send value'
        Enabled = False
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_N_27Click
      end
      object SpeedButton_N_28: TSpeedButton
        Left = 31
        Top = 190
        Width = 120
        Height = 20
        Hint = 'Send all adjusted formula values to the main program parameters.'
        Caption = 'Send all formula values'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_N_28Click
      end
      object Label_N_44: TLabel
        Left = 67
        Top = 2
        Width = 84
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Transparent = True
      end
      object Bevel_N_2: TBevel
        Left = 1
        Top = 46
        Width = 150
        Height = 2
        Shape = bsTopLine
      end
      object Bevel_N_3: TBevel
        Left = 1
        Top = 165
        Width = 150
        Height = 2
        Shape = bsTopLine
      end
      object Label_N_V1: TLabel
        Tag = 4
        Left = 98
        Top = 103
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
        OnMouseMove = FormMouseMove
      end
      object Label_N_F1: TLabel
        Left = 2
        Top = 87
        Width = 43
        Height = 13
        Caption = 'fp name:'
      end
      object Label_N_V2: TLabel
        Tag = 5
        Left = 98
        Top = 141
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
        OnMouseMove = FormMouseMove
      end
      object Label_N_F2: TLabel
        Left = 2
        Top = 125
        Width = 43
        Height = 13
        Caption = 'fp name:'
      end
      object Image_N_4: TImage
        Left = 138
        Top = 49
        Width = 12
        Height = 11
        AutoSize = True
        Picture.Data = {
          07544269746D6170C2010000424DC20100000000000036000000280000000C00
          00000B00000001001800000000008C010000110B0000110B0000000000000000
          000084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
          84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
          C384C4C384C4C384C4C384C4C300000000000000000000000000000000000000
          000000000000000000000084C4C384C4C3000000292929484848484848484848
          48484848484848484829292900000084C4C384C4C384C4C30000003535355454
          5454545454545454545435353500000084C4C384C4C384C4C384C4C384C4C300
          000041414163636363636341414100000084C4C384C4C384C4C384C4C384C4C3
          84C4C384C4C300000046464646464600000084C4C384C4C384C4C384C4C384C4
          C384C4C384C4C384C4C384C4C300000000000084C4C384C4C384C4C384C4C384
          C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
          84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
          C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384
          C4C384C4C384C4C384C4C384C4C3}
        Transparent = True
        Visible = False
        OnMouseMove = FormMouseMove
      end
      object Image_N_5: TImage
        Left = 138
        Top = 153
        Width = 12
        Height = 11
        AutoSize = True
        Picture.Data = {
          07544269746D6170C2010000424DC20100000000000036000000280000000C00
          00000B00000001001800000000008C010000110B0000110B0000000000000000
          000084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
          84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
          C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384
          C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3000000
          00000084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C30000
          0046464646464600000084C4C384C4C384C4C384C4C384C4C384C4C384C4C300
          000041414163636363636341414100000084C4C384C4C384C4C384C4C384C4C3
          00000035353554545454545454545454545435353500000084C4C384C4C384C4
          C300000029292948484848484848484848484848484848484829292900000084
          C4C384C4C3000000000000000000000000000000000000000000000000000000
          00000084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
          C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384
          C4C384C4C384C4C384C4C384C4C3}
        Transparent = True
        Visible = False
        OnMouseMove = FormMouseMove
      end
      object Label_N_42: TLabel
        Left = 2
        Top = 27
        Width = 51
        Height = 13
        Caption = 'Iterations:'
      end
      object Label_N_47: TLabel
        Left = 92
        Top = 27
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = '0'
      end
      object Label_N_49: TLabel
        Left = 27
        Top = 7
        Width = 14
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ScrollBar_N_1: TScrollBar
        Left = 136
        Top = 47
        Width = 15
        Height = 117
        Kind = sbVertical
        Max = 13
        PageSize = 0
        TabOrder = 0
        Visible = False
        OnChange = ScrollBar_N_1Change
      end
      object TrackBarEx_N_4: TTrackBarEx
        Tag = 3
        Left = 0
        Top = 62
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 1
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object TrackBarEx_N_5: TTrackBarEx
        Tag = 4
        Left = 0
        Top = 100
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 2
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object TrackBarEx_N_6: TTrackBarEx
        Tag = 5
        Left = 0
        Top = 138
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 3
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object SpinEdit_N_2: TUpDown
        Left = 45
        Top = 4
        Width = 21
        Height = 19
        Min = -30000
        Max = 30000
        TabOrder = 4
        OnClick = SpinEdit_N_2Click
      end
      object UpDown_N_2: TUpDown
        Left = 104
        Top = 24
        Width = 19
        Height = 21
        Min = -30000
        Max = 30000
        TabOrder = 5
        OnClick = UpDown_N_2Click
      end
    end
    object Panel_N_7: TPanel
      Left = 0
      Top = 559
      Width = 152
      Height = 221
      TabOrder = 4
      Visible = False
      object Label_N_V3: TLabel
        Tag = 9
        Left = 99
        Top = 23
        Width = 30
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object SpeedButton_N_31: TSpeedButton
        Left = 4
        Top = 200
        Width = 71
        Height = 20
        Hint = 'Input the original value from the main program parameters.'
        Caption = 'Reset value'
        Enabled = False
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_N_31Click
      end
      object SpeedButton_N_32: TSpeedButton
        Left = 75
        Top = 200
        Width = 71
        Height = 20
        Hint = 'Put this adjusted value into the main program parameter.'
        Caption = 'Send value'
        Enabled = False
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_N_32Click
      end
      object Bevel_N_5: TBevel
        Left = 1
        Top = 194
        Width = 150
        Height = 2
        Shape = bsTopLine
      end
      object Label_N_V4: TLabel
        Tag = 10
        Left = 99
        Top = 61
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '16.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object Label_N_48: TLabel
        Left = 2
        Top = 45
        Width = 46
        Height = 13
        Caption = 'R bailout:'
      end
      object Label_N_V5: TLabel
        Tag = 11
        Left = 99
        Top = 99
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object Label_N_53: TLabel
        Left = 2
        Top = 83
        Width = 81
        Height = 13
        Caption = 'Smooth DEcomb:'
      end
      object Label_N_38: TLabel
        Left = 130
        Top = 3
        Width = 20
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseMove = FormMouseMove
      end
      object Label_N_V6: TLabel
        Tag = 12
        Left = 98
        Top = 137
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '1.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object Label_N_46: TLabel
        Left = 2
        Top = 121
        Width = 38
        Height = 13
        Caption = 'DEstop:'
      end
      object Label_N_V7: TLabel
        Tag = 13
        Left = 98
        Top = 175
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '60'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object Label_N_55: TLabel
        Left = 2
        Top = 159
        Width = 72
        Height = 13
        Caption = 'Max iterations:'
      end
      object SpeedButton_N_33: TSpeedButton
        Left = 4
        Top = 0
        Width = 89
        Height = 21
        Hint = 'Click to change between Dynfog on its and Color on its'
        Caption = 'Dyn Fog on its:'
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_N_33Click
      end
      object UpDown_N_1: TUpDown
        Left = 132
        Top = 19
        Width = 19
        Height = 25
        Hint = 'Strength of dynamic fog.'
        Max = 153
        ParentShowHint = False
        Position = 53
        ShowHint = True
        TabOrder = 0
        OnClick = UpDown_N_1Click
      end
      object TrackBarEx_N_10: TTrackBarEx
        Tag = 9
        Left = 0
        Top = 20
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 1
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object TrackBarEx_N_11: TTrackBarEx
        Tag = 10
        Left = 0
        Top = 58
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 2
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object TrackBarEx_N_12: TTrackBarEx
        Tag = 11
        Left = 0
        Top = 96
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 3
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object TrackBarEx_N_13: TTrackBarEx
        Tag = 12
        Left = 0
        Top = 134
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 4
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object TrackBarEx_N_14: TTrackBarEx
        Tag = 13
        Left = 0
        Top = 172
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 5
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
    end
    object Panel_N_6: TPanel
      Left = 0
      Top = 450
      Width = 152
      Height = 105
      TabOrder = 3
      Visible = False
      object Label_N_52: TLabel
        Tag = 8
        Left = 99
        Top = 59
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object Label_N_50: TLabel
        Tag = 6
        Left = 99
        Top = 9
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object Label_N_51: TLabel
        Tag = 7
        Left = 99
        Top = 34
        Width = 51
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        OnMouseDown = Label_N_39MouseDown
      end
      object SpeedButton_N_29: TSpeedButton
        Left = 2
        Top = 83
        Width = 71
        Height = 20
        Hint = 'Input the original values from the main program parameters.'
        Caption = 'Reset values'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_N_29Click
      end
      object SpeedButton_N_30: TSpeedButton
        Left = 80
        Top = 83
        Width = 71
        Height = 20
        Hint = 'Put the adjusted values into the main program parameters.'
        Caption = 'Send values'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_N_30Click
      end
      object TrackBarEx_N_7: TTrackBarEx
        Tag = 6
        Left = 0
        Top = 6
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 0
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object TrackBarEx_N_8: TTrackBarEx
        Tag = 7
        Left = 0
        Top = 31
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 1
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
      object TrackBarEx_N_9: TTrackBarEx
        Tag = 8
        Left = 0
        Top = 56
        Width = 97
        Height = 22
        Ctl3D = True
        Max = 60
        Min = -60
        ParentCtl3D = False
        TabOrder = 2
        ThumbLength = 18
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = RxSlider1Change
        OnMouseUp = RxSlider1MouseUp
      end
    end
    object SizeGroup: TGroupBox
      Left = 0
      Top = 37
      Width = 152
      Height = 38
      Align = alTop
      Caption = 'NavGUI Size'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 5
      object DecreaseNaviSizeBtn: TSpeedButton
        Tag = 9
        Left = 5
        Top = 14
        Width = 25
        Height = 21
        Hint = 'Decrease the size of the NavGUI window'
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
          84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
          C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
          84C4C384C4C384C4C30084C4C384C4C384C4C384C4C320202000000084C4C384
          C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C384C4C32020202424
          2400000084C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
          2020202424244C4C4C00000000000000000000000000000000000000000084C4
          C30084C4C32020202424245959596767676060605959595252524C4C4C454545
          3E3E3E00000084C4C3002020202424246060606E6E6E67676760606059595952
          52524C4C4C4545453E3E3E00000084C4C30084C4C32020202424245959596767
          676060605959595252524C4C4C4545453E3E3E00000084C4C30084C4C384C4C3
          2020202424244C4C4C00000000000000000000000000000000000000000084C4
          C30084C4C384C4C384C4C320202024242400000084C4C384C4C384C4C384C4C3
          84C4C384C4C384C4C30084C4C384C4C384C4C384C4C320202000000084C4C384
          C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
          C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
          84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
          C300}
        ParentShowHint = False
        ShowHint = True
        OnClick = DecreaseNaviSizeBtnClick
      end
      object IncreaseNaviSizeBtn: TSpeedButton
        Tag = 10
        Left = 124
        Top = 13
        Width = 25
        Height = 21
        Hint = 'Increase the size of the NavGUI window'
        Glyph.Data = {
          3E020000424D3E0200000000000036000000280000000D0000000D0000000100
          18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
          84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
          C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
          84C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C300
          000020202084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
          C384C4C384C4C300000024242420202084C4C384C4C384C4C30084C4C3000000
          0000000000000000000000000000000000004C4C4C24242420202084C4C384C4
          C30084C4C30000003E3E3E4545454C4C4C525252595959606060676767595959
          24242420202084C4C30084C4C30000003E3E3E4545454C4C4C52525259595960
          60606767676E6E6E6060602424242020200084C4C30000003E3E3E4545454C4C
          4C52525259595960606067676759595924242420202084C4C30084C4C3000000
          0000000000000000000000000000000000004C4C4C24242420202084C4C384C4
          C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C3000000242424202020
          84C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C300
          000020202084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
          C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
          84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
          C300}
        ParentShowHint = False
        ShowHint = True
        OnClick = IncreaseNaviSizeBtnClick
      end
      object NaviSizeCmb: TComboBox
        Left = 36
        Top = 14
        Width = 82
        Height = 21
        Style = csDropDownList
        DropDownCount = 32
        ItemIndex = 6
        TabOrder = 0
        Text = '100%'
        OnChange = NaviSizeCmbChange
        Items.Strings = (
          '40%'
          '50%'
          '60%'
          '70%'
          '80%'
          '90%'
          '100%'
          '110%'
          '120%'
          '130%'
          '140%'
          '150%'
          '160%'
          '170%'
          '180%'
          '190%'
          '200%')
      end
    end
    object RadioGroup_N_1: TRadioGroup
      Left = 0
      Top = 0
      Width = 152
      Height = 37
      Align = alTop
      Caption = 'Adjustments:'
      Color = clBtnFace
      Columns = 4
      ItemIndex = 2
      Items.Strings = (
        'min'
        'fine'
        'mid'
        'big')
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
    end
  end
  object Panel_N_1: TPanel
    Left = 0
    Top = 400
    Width = 640
    Height = 114
    Align = alCustom
    TabOrder = 0
    OnClick = Panel_N_1Click
    object SpeedButton_N_1: TSpeedButton
      Tag = 1
      Left = 162
      Top = 18
      Width = 25
      Height = 25
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C300000000000000000000000000000084C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000003E3E3E3E3E3E3E
        3E3E00000084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000
        0045454545454545454500000084C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C30000004C4C4C4C4C4C4C4C4C00000084C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C300000052525252525252525200000084C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C300000059595959595959
        595900000084C4C384C4C384C4C384C4C30084C4C384C4C30000000000000000
        0060606060606060606000000000000000000084C4C384C4C30084C4C384C4C3
        2020202424244C4C4C6767676767676767674C4C4C24242420202084C4C384C4
        C30084C4C384C4C384C4C32020202424245959596E6E6E595959242424202020
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C320202024242460606024
        242420202084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
        C320202024242420202084C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C384C4C320202084C4C384C4C384C4C384C4C384C4C384C4
        C300}
      OnClick = SpeedButton_N_1Click
    end
    object SpeedButton_N_2: TSpeedButton
      Tag = 2
      Left = 162
      Top = 68
      Width = 25
      Height = 25
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C320202084C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C320202024242420202084C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C320202024242460606024
        242420202084C4C384C4C384C4C384C4C30084C4C384C4C384C4C32020202424
        245959596E6E6E59595924242420202084C4C384C4C384C4C30084C4C384C4C3
        2020202424244C4C4C6767676767676767674C4C4C24242420202084C4C384C4
        C30084C4C384C4C3000000000000000000606060606060606060000000000000
        00000084C4C384C4C30084C4C384C4C384C4C384C4C300000059595959595959
        595900000084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000
        0052525252525252525200000084C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C30000004C4C4C4C4C4C4C4C4C00000084C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C300000045454545454545454500000084C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000003E3E3E3E3E3E3E
        3E3E00000084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000
        0000000000000000000000000084C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C300}
      OnClick = SpeedButton_N_1Click
    end
    object SpeedButton_N_3: TSpeedButton
      Tag = 3
      Left = 137
      Top = 43
      Width = 25
      Height = 25
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C320202000000084C4C384
        C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C384C4C32020202424
        2400000084C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        2020202424244C4C4C00000000000000000000000000000000000000000084C4
        C30084C4C32020202424245959596767676060605959595252524C4C4C454545
        3E3E3E00000084C4C3002020202424246060606E6E6E67676760606059595952
        52524C4C4C4545453E3E3E00000084C4C30084C4C32020202424245959596767
        676060605959595252524C4C4C4545453E3E3E00000084C4C30084C4C384C4C3
        2020202424244C4C4C00000000000000000000000000000000000000000084C4
        C30084C4C384C4C384C4C320202024242400000084C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C320202000000084C4C384
        C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C300}
      OnClick = SpeedButton_N_1Click
    end
    object SpeedButton_N_4: TSpeedButton
      Tag = 4
      Left = 187
      Top = 43
      Width = 25
      Height = 25
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C300
        000020202084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
        C384C4C384C4C300000024242420202084C4C384C4C384C4C30084C4C3000000
        0000000000000000000000000000000000004C4C4C24242420202084C4C384C4
        C30084C4C30000003E3E3E4545454C4C4C525252595959606060676767595959
        24242420202084C4C30084C4C30000003E3E3E4545454C4C4C52525259595960
        60606767676E6E6E6060602424242020200084C4C30000003E3E3E4545454C4C
        4C52525259595960606067676759595924242420202084C4C30084C4C3000000
        0000000000000000000000000000000000004C4C4C24242420202084C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C3000000242424202020
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C300
        000020202084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C300}
      OnClick = SpeedButton_N_1Click
    end
    object SpeedButton_N_5: TSpeedButton
      Tag = 7
      Left = 342
      Top = 18
      Width = 25
      Height = 25
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C300000000000000000000000000000084C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000003E3E3E3E3E3E3E
        3E3E00000084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000
        0045454545454545454500000084C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C30000004C4C4C4C4C4C4C4C4C00000084C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C300000052525252525252525200000084C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C300000059595959595959
        595900000084C4C384C4C384C4C384C4C30084C4C384C4C30000000000000000
        0060606060606060606000000000000000000084C4C384C4C30084C4C384C4C3
        2020202424244C4C4C6767676767676767674C4C4C24242420202084C4C384C4
        C30084C4C384C4C384C4C32020202424245959596E6E6E595959242424202020
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C320202024242460606024
        242420202084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
        C320202024242420202084C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C384C4C320202084C4C384C4C384C4C384C4C384C4C384C4
        C300}
      OnClick = SpeedButton_N_1Click
    end
    object SpeedButton_N_6: TSpeedButton
      Tag = 8
      Left = 342
      Top = 68
      Width = 25
      Height = 25
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C320202084C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C320202024242420202084C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C320202024242460606024
        242420202084C4C384C4C384C4C384C4C30084C4C384C4C384C4C32020202424
        245959596E6E6E59595924242420202084C4C384C4C384C4C30084C4C384C4C3
        2020202424244C4C4C6767676767676767674C4C4C24242420202084C4C384C4
        C30084C4C384C4C3000000000000000000606060606060606060000000000000
        00000084C4C384C4C30084C4C384C4C384C4C384C4C300000059595959595959
        595900000084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000
        0052525252525252525200000084C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C30000004C4C4C4C4C4C4C4C4C00000084C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C300000045454545454545454500000084C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000003E3E3E3E3E3E3E
        3E3E00000084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000
        0000000000000000000000000084C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C300}
      OnClick = SpeedButton_N_1Click
    end
    object SpeedButton_N_7: TSpeedButton
      Tag = 9
      Left = 317
      Top = 43
      Width = 25
      Height = 25
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C320202000000084C4C384
        C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C384C4C32020202424
        2400000084C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        2020202424244C4C4C00000000000000000000000000000000000000000084C4
        C30084C4C32020202424245959596767676060605959595252524C4C4C454545
        3E3E3E00000084C4C3002020202424246060606E6E6E67676760606059595952
        52524C4C4C4545453E3E3E00000084C4C30084C4C32020202424245959596767
        676060605959595252524C4C4C4545453E3E3E00000084C4C30084C4C384C4C3
        2020202424244C4C4C00000000000000000000000000000000000000000084C4
        C30084C4C384C4C384C4C320202024242400000084C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C320202000000084C4C384
        C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C300}
      OnClick = SpeedButton_N_1Click
    end
    object SpeedButton_N_8: TSpeedButton
      Tag = 10
      Left = 367
      Top = 43
      Width = 25
      Height = 25
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C300
        000020202084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
        C384C4C384C4C300000024242420202084C4C384C4C384C4C30084C4C3000000
        0000000000000000000000000000000000004C4C4C24242420202084C4C384C4
        C30084C4C30000003E3E3E4545454C4C4C525252595959606060676767595959
        24242420202084C4C30084C4C30000003E3E3E4545454C4C4C52525259595960
        60606767676E6E6E6060602424242020200084C4C30000003E3E3E4545454C4C
        4C52525259595960606067676759595924242420202084C4C30084C4C3000000
        0000000000000000000000000000000000004C4C4C24242420202084C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C3000000242424202020
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C300
        000020202084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C300}
      OnClick = SpeedButton_N_1Click
    end
    object SpeedButton_N_9: TSpeedButton
      Tag = 5
      Left = 258
      Top = 18
      Width = 25
      Height = 25
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C300000000000000000000000000000000
        000000000000000000000084C4C384C4C30084C4C384C4C30000001818184141
        4141414141414141414141414118181800000084C4C384C4C30084C4C384C4C3
        84C4C30000004848484C4C4C4C4C4C4C4C4C48484800000084C4C384C4C384C4
        C30084C4C384C4C384C4C3000000181818525252525252525252181818000000
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C300000059595959595959
        595900000084C4C384C4C384C4C384C4C30084C4C30000000000000000000000
        004C4C4C60606050505000000000000000000000000084C4C30084C4C384C4C3
        1C1C1C3030306060606767676767676767676868683838381C1C1C84C4C384C4
        C30084C4C384C4C384C4C33030301818184D4D4D6A6A6A4545451C1C1C343434
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4C32C2C2C0000002C
        2C2C84C4C384C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C300}
      OnClick = SpeedButton_N_1Click
    end
    object SpeedButton_N_10: TSpeedButton
      Tag = 6
      Left = 258
      Top = 49
      Width = 25
      Height = 25
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C384C4C300000084C4C384C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C33838380000003838380A
        0A0A38383884C4C384C4C384C4C384C4C30084C4C384C4C384C4C30000003434
        3460606060606060606034343400000084C4C384C4C384C4C30084C4C3383838
        0000005A5A5A6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E5A5A5A00000038383884C4
        C300000000343434676767676767676767676767676767676767676767676767
        6767673434340000000000000000000000000000000060606060606060606060
        60606060600000000000000000000000000084C4C384C4C384C4C30000000000
        0059595959595959595900000000000084C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C30E0E0E3838385252523838380A0A0A84C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C33838380000003C3C3C00000038383884C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4C300000000000000
        000084C4C384C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C384C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C300}
      OnClick = SpeedButton_N_1Click
    end
    object Label_N_1: TLabel
      Left = 158
      Top = 97
      Width = 30
      Height = 13
      Caption = 'Sliding'
    end
    object Label_N_2: TLabel
      Left = 334
      Top = 97
      Width = 36
      Height = 13
      Caption = 'Looking'
    end
    object Label_N_3: TLabel
      Left = 250
      Top = 97
      Width = 37
      Height = 13
      Caption = 'Walking'
    end
    object Label_N_4: TLabel
      Left = 143
      Top = 22
      Width = 14
      Height = 13
      Caption = '(e)'
    end
    object Label_N_5: TLabel
      Left = 135
      Top = 76
      Width = 23
      Height = 13
      Caption = '(c,q)'
    end
    object Label_N_6: TLabel
      Left = 120
      Top = 49
      Width = 14
      Height = 13
      Caption = '(a)'
    end
    object Label_N_10: TLabel
      Left = 215
      Top = 49
      Width = 14
      Height = 13
      Caption = '(d)'
    end
    object Label_N_12: TLabel
      Left = 239
      Top = 24
      Width = 16
      Height = 13
      Caption = '(w)'
    end
    object Label_N_13: TLabel
      Left = 240
      Top = 55
      Width = 13
      Height = 13
      Caption = '(s)'
    end
    object Label_N_14: TLabel
      Left = 5
      Top = 96
      Width = 145
      Height = 13
      Caption = '(Hold Shift key for finer steps)'
    end
    object SpeedButton_N_11: TSpeedButton
      Left = 575
      Top = 19
      Width = 63
      Height = 22
      Hint = 'Insert complete parameter from main program'
      Caption = 'Parameter'
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = SpeedButton_N_11Click
    end
    object SpeedButton_N_12: TSpeedButton
      Tag = 11
      Left = 424
      Top = 68
      Width = 25
      Height = 25
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        18000000000068020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C384C4C3000084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C384C4C384C4C384C4C384C4C384C4C300000000000000000000000000000000
        0000000000000000000084C4C384C4C384C4C384C4C384C4C384C4C300000000
        007373737373736E6E6E6767674E4E4E00000084C4C384C4C384C4C384C4C384
        C4C384C4C384C4C300000000007373737373736E6E6E63636300000084C4C384
        C4C384C4C384C4C300000000000084C4C384C4C300000000007373737373736E
        6E6E57575700000084C4C384C4C384C4C300000026262614141400000084C4C3
        00000000007373734747475656566767675C5C5C000000000000000000303030
        3E3E3E36363620202000000000000000004F4F4F000000333333535353606060
        5A5A5A4B4B4B4848484545453E3E3E3636362C2C2C0000000000000000000000
        84C4C30000002F2F2F4C4C4C5959595252524C4C4C4646463E3E3E3030300000
        0084C4C3000000000084C4C384C4C384C4C30000000000003A3A3A4E4E4E4545
        4538383800000000000084C4C384C4C3000084C4C384C4C384C4C384C4C384C4
        C384C4C300000000000000000000000084C4C384C4C384C4C384C4C3000084C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384
        C4C384C4C384C4C3000084C4C384C4C384C4C384C4C384C4C384C4C384C4C384
        C4C384C4C384C4C384C4C384C4C384C4C384C4C3000084C4C384C4C384C4C384
        C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        0000}
      OnClick = SpeedButton_N_1Click
    end
    object SpeedButton_N_13: TSpeedButton
      Tag = 12
      Left = 456
      Top = 68
      Width = 25
      Height = 25
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        18000000000068020000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C384C4C3000084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C384C4C384C4C384C4C384C4C384C4C3000084C4C384C4C384C4C384C4C384C4
        C384C4C3000000000000000000000000000000000000000000000000000084C4
        C384C4C384C4C384C4C384C4C384C4C384C4C30000004E4E4E6767676E6E6E73
        7373737373000000000084C4C384C4C300000000000084C4C384C4C384C4C384
        C4C30000006363636E6E6E737373737373000000000084C4C300000014141426
        262600000084C4C384C4C384C4C30000005757576E6E6E737373737373000000
        00000000002020203636363E3E3E3030300000000000000000005C5C5C676767
        56565647474773737300000000000000002C2C2C3636363E3E3E454545484848
        4B4B4B5A5A5A6060605353533333330000004F4F4F000000000084C4C3000000
        3030303E3E3E4646464C4C4C5252525959594C4C4C2F2F2F00000084C4C30000
        00000000000084C4C384C4C30000000000003838384545454E4E4E3A3A3A0000
        0000000084C4C384C4C384C4C3000000000084C4C384C4C384C4C384C4C30000
        0000000000000000000084C4C384C4C384C4C384C4C384C4C384C4C3000084C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384
        C4C384C4C384C4C3000084C4C384C4C384C4C384C4C384C4C384C4C384C4C384
        C4C384C4C384C4C384C4C384C4C384C4C384C4C3000084C4C384C4C384C4C384
        C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        0000}
      OnClick = SpeedButton_N_1Click
    end
    object Label_N_15: TLabel
      Left = 436
      Top = 97
      Width = 31
      Height = 13
      Caption = 'Rolling'
    end
    object Label_N_16: TLabel
      Left = 431
      Top = 51
      Width = 14
      Height = 13
      Caption = '(u)'
    end
    object Label_N_17: TLabel
      Left = 461
      Top = 51
      Width = 14
      Height = 13
      Caption = '(o)'
    end
    object Label_N_11: TLabel
      Left = 326
      Top = 22
      Width = 10
      Height = 13
      Caption = '(i)'
    end
    object Label_N_19: TLabel
      Left = 302
      Top = 49
      Width = 11
      Height = 13
      Caption = '(j)'
    end
    object Label_N_20: TLabel
      Left = 397
      Top = 49
      Width = 10
      Height = 13
      Caption = '(l)'
    end
    object Label_N_21: TLabel
      Left = 324
      Top = 76
      Width = 13
      Height = 13
      Caption = '(k)'
    end
    object SpeedButton_N_14: TSpeedButton
      Left = 2
      Top = 31
      Width = 75
      Height = 25
      Hint = 
        'Send this view with all julia and formula modifications to the m' +
        'ain program.'
      Caption = 'View to main'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton_N_14Click
    end
    object SpeedButton_N_15: TSpeedButton
      Left = 594
      Top = 67
      Width = 44
      Height = 22
      Hint = 
        'Assign the actual light settings of the main program.'#13#10'The light' +
        's and colors differs from main rendering'#13#10'because of simpler fun' +
        'ctions in the navi.'
      Caption = 'Light'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton_N_15Click
    end
    object SpeedButton_N_16: TSpeedButton
      Left = 581
      Top = 43
      Width = 57
      Height = 22
      Hint = 'Assign actual formula settings'
      Caption = 'Formula'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton_N_16Click
    end
    object Label_N_23: TLabel
      Left = 96
      Top = 4
      Width = 30
      Height = 13
      Caption = 'Zoom:'
    end
    object Label_N_24: TLabel
      Left = 130
      Top = 4
      Width = 3
      Height = 13
      Transparent = True
    end
    object SpeedButton_N_17: TSpeedButton
      Left = 576
      Top = 96
      Width = 32
      Height = 18
      Hint = 'open/close parameter panel'
      Glyph.Data = {
        C2010000424DC20100000000000036000000280000000C0000000B0000000100
        1800000000008C010000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384
        C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C300000000000084C4C384C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C300000046464646464600
        000084C4C384C4C384C4C384C4C384C4C384C4C384C4C3000000414141636363
        63636341414100000084C4C384C4C384C4C384C4C384C4C30000003535355454
        5454545454545454545435353500000084C4C384C4C384C4C300000029292948
        484848484848484848484848484848484829292900000084C4C384C4C3000000
        00000000000000000000000000000000000000000000000000000084C4C384C4
        C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384
        C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        84C4C384C4C3}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton_N_17Click
    end
    object SpeedButton_N_18: TSpeedButton
      Left = 2
      Top = 62
      Width = 75
      Height = 25
      Hint = 'Generate an animation keyframe from the actual view'
      Caption = 'Ani keyfr. (f)'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton_N_18Click
    end
    object Label_N_26: TLabel
      Left = 500
      Top = 97
      Width = 45
      Height = 13
      Caption = 'Lightness'
    end
    object Label_N_31: TLabel
      Left = 235
      Top = 79
      Width = 80
      Height = 13
      Caption = '(or mousewheel)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image_N_2: TImage
      Left = 439
      Top = 3
      Width = 40
      Height = 38
      Hint = 'Direction towards zero (0,0,0)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label_N_32: TLabel
      Left = 4
      Top = 12
      Width = 61
      Height = 13
      Caption = 'Sending out:'
    end
    object Label_N_33: TLabel
      Left = 576
      Top = 4
      Width = 47
      Height = 13
      Caption = 'Inserting:'
    end
    object Image_N_3: TImage
      Left = 623
      Top = 4
      Width = 13
      Height = 13
      AutoSize = True
      Picture.Data = {
        07544269746D61703E020000424D3E0200000000000036000000280000000D00
        00000D000000010018000000000008020000110B0000110B0000000000000000
        000084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C300000000000000000000
        000084C4C384C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000
        0025255725255700000084C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C300000029296129296100000084C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C30000002E2E6A2E2E6A00000084C4C384C4C3
        84C4C384C4C384C4C30084C4C384C4C384C4C384C4C300000031317331317300
        000084C4C384C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000
        0035357D35357D00000084C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        00000000000000000039398739398700000000000000000084C4C384C4C384C4
        C30084C4C384C4C30000001919393D3D913D3D913D3D913D3D91161632000000
        84C4C384C4C384C4C30084C4C384C4C384C4C300000019193942429A42429A19
        193900000084C4C384C4C384C4C384C4C30084C4C384C4C384C4C384C4C30000
        001F1F471F1F4700000084C4C384C4C384C4C384C4C384C4C30084C4C384C4C3
        84C4C384C4C384C4C300000000000084C4C384C4C384C4C384C4C384C4C384C4
        C30084C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C300}
      Transparent = True
    end
    object SpeedButton_N_19: TSpeedButton
      Tag = 1
      Left = 543
      Top = 72
      Width = 17
      Height = 17
      Hint = 'Click to set the navi light to one of these presets.'
      Caption = '1'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton_N_19Click
    end
    object SpeedButton_N_20: TSpeedButton
      Tag = 2
      Left = 560
      Top = 72
      Width = 17
      Height = 17
      Hint = 'Click to set the navi light to one of these presets.'
      Caption = '2'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton_N_19Click
    end
    object SpeedButton_N_21: TSpeedButton
      Tag = 3
      Left = 577
      Top = 72
      Width = 17
      Height = 17
      Hint = 'Click to set the navi light to one of these presets.'
      Caption = '3'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton_N_19Click
    end
    object SpeedButton_N_22: TSpeedButton
      Left = 549
      Top = 47
      Width = 17
      Height = 17
      Hint = 
        'Press this button and a preset 1 to 3 to store the actual navi l' +
        'ight.'#13#10'Click twice to undo storing.'
      Caption = 'M'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton_N_22Click
    end
    object Label_N_18: TLabel
      Left = 176
      Top = 4
      Width = 59
      Height = 13
      Caption = 'Mousewheel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object SpeedButton_N_23: TSpeedButton
      Left = 614
      Top = 92
      Width = 26
      Height = 22
      Hint = 'open/close adjustment panel'
      Glyph.Data = {
        C2010000424DC20100000000000036000000280000000C0000000B0000000100
        1800000000008C010000110B0000110B0000000000000000000084C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4C384C4
        C384C4C384C4C300000000000084C4C384C4C384C4C384C4C384C4C384C4C384
        C4C384C4C384C4C384C4C30000003C3C3C00000084C4C384C4C384C4C384C4C3
        84C4C384C4C384C4C384C4C384C4C30000005454543C3C3C00000084C4C384C4
        C384C4C384C4C384C4C384C4C384C4C384C4C30000005454545454543C3C3C00
        000084C4C384C4C384C4C384C4C384C4C384C4C384C4C3000000545454545454
        54545442424200000084C4C384C4C384C4C384C4C384C4C384C4C30000005454
        5454545459595959595900000084C4C384C4C384C4C384C4C384C4C384C4C300
        000054545459595964646400000084C4C384C4C384C4C384C4C384C4C384C4C3
        84C4C300000059595964646400000084C4C384C4C384C4C384C4C384C4C384C4
        C384C4C384C4C300000064646400000084C4C384C4C384C4C384C4C384C4C384
        C4C384C4C384C4C384C4C300000000000084C4C384C4C384C4C384C4C384C4C3
        84C4C384C4C3}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton_N_23Click
    end
    object CheckBox_N_4: TCheckBox
      Left = 507
      Top = 5
      Width = 55
      Height = 16
      Hint = 
        'Reduces the raystep multiplier to avoid overstepping.'#13#10'Makes the' +
        ' rendering slower.'
      Caption = 'HiQual'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = CheckBox_N_3Click
    end
    object CheckBox_N_6: TCheckBox
      Left = 353
      Top = 2
      Width = 80
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Show coords'
      TabOrder = 2
      OnClick = CheckBox_N_6Click
    end
    object UpDown_N_3: TUpDown
      Left = 74
      Top = 2
      Width = 20
      Height = 18
      Min = -30000
      Max = 30000
      TabOrder = 3
      Visible = False
      OnClick = UpDown_N_3Click
    end
    object TrackBarEx_N_15: TTrackBarEx
      Left = 496
      Top = 22
      Width = 34
      Height = 74
      Max = 20
      Min = -20
      Orientation = trVertical
      PositionToolTip = ptLeft
      SelStart = -1
      TabOrder = 0
      ThumbLength = 16
      TickMarks = tmBoth
      TickStyle = tsManual
      OnChange = TrackBarEx_N_15Change
    end
  end
  object Panel_N_2: TPanel
    Left = 0
    Top = 514
    Width = 640
    Height = 73
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object Label_N_7: TLabel
      Left = 178
      Top = 7
      Width = 103
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sliding+Walking step:'
    end
    object Label_N_9: TLabel
      Left = 349
      Top = 7
      Width = 108
      Height = 13
      Alignment = taRightJustify
      Caption = 'Looking+Rolling angle:'
    end
    object Label_N_8: TLabel
      Left = 106
      Top = 38
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'FOVy:'
    end
    object Label_N_22: TLabel
      Left = 4
      Top = 38
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Far plane:'
    end
    object Bevel_N_1: TBevel
      Left = 6
      Top = 28
      Width = 625
      Height = 2
      Shape = bsTopLine
    end
    object Label_N_34: TLabel
      Left = 16
      Top = 59
      Width = 66
      Height = 13
      Caption = 'F1[-]  F2[+]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_N_35: TLabel
      Left = 112
      Top = 59
      Width = 66
      Height = 13
      Caption = 'F3[-]  F4[+]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_N_36: TLabel
      Left = 211
      Top = 60
      Width = 13
      Height = 13
      Caption = 'F5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_N_37: TLabel
      Left = 568
      Top = 59
      Width = 13
      Height = 13
      Caption = 'F6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit_N_1: TEdit
      Left = 288
      Top = 4
      Width = 41
      Height = 21
      Hint = 'Percent of local DE'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '20'
      OnChange = Edit_N_1Change
    end
    object Edit_N_2: TEdit
      Left = 464
      Top = 4
      Width = 41
      Height = 21
      Hint = 'Degrees'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '5'
      OnChange = Edit_N_1Change
    end
    object Edit_N_3: TEdit
      Tag = 1
      Left = 140
      Top = 35
      Width = 32
      Height = 21
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      Text = '30'
      OnChange = Edit_N_1Change
    end
    object Edit_N_4: TEdit
      Tag = 1
      Left = 58
      Top = 35
      Width = 41
      Height = 21
      Hint = 
        'Specifies the end of raymarching as a factor of the local DE.'#13#10'B' +
        'igger values = more distant objects visible.'#13#10#13#10'Key shortcuts:  ' +
        'F1: decrease far-plane,  F2: increase far-plane'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '50'
      OnChange = Edit_N_1Change
    end
    object CheckBox_N_1: TCheckBox
      Left = 512
      Top = 38
      Width = 121
      Height = 17
      Hint = 
        'Disable the automatic zoom adjust when moving.'#13#10'This leads also ' +
        'to stepping through the object.'
      Alignment = taLeftJustify
      Caption = 'Fixed zoom and steps'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = CheckBox_N_1Click
    end
    object CheckBox_N_2: TCheckBox
      Left = 520
      Top = 6
      Width = 113
      Height = 17
      Alignment = taLeftJustify
      Caption = 'AZERTY keyboard'
      TabOrder = 5
      OnClick = CheckBox_N_2Click
    end
    object Edit_N_6: TEdit
      Tag = 1
      Left = 440
      Top = 35
      Width = 65
      Height = 21
      Hint = 
        'Stops walking at this distance to the object.'#13#10'Set to 0 to disab' +
        'le.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '0'
    end
    object Button_N_1: TButton
      Left = 365
      Top = 35
      Width = 73
      Height = 22
      Hint = 
        'Press to take the actual distance as minimum distance to object ' +
        'for walking.'
      Caption = 'Min distance:'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = Button_N_1Click
    end
    object CheckBox_N_5: TCheckBox
      Left = 13
      Top = 6
      Width = 140
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Disable the (f) key for ani'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = CheckBox_N_5Click
    end
    object RadioGroup_N_2: TRadioGroup
      Left = 182
      Top = 30
      Width = 147
      Height = 30
      Hint = 'standard  rectilinear  panorama'
      Caption = 'Camera:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'stan.'
        'rect.'
        'pano.')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = RadioGroup_N_2Click
    end
  end
  object Timer_N_1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer_N_1Timer
    Left = 235
    Top = 305
  end
  object ImageList_N_1: TImageList
    Height = 11
    Masked = False
    Width = 12
    Left = 126
    Top = 314
    Bitmap = {
      494C01010400090050000C000B00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000300000001600000001002000000000008010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C3000000
      00000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C3000000
      00000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084C4C30084C4C30084C4C30084C4C3000000
      00003C3C3C000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C300000000003C3C
      3C000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C300000000000000000084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C3000000000029292900484848004848480048484800484848004848
      480048484800292929000000000084C4C30084C4C30084C4C30084C4C3000000
      0000545454003C3C3C000000000084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C300000000003C3C3C005454
      54000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C3000000000046464600464646000000000084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30000000000353535005454540054545400545454005454
      5400353535000000000084C4C30084C4C30084C4C30084C4C30084C4C3000000
      000054545400545454003C3C3C000000000084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C300000000003C3C3C00545454005454
      54000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4C3000000
      0000414141006363630063636300414141000000000084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C300000000004141410063636300636363004141
      41000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4C3000000
      0000545454005454540054545400424242000000000084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C300000000004242420054545400545454005454
      54000000000084C4C30084C4C30084C4C30084C4C30084C4C300000000003535
      350054545400545454005454540054545400353535000000000084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C3000000000046464600464646000000
      000084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C3000000
      0000545454005454540059595900595959000000000084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C300000000005959590059595900545454005454
      54000000000084C4C30084C4C30084C4C30084C4C30000000000292929004848
      48004848480048484800484848004848480048484800292929000000000084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C300000000000000000084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C3000000
      00005454540059595900646464000000000084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C3000000000064646400595959005454
      54000000000084C4C30084C4C30084C4C30084C4C30000000000000000000000
      00000000000000000000000000000000000000000000000000000000000084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C3000000
      000059595900646464000000000084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30000000000646464005959
      59000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C3000000
      0000646464000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C300000000006464
      64000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C3000000
      00000000000084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4
      C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C30084C4C3000000
      00000000000084C4C30084C4C30084C4C300424D3E000000000000003E000000
      2800000030000000160000000100010000000000B00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
  end
  object PopupMenuNav: TPopupMenu
    Left = 178
    Top = 314
    object ChooseOption1: TMenuItem
      Caption = 'Choose Option:'
      Enabled = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Doubleclicktochangethenavimode1: TMenuItem
      Caption = 'Double click to change the navi mode'
      OnClick = Doubleclicktochangethenavimode1Click
    end
    object Singleclicktochangethenavimode1: TMenuItem
      Caption = 'Single click to change the navi mode'
      Checked = True
      OnClick = Singleclicktochangethenavimode1Click
    end
  end
end
