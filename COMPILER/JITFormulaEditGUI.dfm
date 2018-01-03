object JITFormulaEditorForm: TJITFormulaEditorForm
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'JIT-compiled formula'
  ClientHeight = 592
  ClientWidth = 916
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 551
    Width = 916
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    ExplicitWidth = 975
    object CancelAndExitBtn: TButton
      Left = 8
      Top = 8
      Width = 195
      Height = 25
      Align = alLeft
      Caption = 'Cancel + exit'
      TabOrder = 0
      OnClick = CancelAndExitBtnClick
    end
    object SaveAndExitBtn: TButton
      Left = 713
      Top = 8
      Width = 195
      Height = 25
      Align = alRight
      Caption = 'Save + exit'
      TabOrder = 1
      OnClick = SaveAndExitBtnClick
      ExplicitLeft = 772
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 8
    Width = 916
    Height = 543
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 975
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 200
      Height = 543
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 200
        Height = 80
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 11
          Width = 73
          Height = 13
          AutoSize = False
          Caption = 'Formula name:'
        end
        object FormulanameEdit: TEdit
          Left = 8
          Top = 30
          Width = 171
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 32
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
        end
      end
      object OptionsPnl: TPanel
        Left = 0
        Top = 393
        Width = 200
        Height = 150
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 200
          Height = 14
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label2: TLabel
            Left = 8
            Top = 0
            Width = 73
            Height = 13
            AutoSize = False
            Caption = 'Options:'
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 14
          Width = 200
          Height = 136
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Panel11: TPanel
            Left = 159
            Top = 0
            Width = 41
            Height = 136
            Align = alRight
            BevelOuter = bvNone
            BorderWidth = 8
            TabOrder = 1
            object OptionDeleteBtn: TSpeedButton
              Left = 8
              Top = 48
              Width = 25
              Height = 20
              Hint = 'Delete selected option'
              Align = alTop
              Caption = 'Del'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = OptionDeleteBtnClick
              ExplicitLeft = -1
              ExplicitWidth = 28
            end
            object OptionAddBtn: TSpeedButton
              Left = 8
              Top = 8
              Width = 25
              Height = 20
              Hint = 'Add new option'
              Align = alTop
              Caption = 'Add'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = OptionAddBtnClick
              ExplicitLeft = 0
              ExplicitTop = 16
              ExplicitWidth = 27
            end
            object OptionEditBtn: TSpeedButton
              Left = 8
              Top = 28
              Width = 25
              Height = 20
              Hint = 'Edit selected option'
              Align = alTop
              Caption = 'Edit'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = OptionEditBtnClick
              ExplicitLeft = -1
              ExplicitTop = 48
              ExplicitWidth = 28
            end
          end
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 159
            Height = 136
            Align = alClient
            BevelOuter = bvNone
            Padding.Left = 8
            Padding.Top = 8
            Padding.Bottom = 8
            TabOrder = 0
            object OptionsList: TListBox
              Left = 8
              Top = 8
              Width = 151
              Height = 120
              Align = alClient
              Color = clMenuBar
              DoubleBuffered = False
              ItemHeight = 13
              ParentDoubleBuffered = False
              TabOrder = 0
              OnClick = OptionsListClick
              OnDblClick = OptionsListDblClick
            end
          end
        end
      end
      object ConstantsPnl: TPanel
        Left = 0
        Top = 243
        Width = 200
        Height = 150
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 200
          Height = 14
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Top = 0
            Width = 73
            Height = 13
            AutoSize = False
            Caption = 'Constants:'
          end
        end
        object Panel14: TPanel
          Left = 0
          Top = 14
          Width = 200
          Height = 136
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Panel15: TPanel
            Left = 159
            Top = 0
            Width = 41
            Height = 136
            Align = alRight
            BevelOuter = bvNone
            BorderWidth = 8
            TabOrder = 1
            object ConstantDeleteBtn: TSpeedButton
              Left = 8
              Top = 48
              Width = 25
              Height = 20
              Hint = 'Delete selected constant value'
              Align = alTop
              Caption = 'Del'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = ConstantDeleteBtnClick
              ExplicitLeft = -1
              ExplicitWidth = 28
            end
            object ConstantAddBtn: TSpeedButton
              Left = 8
              Top = 8
              Width = 25
              Height = 20
              Hint = 'Add new constant value'
              Align = alTop
              Caption = 'Add'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = ConstantAddBtnClick
              ExplicitLeft = 0
              ExplicitTop = 16
              ExplicitWidth = 27
            end
            object ConstantEditBtn: TSpeedButton
              Left = 8
              Top = 28
              Width = 25
              Height = 20
              Hint = 'Edit selected constant value'
              Align = alTop
              Caption = 'Edit'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = ConstantEditBtnClick
              ExplicitLeft = -1
              ExplicitTop = 48
              ExplicitWidth = 28
            end
          end
          object Panel16: TPanel
            Left = 0
            Top = 0
            Width = 159
            Height = 136
            Align = alClient
            BevelOuter = bvNone
            Padding.Left = 8
            Padding.Top = 8
            Padding.Bottom = 8
            TabOrder = 0
            object ConstantsList: TListBox
              Left = 8
              Top = 8
              Width = 151
              Height = 120
              Align = alClient
              Color = clMenuBar
              DoubleBuffered = False
              ItemHeight = 13
              ParentDoubleBuffered = False
              TabOrder = 0
              OnClick = ConstantsListClick
              OnDblClick = ConstantsListDblClick
            end
          end
        end
      end
      object ParamsPnl: TPanel
        Left = 0
        Top = 80
        Width = 200
        Height = 163
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel17: TPanel
          Left = 0
          Top = 0
          Width = 200
          Height = 14
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label4: TLabel
            Left = 8
            Top = 0
            Width = 73
            Height = 13
            AutoSize = False
            Caption = 'Named Params:'
          end
        end
        object Panel18: TPanel
          Left = 0
          Top = 14
          Width = 200
          Height = 149
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Panel19: TPanel
            Left = 159
            Top = 0
            Width = 41
            Height = 149
            Align = alRight
            BevelOuter = bvNone
            BorderWidth = 8
            TabOrder = 1
            object ParamDeleteBtn: TSpeedButton
              Left = 8
              Top = 48
              Width = 25
              Height = 20
              Hint = 'Delete selected named parameter'
              Align = alTop
              Caption = 'Del'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = ParamDeleteBtnClick
              ExplicitLeft = -1
              ExplicitWidth = 28
            end
            object ParamAddBtn: TSpeedButton
              Left = 8
              Top = 8
              Width = 25
              Height = 20
              Hint = 'Add new named parameter'
              Align = alTop
              Caption = 'Add'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = ParamAddBtnClick
              ExplicitLeft = 10
              ExplicitTop = 6
            end
            object ParamEditBtn: TSpeedButton
              Left = 8
              Top = 28
              Width = 25
              Height = 20
              Hint = 'Edit selected named parameter'
              Align = alTop
              Caption = 'Edit'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = ParamEditBtnClick
              ExplicitLeft = -1
              ExplicitTop = 48
              ExplicitWidth = 28
            end
          end
          object Panel20: TPanel
            Left = 0
            Top = 0
            Width = 159
            Height = 149
            Align = alClient
            BevelOuter = bvNone
            Padding.Left = 8
            Padding.Top = 8
            Padding.Bottom = 8
            TabOrder = 0
            object ParamsList: TListBox
              Left = 8
              Top = 8
              Width = 151
              Height = 133
              Align = alClient
              Color = clMenuBar
              DoubleBuffered = False
              ItemHeight = 13
              ParentDoubleBuffered = False
              TabOrder = 0
              OnClick = ParamsListClick
              OnDblClick = ParamsListDblClick
            end
          end
        end
      end
    end
    object Panel6: TPanel
      Left = 845
      Top = 0
      Width = 71
      Height = 543
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 8
      TabOrder = 2
      ExplicitLeft = 904
      object Panel8: TPanel
        Left = 8
        Top = 161
        Width = 55
        Height = 64
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object CompileBtn: TSpeedButton
          Left = 0
          Top = 0
          Width = 55
          Height = 20
          Hint = 'Compile the code <F9>'
          Align = alTop
          Caption = 'Compile'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = CompileBtnClick
          ExplicitLeft = -2
          ExplicitTop = -19
        end
        object SaveBtn: TSpeedButton
          Left = 0
          Top = 44
          Width = 55
          Height = 20
          Hint = 'Save the code <F5>'
          Align = alBottom
          Caption = 'Save'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = SaveBtnClick
          ExplicitTop = 16
        end
      end
      object Panel21: TPanel
        Left = 8
        Top = 8
        Width = 55
        Height = 153
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object LoadFormulaBtn: TSpeedButton
          Left = 0
          Top = 0
          Width = 55
          Height = 20
          Hint = 
            'Load code from another formula, for example a formula which coul' +
            'd not be compiled'
          Align = alTop
          Caption = 'Load'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = LoadFormulaBtnClick
          ExplicitTop = 16
        end
      end
      object InfoMemo: TMemo
        Left = 8
        Top = 347
        Width = 55
        Height = 188
        Hint = 'Shows messages'
        Align = alBottom
        BorderStyle = bsNone
        Color = clMenuBar
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        ExplicitWidth = 63
      end
    end
    object MainPageControl: TPageControl
      Left = 200
      Top = 0
      Width = 645
      Height = 543
      ActivePage = CodeSheet
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 704
      object CodeSheet: TTabSheet
        Caption = 'Code'
        ExplicitWidth = 696
        object CodePnl: TPanel
          Left = 0
          Top = 0
          Width = 637
          Height = 515
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 8
          TabOrder = 0
          ExplicitWidth = 696
          object CodeEdit: TRichEdit
            Left = 8
            Top = 8
            Width = 621
            Height = 499
            Align = alClient
            Color = clMenuBar
            Font.Charset = ANSI_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Consolas'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            Zoom = 100
            ExplicitWidth = 668
          end
        end
      end
      object DescriptionSheet: TTabSheet
        Caption = 'Description'
        ImageIndex = 1
        ExplicitWidth = 696
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 637
          Height = 515
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 8
          TabOrder = 0
          ExplicitWidth = 696
          object DescriptionEdit: TRichEdit
            Left = 8
            Top = 8
            Width = 621
            Height = 499
            Align = alClient
            Color = clMenuBar
            Font.Charset = ANSI_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Consolas'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            Zoom = 100
            ExplicitWidth = 680
          end
        end
      end
      object PreprocessedCodeSheet: TTabSheet
        Caption = 'Preprocessed code'
        ImageIndex = 2
        OnShow = PreprocessedCodeSheetShow
        ExplicitWidth = 696
        object Panel22: TPanel
          Left = 0
          Top = 0
          Width = 637
          Height = 515
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 8
          TabOrder = 0
          ExplicitWidth = 696
          object PreprocessedCodeEdit: TRichEdit
            Left = 8
            Top = 8
            Width = 621
            Height = 499
            Align = alClient
            Color = clMenuBar
            Font.Charset = ANSI_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Consolas'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            Zoom = 100
            ExplicitWidth = 680
          end
        end
      end
      object SupportedFunctionsSheet: TTabSheet
        Caption = 'Supported mathematical functions'
        ImageIndex = 3
        ExplicitWidth = 696
        object Panel23: TPanel
          Left = 0
          Top = 0
          Width = 637
          Height = 515
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 8
          TabOrder = 0
          ExplicitWidth = 696
          object SupportedFunctionsEdit: TRichEdit
            Left = 8
            Top = 8
            Width = 621
            Height = 499
            Align = alClient
            Color = clMenuBar
            Font.Charset = ANSI_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Consolas'
            Font.Style = []
            Lines.Strings = (
              
                '{ ----------------------- Functions from System  ---------------' +
                '-------------- }'
              'function Int(const X: Double): Double;'
              'function Frac(const X: Double): Double;'
              'function Exp(const X: Double): Double;'
              'function Cos(const X: Double): Double;'
              'function Sin(const X: Double): Double;'
              'function Ln(const X: Double): Double;'
              'function ArcTan(const X: Double): Double;'
              'function Sqrt(const X: Double): Double;'
              
                '{ --------------------- Functions from System.Math  ------------' +
                '-------------- }'
              '{ Trigonometric functions }'
              '{ IN: |X| <= 1  OUT: [0..PI] radians }'
              'function ArcCos(const X : Double) : Double;'
              '{ IN: |X| <= 1  OUT: [-PI/2..PI/2] radians }'
              'function ArcSin(const X : Double) : Double;'
              ''
              
                '{ ArcTan2 calculates ArcTan(Y/X), and returns an angle in the co' +
                'rrect quadrant.'
              '  IN: |Y| < 2^64, |X| < 2^64, X <> 0   OUT: [-PI..PI] radians }'
              'function ArcTan2(const Y, X: Double): Double;'
              ''
              
                '{ SinCos is 2x faster than calling Sin and Cos separately for th' +
                'e same angle }'
              'procedure SinCos(const Theta: Double; var Sin, Cos: Double);'
              'function Tan(const X: Double): Double;'
              'function Cotan(const X: Double): Double;'
              'function Secant(const X: Double): Double;'
              'function Cosecant(const X: Double): Double;'
              'function Hypot(const X, Y: Double): Double;'
              ''
              '{ Angle unit conversion routines }'
              'function RadToDeg(const Radians: Double): Double;'
              'function DegToRad(const Degrees: Double): Double;'
              ''
              '{ When angle not between -180 and 180 remove left }'
              'function DegNormalize(const Degrees: Double): Double;'
              ''
              '{ Hyperbolic functions and inverses }'
              'function Cot(const X: Double): Double;'
              'function Sec(const X: Double): Double;'
              'function Csc(const X: Double): Double;'
              'function Cosh(const X: Double): Double;'
              'function Sinh(const X: Double): Double;'
              'function Tanh(const X: Double): Double;'
              'function CotH(const X: Double): Double;'
              'function SecH(const X: Double): Double;'
              'function CscH(const X: Double): Double;'
              'function ArcCot(const X: Double): Double;'
              'function ArcSec(const X: Double): Double;'
              'function ArcCsc(const X: Double): Double;'
              'function ArcCosh(const X: Double): Double;'
              'function ArcSinh(const X: Double): Double;'
              'function ArcTanh(const X: Double): Double;'
              'function ArcCotH(const X: Double): Double;'
              'function ArcSecH(const X: Double): Double;'
              'function ArcCscH(const X: Double): Double;'
              ''
              '{ Logarithmic functions }'
              'function LnXP1(const X: Double): Double;'
              'function Log10(const X: Double): Double;'
              'function Log2(const X: Double): Double;'
              'function LogN(const Base, X: Double): Double;'
              ''
              '{ Exponential functions }'
              ''
              '{ IntPower: Raise base to an integral power.  Fast. }'
              
                'function IntPower(const Base: Double; const Exponent: Integer): ' +
                'Double;'
              ''
              '{ Power: Raise base to any power.'
              
                '  For fractional exponents, or |exponents| > MaxInt, base must b' +
                'e > 0. }'
              'function Power(const Base, Exponent: Double): Double;'
              ''
              '{ Miscellaneous Routines }'
              '{ Ceil: Smallest integer >= X, |X| < MaxInt }'
              'function Ceil(const X: Double): Integer;'
              ''
              '{ Floor: Largest integer <= X,  |X| < MaxInt }'
              'function Floor(const X: Double): Integer;'
              ''
              
                '{ MinValue: Returns the smallest signed value in the data array ' +
                '(MIN) }'
              'function Min(const A, B: Double): Double;'
              ''
              
                '{ MaxValue: Returns the largest signed value in the data array (' +
                'MAX) }'
              'function Max(const A, B: Double): Double;'
              ''
              
                '{ RandG produces random numbers with Gaussian distribution about' +
                ' the mean.'
              '  Useful for simulating data with sampling errors. }'
              'function RandG(Mean, StdDev: Double): Double;'
              ''
              '{ Extreme testing }'
              
                '// Like an infinity, a NaN double value has an exponent of 7FF, ' +
                'but the NaN'
              '// values have a fraction field that is not 0.'
              'function IsNan(const AValue: Double): Boolean;'
              ''
              
                '// Like a NaN, an infinity double value has an exponent of 7FF, ' +
                'but the'
              
                '// infinity values have a fraction field of 0. Infinity values c' +
                'an be positive'
              '// or negative, which is specified in the high-order, sign bit.'
              'function IsInfinite(const AValue: Double): Boolean;'
              '')
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
            WantTabs = True
            Zoom = 100
            ExplicitWidth = 680
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 975
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'm3f'
    Filter = 'Mandel3D Formula (*.m3f)|*.m3f'
    Left = 782
    Top = 80
  end
end
