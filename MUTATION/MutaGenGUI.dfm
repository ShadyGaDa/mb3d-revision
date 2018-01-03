object MutaGenFrm: TMutaGenFrm
  Left = 0
  Top = 0
  Caption = 
    'MutaGen [DblClick on Image or Click on "Mutate!"-button to Mutat' +
    'e, RightClick for Menu]'
  ClientHeight = 567
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 644
    Top = 0
    Width = 233
    Height = 567
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 848
    ExplicitHeight = 663
    object GenerationsGrp: TJvGroupBox
      Left = 0
      Top = 467
      Width = 233
      Height = 100
      Align = alBottom
      Caption = 'Generations'
      TabOrder = 0
      PropagateEnable = True
      ExplicitTop = 563
      object Panel9: TPanel
        Left = 2
        Top = 15
        Width = 229
        Height = 83
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        DesignSize = (
          229
          83)
        object GenerationBtn: TUpDown
          Left = 176
          Top = 8
          Width = 47
          Height = 25
          Min = -1000000
          Max = 1000000
          Orientation = udHorizontal
          TabOrder = 0
          OnClick = GenerationBtnClick
        end
        object ClearPrevGenerations: TButton
          Left = 53
          Top = 39
          Width = 129
          Height = 33
          Hint = 'Clear all generations before the selected one'
          Anchors = []
          Caption = 'Clear all previous'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = ClearPrevGenerationsClick
        end
        object GenerationEdit: TEdit
          Left = 24
          Top = 10
          Width = 148
          Height = 21
          Alignment = taRightJustify
          Color = clBtnFace
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
          Text = 'Generation n of N'
        end
      end
    end
    object MutateGrp: TJvGroupBox
      Left = 0
      Top = 338
      Width = 233
      Height = 129
      Align = alBottom
      Caption = 'Mutate'
      TabOrder = 1
      PropagateEnable = True
      ExplicitTop = 434
      object Panel8: TPanel
        Left = 2
        Top = 15
        Width = 229
        Height = 112
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object ProgressBar: TProgressBar
          Left = 4
          Top = 91
          Width = 221
          Height = 17
          Align = alBottom
          Max = 15
          Position = 10
          Smooth = True
          SmoothReverse = True
          Step = 1
          TabOrder = 0
        end
        object MutateBtn: TButton
          Left = 4
          Top = 4
          Width = 221
          Height = 38
          Align = alTop
          Caption = 'Mutate!'
          TabOrder = 1
          OnClick = MutateBtnClick
        end
      end
    end
    object OptionsGrp: TJvGroupBox
      Left = 0
      Top = 0
      Width = 233
      Height = 338
      Align = alClient
      Caption = 'Options'
      TabOrder = 2
      PropagateEnable = True
      ExplicitHeight = 434
      object Panel7: TPanel
        Left = 2
        Top = 15
        Width = 229
        Height = 321
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        ExplicitHeight = 417
        object Panel5: TPanel
          Left = 4
          Top = 276
          Width = 221
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = 372
          DesignSize = (
            221
            41)
          object DisableAllBtn: TButton
            Left = 53
            Top = 3
            Width = 129
            Height = 33
            Anchors = []
            Caption = 'Disable all'
            TabOrder = 0
            OnClick = DisableAllBtnClick
          end
        end
        object GridPanel2: TGridPanel
          Left = 4
          Top = 4
          Width = 221
          Height = 272
          Align = alClient
          BevelKind = bkSoft
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 40.000000000000000000
            end
            item
              Value = 30.000000000000000000
            end
            item
              Value = 30.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = MinIterLabel
              Row = 0
            end
            item
              Column = 1
              Control = ModifyFormulaWeightTBar
              Row = 1
            end
            item
              Column = 1
              Control = Label2
              Row = 0
            end
            item
              Column = 2
              Control = Label3
              Row = 0
            end
            item
              Column = 0
              Control = Panel2
              Row = 1
            end
            item
              Column = 0
              Control = Panel3
              Row = 2
            end
            item
              Column = 1
              Control = ModifyParamsWeightTBar
              Row = 2
            end
            item
              Column = 2
              Control = ModifyParamsStrengthTBar
              Row = 2
            end
            item
              Column = 2
              Control = Label9
              Row = 1
            end
            item
              Column = 0
              Control = Panel4
              Row = 3
            end
            item
              Column = 1
              Control = ModifyJuliaModeWeightTBar
              Row = 3
            end
            item
              Column = 2
              Control = ModifyJuliaModeStrengthTBar
              Row = 3
            end
            item
              Column = 0
              Control = Panel6
              Row = 4
            end
            item
              Column = 1
              Control = ModifyIterationCountWeightTBar
              Row = 4
            end
            item
              Column = 2
              Control = ModifyIterationCountStrengthTBar
              Row = 4
            end>
          RowCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 20.000000000000000000
            end
            item
              Value = 20.000000000000000000
            end
            item
              Value = 20.000000000000000000
            end
            item
              Value = 20.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          TabOrder = 1
          ExplicitHeight = 368
          DesignSize = (
            217
            268)
          object MinIterLabel: TLabel
            Left = 3
            Top = 6
            Width = 80
            Height = 13
            Alignment = taRightJustify
            Anchors = []
            Caption = 'Mutation type'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = 47
          end
          object ModifyFormulaWeightTBar: TTrackBarEx
            Tag = 10
            Left = 86
            Top = 42
            Width = 65
            Height = 21
            Anchors = []
            Ctl3D = True
            Max = 1000
            ParentCtl3D = False
            TabOrder = 0
            ThumbLength = 18
            TickMarks = tmBoth
            TickStyle = tsNone
            ExplicitTop = 61
          end
          object Label2: TLabel
            Left = 88
            Top = 6
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Anchors = []
            Caption = 'Probability'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 93
            ExplicitTop = 47
          end
          object Label3: TLabel
            Left = 159
            Top = 6
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Anchors = []
            Caption = 'Strength'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 169
            ExplicitTop = 47
          end
          object Panel2: TPanel
            Left = 0
            Top = 26
            Width = 86
            Height = 52
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitTop = 36
            DesignSize = (
              86
              52)
            object Label1: TLabel
              Left = 4
              Top = 4
              Width = 72
              Height = 13
              Anchors = []
              Caption = 'Exchange, add'
            end
            object Label4: TLabel
              Left = 4
              Top = 32
              Width = 43
              Height = 13
              Anchors = []
              Caption = 'Formulas'
            end
            object Label5: TLabel
              Left = 4
              Top = 18
              Width = 57
              Height = 13
              Anchors = []
              Caption = 'and remove'
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 79
            Width = 86
            Height = 42
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitTop = 108
            DesignSize = (
              86
              42)
            object Label6: TLabel
              Left = 4
              Top = 4
              Width = 75
              Height = 13
              Anchors = []
              Caption = 'Change Params'
            end
            object Label8: TLabel
              Left = 4
              Top = 18
              Width = 56
              Height = 13
              Anchors = []
              Caption = 'of Formulas'
            end
          end
          object ModifyParamsWeightTBar: TTrackBarEx
            Tag = 10
            Left = 86
            Top = 95
            Width = 65
            Height = 21
            Anchors = []
            Ctl3D = True
            Max = 1000
            ParentCtl3D = False
            TabOrder = 3
            ThumbLength = 18
            TickMarks = tmBoth
            TickStyle = tsNone
            ExplicitTop = 133
          end
          object ModifyParamsStrengthTBar: TTrackBarEx
            Tag = 10
            Left = 151
            Top = 95
            Width = 66
            Height = 21
            Anchors = []
            Ctl3D = True
            Max = 2000
            ParentCtl3D = False
            TabOrder = 4
            ThumbLength = 18
            TickMarks = tmBoth
            TickStyle = tsNone
            ExplicitTop = 133
          end
          object Label9: TLabel
            Left = 182
            Top = 46
            Width = 4
            Height = 13
            Alignment = taRightJustify
            Anchors = []
            Caption = '-'
            ExplicitLeft = 211
            ExplicitTop = 64
          end
          object Panel4: TPanel
            Left = 0
            Top = 132
            Width = 86
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitTop = 180
            DesignSize = (
              86
              41)
            object Label7: TLabel
              Left = 4
              Top = 4
              Width = 37
              Height = 13
              Anchors = []
              Caption = 'Change'
            end
            object Label10: TLabel
              Left = 4
              Top = 18
              Width = 50
              Height = 13
              Anchors = []
              Caption = 'Julia Mode'
            end
          end
          object ModifyJuliaModeWeightTBar: TTrackBarEx
            Tag = 10
            Left = 86
            Top = 148
            Width = 65
            Height = 21
            Anchors = []
            Ctl3D = True
            Max = 1000
            ParentCtl3D = False
            TabOrder = 6
            ThumbLength = 18
            TickMarks = tmBoth
            TickStyle = tsNone
            ExplicitTop = 205
          end
          object ModifyJuliaModeStrengthTBar: TTrackBarEx
            Tag = 10
            Left = 151
            Top = 148
            Width = 66
            Height = 21
            Anchors = []
            Ctl3D = True
            Max = 2000
            ParentCtl3D = False
            TabOrder = 7
            ThumbLength = 18
            TickMarks = tmBoth
            TickStyle = tsNone
            ExplicitTop = 205
          end
          object Panel6: TPanel
            Left = 0
            Top = 185
            Width = 86
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 8
            ExplicitTop = 252
            DesignSize = (
              86
              41)
            object Label11: TLabel
              Left = 4
              Top = 4
              Width = 37
              Height = 13
              Anchors = []
              Caption = 'Change'
            end
            object Label12: TLabel
              Left = 4
              Top = 18
              Width = 74
              Height = 13
              Anchors = []
              Caption = 'Iteration Count'
            end
          end
          object ModifyIterationCountWeightTBar: TTrackBarEx
            Tag = 10
            Left = 86
            Top = 201
            Width = 65
            Height = 21
            Anchors = []
            Ctl3D = True
            DoubleBuffered = False
            Max = 1000
            ParentCtl3D = False
            ParentDoubleBuffered = False
            TabOrder = 9
            ThumbLength = 18
            TickMarks = tmBoth
            TickStyle = tsNone
            ExplicitTop = 277
          end
          object ModifyIterationCountStrengthTBar: TTrackBarEx
            Tag = 10
            Left = 151
            Top = 201
            Width = 66
            Height = 21
            Anchors = []
            Ctl3D = True
            Max = 2000
            ParentCtl3D = False
            TabOrder = 10
            ThumbLength = 18
            TickMarks = tmBoth
            TickStyle = tsNone
            ExplicitTop = 277
          end
        end
      end
    end
  end
  object MainPnl: TPanel
    Left = 0
    Top = 0
    Width = 644
    Height = 567
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    OnResize = MainPnlResize
    ExplicitWidth = 848
    ExplicitHeight = 663
    object Panel_1: TPanel
      Left = 247
      Top = 189
      Width = 50
      Height = 50
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_2: TPanel
      Left = 277
      Top = 133
      Width = 50
      Height = 50
      Caption = '1.2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 1
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_2: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_1: TPanel
      Left = 221
      Top = 133
      Width = 50
      Height = 50
      Caption = '1.1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 2
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_1: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_2_2: TPanel
      Left = 341
      Top = 101
      Width = 50
      Height = 50
      Caption = '1.2.2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 3
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_2_2: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_2_1: TPanel
      Left = 341
      Top = 165
      Width = 50
      Height = 50
      Caption = '1.2.1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 4
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_2_1: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_1_2: TPanel
      Left = 165
      Top = 101
      Width = 50
      Height = 50
      Caption = '1.1.2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 5
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_1_2: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 10
        ExplicitTop = 2
      end
    end
    object Panel_1_1_1: TPanel
      Left = 165
      Top = 165
      Width = 50
      Height = 50
      Caption = '1.1.1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 6
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_1_1: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_2_2_2: TPanel
      Left = 372
      Top = 45
      Width = 50
      Height = 50
      Caption = '1.2.2.2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 7
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_2_2_2: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = -3
        ExplicitTop = 10
      end
    end
    object Panel_1_2_2_1: TPanel
      Left = 311
      Top = 45
      Width = 50
      Height = 50
      Caption = '1.2.2.1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 8
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_2_2_1: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_1_2_2: TPanel
      Left = 205
      Top = 45
      Width = 50
      Height = 50
      Caption = '1.1.2.2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 9
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_1_2_2: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_1_2_1: TPanel
      Left = 138
      Top = 45
      Width = 50
      Height = 50
      Caption = '1.1.2.1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 10
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_1_2_1: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_1_1_1: TPanel
      Left = 132
      Top = 221
      Width = 50
      Height = 50
      Caption = '1.1.1.1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 11
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_1_1_1: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_1_1_2: TPanel
      Left = 195
      Top = 221
      Width = 50
      Height = 50
      Caption = '1.1.1.2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 12
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_1_1_2: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_2_1_2: TPanel
      Left = 372
      Top = 221
      Width = 50
      Height = 50
      Caption = '1.2.1.2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 13
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_2_1_2: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
    object Panel_1_2_1_1: TPanel
      Left = 316
      Top = 221
      Width = 50
      Height = 50
      Caption = '1.2.1.1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuMutaGen
      TabOrder = 14
      VerticalAlignment = taAlignBottom
      OnDblClick = Panel_1DblClick
      object Image_1_2_1_1: TImage
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 38
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenuMutaGen
        Transparent = True
        OnDblClick = Panel_1DblClick
        ExplicitLeft = 35
        ExplicitTop = 11
        ExplicitWidth = 28
        ExplicitHeight = 28
      end
    end
  end
  object PopupMenuMutaGen: TPopupMenu
    Left = 496
    Top = 144
    object SendtoMainItm: TMenuItem
      Caption = 'Send to Main Editor'
      OnClick = SendtoMainItmClick
    end
    object ToClipboardItm: TMenuItem
      Caption = 'Copy Params to Clipboard'
      OnClick = ToClipboardItmClick
    end
  end
end
