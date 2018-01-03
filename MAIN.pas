unit MAIN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, CalcThread, Buttons, AmbShadowCalcThreadN,
  PaintThread, FileHandling, Math3D, SHFolder, TypeDefinitions, Menus,
  Vcl.ExtDlgs, M3Iregister, JvExStdCtrls, JvMemo, JvExComCtrls, JvComCtrls,
  ListBoxEx, SpeedButtonEx, TrackBarEx, System.ImageList, Vcl.ImgList,
  JvExControls, JvgLabel, Vcl.Imaging.jpeg;


type
  TqualPreset = packed record
    SmoothNormals: Integer;
    DEstop: Double;
    RayMultiplier: Single;
    BinSearch: Integer;
    ImageWidth: Integer;
    ImageScale: Integer;
    RayLimiter: Single;
  end;
  TGUI = class(TForm)
    Timer_M_1: TTimer;
    Timer_M_3: TTimer;
    Timer_M_4: TTimer;
    SaveDialog_M_2: TSaveDialog;
    OpenDialog_M_1: TOpenDialog;
    SaveDialog_M_3: TSaveDialog;
    Timer_M_8: TTimer;
    SaveDialog_M_4: TSaveDialog;
    SaveDialog_M_6: TSaveDialog;
    PopupMenu_M_1: TPopupMenu;
    N111: TMenuItem;
    N12aa1: TMenuItem;
    N13aa1: TMenuItem;
    N141: TMenuItem;
    N151: TMenuItem;
    N161: TMenuItem;
    N171: TMenuItem;
    N181: TMenuItem;
    N191: TMenuItem;
    N1101: TMenuItem;
    SaveDialog_M_1: TSaveDialog;
    PopupMenu_M_2: TPopupMenu;
    Stickthiswindowtotherightside1: TMenuItem;
    Stickthiswindowtotheleftside1: TMenuItem;
    Donotmakethiswindowsticky1: TMenuItem;
    PopupMenu_M_3: TPopupMenu;
    StartrenderingandsaveafterwardstheM3Ifile1: TMenuItem;
    Timer_M_2: TTimer;
    Timer_M_5: TTimer;
    PopupMenu_M_4: TPopupMenu;
    ShapeDisc_M_1: TMenuItem;
    ShapeBox_M_1: TMenuItem;
    Timer_M_6: TTimer;
    PageMain: TJvPageControl;
    TabMain: TTabSheet;
    Panel_M_5: TPanel;
    Panel_M_3: TPanel;
    SpeedButton_M_1: TSpeedButton;
    SpeedButton_M_2: TSpeedButton;
    SpeedButton_M_4: TSpeedButton;
    Label_M_20: TLabel;
    SpeedButton_M_11: TSpeedButton;
    SpeedButton_M_16: TSpeedButton;
    SpeedButton_M_17: TSpeedButton;
    SpeedButton_M_18: TSpeedButton;
    Label_M_6: TLabel;
    SpeedButton_M_22: TSpeedButton;
    SpeedButton_M_23: TSpeedButton;
    ProgressBar1: TProgressBar;
    Edit_M_4: TEdit;
    Panel_M_7: TPanel;
    Label_M_46: TLabel;
    FrameEdit: TEdit;
    FrameUpDown: TUpDown;
    ScrollBox1: TScrollBox;
    Image_M_1: TImage;
    Shape_M_1: TShape;
    Shape_M_2: TShape;
    Panel_M_2: TPanel;
    SpeedButton_M_12: TSpeedButton;
    SpeedButton_M_15: TSpeedButton;
    MeshExportBtn: TSpeedButton;
    MutaGenBtn: TSpeedButton;
    GroupBox_M_1: TGroupBox;
    Label_M_11: TLabel;
    SpeedButton_M_19: TSpeedButton;
    SpeedButton_M_20: TSpeedButton;
    SpeedButton_M_21: TSpeedButton;
    Label_M_4: TLabel;
    Label_M_25: TLabel;
    Label_M_12: TLabel;
    Edit_M_11: TEdit;
    Edit_M_12: TEdit;
    CheckBox_M_10: TCheckBox;
    CheckBox_M_11: TCheckBox;
    UpDown_M_2: TUpDown;
    PageControl_M_2: TPageControl;
    TabSheet_M_7: TTabSheet;
    Button_M_9: TSpeedButton;
    Button_M_5: TSpeedButton;
    SpeedButton_M_8: TSpeedButton;
    SpeedButton_M_36: TSpeedButton;
    TabSheet_M_10: TTabSheet;
    Button_M_8: TSpeedButton;
    Button_M_4: TSpeedButton;
    SpeedButton_M_7: TSpeedButton;
    SpeedButton_M_29: TSpeedButton;
    CheckBox_M_16: TCheckBox;
    TabSheet_M_12: TTabSheet;
    Button_M_3: TSpeedButton;
    SBsaveJPEG: TSpeedButton;
    SpeedButton_M_26: TSpeedButton;
    Label_M_24: TLabel;
    Label_M_23: TLabel;
    Label_M_41: TLabel;
    Label_M_42: TLabel;
    Edit_M_26: TEdit;
    CheckBox_M_13: TCheckBox;
    UpDown_M_4: TUpDown;
    TabSheet_M_11: TTabSheet;
    SpeedButton_M_25: TSpeedButton;
    SpeedButton_M_24: TSpeedButton;
    SpeedButton_M_27: TSpeedButton;
    SpeedButton_M_28: TSpeedButton;
    TabSheet_M_13: TTabSheet;
    IniDirsBtn: TSpeedButton;
    MapSequencesBtn: TSpeedButton;
    VisualThemesBtn: TSpeedButton;
    TabSheet_M_14: TTabSheet;
    BugReportBtn: TSpeedButton;
    GroupBox_M_2: TGroupBox;
    SpeedButton_M_35: TSpeedButton;
    UpDown_M_1: TUpDown;
    PageCtrls: TJvPageControl;
    TabImage: TTabSheet;
    TabFormula: TTabSheet;
    Bevel_F_2: TBevel;
    Panel_F_2: TPanel;
    Label_F_22: TLabel;
    Label_F_23: TLabel;
    Label_F_24: TLabel;
    Label_F_26: TLabel;
    XWEdit: TEdit;
    YWEdit: TEdit;
    ZWEdit: TEdit;
    Button_F_4: TButton;
    Panel_F_1: TPanel;
    Label_F_17: TLabel;
    Label_F_20: TLabel;
    Label_F_21: TLabel;
    Label_F_19: TLabel;
    RBailoutEdit: TEdit;
    MaxIterEdit: TEdit;
    MinIterEdit: TEdit;
    CheckBox_F_2: TCheckBox;
    ComboBox_F_1: TComboBox;
    MaxIterHybridPart2Edit: TEdit;
    TabControl_F_2: TTabControl;
    SpeedButton_F_3: TSpeedButton;
    Label_F_28: TLabel;
    UpDown_F_1: TUpDown;
    Panel_F_3: TPanel;
    Label_F_18: TLabel;
    Label_F_25: TLabel;
    Label_F_27: TLabel;
    Edit_F_23: TEdit;
    DECombineCmb: TComboBox;
    Edit_F_25: TEdit;
    TabControl_F_1: TTabControl;
    Label_F_6: TLabel;
    Label_F_7: TLabel;
    Label_F_16: TLabel;
    Bevel_F_1: TBevel;
    Label_F_1: TLabel;
    Label_F_2: TLabel;
    Label_F_3: TLabel;
    Label_F_4: TLabel;
    Label_F_5: TLabel;
    Label_F_8: TLabel;
    Label_F_9: TLabel;
    Label_F_10: TLabel;
    Label_F_11: TLabel;
    Label_F_12: TLabel;
    Label_F_13: TLabel;
    Label_F_14: TLabel;
    Label_F_15: TLabel;
    LabelItCount: TLabel;
    SpeedButton_F_11: TSpeedButton;
    SpeedButton_F_2: TSpeedButton;
    SpeedButton_F_4: TSpeedButton;
    SpeedButtonEx_F_1: TSpeedButtonEx;
    SpeedButtonEx_F_7: TSpeedButtonEx;
    SpeedButtonEx_F_2: TSpeedButtonEx;
    SpeedButtonEx_F_3: TSpeedButtonEx;
    SpeedButtonEx_F_4: TSpeedButtonEx;
    SpeedButtonEx_F_5: TSpeedButtonEx;
    SpeedButtonEx_F_6: TSpeedButtonEx;
    SpeedButtonEx_F_8: TSpeedButtonEx;
    SpeedButtonEx_F_9: TSpeedButtonEx;
    SpeedButtonEx_F_10: TSpeedButtonEx;
    SpeedButtonEx_F_11: TSpeedButtonEx;
    ExchangeFormulaRightBtn: TSpeedButton;
    ExchangeFormulaLeftBtn: TSpeedButton;
    JITFormulaBtn: TSpeedButton;
    ListBoxEx_F_15: TListBoxEx;
    ComboEdit_F_1: TEdit;
    ListBoxEx_F_1: TListBoxEx;
    Edit_F_16: TEdit;
    Edit_F_15: TEdit;
    Edit_F_14: TEdit;
    Edit_F_13: TEdit;
    Edit_F_12: TEdit;
    Edit_F_11: TEdit;
    Edit_F_10: TEdit;
    Edit_F_9: TEdit;
    Edit_F_8: TEdit;
    Edit_F_7: TEdit;
    Edit_F_6: TEdit;
    Edit_F_5: TEdit;
    Edit_F_4: TEdit;
    Edit_F_3: TEdit;
    Edit_F_2: TEdit;
    Edit_F_1: TEdit;
    EditItCount: TEdit;
    CheckBox_F_1: TCheckBox;
    ListBoxEx_F_11: TListBoxEx;
    ListBoxEx_F_2: TListBoxEx;
    ListBoxEx_F_3: TListBoxEx;
    ListBoxEx_F_4: TListBoxEx;
    ListBoxEx_F_5: TListBoxEx;
    ListBoxEx_F_6: TListBoxEx;
    ListBoxEx_F_7: TListBoxEx;
    ListBoxEx_F_8: TListBoxEx;
    ListBoxEx_F_9: TListBoxEx;
    ListBoxEx_F_10: TListBoxEx;
    ListBoxEx_F_12: TListBoxEx;
    RichEdit_F_1: TRichEdit;
    Button_F_3: TButton;
    OpenDialog_F_3: TOpenDialog;
    Timer_F_4: TTimer;
    Timer_F_5: TTimer;
    PopupMenuRateFormula: TPopupMenu;
    Ratethisformulaasnormal1: TMenuItem;
    Ilikethisformula1: TMenuItem;
    voteformula1: TMenuItem;
    Hidethisformula1: TMenuItem;
    N1: TMenuItem;
    Deletethisformulapermanently1: TMenuItem;
    PopupMenuCopyFormula: TPopupMenu;
    Copythisformulatoformulanr11: TMenuItem;
    Copythisformulatoformula21: TMenuItem;
    Copythisformulatoformula31: TMenuItem;
    Copythisformulatoformula41: TMenuItem;
    Copythisformulatoformula51: TMenuItem;
    Copythisformulatoformula61: TMenuItem;
    N2: TMenuItem;
    Shiftallformulasonetotheright1: TMenuItem;
    Shifttotheleft1: TMenuItem;
    N3: TMenuItem;
    Copythevaluesto1: TMenuItem;
    Timer_F_1: TTimer;
    JITPopupMenu: TPopupMenu;
    EditJITFormulaItm: TMenuItem;
    NewJITFormulaItm: TMenuItem;
    TabLight: TTabSheet;
    SaveDialog_L_1: TSaveDialog;
    PopupMenuCopyLight: TPopupMenu;
    CopythislighttoLight11: TMenuItem;
    CopythislighttoLight21: TMenuItem;
    CopythislighttoLight31: TMenuItem;
    CopythislighttoLight41: TMenuItem;
    CopythislighttoLight51: TMenuItem;
    CopythislighttoLight61: TMenuItem;
    PopupMenuLightVolCol: TPopupMenu;
    Insertvolumetriclightcolor1: TMenuItem;
    OpenDialogPic: TOpenPictureDialog;
    ColorDialog_L_1: TColorDialog;
    PopupMenuLightBMP: TPopupMenu;
    N01: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    ImageList_L_1: TImageList;
    OpenDialog_L_1: TOpenDialog;
    Panel_L_3: TPanel;
    SpeedButton_L_13: TSpeedButton;
    SpeedButton_L_14: TSpeedButton;
    SpeedButton_L_15: TSpeedButton;
    SpeedButton_L_16: TSpeedButton;
    SpeedButton_L_17: TSpeedButton;
    SpeedButton_L_18: TSpeedButton;
    SpeedButton_L_23: TSpeedButton;
    SpeedButton_L_20: TSpeedButton;
    SpeedButton_L_21: TSpeedButton;
    SpeedButton_L_22: TSpeedButton;
    SpeedButtonMem: TSpeedButton;
    SpeedButton_L_19: TSpeedButton;
    SpeedButton_L_24: TSpeedButton;
    SpeedButton_L_25: TSpeedButton;
    SpeedButton_L_26: TSpeedButton;
    SpeedButton_L_27: TSpeedButton;
    SpeedButton_L_28: TSpeedButton;
    SpeedButton_L_29: TSpeedButton;
    SpeedButton_L_9: TSpeedButton;
    SpeedButton_L_31: TSpeedButton;
    SpeedButton_L_32: TSpeedButton;
    ComboBox_L_3: TComboBox;
    CheckBox_L_11: TCheckBox;
    TabControl_L_1: TTabControl;
    Label_L_8: TLabel;
    Label_L_9: TLabel;
    Label_L_26: TLabel;
    SpeedButton_L_12: TSpeedButton;
    ComboBox_L_1: TComboBox;
    ComboBox_L_2: TComboBox;
    CheckBox_L_4: TCheckBox;
    PageControl_L_1: TPageControl;
    TabSheet_L_1: TTabSheet;
    Label_L_2: TLabel;
    Label_L_3: TLabel;
    Label_L_25: TLabel;
    TrackBarExXang: TTrackBar;
    TrackBarExYang: TTrackBar;
    CheckBox_L_6: TCheckBox;
    ComboBox_L_4: TComboBox;
    TabSheet_L_2: TTabSheet;
    Label_L_13: TLabel;
    Label_L_14: TLabel;
    Label_L_15: TLabel;
    Label_L_32: TLabel;
    TrackBarExYpos: TTrackBarEx;
    TrackBarExXpos: TTrackBarEx;
    TrackBarExZpos: TTrackBarEx;
    UpDownXpos: TUpDown;
    UpDownYpos: TUpDown;
    UpDownZpos: TUpDown;
    ButtonGetPos: TButton;
    ComboBox_L_5: TComboBox;
    TabSheet_L_6: TTabSheet;
    Label_L_39: TLabel;
    Label_L_29: TLabel;
    Label_L_30: TLabel;
    Label_L_31: TLabel;
    Image_L_3: TImage;
    TrackBar_L_25: TTrackBar;
    TrackBar_L_26: TTrackBar;
    TrackBar_L_27: TTrackBar;
    CheckBox_L_14: TCheckBox;
    Edit_L_2: TEdit;
    UpDownLight: TUpDown;
    CheckBox_L_7: TCheckBox;
    Edit_L_1: TEdit;
    UpDown_L_4: TUpDown;
    Panel_L_4: TPanel;
    Label_L_16: TLabel;
    Label_L_17: TLabel;
    TrackBar_L_18: TTrackBar;
    CheckBox_L_10: TCheckBox;
    PageControl_L_2: TPageControl;
    TabSheet_L_3: TTabSheet;
    Label_L_37: TLabel;
    SpeedButton_L_1: TSpeedButton;
    SpeedButton_L_2: TSpeedButton;
    Panel_L_2: TPanel;
    Label_L_40: TLabel;
    Label_L_34: TLabel;
    Label_L_35: TLabel;
    Label_L_36: TLabel;
    Image_L_4: TImage;
    Label_L_41: TLabel;
    Label_L_38: TLabel;
    TrackBar_L_28: TTrackBar;
    TrackBar_L_29: TTrackBar;
    TrackBar_L_30: TTrackBar;
    CheckBox_L_18: TCheckBox;
    RadioGroup_L_1: TRadioGroup;
    TrackBar_L_31: TTrackBar;
    Edit_L_21: TEdit;
    UpDownDiffMap: TUpDown;
    Panel_L_1: TPanel;
    Label_L_5: TLabel;
    Label_L_7: TLabel;
    SBFineAdj: TSpeedButton;
    Label_L_10: TLabel;
    Label_L_11: TLabel;
    Image_L_1: TImage;
    Image_L_2: TImage;
    Label_L_12: TLabel;
    Label_L_27: TLabel;
    SpeedButton_L_33: TSpeedButton;
    SpeedButton_L_34: TSpeedButton;
    TrackBar_L_9: TTrackBar;
    TrackBar_L_10: TTrackBar;
    TrackBar_L_12: TTrackBar;
    TrackBar_L_13: TTrackBar;
    CheckBox_L_1: TCheckBox;
    CheckBox_L_2: TCheckBox;
    TrackBar_L_14: TTrackBar;
    CheckBox_L_22: TCheckBox;
    TrackBar_L_5: TTrackBar;
    TrackBar_L_7: TTrackBar;
    CheckBox_L_15: TCheckBox;
    TabSheet_L_4: TTabSheet;
    Label_L_4: TLabel;
    SpeedButton_L_3: TSpeedButton;
    SpeedButton_L_6: TSpeedButton;
    SpeedButton_L_10: TSpeedButton;
    SpeedButton_L_11: TSpeedButton;
    Label_L_21: TLabel;
    Label_L_22: TLabel;
    Label_L_23: TLabel;
    SpeedButton_L_5: TSpeedButton;
    SpeedButton_L_7: TSpeedButton;
    SpeedButton_L_8: TSpeedButton;
    Label_L_28: TLabel;
    Label_L_42: TLabel;
    Label_L_43: TLabel;
    TrackBar_L_11: TTrackBar;
    TrackBar_L_4: TTrackBar;
    TrackBar_L_8: TTrackBar;
    CheckBox_L_3: TCheckBox;
    CheckBox_L_9: TCheckBox;
    TrackBar_L_23: TTrackBar;
    TrackBar_L_24: TTrackBar;
    TrackBar_L_32: TTrackBar;
    CheckBox_L_16: TCheckBox;
    Fog: TTabSheet;
    Label_L_1: TLabel;
    FogResetButton: TSpeedButton;
    Label_L_18: TLabel;
    SpeedButton_L_4: TSpeedButton;
    SpeedButton_L_30: TSpeedButton;
    Label_L_44: TLabel;
    Label_L_47: TLabel;
    TrackBar_L_3: TTrackBar;
    TrackBar_L_6: TTrackBar;
    TrackBar_L_19: TTrackBar;
    CheckBox_L_19: TCheckBox;
    CheckBox_L_23: TCheckBox;
    TabSheet_L_5: TTabSheet;
    Label_L_6: TLabel;
    Label_L_19: TLabel;
    Label_L_20: TLabel;
    Label_L_24: TLabel;
    Image_L_5: TImage;
    Label_L_33: TLabel;
    Label_L_45: TLabel;
    Label_L_46: TLabel;
    CheckBox_L_8: TCheckBox;
    TrackBar_L_20: TTrackBar;
    TrackBar_L_21: TTrackBar;
    TrackBar_L_22: TTrackBar;
    CheckBox_L_12: TCheckBox;
    CheckBox_L_13: TCheckBox;
    CheckBox_L_5: TCheckBox;
    CheckBox_L_17: TCheckBox;
    CheckBox_L_20: TCheckBox;
    CheckBox_L_21: TCheckBox;
    TrackBar_L_33: TTrackBar;
    btnCalc3D: TButton;
    Button_M_11: TButton;
    SpeedButton_M_9: TSpeedButton;
    Button_M_10: TButton;
    Button_M_18: TButton;
    Button_M_15: TButton;
    Memo_M_1: TJvMemo;
    Panel_M_4: TPanel;
    Label_M_19: TLabel;
    Label_M_1: TLabel;
    PageControl_M_1: TPageControl;
    TabSheet_M_2: TTabSheet;
    Label_M_16: TLabel;
    Label_M_18: TLabel;
    Label_M_22: TLabel;
    Label_M_13: TLabel;
    SpeedButton_M_10: TSpeedButton;
    Label_M_26: TLabel;
    Edit_M_25: TEdit;
    CheckBox_M_9: TCheckBox;
    CheckBox_M_1: TCheckBox;
    Edit_M_6: TEdit;
    CheckBox_M_3: TCheckBox;
    CheckBox_M_8: TCheckBox;
    Edit_M_8: TEdit;
    Edit_M_19: TEdit;
    SpinEdit_M_2: TUpDown;
    Edit_M_20: TEdit;
    SpinEdit_M_5: TUpDown;
    CheckBox_M_2: TCheckBox;
    TabSheet_M_4: TTabSheet;
    Label_M_15: TLabel;
    Label_M_3: TLabel;
    Label_M_17: TLabel;
    Label_M_33: TLabel;
    ComboBoxThread: TComboBox;
    CheckBox_M_12: TCheckBox;
    CheckBox_M_14: TCheckBox;
    CheckBox_M_15: TCheckBox;
    EditThread: TEdit;
    UpDownThread: TUpDown;
    TabSheet_M_5: TTabSheet;
    Label_M_29: TLabel;
    Label_M_30: TLabel;
    Label_M_31: TLabel;
    Label_M_32: TLabel;
    Label_M_51: TLabel;
    Label_M_52: TLabel;
    Label_M_7: TLabel;
    Label_M_8: TLabel;
    Label_M_34: TLabel;
    Label_M_40: TLabel;
    Label_M_47: TLabel;
    Label_M_48: TLabel;
    Label_M_49: TLabel;
    Label_M_50: TLabel;
    Label_M_60: TLabel;
    Label_M_59: TLabel;
    Edit_M_33: TEdit;
    Edit_M_34: TEdit;
    ButtonAuthor: TButton;
    ButtonInsertAuthor: TButton;
    TabSheet_M_8: TTabSheet;
    Label_M_37: TLabel;
    Label_M_38: TLabel;
    Label_M_39: TLabel;
    Edit_M_22: TEdit;
    Edit_M_23: TEdit;
    Edit_M_24: TEdit;
    CheckBox_M_4: TCheckBox;
    CheckBox_M_5: TCheckBox;
    CheckBox_M_6: TCheckBox;
    Button_M_19: TButton;
    Button_M_20: TButton;
    TabSheet_M_9: TTabSheet;
    Label_M_43: TLabel;
    Label_M_44: TLabel;
    Label_M_45: TLabel;
    Label_M_14: TLabel;
    CheckBox_M_7: TCheckBox;
    Edit_M_28: TEdit;
    Edit_M_29: TEdit;
    Edit_M_30: TEdit;
    Button_M_13: TButton;
    Edit_M_7: TEdit;
    Button_M_16: TButton;
    TabSheet_M_1: TTabSheet;
    Label_M_21: TLabel;
    Edit_M_14: TEdit;
    RadioGroup_M_2: TRadioGroup;
    TabSheet_M_3: TTabSheet;
    Label_M_2: TLabel;
    Label_M_58: TLabel;
    Label_M_61: TLabel;
    RadioGroup_M_1: TRadioGroup;
    Edit_M_2: TEdit;
    Edit_M_16: TEdit;
    Edit_M_35: TEdit;
    ButtonVolLight: TButton;
    UpDown_M_5: TUpDown;
    TabSheet_M_6: TTabSheet;
    Label_M_28: TLabel;
    Label_M_35: TLabel;
    Label_M_27: TLabel;
    Label_M_36: TLabel;
    Edit_M_15: TEdit;
    Edit_M_18: TEdit;
    Edit_M_13: TEdit;
    Button_M_12: TButton;
    Button_M_17: TButton;
    Button_M_1: TButton;
    Button_M_6: TButton;
    TabSheet_M_A: TTabSheet;
    PositionPnl: TPanel;
    Label_M_9: TLabel;
    Label_M_10: TLabel;
    SpeedButton_M_32: TSpeedButton;
    SpeedButton_M_33: TSpeedButton;
    SpeedButton_M_34: TSpeedButton;
    SpeedButton_M_30: TSpeedButton;
    SpeedButton_M_31: TSpeedButton;
    Label_M_5: TLabel;
    Edit_M_9: TEdit;
    Edit_M_10: TEdit;
    Edit_M_17: TEdit;
    Edit_M_1: TEdit;
    Edit_M_3: TEdit;
    Edit_M_5: TEdit;
    RotationPnl: TPanel;
    Label_M_53: TLabel;
    Label_M_54: TLabel;
    Label_M_55: TLabel;
    Label_M_56: TLabel;
    Label_M_57: TLabel;
    Button_M_7: TButton;
    ButtonR0: TButton;
    Edit_M_27: TEdit;
    Edit_M_31: TEdit;
    Edit_M_32: TEdit;
    Panel_M_6: TPanel;
    SpeedButton_M_3: TSpeedButton;
    SpeedButton_M_5: TSpeedButton;
    SpeedButton_M_6: TSpeedButton;
    SpeedButton_M_13: TSpeedButton;
    Panel_M_1: TPanel;
    Image2_M_2: TImage;
    Button_F_2: TButton;
    TabHide: TTabSheet;
    JvgLabel3: TJvgLabel;
    JvgLabel1: TJvgLabel;
    TabNavi: TTabSheet;
    ImageList_N_1: TImageList;
    PopupMenuNav: TPopupMenu;
    ChooseOption1: TMenuItem;
    MenuItem1: TMenuItem;
    Doubleclicktochangethenavimode1: TMenuItem;
    Singleclicktochangethenavimode1: TMenuItem;
    Timer_N_1: TTimer;
    Image_N_1: TImage;
    Label_N_27: TLabel;
    Label_N_28: TLabel;
    Label_N_29: TLabel;
    Label_N_30: TLabel;
    Image_N_6: TImage;
    TabNaviCtrls: TTabSheet;
    RadioGroup_N_1: TRadioGroup;
    SizeGroup: TGroupBox;
    DecreaseNaviSizeBtn: TSpeedButton;
    IncreaseNaviSizeBtn: TSpeedButton;
    NaviSizeCmb: TComboBox;
    Button_N_3: TSpeedButton;
    Panel_N_5: TPanel;
    Label_N_45: TLabel;
    Label_N_V0: TLabel;
    Label_N_F0: TLabel;
    SpeedButton_N_26: TSpeedButton;
    SpeedButton_N_27: TSpeedButton;
    SpeedButton_N_28: TSpeedButton;
    Label_N_44: TLabel;
    Label_N_V1: TLabel;
    Label_N_F1: TLabel;
    Label_N_V2: TLabel;
    Label_N_F2: TLabel;
    Image_N_4: TImage;
    Image_N_5: TImage;
    Label_N_42: TLabel;
    Label_N_47: TLabel;
    Label_N_49: TLabel;
    ScrollBar_N_1: TScrollBar;
    TrackBarEx_N_4: TTrackBarEx;
    TrackBarEx_N_5: TTrackBarEx;
    TrackBarEx_N_6: TTrackBarEx;
    SpinEdit_N_2: TUpDown;
    UpDown_N_2: TUpDown;
    Panel_N_4: TPanel;
    Label_N_41: TLabel;
    Label_N_39: TLabel;
    Label_N_40: TLabel;
    SpeedButton_N_24: TSpeedButton;
    SpeedButton_N_25: TSpeedButton;
    Image_N_8: TImage;
    CheckBox_N_8: TCheckBox;
    CheckBox_N_7: TCheckBox;
    TrackBarEx_N_2: TTrackBarEx;
    TrackBarEx_N_3: TTrackBarEx;
    TrackBarEx_N_1: TTrackBarEx;
    Button_N_2: TSpeedButton;
    Panel_N_6: TPanel;
    Label_N_52: TLabel;
    Label_N_50: TLabel;
    Label_N_51: TLabel;
    SpeedButton_N_29: TSpeedButton;
    SpeedButton_N_30: TSpeedButton;
    TrackBarEx_N_7: TTrackBarEx;
    TrackBarEx_N_8: TTrackBarEx;
    TrackBarEx_N_9: TTrackBarEx;
    Button_N_4: TSpeedButton;
    Panel_N_7: TPanel;
    Label_N_V3: TLabel;
    SpeedButton_N_31: TSpeedButton;
    SpeedButton_N_32: TSpeedButton;
    Bevel_N_5: TBevel;
    Label_N_V4: TLabel;
    Label_N_48: TLabel;
    Label_N_V5: TLabel;
    Label_N_53: TLabel;
    Label_N_38: TLabel;
    Label_N_V6: TLabel;
    Label_N_46: TLabel;
    Label_N_V7: TLabel;
    Label_N_55: TLabel;
    SpeedButton_N_33: TSpeedButton;
    UpDown_N_1: TUpDown;
    TrackBarEx_N_10: TTrackBarEx;
    TrackBarEx_N_11: TTrackBarEx;
    TrackBarEx_N_12: TTrackBarEx;
    TrackBarEx_N_13: TTrackBarEx;
    TrackBarEx_N_14: TTrackBarEx;
    Button_N_5: TSpeedButton;
    Panel_N_2: TPanel;
    Label_N_7: TLabel;
    Label_N_9: TLabel;
    Label_N_8: TLabel;
    Label_N_22: TLabel;
    Bevel_N_1: TBevel;
    Label_N_34: TLabel;
    Label_N_35: TLabel;
    Label_N_36: TLabel;
    Label_N_37: TLabel;
    Edit_N_1: TEdit;
    Edit_N_2: TEdit;
    Edit_N_3: TEdit;
    Edit_N_4: TEdit;
    CheckBox_N_1: TCheckBox;
    CheckBox_N_2: TCheckBox;
    Edit_N_6: TEdit;
    Button_N_1: TButton;
    CheckBox_N_5: TCheckBox;
    RadioGroup_N_2: TRadioGroup;
    Panel_N_1: TPanel;
    SpeedButton_N_1: TSpeedButton;
    SpeedButton_N_2: TSpeedButton;
    SpeedButton_N_3: TSpeedButton;
    SpeedButton_N_4: TSpeedButton;
    SpeedButton_N_5: TSpeedButton;
    SpeedButton_N_6: TSpeedButton;
    SpeedButton_N_7: TSpeedButton;
    SpeedButton_N_8: TSpeedButton;
    SpeedButton_N_9: TSpeedButton;
    SpeedButton_N_10: TSpeedButton;
    Label_N_1: TLabel;
    Label_N_2: TLabel;
    Label_N_3: TLabel;
    Label_N_4: TLabel;
    Label_N_5: TLabel;
    Label_N_6: TLabel;
    Label_N_10: TLabel;
    Label_N_12: TLabel;
    Label_N_13: TLabel;
    Label_N_14: TLabel;
    SpeedButton_N_11: TSpeedButton;
    SpeedButton_N_12: TSpeedButton;
    SpeedButton_N_13: TSpeedButton;
    Label_N_15: TLabel;
    Label_N_16: TLabel;
    Label_N_17: TLabel;
    Label_N_11: TLabel;
    Label_N_19: TLabel;
    Label_N_20: TLabel;
    Label_N_21: TLabel;
    SpeedButton_N_14: TSpeedButton;
    SpeedButton_N_15: TSpeedButton;
    SpeedButton_N_16: TSpeedButton;
    Label_N_23: TLabel;
    Label_N_24: TLabel;
    SpeedButton_N_17: TSpeedButton;
    SpeedButton_N_18: TSpeedButton;
    Label_N_26: TLabel;
    Label_N_31: TLabel;
    Image_N_2: TImage;
    Label_N_32: TLabel;
    Label_N_33: TLabel;
    Image_N_3: TImage;
    SpeedButton_N_19: TSpeedButton;
    SpeedButton_N_20: TSpeedButton;
    SpeedButton_N_21: TSpeedButton;
    SpeedButton_N_22: TSpeedButton;
    Label_N_18: TLabel;
    SpeedButton_N_23: TSpeedButton;
    CheckBox_N_4: TCheckBox;
    CheckBox_N_6: TCheckBox;
    UpDown_N_3: TUpDown;
    TrackBarEx_N_Light: TTrackBarEx;
    Panel_N_3: TPanel;
    Bevel_N_2: TBevel;
    Bevel_N_3: TBevel;
    Label_N_F3: TLabel;
    TrackBarEx1: TTrackBarEx;
    Label2: TLabel;
    TBxX: TTrackBarEx;
    procedure Button_M_1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCalc3DClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image_M_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer_M_1Timer(Sender: TObject);
    procedure Button_M_3Click(Sender: TObject);
    procedure Timer_M_3Timer(Sender: TObject);
    procedure Timer_M_4Timer(Sender: TObject);
    procedure Button_M_4Click(Sender: TObject);
    procedure Button_M_5Click(Sender: TObject);
    procedure SpeedButton_M_1Click(Sender: TObject);
    procedure Image_M_1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image_M_1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button_M_8Click(Sender: TObject);
    procedure Button_M_9Click(Sender: TObject);
    procedure PageControl_M_1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Image2_M_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2_M_2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer_M_8Timer(Sender: TObject);
    procedure SBsaveJPEGClick(Sender: TObject);
    procedure SpeedButton_M_3Click(Sender: TObject);
    procedure SpeedButton_M_7Click(Sender: TObject);
    procedure SpeedButton_M_8Click(Sender: TObject);
    procedure SpeedButton_M_10Click(Sender: TObject);
    procedure Button_M_13Click(Sender: TObject);
    procedure SpeedButton_M_12Click(Sender: TObject);
    procedure SpinEdit_M_2Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure IniDirsBtnClick(Sender: TObject);
    //procedure Button_M_10Click(Sender: TObject);
//    procedure SpeedButton_M_15Click(Sender: TObject);
    procedure Button_M_14Click(Sender: TObject);
    procedure Button_M_15Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton_M_19Click(Sender: TObject);
    procedure SpeedButton_M_21MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit_M_11Change(Sender: TObject);
    procedure SpeedButton_M_18MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_M_25Click(Sender: TObject);
    procedure FormDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Shape_M_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_M_9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_M_26Click(Sender: TObject);
    procedure SaveDialog_M_6TypeChange(Sender: TObject);
    procedure SpeedButton_M_24Click(Sender: TObject);
    procedure Button_M_11Click(Sender: TObject);
    procedure Button_M_12Click(Sender: TObject);
    procedure Button_M_16Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure SpeedButton_M_27Click(Sender: TObject);
    procedure SpeedButton_M_28Click(Sender: TObject);
    procedure SaveDialog_M_1TypeChange(Sender: TObject);
    procedure SpeedButton_M_29Click(Sender: TObject);
//    procedure Button_M_18Click(Sender: TObject);
    procedure Button_M_19Click(Sender: TObject);
    //procedure Button_M_10MouseDown(Sender: TObject; Button: TMouseButton;
//      Shift: TShiftState; X, Y: Integer);
    procedure Stickthiswindowtotherightside1Click(Sender: TObject);
    procedure btnCalc3DMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StartrenderingandsaveafterwardstheM3Ifile1Click(
      Sender: TObject);
    procedure SpeedButton_M_30Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure CheckBox_M_10Click(Sender: TObject);
    procedure CheckBox_M_14Click(Sender: TObject);
    procedure Timer_M_2Timer(Sender: TObject);
    procedure SpeedButton_M_35Click(Sender: TObject);
//    procedure Panel_M_2MouseDown(Sender: TObject; Button: TMouseButton;
//      Shift: TShiftState; X, Y: Integer);
//    procedure N11Click(Sender: TObject);
    procedure SpinEdit_M_2ChangingEx(Sender: TObject; var AllowChange: Boolean;
      NewValue: Integer; Direction: TUpDownDirection);
    procedure UpDown_M_1Click(Sender: TObject; Button: TUDBtnType);
    procedure SpinButton2DownClick(Sender: TObject);
    procedure SpinButton2UpClick(Sender: TObject);
    procedure UpDown_M_2Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown_M_4Click(Sender: TObject; Button: TUDBtnType);
    procedure Button_M_7Click(Sender: TObject);
    procedure ButtonR0Click(Sender: TObject);
    procedure Edit_M_33Change(Sender: TObject);
    procedure Edit_M_34Change(Sender: TObject);
    procedure ButtonAuthorClick(Sender: TObject);
    procedure ButtonInsertAuthorClick(Sender: TObject);
    procedure Timer_M_5Timer(Sender: TObject);
    procedure CheckBox_M_7Click(Sender: TObject);
    procedure Shape_M_2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Shape_M_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ShapeBox_M_1Click(Sender: TObject);
    procedure ShapeDisc_M_1Click(Sender: TObject);
    procedure Timer_M_6Timer(Sender: TObject);
    procedure ButtonVolLightClick(Sender: TObject);
    procedure UpDown_M_5Click(Sender: TObject; Button: TUDBtnType);
    procedure MutaGenBtnClick(Sender: TObject);
    procedure VisualThemesBtnClick(Sender: TObject);
    procedure MapSequencesBtnClick(Sender: TObject);
//    procedure PositionBtnClick(Sender: TObject);
//    procedure RotationBtnClick(Sender: TObject);
    procedure FrameUpDownClick(Sender: TObject; Button: TUDBtnType);
    procedure FrameEditExit(Sender: TObject);
    procedure BugReportBtnClick(Sender: TObject);
    procedure SpeedButton_M_36Click(Sender: TObject);
//    procedure MeshExportBtnClick(Sender: TObject);
//    procedure OpenPictureDialog1SelectionChange(Sender: TObject);
//    procedure PageControl_M_1DrawTab(Control: TCustomTabControl; TabIndex: Integer;
//    const Rect: TRect; Active: Boolean);
{FORMULA}
    procedure TabControl_F_1Change(Sender: TObject);
//    procedure FormShow(Sender: TObject);
    procedure SpeedButton_F_11Click(Sender: TObject);
    procedure EditItCountChange(Sender: TObject);
    procedure Edit_F_1Change(Sender: TObject);
    procedure CheckBox_F_1Click(Sender: TObject);
    procedure TabControl_F_2Change(Sender: TObject);
    procedure TabControl_F_2Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure Button_F_3Click(Sender: TObject);
    procedure SpeedButton_F_2Click(Sender: TObject);
    procedure Button_F_4Click(Sender: TObject);
    procedure SpeedButtonEx_F_1MouseEnter(Sender: TObject);
    procedure SpeedButtonEx_F_1MouseLeave(Sender: TObject);
    procedure Timer_F_4Timer(Sender: TObject);
    procedure Timer_F_5Timer(Sender: TObject);
    procedure ListBoxEx_F_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBoxEx_F_1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBoxEx_F_1MouseEnter(Sender: TObject);
    procedure ListBoxEx_F_1MouseLeave(Sender: TObject);
//    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton_F_3Click(Sender: TObject);
    procedure RadioGroup_F_1Click(Sender: TObject);
    procedure Hidethisformula1Click(Sender: TObject);
    procedure SpeedButton_F_4Click(Sender: TObject);
    procedure ListBoxEx_F_15MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBoxEx_F_9DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ListBoxEx_F_11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ComboEdit_F_1Change(Sender: TObject);
    procedure ComboEdit_F_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboEdit_F_1Exit(Sender: TObject);
//    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
//      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
//    procedure FormActivate(Sender: TObject);
//    procedure FormHide(Sender: TObject);
    procedure TabControl_F_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Copythisformulatoformulanr11Click(Sender: TObject);
    procedure Shiftallformulasonetotheright1Click(Sender: TObject);
    procedure Shifttotheleft1Click(Sender: TObject);
    procedure Timer_F_1Timer(Sender: TObject);
    procedure Copythevaluesto1Click(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
    procedure UpDown_F_1Click(Sender: TObject; Button: TUDBtnType);
    procedure ExchangeFormulaLeftBtnClick(Sender: TObject);
    procedure ExchangeFormulaRightBtnClick(Sender: TObject);
    procedure JITFormulaBtnClick(Sender: TObject);
    procedure NewJITFormulaItmClick(Sender: TObject);
    procedure EditJITFormulaItmClick(Sender: TObject);

{LIGHT}

    procedure TrackBarExYangChange(Sender: TObject);
    procedure SpeedButton_L_1Click(Sender: TObject);
//    procedure FormShow(Sender: TObject);
    procedure Button_L_1Click(Sender: TObject);
    procedure Button_L_2Click(Sender: TObject);
    procedure ComboBox_L_1Change(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
//    procedure FormDestroy(Sender: TObject);
    procedure TabControl_L_1Change(Sender: TObject);
//    procedure RadioGroup_L_1Click(Sender: TObject);
  //  procedure RadioGroup_L_2Click(Sender: TObject);
    procedure TrackBarExXangChange(Sender: TObject);
    procedure TrackBarYangleChange(Sender: TObject);
    procedure SpeedButton_L_15Click(Sender: TObject);
    procedure SpeedButtonMemClick(Sender: TObject);
    procedure SBFineAdjClick(Sender: TObject);
    procedure CheckBox_L_1Click(Sender: TObject);
    procedure CheckBox_L_2Click(Sender: TObject);
    procedure SpeedButton_L_2Click(Sender: TObject);
    procedure CheckBox_L_4Click(Sender: TObject);
    procedure PageControl_L_1Change(Sender: TObject);
    procedure TrackBarExXposChange(Sender: TObject);
  //  procedure CheckBox_L_5Click(Sender: TObject);
    procedure UpDownXposClick(Sender: TObject; Button: TUDBtnType);
    procedure Edit_L_1Change(Sender: TObject);
    procedure ButtonGetPosClick(Sender: TObject);
    procedure Button_F_2Click(Sender: TObject);
    procedure PageControl_L_1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure TabControl_L_1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure FogResetButtonClick(Sender: TObject);
    procedure CheckBox_L_6Click(Sender: TObject);
    procedure CheckBox_L_7Click(Sender: TObject);
    procedure CheckBox_L_8Click(Sender: TObject);
    procedure TrackBar_L_21KeyPress(Sender: TObject; var Key: Char);
    procedure TrackBar_L_11KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton_L_9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ComboBox_L_3Select(Sender: TObject);
    procedure ComboBox_L_3DropDown(Sender: TObject);
    procedure ComboBox_L_4Change(Sender: TObject);
    procedure SpeedButton_L_3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpinButton_L_Down;
    procedure SpinButton_L_Up;
    procedure TrackBar_L_26Change(Sender: TObject);
    procedure UpDownLightChange(Sender: TObject);
//    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
//      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure UpDownDiffMapChange(Sender: TObject);
    procedure CheckBox_L_15Click(Sender: TObject);
    procedure CheckBox_L_16Click(Sender: TObject);
    procedure SpeedButton_L_31Click(Sender: TObject);
//    procedure FormActivate(Sender: TObject);
    procedure TabControl_L_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CopythislighttoLight11Click(Sender: TObject);
//    procedure FormHide(Sender: TObject);
    procedure TrackBarExXposMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UpDown_L_4Click(Sender: TObject; Button: TUDBtnType);
    procedure CheckBox_L_21Click(Sender: TObject);
    procedure TrackBar_L_33Change(Sender: TObject);
    procedure N01Click(Sender: TObject);
    procedure TrackBar_L_22Change(Sender: TObject);
    procedure CheckBox_L_22Click(Sender: TObject);
    procedure Edit_L_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_L_34Click(Sender: TObject);
    procedure SpeedButton_L_4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Insertvolumetriclightcolor1Click(Sender: TObject);
    procedure PageCtrlsChange(Sender: TObject);

{NAVI}

    procedure SpeedButton_N_1Click(Sender: TObject);
    procedure Timer_N_1Timer(Sender: TObject);
//    procedure FormShow(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
    procedure SpeedButton_N_11Click(Sender: TObject);
//    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Panel_N_1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton_N_14Click(Sender: TObject);
    procedure Edit_N_1Change(Sender: TObject);
    procedure SpeedButton_N_15Click(Sender: TObject);
    procedure SpeedButton_N_16Click(Sender: TObject);
    procedure SpeedButton_N_17Click(Sender: TObject);
    procedure SpeedButton_N_18Click(Sender: TObject);
    procedure CheckBox_N_2Click(Sender: TObject);
    procedure TrackBarEx_N_LightChange(Sender: TObject);
    procedure Button_N_1Click(Sender: TObject);
//    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
//      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure CheckBox_N_4Click(Sender: TObject);
//    procedure FormHide(Sender: TObject);
//    procedure FormDestroy(Sender: TObject);
    procedure CheckBox_N_5Click(Sender: TObject);
    procedure SpeedButton_N_22Click(Sender: TObject);
    procedure SpeedButton_N_19Click(Sender: TObject);
    procedure SpinButton_N_Down;
    procedure SpinButton_N_Up;
    procedure CheckBox_N_1Click(Sender: TObject);
    procedure Image_N_1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image_N_1DblClick(Sender: TObject);
    procedure Image_N_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Doubleclicktochangethenavimode1Click(Sender: TObject);
    procedure Singleclicktochangethenavimode1Click(Sender: TObject);
    procedure Image_N_1Click(Sender: TObject);
//    procedure SpeedButton_N_23Click(Sender: TObject);
    procedure RxSlider1Change(Sender: TObject);
    procedure RxSlider1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_N_24Click(Sender: TObject);
    procedure SpeedButton_N_25Click(Sender: TObject);
    procedure SpeedButton_N_26Click(Sender: TObject);
    procedure SpeedButton_N_27Click(Sender: TObject);
    procedure SpeedButton_N_28Click(Sender: TObject);
//    procedure Button_N_2Click(Sender: TObject);
    procedure CheckBox_N_7Click(Sender: TObject);
//    procedure Button_N_3Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ScrollBar_N_1Change(Sender: TObject);
    procedure CheckBox_N_6Click(Sender: TObject);
//    procedure Button_N_4Click(Sender: TObject);
    procedure SpeedButton_N_29Click(Sender: TObject);
    procedure SpeedButton_N_30Click(Sender: TObject);
//    procedure Button_N_5Click(Sender: TObject);
    procedure SpeedButton_N_31Click(Sender: TObject);
    procedure SpeedButton_N_32Click(Sender: TObject);
    procedure UpDown_N_1Click(Sender: TObject; Button: TUDBtnType);
    procedure RadioGroup_N_2Click(Sender: TObject);
    procedure SpinEdit_N_2Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown_N_2Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown_N_3Click(Sender: TObject; Button: TUDBtnType);
    procedure Label_N_39MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_N_33Click(Sender: TObject);
//    procedure NaviSizeCmbChange(Sender: TObject);
//    procedure DecreaseNaviSizeBtnClick(Sender: TObject);
//    procedure IncreaseNaviSizeBtnClick(Sender: TObject);
    procedure PageMainChange(Sender: TObject);


  private
    { Private-Deklarationen }
    isRepainting: LongBool;
    MStartPos: TPoint;
    MXYStartPos: TPoint;
    MOrigStartPos: TPoint;
    SliceCalc: Integer;
    MZtranslate, MmaxShapeWid: Integer;
    notAllButtonsUp: LongBool;
    RepaintYact: Integer;
    CloseTries: Integer;
    StartupLoadM3I: LongBool;
    bUserChange: LongBool;
    bImageText: LongBool;
    TFSB9E, TFSB9Echecked: LongBool;
    StickIt: Integer;

{FORMULA}
    OldTab2index: Integer;
    MaxLBheight: Integer;
    HighlightedFormula: String;
{LIGHT}
    LColHistoMaxN, LColInteriorHistoMaxN, LColInteriorHistoLength: Integer;
    OTColHistoMaxN: Integer;
    OldTB15Pos: Integer;
    OldTB16Pos: Integer;
    OldTB17Pos: Integer;
    LastBGname: array[0..23] of Byte;
{NAVI}
    FirstStart: LongBool;
    actStepWidth: Integer;
    tmpBMP: TBitmap;
    tmpBMPc: TBitmap;
    LightStoring: LongBool;
    OriginalSize: TPoint;
    Moving: LongBool;
    AdjustSliderPos0Values, AdjustSliderValues, AdjustSliderRange: array[0..13] of Double;
    AdjustSliderValType: array[0..13] of Integer;
    AdjustPanelFirstShow: LongBool;
    CurrentFindex: TPoint;
    FSubIndexTop: Integer;
    FocusedSlider: Integer;
    DynFogAmountChanged: LongBool;
    DFogChanged: LongBool;
    DEstopChanged: LongBool;
 //   ColOnItsChanged: LongBool;
    CalcThreadStatusID: Integer;
    MCTparas: Array [0..64] of TMCTparameter;

{MAIN}
  //  lastCP: TPoint;
    procedure RepaintMAIN(bStartTimer: LongBool);
    procedure CalcStatistic;
    procedure DisableBchange;
    procedure EnableBchange;
    procedure WMDROPFILES(var Msg: TMessage); message WM_DROPFILES;
    procedure SetPreset(ip: Integer);
    procedure FillInPreset(ip: Integer);
    procedure DoSaveAniImage;
    procedure DoSaveTileImage;
    procedure Rotate4Dvec(var vec: TVec4D);
    procedure ScaleDEstop(s: Single);
    procedure ScaleRclip(s: Single);
    function  OverImage(p: TPoint): LongBool;
    procedure SendMove;
    procedure WaitForPaintStop(maxSeconds: Integer);
    procedure SaveImageO(OutputType: Integer; FileNam: String);
    procedure UpdateScaledImageFull;
    procedure SetEulerEditsFromHeader;
    procedure FirstShowUpdate;
    procedure SetM3Dini;
    procedure LoadStartupParas;
    procedure ModColOnImage(X, Y: Integer);
    procedure SetShape_M_2Size(NewSize: Integer);
    procedure TriggerRepaintDraw(R: TRect);
    procedure SetEdit_M_16Text;
{FORMULA}
    procedure CalcRstop;
    procedure SetTabNames;
    function FNormalPos(Formula: THAformula): TPoint;
    procedure Check4DandInfo;
    procedure AdjustTC1height;
    procedure HideAllListBoxEx_F_PopupsButNot(const n: Integer);
    procedure SetListBoxWidth(LB: TListBoxEx);
    procedure AddFormulaName(FName: String; DEfunc: Integer);
    function FNameIsIncluded(Name: String): LongBool;
    procedure SelectFormula(FName: String);
    procedure ListboxPopup(var LB: TListBoxEx; const pos: TPoint);
    procedure MakeLB11list(text: String);
    function ListBoxIsFull(LB: TListBoxEx): LongBool;
    procedure ShowListBox(LB: TListBoxEx; const Visible: Boolean);
{LIGHT}
    procedure SetPresetL(nr: Integer; KeepLights: LongBool);
    procedure GetPresetL(nr: Integer);
    procedure MakeGlyph(SB: TSpeedButton; PNr: Integer);
    procedure UpdateTabHeader(nr: Integer);
    function MakeDynFogCol: TRGB;
    function VisFuncToIndex(const Light: TLight8 {Lop: Byte}): Integer;
    function IndexToVisFunc(i: Integer): Byte;
    function GetPageContr1index(Loption: Byte): Integer;
    function TBChanged: LongBool;
    function OverForm(p: TPoint): LongBool;
    procedure MakeDepthColList;
    function VisLightExBit(const Light: TLight8): Integer;
{NAVI}
    procedure Calc(Nstep: Integer);
    procedure TransformNHeader;
    function GetLocalAbsoluteDE(var NotValid: LongBool): Double;
    procedure SetZoom;
    procedure StopCalc;
    procedure SetWindowSize; //(Panel_N_2visible: LongBool) {NAVI}
    procedure maxLengthToCutPlane(var dLength: Double; var itmp: Integer; vPos: TPVec3D; MCTpar: PMCTparameter);
    procedure WaitForCalcToStop(millisec: Integer);
    procedure PaintZeroVec;
    procedure DisableLightStoring;
    procedure LoadLightPresets;
    function LoadLightPreset(i: Integer): Boolean;
    procedure CheckLabel18;
    procedure InputJuliaVals;
    procedure ResetJuliaPos0Vals;
    procedure UpdateJuliaLabels;
    procedure Input4dRotVals;
    procedure Reset4dRotVals;
    procedure Update4dRotLabels;
    procedure UpdateFormulaLabels(Findex: TPoint);
    procedure UpdateDiversLabels;
    function GetFormulaValue(Findex: TPoint): Double;
    function GetFormulaValType(Findex: TPoint): Integer;
    function FormulaIndex(iSlider: Integer): TPoint;
    procedure RoundFvals;
    procedure CopyFormulaValueFromMain(Findex: TPoint);
//    procedure AdjustPanel3positions;
    function CopyFormulaNameFromMain(Findex: Integer): AnsiString;
    procedure CheckFocus;
    procedure PaintCoord;
    procedure SetHeaderSize;
    procedure CheckFormulaImageVis;
//    procedure EnableButtonsN;

  protected
    procedure WmThreadReady(var Msg: TMessage); message WM_ThreadReady;
{NAVI}
//    procedure WmThreadReady(var Msg: TMessage); message WM_ThreadReady;
    procedure WmThreadStat(var Msg: TMessage); message WM_ThreadStat;

  public
    { Public-Deklarationen }
    MHeader: TMandHeader10;
    MCalcThreadStats: TCalcThreadStats;
    siLight5: array of TsiLight5;
    mSLoffset: Integer;
//   bLightFormStick: Integer;
    bAniFormStick: Integer;
//   bFGUIFormStick: Integer;
//   bPostProcessFormStick: Integer;
    SaveAniImage: LongBool;
    SaveTileImage: LongBool;
//   calc3D: LongBool;
//   bAllowUpDownChange: LongBool;
//   CalcStereoImage: LongBool;
    HeaderLightVals: TLightVals;
    HybridCustoms: array[0..5] of TCustomFormula;
    HAddOn: THeaderCustomAddon;
    iActiveThreads: Integer;  //for triggering the timer
    iActivePaintThreads: Integer;
    iGetPosFromImage: Integer;
    UserAspect: TPoint;
    PaintVGrads: TMatrix3;
    CalcStart: Cardinal;
    CalcYact: Integer;
    mCalcRect: TRect;
    SSAORiteration: Integer;
    SaveM3IfileAuto: LongBool;
    InternAspect: Double;
    SaveAutoM3Ifilename: String;
    OPD: TOpenPictureDialogM3D;
    Authors: AuthorStrings;
    bOutMessageLoud: LongBool;
    bHideMessages: LongBool;
    DrawColSIndex: Single;
    DrawInOutside: Integer;
    DrawRect: TRect;
{FORMULA}
    bUserChangeF: LongBool;
{LIGHT}
    bUserChangeL: Boolean;
    TBcolStartPos, TBcolStopPos: Integer;  // Coarse Color Adjustments
    LAtmpLight: TLightingParas9;    //ersetzt die privaten obigen cols+lights
    LightMaps: array[0..5] of TLightMap;
    DiffColMap: TLightMap;
    LAposMids: array[0..5] of TPos3D;
    ColorFormCreated: LongBool;
{NAVI}
//    HybridCustoms: array[0..5] of TCustomFormula;
    bUserChangeN: LongBool;
    bDoubleClick: LongBool;
    NaviLightness: Single;
    NDEmultiplier: Single;
    NLPavailable: array[0..2] of LongBool;
    NMouseStartPos: TPoint;
    NaviLightPresets: array[0..2] of TLightingParas9;
    NaviHeader: TMandHeader10;
    NaviHAddon: THeaderCustomAddon;
    NaviLightVals: TLightValsNavi;
//    Authors: AuthorStrings;
    BGpicRotMatrix: TSMatrix3;
 //   NaviNewLightVals: TLightVals;

{MAIN}
    procedure OutMessage(s: String);
    procedure SetImageCursor;
    procedure AllPresetsUp;
    procedure EnableButtons;
    procedure DisableButtons;
    procedure IniMHeader;
    procedure MakeHeader;
    procedure CalcMand(bMakeHeader: LongBool);
    procedure CalcHardShadow;
    procedure SetEditsFromHeader;
    procedure WndProc(var Message: TMessage); override;
    procedure getI1BMPSLs;
    procedure MButtonsUp;
    procedure RepaintMAINnoThread;
    procedure UpdateAspectCaption;
    function SizeOK(Verbose: LongBool): LongBool;
    procedure ClearScreen;
    procedure ParasChanged;
    procedure CalcAmbShadow;
    procedure SaveM3I(FileName: String; bSaveImgBuf: LongBool);
    procedure ProofPosLight;
    function GetCalcRect: TRect;
    procedure TextParsLoadSuccess;
    procedure UpdateAndScaleImageFull(NewScale: Integer);
//    procedure RefreshNavigator(const Enabled: Boolean);
    function IsCalculating: Boolean;
    procedure PropagateCurrFrameNumber;
{FORMULA}
    procedure SetFormulaCBs(s: String);
    procedure LoadFormulaNames;
    procedure UpdateFromHeader(Header: TPMandHeader10);
{LIGHT}
    procedure SetSButtonColor(ButtonNr: Integer; Color: TRGB);
//    procedure WndProc(var Message: TMessage); override;
    procedure RepaintColHisto;
    procedure MakeHisto;
    procedure PutLightFInHeader(var Header: TMandHeader10);
    procedure SetLightFromHeader(var Header: TMandHeader10);
    procedure SetStartPreset;
    procedure SetSDButtonColors;
    procedure SetLAplusPosToZero;
    procedure UpdateQuickLoadCB;
    procedure SetPosLightTo0(tab: Integer);
{NAVI}
    procedure NewCalc;
    function isCalculatingN: LongBool;
    procedure SetSB18text(Disabled: Boolean);
    procedure ChangeNaviMode;
 //   procedure WndProc(var Message: TMessage); override;

  end;

procedure TriggerRepaint;
function AniFileAlreadyExists(var s: String): LongBool;
procedure SaveFormulaBytes;

{LIGHT}
procedure SetCosTabFunction;
function GetCosTabVal(const Tnr: Integer; const DotP, Rough: Single): Single;
function GetCosTabValSqr(const Tnr: Integer; const DotP, Rough: Single): Single;
function FastPowLUT(base, expo: Single): Single; //for lighting spec calculation
function GetDiffMapNr(LightPars: TPLightingParas9): Integer;
function GetCosTabValNavi(Tnr, i1, i2: Integer): Single;
function GetGaussFuncNavi(iL1, iL2: Integer): Single;
procedure PaintSDPreviewColors(LAtmpLight: TPLightingParas9; CanvasS, CanvasD: TCanvas; Wid: Integer);


var
  GUI: TGUI;
  M3dVersion: Single = 1.90;
  Testing: LongBool = False;
  TBoostChanged: LongBool = False;
  MCalcStop: LongBool = False;
  ImageScale: Integer = 1;
  fullSizeImage: array of Cardinal;    //intern FullSizeImage = colors, array of Cardinal
  mFSIstart, mFSIoffset: Integer;
  I1BMPstartSL, I1BMPoffset: Integer;
  FormsSticky: array[0..2] of Integer = (1, 1, 1);
  AppFolder: String = '';
  AppDataDir: String = '';
  M3DBackGroundPic: TLightMap;
  M3DSmallBGpic: TLightMap;
  bSRVolLightMapCalculated: LongBool = False;
  AccPreset: array[0..3] of TqualPreset =
  ((SmoothNormals: 0; DEstop: 1.0; RayMultiplier: 0.5; BinSearch: 6; ImageWidth: 480; ImageScale: 1; RayLimiter: 1),
   (SmoothNormals: 1; DEstop: 1.0; RayMultiplier: 0.4; BinSearch: 8; ImageWidth: 640; ImageScale: 1; RayLimiter: 0.75),
   (SmoothNormals: 2; DEstop: 1.2; RayMultiplier: 0.3; BinSearch: 10; ImageWidth: 1600; ImageScale: 2; RayLimiter: 0.5),
   (SmoothNormals: 3; DEstop: 1.2; RayMultiplier: 0.25; BinSearch: 12; ImageWidth: 3072; ImageScale: 3; RayLimiter: 0.3));

{FORMULA}
  //GUIFormula: TGUIFormula;
  //FGUIFormCreated: LongBool = False;
  //FGUIFormFirstShow: LongBool = True;
  FGUIFormDropDownButtonCount: Integer = 10;
  InternFormulasDEfunc: array[0..6] of Integer = (0,0,4,0,11,0,0);
 { InternFormulaNames: array[0..6] of String = ('Integer Power','Real Power',
   'Quaternion','Tricorn','Amazing Box','Bulbox','Folding Int Pow');  }

{LIGHT}
  //GUILight: TGUILight;
//  LAFormCreated: LongBool = False;
//  bLFfirstShow: LongBool = True;
  DiffCosTabNavi: array[0..3, 0..127] of Single; // old one for navigator + imageprocess
//  GaussTab: array of Single;  //for navi spec calculation (power..)
  DiffCosTabNsmall: array[0..7, 0..127] of Single;
  PowerTabSmall: array[0..127] of Single;
  GaussTabSmall: array[0..127] of Single;
  LastZoom: Double = 0;
  LastPositionDMScale: array[0..3] of Integer = (0,0,0,0);
{  DiffNormalPicArr: array of Cardinal;  //-> lightmap ..todo: possible lightmaps for all lights
  DNPWidth, DNPHeight: Integer;
  DNPstart, DNPYinc: Integer;
  DNPXfactor, DNPYfactor: Single; }

  Presets: array[1..5] of TLpreset164 =
  ((AmbTop: $B1AA9F; AmbBot: $3464AA; DepthCol: $B1AA9F; DepthCol2: $3464AA;        //Sand
    ColDif: ($2537A0, $4E9FD1, $62AEB3, $71808E);
    ColSpec: ($0B1026, $132734, $273639, $1C2023);
    Lights: ((Loption: 0; LFunction: 51; Lcolor: $FFFFFF; LXangle: 3363; LYangle: 4000),             //spec,dif,amb
             (Loption: 0; LFunction: 3; Lcolor: $34628F; LXangle: -4915; LYangle: -6500));  TB578pos: (50, 50, 90)),
                                             // $6797C7
   (AmbTop: $FF6000; AmbBot: $40B0; DepthCol: $800000; DepthCol2: $50;
    ColDif: ($E0, $FF0000, $B800, $ABDD);                                           //Slime
    ColSpec: ($F0F0F0, $F0F0F0, $F0F0F0, $F0F0F0);
    Lights: ((Loption: 0; LFunction: 3; Lcolor: $FFFFFF; LXangle: 0; LYangle: 4005),
             (Loption: 1; LFunction: 3; Lcolor: $FFFFFF; LXangle: 0; LYangle: 0));  TB578pos: (110, 22, 220)),

   (AmbTop: $E89660; AmbBot: $304860; DepthCol: $A04B18; DepthCol2: $D0A488;
    ColDif: ($1D85F8, $C0C0C0, $47CCF8, $B9B69B);                                   //Metallic
    ColSpec: ($1D85F8, $C0C0C0, $47CCF8, $B9B69B);
    Lights: ((Loption: 0; LFunction: 2; Lcolor: $AADDFF; LXangle: -637; LYangle: 4915),
             (Loption: 0; LFunction: 2; Lcolor: 2894962; LXangle: 3368; LYangle: -6463));  TB578pos: (160, 50, 30)),

   (AmbTop: $EC974A; AmbBot: $5976A6; DepthCol: $EC974A; DepthCol2: $5976A6;
    ColDif: ($204080, $349120, $1E36C1, $C5AAE6);                                   //Flower
    ColSpec: (0, $40491C, $3B3D60, $60487F);
    Lights: ((Loption: 0; LFunction: 51; Lcolor: $B9EFFF; LXangle: 0; LYangle: 3000),
             (Loption: 1; LFunction: 3; Lcolor: $34628F; LXangle: -4915; LYangle: -6500));  TB578pos: (50, 70, 90)),

//   (AmbTop: $A0A0A0; AmbBot: $A0A0A0; DepthCol: $A0A0A0; DepthCol2: $A0A0A0;
   (AmbTop: $905838; AmbBot: $8BA8C7; DepthCol: $905838; DepthCol2: $8BA8C7;
    ColDif: ($A0A0A0, $A0A0A0, $A0A0A0, $A0A0A0);                                   //Neutral
    ColSpec: ($404040, $404040, $404040, $404040);
    Lights: ((Loption: 0; LFunction: 52; Lcolor: $B9EFFF; LXangle: 4063; LYangle: 6405),
             (Loption: 1; LFunction: 52; Lcolor: $6797C7; LXangle: -4915; LYangle: -7100));  TB578pos: (50, 70, 90)));

  CustomPresets: array[6..15] of TLpreset20;

  LColHisto: array[0..32767] of Integer;
  OTColHisto: array[0..32767] of Integer;
  LColInteriorHisto: array of Integer;
  TBoldpos: array[0..24] of Integer;

{NAVI}
//  GUINav: TGUINav;
  FNaviFormCreated: LongBool = False;
  NglobalCounter: Integer = 0;
  NminDEcorrection: Single = 1000;
  errorstring: array[1..4] of string;

const
  //49 = 32 + 16 + 1 = diff3 + 16pow -> 0+32pow=2
  //LFunction: 3(4)bit spec func + 2bit diff,   Pow = 8 shl (LFunction and $07), diff = (LFunction shr 4) and 3
  defaultLight8: TLight8 = (Loption: 1; LFunction: 4; Lamp: 10; Lcolor: ($FF, $FF, $FF); LightMapNr: 0;
        LXpos: (0,0,0,0,0,0,0); AdditionalByteEx: 0; LYpos: (0,0,0,0,0,0,0); FreeByte: 0; LZpos: (0,0,0,0,0,0,0));
  defaultLight7: TLight7 = (Loption: 1; LFunction: 3; Lcolor: $FFFFFF; LXangle: 0; LYangle: 0);
  StartPreset: TLpreset16 =
   (Cols: (5873889, 8837614, $8B491D, 2988346, 12248958, $FFC49F, 11287584, 14579248, 7481121);
   Lights: ((Loption: 0; LFunction: 53; Lcolor: $A0E8FF; LXangle: 1500; LYangle: 5200),
            (Loption: 1; LFunction: 16; Lcolor: 2307911; LXangle: -2822; LYangle: -7737),
            (),()); DepthCol: $8B491D; TB578pos: (50, 120, 90); DepthCol2: $FFC49F; Version: 1);
                                               //spec,dif,amb    }


implementation

uses
  Math,
  DivUtils,
  ImageProcess,
  ClipBrd,
  ShellAPI,
  FileCtrl,
  formulas,
  CalcThread2D,
  CustomFormulas,
  Animation,
  AniPreviewWindow,
  Maps,
  HeaderTrafos,
  Calc,
  IniDirsForm,
  PostProcessForm,
  DOF,
  CalcHardShadow,
  AmbHiQ,
  BatchForm,
  Undo,
  CommDlg,
  VoxelExport,
  calcBlocky,
  CalcSR,
  Tiling,
  MonteCarloForm,
  TextBox,
  pngimage,
  ColorPick,
  uMapCalcWindow,
  FormulaCompiler,
  MutaGenGUI,
  VisualThemesGUI,
  Vcl.Themes,
  MapSequencesGUI,
  MapSequences,
  StrUtils,
  Types,
  Interpolation,
  FormulaNames,
  JITFormulaEditGUI,
  NaviCalcThread,
  ThreadUtils,
  System.Character;
     //FormulaGUI

{$R *.dfm}


function TGUI.GetCalcRect: TRect;
var //TileRect: TRect;
    Crop: Integer;
begin
    if MHeader.TilingOptions <> 0 then
      GetTilingInfosFromHeader(@MHeader, Result, Crop)
//     Result := TileRect;
//     Result := TilingForm.brCalcRect
    else
      Result := Rect(0, 0, MHeader.Width - 1, MHeader.Height - 1);
end;

procedure TGUI.UpdateAndScaleImageFull(NewScale: Integer);
begin
    NewScale := Min(10, Max(1, NewScale));
    if NewScale <> ImageScale then
    begin
      ImageScale := NewScale;
      bUserChange := False;
      SetImageSize;
      bUserChange := True;
    end;
    UpdateScaledImage(0, (MHeader.Height - 1) div ImageScale);
end;

procedure TGUI.UpdateScaledImageFull;
begin
    UpdateScaledImage(0, (MHeader.Height - 1) div ImageScale);
end;

procedure TGUI.UpDown_M_1Click(Sender: TObject; Button: TUDBtnType);
var i: Integer;
begin
    if bUserChange then
    begin
      i := 0;
      if Button = btNext then i := Min(10, UpDown_M_1.Position + 1) else
      if Button = btPrev then i := Max(1, UpDown_M_1.Position - 1);
      if i <> 0 then
      begin
        ImageScale := 11 - i;
        MHeader.bImageScale := ImageScale;
        bUserChange := False;
        SetImageSize;
        bUserChange := True;
        UpdateScaledImageFull;
      end;
    end;
end;

procedure TGUI.UpDown_M_2Click(Sender: TObject; Button: TUDBtnType);
var b: LongBool;
begin
    DisableTiling(@MHeader);
    b := bUserChange;
    bUserChange := False;
    if Button = btPrev then
    begin
      MHeader.Width := MHeader.Width div 2;
      MHeader.Height := MHeader.Height div 2;
      ScaleDEstop(0.5);
      ScaleRclip(0.5);
    end
    else if Button = btNext then
    begin
      MHeader.Width := MHeader.Width * 2;
      MHeader.Height := MHeader.Height * 2;
      ScaleDEstop(2);
      ScaleRclip(2);
    end;
    Edit_M_11.Text := IntToStr(MHeader.Width);
    Edit_M_12.Text := IntToStr(MHeader.Height);
    bUserChange := b;
end;

procedure TGUI.UpDown_M_4Click(Sender: TObject; Button: TUDBtnType);
begin
    if Button = btPrev then
    begin
      if Label_M_23.Caption <> '0' then Label_M_23.Caption := IntToStr(StrToInt(Label_M_23.Caption) - 1);
    end
    else if Button = btNext then
    begin
      if Label_M_23.Caption <> '3' then Label_M_23.Caption := IntToStr(StrToInt(Label_M_23.Caption) + 1);
    end;
    IniVal[13] := Label_M_23.Caption;
end;

procedure TGUI.UpDown_M_5Click(Sender: TObject; Button: TUDBtnType);
var i: Integer;
begin
    i := UpDown_M_5.Position;
    if (Button = btNext) and (i < 9) then Inc(i) else
    if (Button = btPrev) and (i > -2) then Dec(i);
    if i > 0 then Label_M_61.Caption := '+' + IntToStr(i)
             else Label_M_61.Caption := IntToStr(i);
end;

procedure TGUI.FrameEditExit(Sender: TObject);
begin
  PropagateCurrFrameNumber;
  GUI.UpDownLightChange(Sender);{LIGHT}
end;

procedure TGUI.FrameUpDownClick(Sender: TObject; Button: TUDBtnType);
var
  Frame: Integer;
begin
  if FrameEdit.Text<>'' then begin
    Frame := StrToInt( FrameEdit.Text );
    if (Button = btNext) then
      FrameEdit.Text := IntToStr( Frame + 1 )
    else
      FrameEdit.Text := IntToStr( Max(1, Frame - 1) );
  end;
  PropagateCurrFrameNumber;
  GUI.UpDownLightChange(Sender);{LIGHT}
end;

procedure TGUI.VisualThemesBtnClick(Sender: TObject);
begin
  VisualThemesFrm.Visible := True;
end;

procedure TGUI.ScaleDEstop(s: Single);
var d: Double;
begin
    if CheckBox_M_11.Checked then
    begin
      if StrToFloatKtry(Edit_M_25.Text, d) then
        Edit_M_25.Text := FloatToStrSingle(d * s)
      else
        Edit_M_25.Text := FloatToStrSingle(MHeader.sDEstop * s);
    end;
end;

procedure TGUI.ScaleRclip(s: Single);
var d: Double;
begin
    if PPFormCreated and CheckBox_M_11.Checked then
    begin
      if StrToFloatKtry(PostProForm.Edit_P_2.Text, d) then
        PostProForm.Edit_P_2.Text := FloatToStrSingle(d * s)
      else
        PostProForm.Edit_P_2.Text := FloatToStrSingle(MHeader.sDOFclipR * s);
    end;
end;

procedure TGUI.ParasChanged;
begin
    Image_M_1.Picture.Bitmap.Canvas.TextOut(8, 16, 'Press ''Calculate 3D'' to render');
    bImageText := True;
end;

procedure TriggerRepaint;
begin
    if (not AFormCreated) or (AnimationForm.AniOption <= 0) then
    begin
      Inc(RepaintCounter);
      GUI.Timer_M_3.Enabled := True;
      GUI.ComboBox_L_3.Font.Color := clGrayText;{LIGHT}
    end;
end;

procedure TGUI.TriggerRepaintDraw(R: TRect);
begin
    if AFormCreated and (AnimationForm.AniOption > 0) then Exit;
    DrawRect.Top := Min(DrawRect.Top, R.Top);
    DrawRect.Left := Min(DrawRect.Left, R.Left);
    DrawRect.Right := Max(DrawRect.Right, R.Right);
    DrawRect.Bottom := Max(DrawRect.Bottom, R.Bottom);
    Timer_M_6.Enabled := True;
 //   PaintRect(DrawRect);
end;

procedure TGUI.ClearScreen;
begin
    Image_M_1.Picture.Bitmap.Canvas.FillRect(Image_M_1.Picture.Bitmap.Canvas.ClipRect);
    ParasChanged;
end;

procedure TGUI.OutMessage(s: String);
begin
  if not bHideMessages then begin
    if bOutMessageLoud then ShowMessage(s) else
    begin
      while Memo_M_1.Lines.Count > 15 do Memo_M_1.Lines.Delete(0);
      Memo_M_1.Lines.Add(s);
    end;
  end;
end;

procedure TGUI.WmThreadReady(var Msg: TMessage);
var sr, er: Integer;
begin
    if Msg.LParam = 222 then  //PaintRows thread finished
    begin
      sr := Msg.WParam and $FFFF;
      er := Msg.WParam shr 16;
      UpdateScaledImage(sr div ImageScale, er div ImageScale);   //tiling?
      if (DrawRect.Top = sr) and (DrawRect.Bottom = er) then
        DrawRect := Rect(MHeader.Width, MHeader.Height, 0, 0);
    end
    else if Msg.LParam = 3 then
    begin
      Dec(iActivePaintThreads);
      if iActivePaintThreads = 0 then Timer_M_8.Interval := 5;
    end
    else if Msg.LParam = 0 then
    begin
      Dec(iActiveThreads);
      if iActiveThreads = 0 then Timer_M_4.Interval := 5;
      if iActiveThreads = 0 then Timer_N_1.Interval := 5;{NAVI}
    end
    else if Msg.LParam = 66 then OutMessage('Not enough memory, DoF aborted.')
    else if Msg.LParam = 67 then ProgressBar1.Position := Msg.WParam;
end;

procedure TGUI.FillInPreset(ip: Integer);
begin
    AccPreset[ip].SmoothNormals := SpinEdit_M_2.Position;
    AccPreset[ip].DEstop        := StrToFloatK(Edit_M_25.Text);
    AccPreset[ip].RayMultiplier := StrToFloatK(Edit_M_6.Text);
    AccPreset[ip].BinSearch     := SpinEdit_M_5.Position;
    AccPreset[ip].ImageScale    := ImageScale;
    AccPreset[ip].ImageWidth    := StrToIntTrim(Edit_M_11.Text);
    AccPreset[ip].RayLimiter    := StrToFloatK(Edit_M_8.Text);
end;

procedure TGUI.SetPreset(ip: Integer);
var w: Integer;
begin
    DisableBchange;
    SpinEdit_M_2.Position := AccPreset[ip].SmoothNormals;
    Edit_M_25.Text     := FloatToStrSingle(AccPreset[ip].DEstop);
    Edit_M_6.Text      := FloatToStrSingle(AccPreset[ip].RayMultiplier);
    Edit_M_8.Text      := FloatToStrSingle(AccPreset[ip].RayLimiter);
    SpinEdit_M_5.Position := AccPreset[ip].BinSearch;
    ImageScale      := Max(1, Min(5, AccPreset[ip].ImageScale));
    w               := StrToIntTrim(Edit_M_11.Text);
    bUserChange     := False;
    Edit_M_11.Text     := IntToStr(AccPreset[ip].ImageWidth);
    Edit_M_12.Text     := IntToStr((StrToIntTrim(Edit_M_12.Text) * AccPreset[ip].ImageWidth) div w);
    bUserChange     := True;
    SpeedButton_M_35.Caption := '1:' + IntToStr(ImageScale);
    SetImageSize;
    UpdateScaledImageFull;
    EnableBchange;
end;

procedure TGUI.WMDROPFILES(var Msg: TMessage);
var size, i: Integer;
    Dateiname: PChar;
    s, st: String;
    tf: TextFile;
    stream: TFileStream;
    sa: AnsiString;
    success: LongBool;
begin
    inherited;
    try
      Dateiname := '';
      DragQueryFile(Msg.WParam, $FFFFFFFF, Dateiname, 255);
      size      := DragQueryFile(Msg.WParam, 0, nil, 0) + 1;
      Dateiname := StrAlloc(size);
      DragQueryFile(Msg.WParam, 0, Dateiname, size);
      s := UpperCase(ExtractFileExt(StrPas(Dateiname)));
      if s = '.M3I' then
      begin
        LoadFullM3I(MHeader, StrPas(Dateiname));
        AllPresetsUp;
       // TriggerRepaint;
      end
      else if s = '.M3P' then
      begin
        LoadParameter(MHeader, StrPas(Dateiname), True);
        AllPresetsUp;
        OutMessage('Parameters loaded, press "Calculate 3D" to render.');
        ClearScreen;
      end
      else if s = '.M3A' then
      begin
        AniStartLoad := True;
        if AnimationForm.LoadAni(StrPas(Dateiname)) then
          AnimationForm.Visible := True;
      end
      else if s = '.BIG' then
      begin
        if TilingForm.LoadBig(StrPas(Dateiname)) then
          TilingForm.Visible := True;
      end
      else if s = '.PNG' then
      begin
        success := False;
        try
          stream := TFileStream.Create(StrPas(Dateiname), fmOpenRead);
        //  i := stream.Size - 1500;
          if stream.Size > 2500 then
          begin
            SetLength(sa, 2502);
          //  sa := StringOfChar(' ', 1502);
            stream.Seek(-2500, soEnd);
            stream.Read(sa[1], 2500);
            i := Pos('tEXtComment', sa);
            if i > 0 then
            begin
              Inc(i, 12);
              if Copy(sa, i, 12) = 'Mandelbulb3D' then
              begin
                sa := Copy(sa, i, 2500);
                if GetHeaderFromText(sa, MHeader, st) then
                begin
                  TextParsLoadSuccess;
                  success := True;
                  Caption := st;
                end;
              end;
            end;
          end;
        finally
          stream.Free;
          if not success then OutMessage('No text params found.');
        end;
      end
      else if s = '.TXT' then
      begin
        AssignFile(tf, StrPas(Dateiname));
        try
          Reset(tf);
          Readln(tf, s);
          i := 40;
          while (i > 0) and not EOF(tf) do
          begin
            Readln(tf, st);
            s := s + st;
            Dec(i);
          end;
          if GetHeaderFromText(s, MHeader, st) then
          begin
            TextParsLoadSuccess;
            Caption := st;
          end
          else OutMessage('No text params found.');
        finally
          CloseFile(tf);
        end;
      end;
    finally
      StrDispose(Dateiname);
      DragFinish(Msg.WParam);
    end;
end;

procedure TGUI.AllPresetsUp;
begin
    SpeedButton_M_3.Down  := False;
    SpeedButton_M_13.Down := False;
    SpeedButton_M_5.Down  := False;
    SpeedButton_M_6.Down  := False;
end;

procedure TGUI.WndProc(var Message: TMessage);
var xLDif, yDif: Integer;
begin
    if Message.Msg = WM_Move then  //if Message.MSg = WM_EndSession or...  Query..
    begin
      if AFormCreated then
      begin
        if bAniFormStick = 1 then
         AnimationForm.SetBounds(Left, Top + Height, AnimationForm.Width,
                                    AnimationForm.Height)
        else if AnimationForm.Visible then
        begin
          yDif  := Abs(AnimationForm.Top - Top - Height);
          if yDif < 17 then
          begin
            xLDif := Abs(AnimationForm.Left - Left);
            if xLDif < 17 then bAniFormStick := 1;
          end;
        end;
      end;
      if PPFormCreated then
      begin
        if FormsSticky[2] = 1 then
          PostProForm.SetBounds(Left + Width, Top, PostProForm.Width, PostProForm.Height)
        else if FormsSticky[2] = 2 then
          PostProForm.SetBounds(Left - PostProForm.Width, Top,
                                   PostProForm.Width, PostProForm.Height);
      end;
      {if LAFormCreated then
      begin
        if FormsSticky[1] = 1 then
          GUILight.SetBounds(Left + Width, Top, GUILight.Width,
                                    GUILight.Height)
        else if FormsSticky[1] = 2 then
          GUILight.SetBounds(Left - GUILight.Width, Top,
                                   GUILight.Width, GUILight.Height);
      end;}
      {if FGUIFormCreated then
      begin
        if FormsSticky[0] = 1 then
          GUIFormula.SetBounds(Left + Width, Top, GUIFormula.Width,
                                   GUIFormula.Height)
        else if FormsSticky[0] = 2 then
          GUIFormula.SetBounds(Left - GUIFormula.Width, Top,
                                   GUIFormula.Width, GUIFormula.Height);
      end;}
    end;
    inherited WndProc(Message);
end;

procedure TGUI.CalcAmbShadow;
var pw: PWord;
    x: Integer;
begin
    if not SizeOK(True) then Exit;
    DisableButtons;
    ProgressBar1.Max := MHeader.Height;
    ProgressBar1.Visible := True;
    MCalcThreadStats.pLBcalcStop := @MCalcStop;
    MCalcThreadStats.pMessageHwnd := Self.Handle;
    MCalcThreadStats.iProcessingType := 4;  //AP=8
    if (MHeader.bCalcAmbShadowAutomatic and 12) in [4, 8] then
    begin
      if (MHeader.bCalcAmbShadowAutomatic and 12) = 8 then
      begin
        pw := @siLight5[0];
        Inc(pw, 6); //ambshadow = +12 bytes
        if SSAORiteration = 0 then //set ambshadow to 0, will be accumulated during iterations
        begin
          for x := 1 to Length(siLight5) do
          begin
            pw^ := 0;
            Inc(pw, 9);
          end;
        end;
        Inc(SSAORiteration);
      end;
      if ((MHeader.bCalcAmbShadowAutomatic and 12) = 8) and (MHeader.SSAORcount > 1) then
        Label_M_6.Caption := 'ambient shadow calculation ' + IntToStr(SSAORiteration) + ' of ' + IntToStr(MHeader.SSAORcount)
      else
        Label_M_6.Caption := 'ambient shadow calculation';
      CalcAmbShadowTHiQ(@MHeader, @siLight5[0], @MCalcThreadStats, @ATlevelHiQ);
      iActiveThreads := 0;
      Timer_M_4.Interval := 500;
      Timer_M_4.Enabled := True;
    end
    else
    begin
      if CalcAmbShadowT(@MHeader, @siLight5[0], mSLoffset, @MCalcThreadStats, @ATrousWL, GetCalcRect) then
      begin
        iActiveThreads := MCalcThreadStats.iTotalThreadCount;
        if AnimationForm.AniOption > 0 then Timer_M_4.Interval := 200 else
        Timer_M_4.Interval := 500;
        CalcYact        := -1;
        Timer_M_4.Enabled  := True;
        Label_M_6.Caption  := 'ambient shadow calculation';
      end
      else
      begin
        EnableButtons;
        OutMessage('Error in ambient shadow calculation. Stopped.');
      end;
    end;
end;

procedure TGUI.CalcHardShadow;
begin
    if not SizeOK(True) then Exit;
    MHeader.bCalc3D := 1;
    DisableButtons;
    ProgressBar1.Max := MHeader.Height;
    ProgressBar1.Visible := True;
    MCalcThreadStats.pLBcalcStop := @MCalcStop;
    MCalcThreadStats.pMessageHwnd := Self.Handle;
    MCalcThreadStats.iProcessingType := 3; //AP=4
    AssignLightVal(@HScalcHeaderLightVals, @HeaderLightVals);
    if CalcHardShadowT(@MHeader, @MCalcThreadStats, @siLight5[0], mSLoffset, @HScalcHeaderLightVals, True, GetCalcRect) then
    begin
      iActiveThreads  := MCalcThreadStats.iTotalThreadCount;
      Timer_M_4.Interval := 500;
      CalcYact        := -1;
      Timer_M_4.Enabled  := True;
      Label_M_6.Caption  := 'hard shadow calculation';
    end
    else
    begin
      EnableButtons;
      OutMessage('Error in hard shadow calculation. Stopped.');
    end;
end;

procedure TGUI.EnableButtons;
var P: TPoint;
begin
    Label_M_6.Caption := '';
    btnCalc3D.Caption := 'Calculate 3D';
    btnCalc3D.Hint := 'Start the main rendering of the image.';
    SpeedButton_M_32.Enabled := True;
    SpeedButton_M_33.Enabled := True;
    SpeedButton_M_34.Enabled := True;
    Button_M_1.Enabled := True;
    Button_M_6.Enabled := True;
    Button_M_5.Enabled := True;
    Button_M_9.Enabled := True;
    Button_M_11.Enabled := True;
    Button_M_12.Enabled := True;
    SpeedButton_M_8.Enabled := True;
    SpeedButton_M_9.Enabled := (UndoCount > 1) or (RedoCount > 1);
    SpeedButton_M_11.Enabled := True;
    SpeedButton_M_16.Enabled := True;
    SpeedButton_M_17.Enabled := True;
    SpeedButton_M_18.Enabled := True;
    SpeedButton_M_22.Enabled := True;
    SpeedButton_M_23.Enabled := True;
    SpeedButton_M_1.Enabled := True;
    SpeedButton_M_2.Enabled := True;
    SpeedButton_M_4.Enabled := True;
    IniDirsBtn.Enabled := True;
    MapSequencesBtn.Enabled := True;
    VisualThemesBtn.Enabled := True;
    if PPFormCreated then
    begin
      PostProForm.Button_P_1.Enabled := True;
      PostProForm.Button_P_2.Enabled := True;
      PostProForm.Button_P_3.Enabled := True;
      PostProForm.Button_P_4.Enabled := True;
      PostProForm.Button_P_5.Enabled := True;
      PostProForm.Button_P_6.Enabled := True;
      PostProForm.Button_P_7.Enabled := True;
      PostProForm.Button_P_8.Enabled := True;
      PostProForm.Button_P_9.Enabled := True;
      PostProForm.Button_P_10.Enabled := True;
      PostProForm.Button_P_12.Enabled := True;
      PostProForm.Button_P_14.Enabled := True;
      PostProForm.Button_P_15.Enabled := True;
      PostProForm.Button_P_16.Enabled := True;
      PostProForm.Button_P_18.Enabled := True;
      PostProForm.CheckBox_P_21.Enabled := True;
      PostProForm.CheckBox_P_25.Enabled := True;
    end;
    if BatchFormCreated then
    begin
      BatchForm1.Button1.Enabled := True;
    end;
    if bTilingFormCreated then
    begin
      TilingForm.Button2.Enabled := TFSB9E;
      TilingForm.Button3.Enabled := True;
      TilingForm.SpeedButton1.Enabled := True;
      TilingForm.SpeedButton2.Enabled := True;
      TilingForm.SpeedButton9.Enabled := TFSB9E;
      TilingForm.SpeedButton11.Enabled := True;
      TilingForm.Panel2.Enabled := TFSB9E;
      TFSB9Echecked := False;
    end;
    if bVoxelFormCreated then
    begin
      FVoxelExport.Button3.Enabled := True;
      FVoxelExport.SpeedButton11.Enabled := True;
      FVoxelExport.Button4.Enabled := True;
      FVoxelExport.Button5.Enabled := FVoxelExport.Benabled;  //prev
      FVoxelExport.SpeedButton9.Enabled := FVoxelExport.Benabled;  //save
      FVoxelExport.Button2.Enabled := FVoxelExport.Benabled;  //Start..
      FVoxelExport.Panel3.Enabled := True;
      FVoxelExport.Button5.Caption := 'Calculate preview';
    end;
    {if bMeshExportFormCreated then
    begin
////      MeshExportFrm.Button3.Enabled := True;
////      MeshExportFrm.SpeedButton11.Enabled := True;
      MeshExportFrm.Button4.Enabled := True;
      MeshExportFrm.Button5.Enabled := MeshExportFrm.Benabled;  //prev
////      MeshExportFrm.SpeedButton9.Enabled := MeshExportFrm.Benabled;  //save
      MeshExportFrm.PLYBtn.Enabled := MeshExportFrm.Benabled;  //Start..
      MeshExportFrm.Panel3.Enabled := True;
      MeshExportFrm.Button5.Caption := 'Calculate preview';
    end;}



    if MCFormCreated then MCForm.Button4.Enabled := MCForm.Button8.Enabled;
    ColorForm.CheckBox3.Enabled := True;
    SetImageCursor;
    GetCursorPos(P);
    SetCursorPos(P.X, P.Y - 1);   //To update the cursor, if over image
    SetCursorPos(P.X, P.Y);
    DragAcceptFiles(Self.Handle, True);
    if AnimationForm.AniOption >= 0 then AnimationForm.EnableButtons;
    if FNaviFormCreated then SpeedButton_N_14.Enabled := True;{NAVI}
    if (AnimationForm.AniOption <> 3) and (BatchStatus <> 1) then
      SetThreadExecutionState(ES_CONTINUOUS);
end;

procedure TGUI.DisableButtons;
begin
    SetThreadExecutionState(ES_CONTINUOUS or ES_SYSTEM_REQUIRED or ES_AWAYMODE_REQUIRED);
    SpeedButton_M_32.Enabled := False;
    SpeedButton_M_33.Enabled := False;
    SpeedButton_M_34.Enabled := False;
    Button_M_1.Enabled := False;
    Button_M_6.Enabled := False;
    Button_M_5.Enabled := False;
    Button_M_9.Enabled := False;
    Button_M_11.Enabled := False;
    Button_M_12.Enabled := False;
    btnCalc3D.Caption := 'Stop';
    btnCalc3D.Hint := 'Stop the current calculation.';
    SpeedButton_M_8.Enabled := False;
    SpeedButton_M_9.Enabled := False;
    SpeedButton_M_11.Enabled := False;
    SpeedButton_M_16.Enabled := False;
    SpeedButton_M_17.Enabled := False;
    SpeedButton_M_18.Enabled := False;
    SpeedButton_M_22.Enabled := False;
    SpeedButton_M_23.Enabled := False;
    SpeedButton_M_1.Enabled := False;
    SpeedButton_M_2.Enabled := False;
    SpeedButton_M_4.Enabled := False;
    IniDirsBtn.Enabled := False;
    MapSequencesBtn.Enabled := False;
    VisualThemesBtn.Enabled := False;
    MCalcStop := False;
    if PPFormCreated then
    begin
      PostProForm.Button_P_1.Enabled := False;
      PostProForm.Button_P_2.Enabled := False;
      PostProForm.Button_P_3.Enabled := False;
      PostProForm.Button_P_4.Enabled := False;
      PostProForm.Button_P_5.Enabled := False;
      PostProForm.Button_P_6.Enabled := False;
      PostProForm.Button_P_7.Enabled := False;
      PostProForm.Button_P_8.Enabled := False;
      PostProForm.Button_P_9.Enabled := False;
      PostProForm.Button_P_10.Enabled := False;
      PostProForm.Button_P_12.Enabled := False;
      PostProForm.Button_P_14.Enabled := False;
      PostProForm.Button_P_15.Enabled := False;
      PostProForm.Button_P_16.Enabled := False;
      PostProForm.Button_P_18.Enabled := False;
      PostProForm.CheckBox_P_21.Enabled := PostProForm.CheckBox_P_21.Checked;
      PostProForm.CheckBox_P_25.Enabled := PostProForm.CheckBox_P_25.Checked;
    end;
    if BatchFormCreated then
    begin
      if BatchStatus = 0 then BatchForm1.Button1.Enabled := False;
    end;
    if bTilingFormCreated then
    begin
      TilingForm.Button2.Enabled := False;
      TilingForm.Button3.Enabled := False;
      TilingForm.SpeedButton1.Enabled := False;
      TilingForm.SpeedButton2.Enabled := False;
      if not TFSB9Echecked then
        TFSB9E := TilingForm.SpeedButton9.Enabled;
      TFSB9Echecked := True;
      TilingForm.SpeedButton9.Enabled := False;
      TilingForm.SpeedButton11.Enabled := False;
      TilingForm.Panel2.Enabled := False;
    end;
    if bVoxelFormCreated then
    begin
      FVoxelExport.Button3.Enabled := False;
      FVoxelExport.SpeedButton11.Enabled := False;
      FVoxelExport.Button4.Enabled := False;
      FVoxelExport.Button5.Enabled := False;  //prev
      FVoxelExport.SpeedButton9.Enabled := False;  //save
      FVoxelExport.Button2.Enabled := False;  //Start..
      FVoxelExport.Panel3.Enabled := False;
    end;
    {if bMeshExportFormCreated then
    begin
/////      MeshExportFrm.Button3.Enabled := False;
////      MeshExportFrm.SpeedButton11.Enabled := False;
      MeshExportFrm.Button4.Enabled := False;
      MeshExportFrm.Button5.Enabled := False;  //prev
////      MeshExportFrm.SpeedButton9.Enabled := False;  //save
      MeshExportFrm.PLYBtn.Enabled := False;  //Start..
      MeshExportFrm.Panel3.Enabled := False;
    end;}
    if MCFormCreated then MCForm.Button4.Enabled := False;
    Image_M_1.Cursor := crHourGlass;
    DragAcceptFiles(Self.Handle, False);
    AnimationForm.DisableButtons;
    ProgressBar1.Position := 0;
    if FNaviFormCreated then SpeedButton_N_14.Enabled := False;{NAVI}
    if ColorForm.CheckBox3.Checked then ColorForm.CheckBox3.Checked := False;
    ColorForm.CheckBox3.Enabled := False;
end;

procedure TGUI.SetEulerEditsFromHeader;
var// Q: TQuaternion;
    v3: TVec3D;
begin
  //  MatrixToQuat(MHeader.hVGrads, Q);  // MatrixToAngles(v3);
 //   v3 := GetEulerFromQuat(Q);
    if not MatrixToAngles(v3, @MHeader.hVGrads) then
    begin
      Edit_M_27.Text := '?';
      Edit_M_32.Text := '?';
    end
    else
    begin
      Edit_M_27.Text := FloatToStr(v3[0] / Pid180);
      Edit_M_32.Text := FloatToStr(v3[2] / Pid180);
    end;
    Edit_M_31.Text := FloatToStr(v3[1] / Pid180);
end;

procedure TGUI.SetEdit_M_16Text;
begin
    if (MHeader.bVolLightNr and 7) = 0 then
    begin
      Edit_M_16.Text := IntToStr(MHeader.bDFogIt);
      ButtonVolLight.Caption := 'Dyn. fog on It.:';
      Edit_M_16.Width := Edit_M_35.Width;
      UpDown_M_5.Visible := False;
      Label_M_61.Visible := False;
    end else begin
      Edit_M_16.Text := IntToStr(Max(1, MHeader.bVolLightNr and 7));
      ButtonVolLight.Caption := 'Volume light nr:';
      Edit_M_16.Width := UpDown_M_5.Left - Edit_M_16.Left - 2;
      UpDown_M_5.Visible := True;
      UpDown_M_5.Position := (MHeader.bVolLightNr shr 4) - 2;
      if UpDown_M_5.Position > 0 then Label_M_61.Caption := '+' + IntToStr(UpDown_M_5.Position)
                              else Label_M_61.Caption := IntToStr(UpDown_M_5.Position);
      Label_M_61.Visible := True;
    end;
end;

procedure TGUI.SetEditsFromHeader;
var TileRect: TRect;
    Crop: Integer;
begin
    bUserChange := False;
    with MHeader do
    try
      if (Width > 0) and (Height > 0) then InternAspect := Width / Height;
      btnCalc3D.SetFocus;
      if MHeader.TilingOptions <> 0 then
      begin
        GetTilingInfosFromHeader(@MHeader, TileRect, Crop);
        Edit_M_11.Text := IntToStr(TileRect.Right - TileRect.Left + 1 - 2 * Crop);
        Edit_M_12.Text := IntToStr(TileRect.Bottom - TileRect.Top + 1 - 2 * Crop);
      end else begin
        Edit_M_11.Text := IntToStr(Width);
        Edit_M_12.Text := IntToStr(Height);
      end;
      Edit_M_1.Text  := FloatToStr(dZstart);
      Edit_M_3.Text  := FloatToStr(dZend);
      Edit_M_6.Text  := FloatToStrSingle(mZstepDiv);
      Edit_M_9.Text  := FloatToStr(dXmid);
      Edit_M_10.Text := FloatToStr(dYmid);
      Edit_M_5.Text  := FloatToStr(dZoom);
      Edit_M_14.Text := FloatToStr(dFOVy);
      Edit_M_17.Text := FloatToStr(dZmid);
      Edit_M_2.Text  := FloatToStrSingle(sColorMul);
      Edit_M_8.Text  := FloatToStrSingle(sRaystepLimiter);
      Edit_M_15.Text := FloatToStrSingle(StereoScreenWidth);
      Edit_M_18.Text := FloatToStrSingle(StereoScreenDistance);
      Edit_M_13.Text := FloatToStrSingle(StereoMinDistance);
      Edit_M_25.Text := FloatToStrSingle(sDEstop);
      if Edit_M_33.Text <> Authors[0] then
      begin
        Edit_M_33.Enabled := (Authors[0] = IniVal[33]) or (Length(Authors[0]) < 2);
        Edit_M_33.Text := Authors[0];
      end;
      Edit_M_34.Text := Authors[1];

      SpinEdit_M_2.Position := (iOptions shr 6) and 15;
      SpinEdit_M_5.Position := bStepsafterDEStop;
      CheckBox_M_1.Checked := (bNormalsOnDE and 1) <> 0;
      CheckBox_M_3.Checked := (iOptions and 1) <> 0;
      CheckBox_M_8.Checked := (iOptions and 2) <> 0;
      CheckBox_M_2.Checked := (iOptions and 4) <> 0;
      Label_M_31.Caption := IntToStr(iAvrgDEsteps div 10) + '.' + IntToStr(iAvrgDEsteps mod 10);
      Label_M_32.Caption := IntToStr(iAvrgIts div 10) + '.' + IntToStr(iAvrgIts mod 10);
      if iMaxIts > 0 then Label_M_40.Caption := IntToStr(iMaxIts)
                     else Label_M_40.Caption := '?';
      Label_M_52.Caption := IntToTimeStr(iCalcTime);
      Label_M_8.Caption  := IntToTimeStr(iCalcHStime);
      Label_M_48.Caption := IntToTimeStr(iAmbCalcTime);
      Label_M_50.Caption := IntToTimeStr(iReflectsCalcTime);
      Edit_M_22.Text := FloatToStr(dCutZ);
      Edit_M_23.Text := FloatToStr(dCutX);
      Edit_M_24.Text := FloatToStr(dCutY);
      bImageScale := Max(1, Min(10, bImageScale));
      ImageScale := bImageScale;
      SpeedButton_M_35.Caption := '1:' + IntToStr(ImageScale);
      CheckBox_M_4.Checked := (bCutOption and 1) > 0;
      CheckBox_M_5.Checked := (bCutOption and 2) > 0;
      CheckBox_M_6.Checked := (bCutOption and 4) > 0;
      CheckBox_M_9.Checked := (bVaryDEstopOnFOV > 0);
      CheckBox_M_7.Checked := bIsJulia > 0;
      RadioGroup_M_2.ItemIndex := bPlanarOptic;
      RadioGroup_M_1.ItemIndex := byColor2Option;
      Edit_M_28.Text := FloatToStr(dJx);
      Edit_M_29.Text := FloatToStr(dJy);
      Edit_M_30.Text := FloatToStr(dJz);
      Edit_M_7.Text := FloatToStr(dJw);
      SetEdit_M_16Text;
      Edit_M_35.Text := IntToStr(bColorOnIt - 1);
      PageControl_M_1Change(Self);

      SetEulerEditsFromHeader;

      UpdateFromHeader(@MHeader);{FORMULA}

      if PPFormCreated then
      begin
        PostProForm.CheckBox_P_1.Checked := (bCalcDOFtype and 1) <> 0;
        PostProForm.RadioGroup_P_2.ItemIndex := (bCalcDOFtype shr 3) and 1;
        PostProForm.RadioGroup_P_1.ItemIndex := (bCalcDOFtype shr 1) and 3;
        PostProForm.Edit_P_1.Text := FloatToStrSingle(sDOFZsharp);
        PostProForm.Edit_P_2.Text := FloatToStrSingle(sDOFclipR);
        PostProForm.Edit_P_3.Text := FloatToStrSingle(sDOFaperture);
        PostProForm.Edit_P_10.Text := FloatToStrSingle(sDOFZsharp2);
        PostProForm.Edit_P_5.Text := FloatToStrSingle(HSmaxLengthMultiplier);
        PostProForm.CheckBox_P_9.Checked := (bCalculateHardShadow and 1) <> 0;
        PostProForm.CheckBox_P_10.Checked := (bCalculateHardShadow and 2) <> 0;
        PostProForm.CheckBox_P_2.Checked := (bCalculateHardShadow and 4) <> 0;
        PostProForm.CheckBox_P_3.Checked := (bCalculateHardShadow and 8) <> 0;
        PostProForm.CheckBox_P_4.Checked := (bCalculateHardShadow and 16) <> 0;
        PostProForm.CheckBox_P_5.Checked := (bCalculateHardShadow and 32) <> 0;
        PostProForm.CheckBox_P_6.Checked := (bCalculateHardShadow and 64) <> 0;
        PostProForm.CheckBox_P_7.Checked := (bCalculateHardShadow and 128) <> 0;
        PostProForm.CheckBox_P_29.Checked := (bCalc1HSsoft and 1) <> 0;
        PostProForm.CheckBox_P_11.Checked := (bCalcAmbShadowAutomatic and 1) <> 0;
        PostProForm.CheckBox_P_12.Checked := (bCalcAmbShadowAutomatic and 2) <> 0;    //Thr0
        PostProForm.CheckBox_P_22.Checked := (bCalcAmbShadowAutomatic and 128) <> 0;  //fsr
        PostProForm.TabControl_P_1.TabIndex := (bCalcAmbShadowAutomatic shr 2) and 3;
        PostProForm.UpDown_P_1.Position := (bCalcAmbShadowAutomatic shr 4) and 3; //and 7
        PostProForm.RadioGroup_P_5.ItemIndex := AODEdithering;
        PostProForm.Edit_P_34.Text := FloatToStrSingle(Abs(sAmbShadowThreshold));
        PostProForm.CheckBox_P_23.Checked := (byCalcNsOnZBufAuto and 1) <> 0;
        PostProForm.CheckBox_P_24.Checked := (bCalcSRautomatic and 1) <> 0;
        PostProForm.Edit_P_6.Text := FloatToStrSingle(Min0MaxCS(SRamount, 100));
        PostProForm.UpDown_P_2.Position := Min(8, Max(1, SRreflectioncount));
        PostProForm.UpDown_P_3.Position := Min(9, Max(1, SSAORcount));
        PostProForm.Edit_P_8.Text := FloatToStrSingle(MinMaxCS(s1d255, sDEAOmaxL, 100));
        PostProForm.RadioGroup_P_3Click(Self); //to make AO components visible or not
        PostProForm.Edit_P_9.Text := D2ByteToStr(bSSAO24BorderMirrorSize);
        PostProForm.Edit_P_13.Text := FloatToStrSingle(MinMaxCS(s1em30, sTransmissionAbsorption, 1e10));
        PostProForm.Edit_P_14.Text := FloatToStrSingle(MinMaxCS(0.1, sTRIndex, 10));
        PostProForm.Edit_P_17.Text := FloatToStrSingle(Min0MaxCS(sTRscattering, s1e30));
        PostProForm.CheckBox_P_27.Checked := (bCalcSRautomatic and 2) <> 0;
        PostProForm.CheckBox_P_28.Checked := (bCalcSRautomatic and 4) <> 0;
        PostProForm.Edit_P_7.Text := ShortFloatToStr(MCSoftShadowRadius);
      end;
    finally
      bUserChange := True;
    end;
end;

procedure TGUI.MakeHeader;
var d: Double;
begin
    with MHeader do
    begin
      MandId := actMandId;
      if TilingOptions = 0 then
      begin
        Width  := StrToIntTrim(Edit_M_11.Text);
        Height := StrToIntTrim(Edit_M_12.Text);
      end;
      Iterations        := StrToIntTrim(MaxIterEdit.Text);{FORMULA}
      MinimumIterations := StrToIntTrim(MinIterEdit.Text);{FORMULA}
      iMaxItsF2         := StrToIntTrim(MaxIterHybridPart2Edit.Text);{FORMULA}
      bNormalsOnDE      := Byte(CheckBox_M_1.Checked);
      bPlanarOptic      := RadioGroup_M_2.ItemIndex;
      bStepsafterDEStop := SpinEdit_M_5.Position;
      if PPFormCreated then
      begin
        PostProForm.PutDOFparsToHeader(@MHeader);
        PostProForm.PutAmbientParsToHeader(@MHeader);
        PostProForm.PutReflectionParsToHeader(@MHeader);
        HSmaxLengthMultiplier := StrToFloatK(PostProForm.Edit_P_5.Text);
        bCalculateHardShadow := PostProForm.HSoptions and 255;
        bCalc1HSsoft := PostProForm.HSoptions shr 8;
        byCalcNsOnZBufAuto := Byte(PostProForm.CheckBox_P_23.Checked) and 1;
        bSSAO24BorderMirrorSize := StrToD2Byte(PostProForm.Edit_P_9.Text);
     //   MCSoftShadowRadius := StrToShortFloat(PostProForm.Edit_P_7.Text);
        if not StrToFloatKtry(PostProForm.Edit_P_7.Text, d) then d := 1;
        MCSoftShadowRadius := SingleToShortFloat(MinMaxCS(s001, d, 20));
      end
      else
      begin
        bCalculateHardShadow := 0;
        bCalc1HSsoft := 0;
        bCalcAmbShadowAutomatic := 1;
        sAmbShadowThreshold := 2;
        byCalcNsOnZBufAuto := 0;
        bSSAO24BorderMirrorSize := 0;
      end;
      iOptions := (SpinEdit_M_2.Position shl 6) or (Ord(CheckBox_M_3.Checked) and 1)
                  or ((Ord(CheckBox_M_8.Checked) and 1) shl 1) or  //bit1=FirstStepRandom, bit2=Shortdist check DEs
                  ((Ord(CheckBox_M_2.Checked) and 1) shl 2);       //bit3=StepSubDEstop,   bit7..10=smoothNs(0..8)
      mZstepDiv := Max(0.001, Min(1, StrToFloatK(Edit_M_6.Text)));
      dZstart   := StrToFloatK(Edit_M_1.Text);
      dZend     := StrToFloatK(Edit_M_3.Text);
      dXmid     := StrToFloatK(Edit_M_9.Text);
      dYmid     := StrToFloatK(Edit_M_10.Text);
      dZmid     := StrToFloatK(Edit_M_17.Text);
      dZoom     := StrToFloatK(Edit_M_5.Text);
      RStop     := StrToFloatK(RBailoutEdit.Text);{FORMULA}
      dXWrot    := StrToFloatK(XWEdit.Text) * Pid180;{FORMULA}
      dYWrot    := StrToFloatK(YWEdit.Text) * Pid180;{FORMULA}
      dZWrot    := StrToFloatK(ZWEdit.Text) * Pid180;{FORMULA}
      dFOVy     := StrToFloatK(Edit_M_14.Text);
      dCutZ     := StrToFloatK(Edit_M_22.Text);
      dCutX     := StrToFloatK(Edit_M_23.Text);
      dCutY     := StrToFloatK(Edit_M_24.Text);
      bCutOption := Byte(CheckBox_M_4.Checked) or (Byte(CheckBox_M_5.Checked) shl 1)
                     or (Byte(CheckBox_M_6.Checked) shl 2);   //todo side of cuts
      sDEstop   := Max(0.001, StrToFloatK(Edit_M_25.Text));
      bImageScale := ImageScale;
      bIsJulia  := Byte(CheckBox_M_7.Checked);
      dJx       := StrToFloatK(Edit_M_28.Text);
      dJy       := StrToFloatK(Edit_M_29.Text);
      dJz       := StrToFloatK(Edit_M_30.Text);
      dJw       := StrToFloatK(Edit_M_7.Text);
      sColorMul := StrToFloatK(Edit_M_2.Text);
      sRaystepLimiter := StrToFloatK(Edit_M_8.Text);
      StereoScreenWidth := StrToFloatK(Edit_M_15.Text);
      StereoScreenDistance := StrToFloatK(Edit_M_18.Text);
      StereoMinDistance := StrToFloatK(Edit_M_13.Text);
      bVaryDEstopOnFOV := Byte(CheckBox_M_9.Checked);
      byColor2Option := RadioGroup_M_1.ItemIndex;
      bColorOnIt := Max(0, Min(255, StrToIntTrim(Edit_M_35.Text) + 1));
      if ButtonVolLight.Caption = 'Dyn. fog on It.:' then
      begin
        bVolLightNr := 2 shl 4;
        bDFogIt := StrToIntTrim(Edit_M_16.Text);
      end
      else bVolLightNr := Min(6, Max(1, StrToIntTrim(Edit_M_16.Text))) or ((UpDown_M_5.Position + 2) shl 4);

      PCFAddon := @HAddon;
      GUI.PutLightFInHeader(MHeader);{LIGHT}
      HAddon.bOptions1 := (HAddon.bOptions1 and $FC) or TabControl_F_2.TabIndex;{FORMULA}
      HAddon.bOptions2 := (Ord(CheckBox_F_2.Checked) and 1) or
                          (ComboBox_F_1.ItemIndex shl 1);{FORMULA}
      HAddOn.bOptions3 := DECombineCmb.ItemIndex;{FORMULA}
      if HAddOn.bOptions3 < 5 then
        sDEcombS := Min0MaxCS(StrToFloatK(Edit_F_23.Text), 100)//{FORMULA}
      else
      begin
        DEmixColorOption := Max(0, Min(2, StrToIntTrim(Edit_F_23.Text)));{FORMULA}
        sFmixPow := sNotZero(MinMaxCS(-100, StrToFloatK(Edit_F_25.Text), 100));{FORMULA}
      end;
    end;
end;

procedure TGUI.MapSequencesBtnClick(Sender: TObject);
begin
  MapSequencesFrm.Visible := True;
end;

function TGUI.SizeOK(Verbose: LongBool): LongBool;
var sp: TPoint;
begin
    sp := GetTileSize(@MHeader);
    Result := Length(siLight5) = sp.X * sp.Y;
    if Verbose and not Result then OutMessage('Error with image size.');
end;

function AniFileAlreadyExists(var s: String): LongBool;
var sa: String;
begin
    s := IntToStr(AnimationForm.AniFileIndex);
    if AnimationForm.AniStereoMode then
    begin
      if AnimationForm.AniRightImage then sa := AnimationForm.AniProjectName + 'Right'
                                     else sa := AnimationForm.AniProjectName + 'Left';
    end
    else sa := AnimationForm.AniProjectName;
    s := AnimationForm.AniOutputFolder + sa + StringOfChar('0', 6 - Length(s)) + s;
    case AnimationForm.AniOutputFormat of
      0:  s := ChangeFileExt(s, '.bmp');
      1:  s := ChangeFileExt(s, '.png');
      2:  s := ChangeFileExt(s, '.jpg');
    end;
    Result := FileExists(s);
end;

procedure TGUI.CalcMand(bMakeHeader: LongBool);
var stmp: String;
    TileSize: TPoint;
    b: LongBool;
begin
    if AnimationForm.AniOption = 3 then
    begin
      AniFileAlreadyExists(stmp);
      if (AnimationForm.CheckBox4.Checked and AnimationForm.CheckBox5.Checked and AnimationForm.AniRightImage) or
         ((not AnimationForm.CheckBox6.Checked) and FileIsBigger1(stmp)) or
         (not AnimationForm.OccupyDFile(stmp)) then
      begin
        AnimationForm.NextSubFrame;
        Exit;
      end;
      Caption := ExtractFileName(stmp);
      b := bUserChange;
      bUserChange := False;
      Edit_M_11.Text := IntToStr(MHeader.Width);
      Edit_M_12.Text := IntToStr(MHeader.Height);
      bUserChange := b;
    end;
    SaveM3IfileAuto := False;
    SSAORiteration := 0;
    CalcStart := GetTickCount;
    Shape_M_1.Visible := False;
    Inc(RepaintCounter);
    MHeader.bHScalculated := 0;
    if bMakeHeader then
    begin
      MakeHeader;
      MakeLightValsFromHeaderLight(@MHeader, @HeaderLightVals, 1, MHeader.bStereoMode);
      MHeader.bSliceCalc := 0;    //for StoreUndo so that no identic headers are stored
      if (AnimationForm.AniOption <= 0) and (MHeader.TilingOptions = 0) then StoreUndo;
      MHeader.bSliceCalc := SliceCalc;
      CalcPosLightsRelPos(@MHeader, @HeaderLightVals);
    end
    else if AnimationForm.AniOption = 0 then
      CalcPosLightsRelPos(@MHeader, @HeaderLightVals);
    if (MHeader.Width < 1) or (MHeader.Height < 1) then Exit;
    try
      TileSize := GetTileSize(@MHeader);
      SetLength(siLight5, TileSize.X * TileSize.Y);
      mSLoffset := TileSize.X * SizeOf(TsiLight5);
      SetImageSize;
    except
      SetLength(siLight5, 0);
      mSLoffset := 0;
    end;
    if Length(siLight5) = 0 then
    begin
      btnCalc3D.Caption := 'Calculate 3D';
      ShowMessage('Out of memory, decrease the imagesize.');
      Exit;
    end;
    DisableButtons;
    if (MHeader.bCalc3D <> 0) and ((MHeader.bVolLightNr and 7) > 0) and
      ((MHeader.Light.Lights[Min(5, (MHeader.bVolLightNr and 7) - 1)].Loption and 3) = 0) then
    begin
      MapCalcWindow.pMap := @VolumeLightMap;
      MapCalcWindow.pHeader := @MHeader;
      MapCalcWindow.PLightVals := @HeaderLightVals;
      MapCalcWindow.Visible := True;
      while MapCalcWindow.Visible do delay(200);
      if MCalcStop then
      begin
        EnableButtons;
        Exit;
      end;
      bSRVolLightMapCalculated := True;
    end;
    MHeader.iCalcHStime := 0;
    MHeader.iAmbCalcTime := 0;
    Label_M_8.Caption := '-';
    Label_M_48.Caption := '-';
    Label_M_50.Caption := '-';
    MCalcThreadStats.pLBcalcStop := @MCalcStop;
    MCalcThreadStats.pMessageHwnd := Self.Handle;
    MCalcThreadStats.iProcessingType := 1;
    MCalcThreadStats.iAllProcessingOptions := AllAutoProcessings(@MHeader);

    if CalcMandT(@MHeader, @HeaderLightVals, @MCalcThreadStats,
                 @siLight5[0], mSLoffset, mFSIstart, mFSIoffset, GetCalcRect) then
    begin
      iActiveThreads := MCalcThreadStats.iTotalThreadCount;
      CalcYact := -1;  //for upgrading the image
      ProgressBar1.Max := MHeader.Height;
      ProgressBar1.Visible := MHeader.bCalc3D > 0;
      if ProgressBar1.Visible then Timer_M_4.Interval := 200 + (TileSize.X + TileSize.Y) shr 3
                              else Timer_M_4.Interval := 100 + (TileSize.X + TileSize.Y) shr 4;
      if Timer_M_4.Interval > 800 then Timer_M_4.Interval := 1000;
      Timer_M_4.Enabled := True;
      if ProgressBar1.Visible then Label_M_6.Caption := 'main rendering';
    end
    else
    begin
      EnableButtons;
      MCalcThreadStats.iProcessingType := 0;
    end;
end;

procedure TGUI.Button_M_1Click(Sender: TObject);
begin
    SliceCalc := (Sender as TSpeedButton).Tag;
    Timer_M_1.Enabled := True;
end;

function GetSpecialFolderPath(folder : Integer) : String;
const SHGFP_TYPE_CURRENT = 0;
var path: array [0..MAX_PATH] of Char;
begin
    if SUCCEEDED(SHGetFolderPath(0, folder, 0, SHGFP_TYPE_CURRENT, @path[0])) then
      Result := path
    else
      Result := '';
end;

procedure IniHAddon(HA: PTHeaderCustomAddon);
var i: Integer;
begin
    with HA^ do
    begin
      bHCAversion := 1;
      bOptions1 := 0;
      bOptions2 := 0;
      bOptions3 := 0;
      iFCount := 0;
      bHybOpt1 := 0;
      bHybOpt2 := $151;
      for i := 0 to 5 do
      with Formulas[i] do
      begin
        iItCount := 0;
        iFnr := -1;
        CustomFname[0] := 0;
        dOptionValue[0] := 8;
      end;
      Formulas[0].iItCount := 1;
      Formulas[0].iFnr := 0;
    end;
end;

procedure TGUI.IniMHeader;
var i: Integer;
begin
    MHeader.PCFAddon := @HAddOn;
    for i := 0 to 5 do MHeader.PHCustomF[i] := @HybridCustoms[i];
end;

procedure TGUI.FormCreate(Sender: TObject);
var i, x: Integer;

{LIGHT}

begin
    SetLAplusPosToZero;
    ColorFormCreated := False;
    for x := 0 to 5 do FreeLightMap(@LightMaps[x]);
    FreeLightMap(@DiffColMap);
//    LAFormCreated := True;
//end;

{MAIN}

//begin
    LoadIni;
    if IniVal[35] <> '' then TStyleManager.TrySetStyle(IniVal[35]);

    OPD := TOpenPictureDialogM3D.Create(Self);
    OPD.Filter := 'M3D Image + Parameter (*.m3i)|*.m3i';
    OPD.DefaultExt := 'm3i';
    Randomize;
    FormatSettings.DecimalSeparator  := '.';
    notAllButtonsUp   := True;
    ScrollBox1.DoubleBuffered := True;
    bUserChange       := True;
    StartupLoadM3I    := False;
    SaveAniImage      := False;
    SaveTileImage     := False;
    isRepainting      := False;
    TFSB9Echecked     := False;
    bOutMessageLoud   := False;
    CloseTries        := 0;
    iGetPosFromImage  := 0;
    MHeader.Width     := 0;
    MHeader.Height    := 0;
    MHeader.bSliceCalc := 2;
    MHeader.bCalc3D := 0;
    MHeader.MCSoftShadowRadius := SingleToShortFloat(1);
    MHeader.MCDepth := 3;
    MHeader.MCcontrast := 128;
    MHeader.MCoptions := 2;
    MHeader.bMCSaturation := 32;
    FreeLightMap(@M3DBackGroundPic);
    MCalcThreadStats.iProcessingType := 0;
    MCalcThreadStats.iTotalThreadCount := 0;
    iActivePaintThreads := 0;
    UserAspect := Point(0, 0);
    IniMHeader;
    for i := 0 to 5 do IniCustomF(@HybridCustoms[i]);
    for i := 0 to 5 do IniCustomF(@calcHybridCustoms[i]);
    IniHAddon(@HAddOn);
    GetHAddOnFromInternFormula(@MHeader, 0, 0);
    UpDownThread.Position := Min(64, Max(1, NumberOfCPUs));
    MHeader.Light.FineColAdj1 := 0;
    MHeader.Light.FineColAdj2 := 120;
    MHeader.Light.BGbmp[0] := 0;
    MHeader.TilingOptions := 0;
    DragAcceptFiles(Self.Handle, True);

    PageControl_M_2.ActivePageIndex := 0;
    //  if Testing then Showmessage('M3D load ini now...');
    //  LoadIni;
    //  SetM3Dini;
    //  CategoryPanelGroup1.ScaleBy(96, Screen.PixelsPerInch);

{NAVI}
    //Image_N_1.Parent.ControlStyle := [csOpaque];
    FirstStart := True;
    bUserChangeN := False;
    NglobalCounter := 0;
    FocusedSlider := 0;
    NaviLightness := 1;
    //DoubleBuffered := True;
    NaviHeader.PCFAddon := @NaviHAddon;
    for i := 0 to 5 do NaviHeader.PHCustomF[i] := @HybridCustoms[i];
    for i := 0 to 5 do IniCustomF(@HybridCustoms[i]);
    for i := 0 to 2 do NLPavailable[i] := False;
    tmpBMP := TBitmap.Create;
    tmpBMP.PixelFormat := pf32Bit;
    tmpBMP.SetSize(80, 76);
    tmpBMPc := TBitmap.Create;
    tmpBMPc.PixelFormat := pf32Bit;
    tmpBMPc.SetSize(240, 240);
    Panel_N_1.DoubleBuffered := True;
//    FNaviFormCreated := True;
//    NaviSizeCmb.ItemIndex := NaviSizeCmb.Items.IndexOf(IniVal[36]);

end;

procedure TGUI.FormShow(Sender: TObject);
var i: Integer;
begin

    //begin
    //bLFfirstShow := False;
    //  if Testing then Showmessage('M3D lightform show...');
    SetStartPreset;
    //      if FormsSticky[1] = 0 then
    //        SetBounds(StrToIntTry(StrFirstWord(IniVal[27]), 844),
    //                  StrToIntTry(StrLastWord(IniVal[27]), 100), Width, Height);
    SetSButtonColor(3, LAtmpLight.AmbCol);
    SetSButtonColor(4, MakeDynFogCol);
    SetSButtonColor(6, LAtmpLight.AmbCol2);
    SetSButtonColor(10, LAtmpLight.DepthCol);
    SetSButtonColor(11, LAtmpLight.DepthCol2);
    SetSButtonColor(30, LAtmpLight.DynFogCol2);
    SetDialogDirectory(OpenDialogPic, IniDirs[6]);
    OpenDialog_L_1.InitialDir := IniDirs[7];
    SaveDialog_L_1.InitialDir := IniDirs[7];
    for i := 1 to 5 do
        MakeGlyph((FindComponent('SpeedButton_L_' + IntToStr(i + 14)) as TSpeedButton), i);
    //     if Testing then Showmessage('M3D lightform load presets...');
    for i := 0 to 9 do
        begin
        if LoadColPreset(i) then
        MakeGlyph((FindComponent('SpeedButton_L_' + IntToStr(i + 20)) as TSpeedButton), i + 6)
        else CustomPresets[i + 6] := ConvertColPreset164To20(Presets[5]);
        end;
    TabControl_L_1Change(Sender);
    //   if Testing then Showmessage('M3D lightform show done');
    UpdateQuickLoadCB;
    //make popupm2 depthcol images and create items...
    MakeDepthColList;
    //end;

{FORMULA}

    //    if Testing then Showmessage('M3D formulaform show...');
    OpenDialog_F_3.InitialDir := IniDirs[3];
    OldTab2index := 0;
    bUserChangeF := True;
    TabControl_F_1Change(Sender);
    //    FGUIFormCreated := True;
    //    if FGUIFormFirstShow then
    begin
    //      FGUIFormFirstShow := False;
    //      if FormsSticky[0] = 0 then
    //        SetBounds(StrToIntTry(StrFirstWord(IniVal[26]), 844),
    //                  StrToIntTry(StrLastWord(IniVal[26]), 100), Width, Height);
      if SupportSSE2 then
      begin
        Bevel_F_1.Width := Bevel_F_1.Width + SpeedButtonEx_F_9.Width * 3;
        SpeedButtonEx_F_9.Visible := True;
        SpeedButtonEx_F_10.Visible := True;
        SpeedButtonEx_F_11.Visible := True;
      //  FGUIFormDropDownButtonCount := 10;
      end;
      MaxLBheight := TabControl_F_1.Height - SpeedButtonEx_F_1.Top - SpeedButtonEx_F_1.Height - 4;
      LoadFormulaNames;
    end;
    //    if Testing then Showmessage('M3D formulaform show done');


{MAIN}
    Caption := 'Mandelbulb 3D    v' + ProgramVersionStr(M3dVersion);
    SetM3Dini;

{NAVI}

    with NaviHeader do
    begin
      if FirstStart then
      begin
        GUI.PropagateCurrFrameNumber;
        if not Assigned(Image_N_1.Picture.Bitmap) then
          Image_N_1.Picture.Bitmap := TBitmap.Create;
        Image_N_1.Picture.Bitmap.PixelFormat := pf32Bit;
        FirstStart := False;
        bUserChangeN := False;
        // bug fix ini val becomes txt after ini reset
        if IsNumber(StrToInt(IniVal[2])) then Edit_N_1.Text := IniVal[2] else Edit_N_1.Text := '20';
        if IsNumber(StrToInt(IniVal[3])) then Edit_N_2.Text := IniVal[3] else Edit_N_2.Text := '5';
        //Edit_N_1.Text := IniVal[2];
        //Edit_N_2.Text := IniVal[3];
        //Edit_N_4.Text := IniVal[4];
        Edit_N_3.Text := IniVal[5];
        CheckBox_N_2.Checked := IniVal[10] = '1';
//        CheckBox_N_5.Checked := IniVal[14] = '0';
        CheckBox_N_4.Checked := IniVal[19] <> 'No';
        bDoubleClick := IniVal[20] <> 'No';
        Image_N_2.Picture.Bitmap.PixelFormat := pf32bit;
        Image_N_2.Picture.Bitmap.SetSize(40, 38);
        Image_N_6.Picture.Bitmap.PixelFormat := pf32bit;
        Image_N_6.Picture.Bitmap.SetSize(120, 120);
        LoadLightPresets;
        FSubIndexTop := 0;
        AdjustPanelFirstShow := True;
        SpeedButton_N_11Click(Sender); //insert main paras
//        if IniVal[34] = '1' then SpeedButton_N_23Click(Sender);
      end;
      DisableLightStoring;
    end;
    bUserChangeN := True;
//    EnableButtonsN;

    //SaveFormulaBytes;
end;

procedure TGUI.btnCalc3DClick(Sender: TObject);   //main Calc3D button
begin
    PropagateCurrFrameNumber;
    TilingForm.SaveThisTile := False;
    if btnCalc3D.Caption = 'Stop' then
    begin
      if (MCalcThreadStats.iProcessingType > 0) and Timer_M_4.Enabled and
         ((GetTickCount - CalcStart) > 900000) then
      begin
        if MessageDlg('Do you really want to stop the calculations?', mtWarning,
                      [mbYes, mbNo], 0) = mrNo then Exit;
      end;
      Timer_M_1.Enabled := False;
      MCalcStop := True;
      AnimationForm.bCalcStop := True;
      if (AnimationForm.AniOption > 0) then
      begin
        AnimationForm.ActualKFsubframe := 1;
        AnimationForm.ActualKeyFrame   := AnimationForm.HeaderCount;
        AnimationForm.NextSubFrame;
        Caption := 'Mandelbulb 3D';
      end;
      if BatchStatus > 0 then BatchStatus := -1;
      if not Timer_M_4.Enabled then
      begin
        EnableButtons;
        if PPFormCreated then
        begin
          PostProForm.CheckBox_P_21.Checked := False;
          PostProForm.CheckBox_P_25.Checked := False;
        end;
      //  if SizeOK(False) then UpdateScaledImage(0, MHeader.Height div ImageScale);
      end;
    end else begin
      Timer_M_1.Enabled := False;
      if bImageText then
      begin
        Image_M_1.Canvas.Font.Color := clBtnFace;
        Image_M_1.Picture.Bitmap.Canvas.TextOut(8, 16, 'Press ''Calculate 3D'' to render');
        Image_M_1.Canvas.Font.Color := clWindowText;
        bImageText := False;
      end;
      ColorForm.CheckBox3.Checked := False;
      ProofPosLight;
      if MHeader.bStereoMode <> 0 then Caption := 'Mandelbulb 3D';
      MHeader.bStereoMode := 0;
      MHeader.bCalc3D := 1;
      StoreHistoryPars(MHeader);
      CalcMand(True);
    end;
end;

procedure TGUI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Timer_M_1.Enabled := False;
    MCalcStop      := True;
    StoreHistoryPars(MHeader);
    CopyHeaderAsTextToClipBoard(@MHeader, Caption);
    IniVal[15] := IntToStr(Byte(CheckBox_M_11.Checked) and 1);
    if CheckBox_M_15.Checked then IniVal[29] := IntToStr(ComboBoxThread.ItemIndex) else IniVal[29] := '-1';
    if CheckBox_M_12.Checked then IniVal[21] := 'Auto' else IniVal[21] := IntToStr(UpDownThread.Position);
    if ColorForm.CheckBox3.Checked then ColorForm.CheckBox3.Checked := False;
end;

procedure TGUI.Timer_M_1Timer(Sender: TObject);  //start new 2D calculation
begin
    if StartupLoadM3I then
    begin
      Timer_M_1.Enabled := False;
      StartupLoadM3I := False;
      LoadFullM3I(MHeader, ParamStr(1));
    end else begin
      if MCalcThreadStats.iProcessingType > 0 then
        MCalcStop := True
      else
      begin
        Timer_M_1.Enabled  := False;
        MHeader.bCalc3D := 0;
        bImageText      := False;
        btnCalc3D.Caption := 'Stop';
        CalcMand(True);
      end;
    end;
end;

procedure TGUI.SBsaveJPEGClick(Sender: TObject);
//var s: String;
begin
    if SaveDialog_M_4.Execute then
    begin
  //    s := ExtractFileDir(SaveDialog_M_4.FileName);
      SaveImageO(1, SaveDialog_M_4.FileName);
      SetSaveDialogNames(SaveDialog_M_4.FileName);
 //     if s <> '' then SaveDialog_M_4.InitialDir := s;
    end;
end;

procedure TGUI.getI1BMPSLs;
begin
    I1BMPstartSL := Integer(Image_M_1.Picture.Bitmap.ScanLine[0]);
    I1BMPoffset  := Integer(Image_M_1.Picture.Bitmap.ScanLine[1]) - I1BMPstartSL;
end;

procedure TGUI.RepaintMAIN(bStartTimer: LongBool);
var x, y, ThreadCount, Crop: Integer;
    ppThread: array of TPaintThread;
    PaintParameter: TPaintParameter;
    d: Double;
    TileSize: TPoint;
    TilingRect: TRect;
begin
    if SizeOK(False) then
    begin
      Inc(RepaintCounter);
      WaitForPaintStop(5);
      isRepainting := True;
      RepaintYact  := 0;
      if (AnimationForm.AniOption <= 0) then
      begin
        GUI.PutLightFInHeader(MHeader);{LIGHT}
        MakeLightValsFromHeaderLight(@MHeader, @HeaderLightVals, 1, MHeader.bStereoMode);
      end;
      SetImageSize;
      ThreadCount := Max(1, Min(GetTileSize(@MHeader).Y, Min(16, UpDownThread.Position)));
      SetLength(ppThread, ThreadCount);
      CalcStepWidth(@MHeader);
      with PaintParameter do
      begin
        PaintVGrads := NormaliseMatrixTo(MHeader.dStepWidth, @MHeader.hVGrads);
        ppWidth  := MHeader.Width;
        ppHeight := MHeader.Height;
        ppYinc   := ThreadCount;
        PLVals   := @HeaderLightVals;
        pVgrads  := @PaintVGrads;
        sFOVy    := MHeader.dFOVy * Pid180;
        ppXOff   := CalcXoff(@MHeader);
        ppPlanarOptic := MHeader.bPlanarOptic and 3;
        if ppPlanarOptic = 2 then sFOVy := Pi;
        d := Min(1.5, Max(0.01, sFOVy * 0.5));
        ppPlOpticZ := Cos(d) * d / Sin(d);
        CalcPPZvals(MHeader, Zcorr, ZcMul, ZZstmitDif);
        StepWidth := MHeader.dStepWidth;
        ppLocalCounter := RepaintCounter;
        pPsiLight := @siLight5[0];
        if MHeader.TilingOptions <> 0 then
        begin
          TileSize := GetTileSize(@MHeader);
          ppPaintWidth := TileSize.X;  //TilingForm.brTileW;
          ppPaintHeight := TileSize.Y; //TilingForm.brTileH;
          GetTilingInfosFromHeader(@MHeader, TilingRect, Crop);
          ppXplus := TilingRect.Left;
          ppYplus := TilingRect.Top;
        end else begin
          ppPaintWidth := ppWidth;
          ppPaintHeight := ppHeight;
          ppXplus := 0;
          ppYplus := 0;
        end;
        ppPLoffset := ppPaintWidth * SizeOf(TsiLight5);
        ppMessageHwnd := Self.Handle;
      end;
      for x := 0 to ThreadCount - 1 do
      begin
        RepYact[x] := 0;
        PaintParameter.ppYstart   := x;
        PaintParameter.ppThreadID := x;
        try
          ppThread[x]                 := TPaintThread.Create(True);
          ppThread[x].FreeOnTerminate := True;
          ppThread[x].PaintParameter  := PaintParameter;
          ppThread[x].Priority        := cTPrio[Min(3, ComboBoxThread.ItemIndex + 1)];
          Inc(RepaintCounts[x]);// := 1;
        except
          ThreadCount := x;
          for y := 0 to ThreadCount - 1 do
            ppThread[y].PaintParameter.ppYinc := ThreadCount;
          Break;
        end;
      end;
      RepYThreads := ThreadCount;
      iActivePaintThreads := ThreadCount;
      for x := 0 to ThreadCount - 1 do ppThread[x].Start;
      Timer_M_8.Interval := 100;
      if bStartTimer then Timer_M_8.Enabled := True;
//   mCalcThreadStats.cCalcTime := GetTickCount; //test
    end;
end;
 //     if RepaintCounts[y] > 0 then Inc(c);
   //   if RepYact[y] < ymin then ymin := RepYact[y];

procedure TGUI.Timer_M_3Timer(Sender: TObject);
begin
    if not isRepainting then
    begin
      Timer_M_3.Enabled := False;
      RepaintMAIN(True);
    end;
end;

procedure TGUI.CalcStatistic;
var i, iMa: Integer;
    dS, dI, dSC, dIC: Double;
begin
    dS  := 0;
    dI  := 0;
    dSC := 0;
    dIC := 0;
    iMa := 0;
    for i := 1 to MCalcThreadStats.iTotalThreadCount do
    with MCalcThreadStats.CTrecords[i] do
    begin
      dS  := dS + i64DEsteps;
      dI  := dI + i64Its;
      dSC := dSC + iDEAvrCount;
      dIC := dIC + iItAvrCount;
      if MaxIts > iMa then iMa := MaxIts;
    end;
    with MHeader do
    begin
      if dSC > 0 then iAvrgDEsteps := Round(dS * 10 / dSC)
                 else iAvrgDEsteps := 0;
      if dIC > 0 then iAvrgIts := Round(dI * 10 / dIC)
                 else iAvrgIts := 0;
      iMaxIts := iMa;
      if iAvrgDEsteps = 0 then Label_M_31.Caption := '?' else
      Label_M_31.Caption := IntToStr(iAvrgDEsteps div 10) + '.' + IntToStr(iAvrgDEsteps mod 10);
      Label_M_32.Caption := IntToStr(iAvrgIts div 10) + '.' + IntToStr(iAvrgIts mod 10);
      Label_M_40.Caption := IntToStr(iMa);
      Label_M_52.Caption := IntToTimeStr(iCalcTime);
    end;
end;

procedure TGUI.WaitForPaintStop(maxSeconds: Integer);
var i, c, y: Integer;
begin
    i := maxSeconds * 50;
    repeat
      c := 0;
      for y := 0 to RepYThreads - 1 do if RepaintCounts[y] > 0 then Inc(c);
      if c > 0 then Sleep(20);
      Dec(i);
    until (c = 0) or (i = 0);
end;

procedure TGUI.RepaintMAINnoThread;
begin
    Screen.Cursor := crHourGlass;
    try
      Inc(RepaintCounter);
      Application.ProcessMessages;
      WaitForPaintStop(3);
      RepaintMAIN(False);
      WaitForPaintStop(40);
    finally
      Screen.Cursor := crDefault;
      isRepainting := False;
    end;
end;

procedure TGUI.DoSaveAniImage;
var s, sa, si: String;
begin
    SaveAniImage := False;  //do the correct scaling...
    if ImageScale <> AnimationForm.AniScale then
      UpdateAndScaleImageFull(AnimationForm.AniScale);
    Image_M_1.Repaint;
    si := IntToStrL(AnimationForm.AniFileIndex, 6);
    if AnimationForm.AniStereoMode then
    begin
      if AnimationForm.AniRightImage then sa := AnimationForm.AniProjectName + 'Right'
                                     else sa := AnimationForm.AniProjectName + 'Left';
    end
    else sa := AnimationForm.AniProjectName;
    s := AnimationForm.AniOutputFolder + sa + si;
    if Assigned(AnimationForm.AniOutFile) then
    begin
      case AnimationForm.AniOutputFormat of
        0:  SaveBMP2FStream(s, Image_M_1.Picture.Bitmap, pf24bit, AnimationForm.AniOutFile);
        1:  SavePNG2FStream(s, Image_M_1.Picture.Bitmap, AnimationForm.AniOutFile);
        2:  SaveJPEGfromBMP2FStream(s, Image_M_1.Picture.Bitmap, StrToIntTrim(Edit_M_26.Text), AnimationForm.AniOutFile);
      end;
      AnimationForm.CloseOutPutStream;
    end else
    case AnimationForm.AniOutputFormat of
      0:  SaveBMP(s, Image_M_1.Picture.Bitmap, pf24bit);
      1:  SavePNG(s, Image_M_1.Picture.Bitmap, CheckBox_M_13.Checked);
      2:  SaveJPEGfromBMP(s, Image_M_1.Picture.Bitmap, StrToIntTrim(Edit_M_26.Text));
    end;
    if AnimationForm.CheckBox7.Checked then
    begin
      s := AnimationForm.AniOutputFolder + 'ZBuf ' + sa + si;
      SaveZBuf(s, 0);
    end;
    AnimationForm.NextSubFrame;
end;

procedure TGUI.DoSaveTileImage;
var s: String;
begin
    SaveTileImage := False;    //do the correct scaling...
    if ImageScale <> TilingForm.BigRenderData.brDownScale then
      UpdateAndScaleImageFull(TilingForm.BigRenderData.brDownScale);
    Image_M_1.Repaint;
    with TilingForm do
    begin
      s := SaveDirectory + ProjectName + MakeFilePointIndizes(brActTile, 2, BigRenderData);
      if not SysUtils.DirectoryExists(SaveDirectory) then
        if not CreateDir(SaveDirectory) then
          ShowMessage('The directory:' + #13#10 + SaveDirectory + #13#10 + 'could not be created!');

      GUI.Label_M_23.Caption := Label_M_23.Caption; //sharpness
      SaveImageO(BigRenderData.brOutputType, s);

      if BigRenderData.brSaveM3I then SaveM3I(s, CheckBox_M_16.Checked);

      if BigRenderData.brSaveZBuf then
      begin
        s := SaveDirectory + 'ZBuf ' + ProjectName + MakeFilePointIndizes(brActTile, 2, BigRenderData);
        SaveZBuf(s, 0);
      end;
      NextTile;
    end;
end;

procedure TGUI.Timer_M_4Timer(Sender: TObject);   // proof if threads are still calculating
var x, y, z, ymin, c, yoff, yimi: Integer;
    yy, xx, ymax: Double;
    s: String;
    DoFrec: TDoFrec;
begin
    ymin := 999999;
    c    := 0;
    yy   := 0;
    with MCalcThreadStats do
    begin
      ymax := (ctCalcRect.Bottom - ctCalcRect.Top + 1) / iTotalThreadCount;
      xx := 1 / Max(1, ctCalcRect.Right - ctCalcRect.Left + 1);
      yimi := 0;
      for y := 1 to iTotalThreadCount do
      with CTrecords[y] do
      begin
        if iActualYpos < ymin then
        begin
          ymin := iActualYpos;
          yimi := y;
        end;
        if isActive > 0 then
        begin
          Inc(c);
          yy := yy + MinCD(ymax, Max(0, iActualYpos - ctCalcRect.Top - y + 1) / iTotalThreadCount +
                                 Max(0, iActualXpos - ctCalcRect.Left) * xx);
        end
        else yy := yy + ymax;
      end;
    end;
    yoff := MCalcThreadStats.ctCalcRect.Top;   //HS:3  AO:4
    if (MCalcThreadStats.iProcessingType in [1, 3, 4]) and (ymin > CalcYact) and             //DEAO
       ((MCalcThreadStats.iProcessingType in [1, 3]) or ((MHeader.bCalcAmbShadowAutomatic and 12) = 12)) then
    begin
      if CalcYact < 0 then CalcYact := 0;
      if ymin >= MHeader.Height then ymin := MHeader.Height - 1;
      if c = 0 then
      begin
        PaintRowsNoThread(CalcYact - yoff, ymin - yoff);   //worst case: still one PaintRows Thread active.. can lead to failures
        x := 600;
        while (ActivePRThreads > 0) and (x > 0) do
        begin
          Dec(x);
          Sleep(50);
        end;
      end          //<0
      else with MCalcThreadStats do
      begin
        PaintRows(CalcYact - yoff, ymin - yoff);
         //new test: give slowest thread a higher priority
        if (iTotalThreadCount > 1) and (yimi > 0) and (HandleType = 1) and (TBoostChanged or not CheckBox_M_14.Checked) then
        try
          for y := 1 to iTotalThreadCount do  //  [0..4] of TTHreadPriority = (tpIdle, tpLowest, tpLower, tpNormal, tpHigher);
          if CTrecords[y].isActive > 0 then
          begin
            if (y = yimi) and not CheckBox_M_14.Checked then
              TThread(CThandles[y]).Priority := ByteToThreadPrio(ComboBoxThread.ItemIndex + 1)
            else TThread(CThandles[y]).Priority := ByteToThreadPrio(ComboBoxThread.ItemIndex);
          end;
          TBoostChanged := False;
        except
        end;
      end;
    end
    else if (MCalcThreadStats.iProcessingType in [6, 10]) and (ymin > CalcYact) then
    begin
      if CalcYact < yoff then CalcYact := yoff;
      if ymin >= MHeader.Height then ymin := MHeader.Height - 1; //not in tiling
      UpdateScaledImage((CalcYact - yoff) div ImageScale, (ymin - yoff) div ImageScale);
    end;
    CalcYact := ymin;
    if MCalcThreadStats.iProcessingType in [1, 3, 4, 6, 10] then
    begin
      ProgressBar1.Position := (ProgressBar1.Max * Max(0, (ymin - MCalcThreadStats.ctCalcRect.Top))) div
        Max(1, MCalcThreadStats.ctCalcRect.Bottom - MCalcThreadStats.ctCalcRect.Top);
      if (MCalcThreadStats.iProcessingType in [1, 3, 6, 10]) or (MHeader.bCalcAmbShadowAutomatic and 12 = 12) then
      begin
        y := Max(0, GetTickCount - MCalcThreadStats.cCalcTime);
        if y > 100000 then MButtonsUp;
        xx := y / MSecsPerDay;
        Label_M_1.Caption := dDateTimeToStr(xx);
        if y > 2000 then
        begin
          yy := MaxCD(0.0001, yy);
          Label_M_19.Caption := 'togo: ' +  dDateTimeToStr(xx * (ymax * MCalcThreadStats.iTotalThreadCount - yy) / yy *
                                           (MCalcThreadStats.iTotalThreadCount / Max(c, 1)));
        end;
      end
      else if MCalcThreadStats.iProcessingType = 4 then
        y := Max(0, GetTickCount - MCalcThreadStats.cCalcTime);
    end;

    if c = 0 then
    begin
      if not isRepainting then CloseTries := 0;
      Timer_M_4.Enabled := False;
      c := MCalcThreadStats.iProcessingType;
      MCalcThreadStats.iProcessingType := 0;
      if MCalcStop or not (c in [1, 6]) then MCalcThreadStats.iTotalThreadCount := 0;
      Label_M_19.Caption := '';
      Label_M_6.Caption := '';
      Label_M_1.Caption := '';
      ProgressBar1.Visible := False;
      if not MCalcStop then
      begin          //Postprocessings of single procs
        case c of    //0: not calculating, 1: main calculation, 2: hard shadow postcalc, 3: NsOnZBuf, 4: AO, 5: free, 6: Reflections, 7: DOF
      1, 10:  begin
                MHeader.iCalcTime := Round(y * 0.01);
                if MHeader.bCalc3D > 0 then CalcStatistic;
                MCalcThreadStats.iTotalThreadCount := 0;
                if (AnimationForm.AniOption <= 0) and (c = 1) then GUI.MakeHisto;{LIGHT}
              end;
          3:  begin //HS
                MHeader.iCalcHStime := Round(y * 0.01);
                Label_M_8.Caption := IntToTimeStr(MHeader.iCalcHStime);
                for z := 0 to 5 do
                  HeaderLightVals.iHScalced[HeaderLightVals.SortTab[z]] :=
                    (MHeader.bHScalculated shr (z + 2)) and 1;
              end;
          4:  begin //AO
                MHeader.iAmbCalcTime := Round(y * 0.01);
                Label_M_48.Caption := IntToTimeStr(MHeader.iAmbCalcTime);
                if (MHeader.bCalcAmbShadowAutomatic and 12) = 8 then
                  if SSAORiteration < MHeader.SSAORcount then c := 3;
              end;
          6:  begin //Reflects
                MHeader.iReflectsCalcTime := Round(y * 0.01);
                Label_M_50.Caption := IntToTimeStr(MHeader.iReflectsCalcTime);
              end;
        end;

        x := 1 shl c;
        while (x < 256) and ((MCalcThreadStats.iAllProcessingOptions and x) = 0) do x := x shl 1;
      //  if (x = 64) and (BatchStatus > 0) then x := 0;

        if (MCalcThreadStats.iAllProcessingOptions and x) > 0 then
        begin              //next processing step
          case x of        // 2: NsOnZBuf, 4: hard shadow postcalc, 8: AO, 16: free, 32: Reflections, 64: DOF
            2:  begin
                  Screen.Cursor := crHourGlass;
                  Label_M_6.Caption := 'Normals on ZBuf';  //before HS!
                  try
                    NormalsOnZbuf(@MHeader, @siLight5[0]);
                  finally
                    Screen.Cursor := crDefault;
                  end;
                  MCalcThreadStats.iProcessingType := 2;
                  Timer_M_4.Enabled := True;
                end;
            4:  CalcHardShadow;
            8:  CalcAmbShadow;
       //    16:
           32:  begin //reflections
                  ProgressBar1.Max := MHeader.Height;
                  ProgressBar1.Position := 0;
                  ProgressBar1.Visible := True;
                  Label_M_6.Caption := 'Reflections';
                  RepaintMAINnoThread;
                  MCalcThreadStats.iProcessingType := 6;
                  UpdateScaledImageFull;
                  if CalcSRT(@MHeader, @HeaderLightVals, @MCalcThreadStats,
                             @siLight5[0], mFSIstart, mFSIoffset, GetCalcRect) then
                  begin
                    iActiveThreads       := MCalcThreadStats.iTotalThreadCount;
                    CalcYact             := -1;
                    ProgressBar1.Visible := True;
                    Timer_M_4.Interval := 1000;
                    Timer_M_4.Enabled := True;
                  end;
                end;
           64:  begin
                  ProgressBar1.Max := MHeader.Height;
                  ProgressBar1.Position := 0;
                  ProgressBar1.Visible := True;
                  if (MCalcThreadStats.iAllProcessingOptions and 32) = 0 then
                    RepaintMAINnoThread
                  else UpdateScaledImageFull;
                  DoFrec.SL := @siLight5[0];
                  DoFrec.colSL := @fullSizeImage[0];
                  DoFrec.MHeader := @MHeader;
                  DoFrec.SLoffset := MHeader.Width * 4;
                  DoFrec.Verbose := True;
                  z := (MHeader.bCalcDOFtype shr 1) and 3;
                  for y := 0 to z do
                  if not MCalcStop then
                  begin
                    DoFrec.pass := y;
                    if z > 0 then
                      Label_M_6.Caption := 'DoF calculation pass ' + IntToStr(y + 1) + ' of ' + IntToStr(z + 1)
                    else Label_M_6.Caption := 'DoF calculation';
                    if ((MHeader.bCalcDOFtype shr 3) and 1) = 1 then
                      doDOF(DoFrec)
                    else
                      doDOFsort(DoFrec);
                  end;
                  ProgressBar1.Visible := False;
                  MCalcThreadStats.iAllProcessingOptions := 0;
                end;
          end;
        end;
        if (MCalcThreadStats.iAllProcessingOptions and x) = 0 then
        begin
          if AnimationForm.AniOption > 0 then
          begin
            if MCalcThreadStats.iAllProcessingOptions = 0 then  // for all last processings where no repaint has to occur
              DoSaveAniImage
            else
            begin
              if c > 5 then //SR
              begin
                UpdateScaledImageFull;
                DoSaveAniImage;
              end
              else
              begin
                SaveAniImage := True;
                RepaintMAIN(True);
              end;
            end;
          end
          else if SaveM3IfileAuto then
          begin
            SaveM3I(SaveAutoM3Ifilename, True);
            EnableButtons;
          end
          else if BatchStatus > 0 then
          begin
            if BatchForm1.CheckBox2.Checked then s := IncludeTrailingPathDelimiter(IniDirs[0]) +
              ExtractFileName(BatchForm1.ListView1.Items[BatchForm1.CurrentListIndex].Caption)
            else s := BatchForm1.ListView1.Items[BatchForm1.CurrentListIndex].Caption;
            SaveM3I(s, True);
            BatchForm1.NextFile;
          end
          else if TilingForm.SaveThisTile and (MHeader.TilingOptions <> 0) then  //with TilingForm
          begin
            if MCalcThreadStats.iAllProcessingOptions = 0 then  // for all last processings where no repaint has to occur
              DoSaveTileImage
            else
            begin
              if c > 5 then //SR
              begin
                UpdateScaledImageFull;
                DoSaveTileImage;
              end
              else
              begin
                SaveTileImage := True;
                RepaintMAIN(True);
              end;
            end;
          end
          else
          begin
            if PPFormCreated and PostProForm.CheckBox_P_25.Checked then  //calcSR rect   access violation, not created on startup?
            begin
              PostProForm.Button_P_15.Enabled := True;
              Image_M_1.Cursor := crCross;
            end
            else EnableButtons;
            if (c = 4) and ((MCalcThreadStats.iAllProcessingOptions and $FFF0) = 0) and
               (MCalcThreadStats.iAllProcessingOptions <> 0) then  //calcambsh only if no more calcs... or repaint seperate also in this function
              RepaintMAIN(True)
            else if (c < 4) and ((MCalcThreadStats.iAllProcessingOptions and $FFFC) = 0) then
               RepaintMAIN(True)
            else if c > 4 then
              UpdateScaledImageFull;
          end;
        end;
        if (AnimationForm.AniOption <= 0) and (c = 4) then
          for x := 1 to 9 do SetLength(ATrousWL[x], 0);
      end
      else
      begin
        EnableButtons;
        UpdateScaledImageFull;
        if c = 4 then for x := 1 to 9 do SetLength(ATrousWL[x], 0);
        if BatchStatus > 0 then
        begin
          BatchStatus := -1;
          BatchForm1.NextFile;
        end;
      end;
    end;
end;

procedure TGUI.Timer_M_5Timer(Sender: TObject);
begin  //only on start check if all forms are made then start app
    //if LAFormCreated then
    begin
      Timer_M_5.Enabled := False;
      FirstShowUpdate;
      //GUILight.Visible := True;{LIGHT}
      //GUIFormula.Visible := True;{FORMULA}
      LoadStartupParas;
    end;
end;

procedure TGUI.Timer_M_6Timer(Sender: TObject);
begin
    if not isRepainting then
    begin
      Inc(RepaintCounter);
      Timer_M_6.Enabled := False;
      PaintRect(DrawRect);
    end;
end;

procedure TGUI.Button_M_4Click(Sender: TObject);  // save parameter
var f: file;
begin
    if SaveDialog_M_2.Execute then
    begin
      MakeHeader;
      AssignFile(f, ChangeFileExtSave(SaveDialog_M_2.FileName, '.m3p'));
      Rewrite(f, 1);
      InsertAuthorsToPara(@MHeader, Authors);
      try
        BlockWrite(f, MHeader, SizeOf(MHeader));
      finally
        IniMHeader; //to get pointers back
      end;
      HAddon.bHCAversion := 16;
      BlockWrite(f, HAddon, SizeOf(THeaderCustomAddon));
      CloseFile(f);
      SetSaveDialogNames(SaveDialog_M_2.FileName);
    end;
end;

procedure TGUI.Button_M_5Click(Sender: TObject);  // open parameter
begin
    PageCtrls.ActivePage := TabImage;
    if OpenDialog_M_1.Execute and LoadParameter(MHeader, OpenDialog_M_1.FileName, True) then
    begin
      AllPresetsUp;
      OutMessage('Parameters loaded, press "Calculate 3D" to render.');
      ClearScreen;
      SetSaveDialogNames(OpenDialog_M_1.FileName);
    end;
end;

procedure TGUI.Button_M_7Click(Sender: TObject);
var x, y, z: Double;
 //   Q: TQuaternion;
begin
    //apply euler angles to image -> make rotation matrix from euler
    x := StrToFloatK(Edit_M_27.Text) * Pid180;
    y := StrToFloatK(Edit_M_31.Text) * Pid180;
    z := StrToFloatK(Edit_M_32.Text) * Pid180;
   { Q := EulerToQuat(x, y, z);
    CreateMatrixFromQuat(MHeader.hVGrads, Q);  }

    BuildRotMatrix(x, y, z, @MHeader.hVGrads);
    NormVGrads(@MHeader);
    //Test to see new angles
    SetEulerEditsFromHeader;
    ParasChanged;
end;

procedure TGUI.MButtonsUp;
begin
    SpeedButton_M_1.Down := False;
    SpeedButton_M_2.Down := False;
    SpeedButton_M_4.Down := False;
    notAllButtonsUp   := False;
end;

procedure TGUI.SetImageCursor;
begin
    if (iGetPosFromImage > 0) or (PPFormCreated and
       (PostProForm.CheckBox_P_25.Checked or PostProForm.CheckBox_P_21.Checked)) then Image_M_1.Cursor := crCross
    else if SpeedButton_M_2.Down then Image_M_1.Cursor := crHandPoint
    else Image_M_1.Cursor := crDefault;
end;

procedure TGUI.SpeedButton_M_1Click(Sender: TObject);
begin
    if Image_M_1.Cursor <> crHourGlass then SetImageCursor;
    notAllButtonsUp := SpeedButton_M_1.Down or SpeedButton_M_2.Down or SpeedButton_M_4.Down;
end;

procedure TGUI.Image_M_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var vec4: TVec4D;
    v: TVec3D;
    i: Integer;
begin
    if not (Image_M_1.Cursor = crHourGlass) then
    begin
      GetCursorPos(MStartPos);
      MOrigStartPos := Point(X, Y);
      MmaxShapeWid  := 0;
      MZtranslate   := 0;
      if Image_M_1.Cursor = crHandPoint then
      begin
        Shape_M_1.SetBounds(Image_M_1.Left, Image_M_1.Top, Image_M_1.Width, Image_M_1.Height);
        if (ssLeft in Shift) then Shape_M_1.Visible := True;
      end
      else if (Image_M_1.Cursor = crCross) and (ssLeft in Shift) then
      begin
        if PostProForm.CheckBox_P_21.Checked or PostProForm.CheckBox_P_25.Checked then  //reflections preview
        begin
          MXYStartPos := Point(X, Y);
          PostProForm.iRect := Rect(X * ImageScale, Y * ImageScale, X * ImageScale, Y * ImageScale);
          Shape_M_1.SetBounds(X + Image_M_1.Left, Y + Image_M_1.Top, 0, 0);
          Shape_M_1.Visible := True;
        end
        else if iGetPosFromImage > 0 then  //if ssRight in Shift then popupmenu1.popup(x,y);
        begin
          if iGetPosFromImage in [1, 10] then       //DOF Zsharp
          begin
            CalcStepWidth(@MHeader);
            if iGetPosFromImage = 1 then
            begin
              if SizeOK(False) then PostProForm.Edit_P_1.Text :=
                FloatToStrSingle(GetZPos(X * ImageScale, Y * ImageScale,
                @MHeader, @siLight5[0]) / (MHeader.dStepWidth * MHeader.Width));
                PostProForm.Button_P_2.Caption := 'Get Z1';
            end else begin
              if SizeOK(False) then PostProForm.Edit_P_10.Text :=
                FloatToStrSingle(GetZPos(X * ImageScale, Y * ImageScale,
                @MHeader, @siLight5[0]) / (MHeader.dStepWidth * MHeader.Width));
                PostProForm.Button_P_18.Caption := 'Get Z2';
            end;
          end
          else if iGetPosFromImage = 2 then  //posLight midpoint
          begin
            i := GUI.TabControl_L_1.TabIndex;{LIGHT}
            GUI.ButtonGetPos.Caption := 'mid';{LIGHT}
            CalcRealPosOffsetsFromImagePos(X * ImageScale, Y * ImageScale, @MHeader, @siLight5[0], @v);
            v := AddVecF(v, GetRealMidPos(@MHeader));
            GUI.LAposMids[i] := TPos3D(v);{LIGHT}
            SetLightPosFromDVec(GUI.LAtmpLight.Lights[i], v);{LIGHT}
            GUI.TrackBarExXposChange(GUI.TrackBarExXpos);{LIGHT}
          end
          else if iGetPosFromImage in [3, 6, 22] then  //Julia Vals, cutting vals, get midpoint
          begin
            CalcRealPosOffsetsFromImagePos(X * ImageScale, Y * ImageScale, @MHeader, @siLight5[0], @vec4);
            vec4[3] := 0;
            AddVec(@vec4, GetRealMidPos(@MHeader));
            case iGetPosFromImage of
         3: begin
              Rotate4Dvec(vec4);
              Edit_M_28.Text := FloatToStr(vec4[0]);
              Edit_M_29.Text := FloatToStr(vec4[1]);
              Edit_M_30.Text := FloatToStr(vec4[2]);
              Edit_M_7.Text := FloatToStr(vec4[3]);
              CheckBox_M_7.Checked := True;
              Button_M_16.Caption := 'Get values from image';
            end;
        22: begin
              v[0] := MHeader.dZmid - MHeader.dZstart;
              v[1] := MHeader.dZend - MHeader.dZmid;
              Edit_M_1.Text := FloatToStr(vec4[2] - v[0]);  //zstart
              Edit_M_17.Text := FloatToStr(vec4[2]); //zmid
              Edit_M_3.Text := FloatToStr(vec4[2] + v[1]);  //zend
              Edit_M_9.Text := FloatToStr(vec4[0]);  //xmid
              Edit_M_10.Text := FloatToStr(vec4[1]); //ymid
              // rotate view + mod zstart to get the same camera pos?
              SpeedButton_M_30.Caption := 'get midpoint';
            end;
         6: begin
              Edit_M_23.Text := FloatToStr(vec4[0]);   //cutting
              Edit_M_24.Text := FloatToStr(vec4[1]);
              Edit_M_22.Text := FloatToStr(vec4[2]);
              CheckBox_M_4.Checked := True;
              CheckBox_M_5.Checked := True;
              CheckBox_M_6.Checked := True;
              Button_M_20.Caption := 'Get values from image';
            end;
            end;
            ParasChanged;
          end
          else if iGetPosFromImage = 4 then  //Stereo Zpoint of Screen, calc min distance, not ready yet
          begin
            if SizeOK(False) then
              vec4[0] := GetZPos(X * ImageScale, Y * ImageScale, @MHeader, @siLight5[0]);  //abs val relative to zstart
//      Edit_M_15.Text := FloatToStrSingle(StereoScreenWidth);
  //    Edit_M_18.Text := FloatToStrSingle(StereoScreenDistance);
         //   MHeader.StereoMinDistance := ;

         //rotation angle of y axis is: dr := FOVx * -0.065 / StereoScreenWidth; //FOVx := dFOVy * Pid180 * Width / Height;

            Edit_M_13.Text := FloatToStrSingle(MHeader.StereoMinDistance);
            Button_M_17.Caption := 'Get min.dist. from image';
          end;
          iGetPosFromImage := 0;
          SetImageCursor;
        end
        else if Shape_M_2.Visible then ModColOnImage(X * ImageScale, Y * ImageScale);
      end;
    end;
end;

procedure TGUI.ModColOnImage(X, Y: Integer);
var ModOTrap, ShapeRect, ColCycling: LongBool;
    sCStart, sCmul, sColZmul, StepWid, DCIplus, st: Single;
    ps, ps2: TPsiLight5;
    ir, irr, ix, iy, wCol, wInOut, maxZdiff, iZ, iZ0, wid, hei: Integer;
    Zcorr, ZcMul, ZZstmitDif, ZZ: Double;
begin
    if not SizeOk(True) then Exit;
    GetPaintTileSizes(@MHeader, wid, hei, ix, iy);
    if (X < 0) or (Y < 0) or (X >= wid) or (Y >= hei) then Exit;
    ir := (Shape_M_2.Width div 2) * ImageScale;  //radius
    ShapeRect := Shape_M_2.Shape = stRectangle;
    if ShapeRect then Dec(ir);
    irr := ir * ir;
    if (not ShapeRect) and (irr < 10) and (irr > 3) then Dec(irr, 2);
    ps := @siLight5[X + Y * wid];
    if ps.Zpos > 32767 then Exit;
    sColZmul := MHeader.Light.VarColZpos * -0.005 / (MHeader.dStepWidth * MHeader.Width);
    CalcPPZvals(MHeader, Zcorr, ZcMul, ZZstmitDif);
    Zcorr := 1 / Zcorr;
    ZcMul := 1 / ZcMul;
    iZ0 := PInteger(@ps.RoughZposFine)^ shr 8;
    ZZ := (Sqr((8388351.5 - iZ0) * ZcMul + 1) - 1) * Zcorr;
    maxZdiff := Round(2 * ir * (1 + ZZ * GetDEstopFactor(@MHeader)) / Abs(ZZ - (Sqr((8388352.5 - iZ0) * ZcMul + 1) - 1) * Zcorr));
    ModOTrap := GUI.CheckBox_L_2.Checked and (DrawInOutside = 0);{LIGHT}
    ColCycling := GUI.CheckBox_L_1.Checked;{LIGHT}
    CalcSCstartAndSCmul(@MHeader, sCStart, sCmul, DrawInOutside = 1);
    sCmul := 1 / sCmul;
    if sCmul < 0 then DCIplus := -1 else DCIplus := 1;
    StepWid := MHeader.dStepWidth;
    if DrawInOutside = 1 then
    begin
      sCStart := sCStart - 32768;
      wInOut := $8000;
    end else wInOut := 0;
    for iy := -ir to ir do if (Y + iy >= 0) and (Y + iy < hei) then
    for ix := -ir to ir do if (X + ix >= 0) and (X + ix < wid) then
    if ShapeRect or (Sqr(iy) + Sqr(ix) < irr) then    //3x3 9   2,0 4  2,1 5  2,2 8
    begin
      ps2 := @siLight5[X + ix + (Y + iy) * wid];
      if ps2.Zpos > 32767 then Continue;
      iZ := PInteger(@ps2.RoughZposFine)^ shr 8;
      ZZ := (Sqr((8388351.5 - iZ) * ZcMul + 1) - 1) * Zcorr;
      if Abs(iZ0 - iZ) <= maxZdiff then
      begin    //DrawColSIndex * 32767 = ((wCol - sCStart) * sCmul + sColZmul * (ZZ * StepWidth + ZZstmitDif)) * 16384) and $7FFF
        wCol := Round(MinMaxCS(-1e9, (DrawColSIndex * 2 - sColZmul * (ZZ * StepWid + ZZstmitDif)) * sCmul + sCStart, 1e9));
        if (wCol < 0) or (wCol > 32767) then
        begin
          if ColCycling then
          begin
            if wCol < 0 then st := DCIplus else st := -DCIplus;
            wCol := Round(MinMaxCS(-1e9, ((DrawColSIndex + st) * 2 - sColZmul * (ZZ * StepWid + ZZstmitDif)) * sCmul + sCStart, 1e9));
            if (wCol < 0) or (wCol > 32767) then Continue;
          end
          else Continue;//sometimes it is clipped dependend on adjustment settings
        end;
        if ModOTrap then
        begin
          ps2.OTrap := wCol;
          ps2.SIgradient := ps2.SIgradient and $7FFF;// or wInOut;
        end
        else ps2.SIgradient := wCol or wInOut;
      end;
    end;
    TriggerRepaintDraw(Rect(X - ir, Y - ir, X + ir, Y + ir));
end;

procedure TGUI.MutaGenBtnClick(Sender: TObject);
begin
  MutaGenFrm.Visible := True;
  BringToFront2(MutaGenFrm.Handle);
  MutaGenFrm.RestartFromMain;
end;

procedure TGUI.Image_M_1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var MAktPos: TPoint;
    ih, iy, sl, sw, st, sh: Integer;
begin
    if (ssLeft in Shift) and (Image_M_1.Cursor <> crHourGlass) and
       (Image_M_1.Cursor <> crCross) and notAllButtonsUp then
    begin
      GetCursorPos(MAktPos);
      if Image_M_1.Cursor = crHandPoint then
        Shape_M_1.SetBounds(MaktPos.X - MStartPos.X + Image_M_1.Left,
              MaktPos.Y - MStartPos.Y + Image_M_1.Top, Image_M_1.Width, Image_M_1.Height)
      else
      begin
        if SpeedButton_M_4.Down then
        begin
          MZtranslate := MStartPos.Y - MaktPos.Y;
          Label_M_20.Caption := IntToStr(-MZtranslate);
        end
        else
        begin
          ih := (Abs(MOrigStartPos.X - X) * Image_M_1.Height) div Image_M_1.Width;
          if Y > MOrigStartPos.Y then iy := 0 else iy := ih;
          Shape_M_1.SetBounds(Min(MOrigStartPos.X, X) + Image_M_1.Left,
                           MOrigStartPos.Y - iy + Image_M_1.Top,
                           Abs(MOrigStartPos.X - X) + 1, ih);
          if Shape_M_1.Width > MmaxShapeWid then MmaxShapeWid := Shape_M_1.Width;
        end;
      end;
      if not SpeedButton_M_4.Down then Shape_M_1.Visible := True;
    end
    else if (Image_M_1.Cursor = crCross) and (ssLeft in Shift) and
      (PostProForm.CheckBox_P_21.Checked or PostProForm.CheckBox_P_25.Checked) and Shape_M_1.Visible then
    begin
      if X > MXYStartPos.X then
      begin
        PostProForm.iRect.Right := X * ImageScale;
        PostProForm.iRect.Left := MXYStartPos.X * ImageScale;
        sl := MXYStartPos.X;
        sw := X - sl + 1;
      end else begin
        PostProForm.iRect.Right := MXYStartPos.X * ImageScale;
        PostProForm.iRect.Left := X * ImageScale;
        sl := X;
        sw := MXYStartPos.X - X + 1;
      end;
      if Y > MXYStartPos.Y then
      begin
        PostProForm.iRect.Bottom := Y * ImageScale;
        PostProForm.iRect.Top := MXYStartPos.Y * ImageScale;
        st := MXYStartPos.Y;
        sh := Y - st + 1;
      end else begin
        PostProForm.iRect.Bottom := MXYStartPos.Y * ImageScale;
        PostProForm.iRect.Top := Y * ImageScale;
        st := Y;
        sh := MXYStartPos.Y - Y + 1;
      end;
      Shape_M_1.SetBounds(sl + Image_M_1.Left, st + Image_M_1.Top, sw, sh);
    end
    else if Shape_M_2.Visible then
    begin
      sh := Shape_M_2.Width div 2;
      Shape_M_2.Left := X - sh + Image_M_1.Left;
      Shape_M_2.Top := Y - sh + Image_M_1.Top;
      if ssLeft in Shift then ModColOnImage(X * ImageScale, Y * ImageScale);
    end;
  {  //test
    CalcRealPosOffsetsFromImagePos(X * ImageScale, Y * ImageScale, @MHeader, @siLight5[0], @Pos3);
    Label_M_19.Caption := FloatToStrSingle(Pos3[0] + MHeader.dXmid) + ',' +
                       FloatToStrSingle(Pos3[1] + MHeader.dYmid) + ',' +
                       FloatToStrSingle(Pos3[2] + MHeader.dZmid); }
end;

procedure TGUI.Image_M_1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var xh, yh, xx, yy, dZ: Double;
    Update: LongBool;
    iLeft, iTop: Integer;
    M: TMatrix3;
begin
    if (Image_M_1.Cursor <> crHourGlass) and (Image_M_1.Cursor <> crCross) and
      notAllButtonsUp then
    with MHeader do
    begin
      if Shape_M_1.Width < 8 then Shape_M_1.Visible := False;
      Update := False;
      iLeft  := Shape_M_1.Left - Image_M_1.Left;
      iTop   := Shape_M_1.Top  - Image_M_1.Top;
      xh     := Image_M_1.Width  * 0.5;
      yh     := Image_M_1.Height * 0.5;
      xx     := 0;
      yy     := 0;
      dZ     := 1;
      if Image_M_1.Cursor = crHandPoint then  //shift image
      begin
        if Button = mbLeft then
        begin
          xx     := - iLeft;
          yy     := - iTop;
          Update := True;
        end;
      end
      else if Shape_M_1.Visible then
      begin
        xx := iLeft + Shape_M_1.Width  * 0.5 - xh;
        yy := iTop  + Shape_M_1.Height * 0.5 - yh;
        Update := True;
      end
      else if MmaxShapeWid < 8 then
      begin
        xx := X - xh;
        yy := Y - yh;
        Update := True;
      end;
      if Update then
      begin
        if SpeedButton_M_4.Down then  // Zpos
        begin
          Label_M_20.Caption := '';
          xx := 0;
          yy := 0;
          Update := MZtranslate <> 0;
        end
        else
        begin
          MZtranslate := 0;
          if Shape_M_1.Visible then  // marking zoom
            dZ := Image_M_1.Width / Shape_M_1.Width
          else                    // click zoom    todo: if clicked pixel has zpos < 32768 do calc new pos on Zpos and FOVy
            if Button = mbLeft then dZ := 1.4      //zoom in
                               else dZ := 1 / 1.4; //zoom out
        end;
        if Update then
        begin
          MakeHeader;

          xx := xx * ImageScale;
          yy := yy * ImageScale;
          MZtranslate := MZtranslate * ImageScale;

          yh := 2.1345 / (dZoom * Width);
          yh := yh * (1 + Sin(dFOVy * Pid180) * (dZmid - dZstart) / (yh * Height));

          M := NormaliseMatrixTo(yh, @hVGrads);
          dXmid := dXmid + xx * M[0, 0] + yy * M[1, 0] - MZtranslate * M[2, 0];
          dYmid := dYmid + xx * M[0, 1] + yy * M[1, 1] - MZtranslate * M[2, 1];
          yh    := xx * M[0, 2] + yy * M[1, 2] - MZtranslate * M[2, 2];
          if Abs(dZ - 1) > 1e-4 then
          begin
            dZoom       := dZoom * dZ;
            Edit_M_5.Text  := FloatToStr(dZoom);
            dZstart     := dZmid + (dZstart - dZmid) / dZ;
            dZend       := dZmid + (dZend - dZmid) / dZ;
          end;
          dZend   := dZend + yh;
          dZmid   := dZmid + yh;
          dZstart := dZstart + yh;
          Edit_M_1.Text  := FloatToStr(dZstart);
          Edit_M_3.Text  := FloatToStr(dZend);
          Edit_M_9.Text  := FloatToStr(dXmid);
          Edit_M_10.Text := FloatToStr(dYmid);
          Edit_M_17.Text := FloatToStr(dZmid);
          SliceCalc   := 2;
          Timer_M_1.Enabled := True;
        end;
      end;
      Shape_M_1.Visible := False;
    end;
end;

procedure TGUI.SaveM3I(FileName: String; bSaveImgBuf: LongBool);
var f: file;
begin
    Screen.Cursor := crHourGlass;
    Application.ProcessMessages;
    try
      MHeader.bImageScale := ImageScale;
      GUI.PutLightFInHeader(MHeader);{LIGHT}
      AssignFile(f, ChangeFileExtSave(FileName, '.m3i'));
      Rewrite(f, 1);
      InsertAuthorsToPara(@MHeader, Authors);
      try
        BlockWrite(f, MHeader, SizeOf(MHeader));
      finally
        IniMHeader;
      end;
      BlockWrite(f, siLight5[0], SizeOf(TsiLight5) * Length(siLight5));
      HAddon.bHCAversion := 16;
      BlockWrite(f, HAddon, SizeOf(THeaderCustomAddon));
      if bSaveImgBuf then
        BlockWrite(f, fullSizeImage[0], Length(fullSizeImage) * SizeOf(Cardinal));
      CloseFile(f);
    finally
      Screen.Cursor := crDefault;
    end;
end;

procedure TGUI.Button_M_8Click(Sender: TObject);  // save full m3i
var TileSize: TPoint;
begin
    TileSize := GetTileSize(@MHeader);    //check imagesize
    if (Length(siLight5) <> TileSize.X * TileSize.Y) and
      (MessageDlg('The Imagesize does not fit to the parameters, store anyways?',
                  mtWarning, [mbYes, mbNo], 0) = mrNo) then Exit;
    if SaveDialog_M_3.Execute then
    begin
      SaveM3I(SaveDialog_M_3.FileName, CheckBox_M_16.Checked);
      SetSaveDialogNames(SaveDialog_M_3.FileName);
    end;
end;

procedure TGUI.Button_M_9Click(Sender: TObject);  // open full m3i
begin
    PageCtrls.ActivePage := TabImage;
    if OPD.Execute then
    begin
      Timer_M_1.Enabled := False;
      LoadFullM3I(MHeader, OPD.FileName);
      AllPresetsUp;
      SetSaveDialogNames(OPD.FileName);
    end;
end;

procedure TGUI.ButtonAuthorClick(Sender: TObject);
var s: String;
begin
    s := Copy(InputBox('Authorname', 'Maximum 16 characters!', IniVal[33]), 1, 16);
    if not CheckAuthorValid(s) then
    begin
      ShowMessage('This name is not valid, max 16 characters and not to much uncommon characters.');
      Exit;
    end
    else IniVal[33] := s;
end;

procedure TGUI.ButtonInsertAuthorClick(Sender: TObject);
begin
    if IniVal[33] = '' then Exit;
    if (Edit_M_33.Text = '') then Edit_M_33.Text := IniVal[33] else
    if (Edit_M_33.Text <> IniVal[33]) then Edit_M_34.Text := IniVal[33];
end;

procedure TGUI.ButtonR0Click(Sender: TObject);
begin
    BuildRotMatrix(0, 0, 0, @MHeader.hVGrads);
    NormVGrads(@MHeader);
    SetEulerEditsFromHeader;
    ParasChanged;
end;

procedure TGUI.ButtonVolLightClick(Sender: TObject);
begin
    if ButtonVolLight.Caption = 'Dyn. fog on It.:' then
      MHeader.bVolLightNr := 1 or (2 shl 4)
    else MHeader.bVolLightNr := 2 shl 4;
    SetEdit_M_16Text;
end;

procedure TGUI.PageControl_M_1Change(Sender: TObject);
var i: Integer;
begin
    if CheckBox_M_7.Checked then TabSheet_M_9.Caption := 'Julia On'
                         else TabSheet_M_9.Caption := 'Julia Off';
    if CheckBox_M_4.Checked or CheckBox_M_5.Checked or CheckBox_M_6.Checked then
      TabSheet_M_8.Caption := 'Cutting*'
    else TabSheet_M_8.Caption := 'Cutting';
    i := 0;
    case PageControl_M_1.ActivePageIndex of
      0: i := CheckBox_M_2.Top + CheckBox_M_2.Height + 2 - TabSheet_M_2.Height; //calculations
      6: i := Edit_M_16.Top + Edit_M_16.Height + 2 - TabSheet_M_3.Height;       //coloring
      7: i := Button_M_12.Top + Button_M_12.Height + 2 - TabSheet_M_6.Height;   //stereo
    end;
    if i > 0 then PageControl_M_1.Height := PageControl_M_1.Height + i;
end;

procedure TGUI.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    if ((MCalcThreadStats.iProcessingType > 0) and Timer_M_4.Enabled and
       ((GetTickCount - CalcStart) > 900000)) or
       (MCForm.Button2.Caption = 'Stop rendering') then
    begin
      if MessageDlg('Do you really want to stop the calculations?', mtWarning,
                    [mbYes, mbNo], 0) = mrNo then
      begin
        CanClose := False;
        Exit;
      end;
    end;
    Inc(RepaintCounter);
    Inc(NglobalCounter);
    MCalcStop := True;
    MCForm.MCCalcStop := True;
    CanClose  := not ((MCalcThreadStats.iProcessingType > 0) or isRepainting or
                     (GUI.isCalculatingN)); {NAVI}
    Inc(CloseTries);
    if CloseTries > 3 then CanClose := True;// else
   // if CloseTries = 2 then StopCalcThreads(MCalcThreadStats);
    if not CanClose then OutMessage('Stopping calculations...(' + IntToStr(CloseTries) + ')');
    AnimationForm.CloseOutPutStream;
end;

procedure TGUI.Image2_M_2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    GetCursorPos(MStartPos);
end;

procedure TGUI.Image2_M_2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var Mpos: TPoint;
    newWidth, newHeight: Integer;
begin
    if ssLeft in Shift then
    begin
      newWidth  := Width;
      newHeight := Height;
      GetCursorPos(Mpos);
      if Width + Mpos.x - MStartPos.X >= Constraints.MinWidth then
      begin
        newWidth    := Width + Mpos.x - MStartPos.X;
        MStartPos.X := Mpos.X;
      end;
      if Height + Mpos.y - MStartPos.y >= Constraints.MinHeight then
      begin
        newHeight   := Height + Mpos.Y - MStartPos.Y;
        MStartPos.Y := Mpos.Y;
      end;
      if (Width <> newWidth) or (Height <> newHeight) then
        SetBounds(Left, Top, newWidth, newHeight);
    end;
end;

procedure TGUI.SetM3Dini;
var i, j, l, w: Integer;
begin
    j := StrToIntTrim(IniVal[0]);
    FormsSticky[1] := j and 3;
    bAniFormStick := (j shr 2) and 3;
    FormsSticky[0] := (j shr 4) and 3;
    FormsSticky[2] := (j shr 6) and 3;
    Edit_M_4.Text := IniVal[1];
    i := Pos(':', IniVal[11]);  //user aspect
    if i > 0 then
    try
      j := StrToIntTrim(Copy(IniVal[11], i + 1, Length(IniVal[11]) - i));
      if j > 0 then
      begin
        UserAspect.Y := j;
        UserAspect.X := StrToIntTrim(Copy(IniVal[11], 1, i - 1));
      end;
    except
    end;
    CheckBox_M_13.Checked := IniVal[23] <> 'No';
    CheckBox_M_14.Checked := IniVal[30] <> 'No';
    CheckBox_M_15.Checked := IniVal[29] <> '-1';
    CheckBox_M_16.Checked := IniVal[31] = 'Yes';
    if CheckBox_M_15.Checked then ComboBoxThread.ItemIndex := StrToIntTry(IniVal[29], 2);
    if IniVal[24] <> '' then
    begin  //set pos+size
      l := StrToIntTry(StrFirstWord(IniVal[24]), 65);
      j := StrToIntTry(StrLastWord(IniVal[24]), 100);
      w := StrToIntTry(StrFirstWord(IniVal[25]), 779);
      i := StrToIntTry(StrLastWord(IniVal[25]), 671);
      SetBounds(l, j, w, i);
    end;
    if TryStrToInt(IniVal[13], i) then Label_M_23.Caption := IntToStr(i);
    if TryStrToInt(IniVal[15], i) then if i = 0 then CheckBox_M_11.Checked := False;
    if IniVal[21] <> 'Auto' then // detect corecount
    begin
      CheckBox_M_12.Checked := False;
      UpDownThread.Position := Min(64, Max(1, StrToIntTry(IniVal[21], UpDownThread.Position)));
    end;
    OPD.InitialDir := IniDirs[0];
    SaveDialog_M_3.InitialDir := IniDirs[0];
    OpenDialog_M_1.InitialDir := IniDirs[1];
    SaveDialog_M_2.InitialDir := IniDirs[1];
    SaveDialog_M_4.InitialDir := IniDirs[2];
    SaveDialog_M_6.InitialDir := IniDirs[2];
    SaveDialog_M_1.InitialDir := IniDirs[2];
end;

procedure TGUI.FirstShowUpdate;  //after light+formula windows were made
var i: Integer;
begin
    Label_M_3.Caption := 'M3D Version ' + ProgramVersionStr(M3dVersion);
    RadioGroup_M_2.Hint := 'Panorama mode:' + #13#10 +
                        '- The FOV is choosen automatically' + #13#10 +
'- Use the 24bit SSAO or DEAO for ambient shadows' + #13#10 +
'- A 2:1 aspect ratio is recommended, but not necessary.';
    Edit_M_19.Hint := 'If set to a higher value than 0, the surface normals will be calculated with an average' + #13#10 +
'of distributed points and a roughness factor is calculated too, resulting in lower aliasing.' + #13#10 +
'A value of 8 will average over a volume, what is very slow but can be used in very' + #13#10 +
'critical situations.  You could also use the Normals on ZBuf in postprocessings.';
    Edit_M_20.Hint := 'Defines how accurate the position with the defined distance to the surface will be calculated.' + #13#10 +
'Higher values leads to more accuracy what leads also to a better normals calculation.' + #13#10 +
'Much more than 12 are rarely needed.';
    UpDown_M_4.Hint := 'Sharpen factor of the saved output image,' + #13#10 +
'works only with downscales of 1:2 and 1:3 !' + #13#10 +
'0: no sharpening ... 3: maximum sharpening';
    Edit_M_16.Hint := 'Dynamic fog:' + #13#10 +
'The lower the number the farer away from the object the fog shows up.' + #13#10 +
'With dIFS, the fog is around the object part calculated at this iteration.' + #13#10 +
'Zero to disable this feature and do the dynamic fog on raystep count as usual.' + #13#10 +
'Hint: Check the ''First step random'' option to prevent steps.' + #13#10 +
'Volumetric light:' + #13#10 +
'Choose the light nr from which lightscattering will be calculated.';
    Image_M_1.Canvas.Brush.Color := clBtnFace;
    Image_M_1.Canvas.Font.Color := clWindowText;
//    if Testing then Showmessage('M3D onshow...');
    MakeHeader;
    BuildRotMatrix(-0.7, -0.0001, 0, @MHeader.hVgrads);
    SetEulerEditsFromHeader;
    Application.HintHidePause  := 20000;
    Application.HintShortPause := 0;
    for i := 0 to 3 do LoadAccPreset(i);
    UpdateAspectCaption;
 //   if Testing then Showmessage('M3D load extern formulas now...');
    if SupportSSE then ChangeMathFuncsToSSE;
    if SupportSSE2 then ChangeMathFuncsToSSE2;
    if SupportSSE then VolLightMapPos := VolLightMapPosSSE;
    if SupportSSE then GetVolLightMapVec := GetVolLightMapVecSSE;

    InternAspect := Max(1, MHeader.Width) / Max(1, MHeader.Height);
    LastHisParSaveTime := Now;
    FastMove(MHeader.Light, LHPSLight, SizeOf(TLightingParas9));
    FormResize(Self); //to do light+formula sticky options
    PageControl_M_1Change(Self); //to fit height
end;

Procedure TGUI.LoadStartupParas;
var s: String;
    bStartTimer: LongBool;
begin
    bStartTimer := True;
    if ParamCount > 0 then
    begin
      s := UpperCase(ExtractFileExt(ParamStr(1)));
      if s = '.M3P' then
      begin
        LoadParameter(MHeader, ParamStr(1), True);
        AllPresetsUp;
        OutMessage('Parameters loaded, press "Calculate 3D" to render.');
        ClearScreen;
        bStartTimer := False;
      end
      else if s = '.M3I' then
        StartupLoadM3I := True
      else if (s = '.M3A') and AnimationForm.LoadAni(ParamStr(1)) then
      begin
        AniStartLoad := True;
        AnimationForm.Visible := True;
      end
      else if (s = '.BIG') and TilingForm.LoadBig(ParamStr(1)) then TilingForm.Visible := True;
    end
    else if not LoadParameter(MHeader, AppFolder + 'Default.m3p', True) then
      if not LoadParameter(MHeader, IncludeTrailingPathDelimiter(IniDirs[1]) + 'Default.m3p', True) then
        TabControl_F_1.OnChange(Self);{FORMULA}
    Timer_M_1.Enabled := bStartTimer;
end;

procedure SaveFormulaBytes;
var s: String;
    i, c, ci: Integer;
    f: TextFile;
    P1: PByte;
    Last4: array[0..3] of Byte;
begin
    AssignFile(f, appfolder + 'Test.txt');
    Rewrite(f);
    try
      P1 := PByte(@TestHybrid); //   TestHybrid    HybridCustomIFStest
      s := '';
      c := 0;
      ci := 0;
      for i := 0 to 2000 do
      begin
        s := s + IntToHex(P1^, 2);
        Last4[ci] := P1^;
        if (P1^ = 0) and (c > 3) then //until $5DC20800
        begin
          if (Last4[(ci - 1) and 3] = 8) and (Last4[(ci - 2) and 3] = $C2) and
             (Last4[(ci - 3) and 3] = $5D) then Break;
                                       //1 remove to work
        end;
        if (P1^ = $C3) and (c > 3) then //until  $114EE0C3  (dIFS, only with apply scale+)
        begin
          if (Last4[(ci - 1) and 3] = $E0) and (Last4[(ci - 2) and 3] = $4E) and
             (Last4[(ci - 3) and 3] = $11) then Break;
        end;
        Inc(c);
        ci := (ci + 1) and 3;
        Inc(P1);
        if (i and 31) = 31 then
        begin
          Writeln(f, s);
          s := '';
        end;
      end;
      Writeln(f, s);
    finally
      CloseFile(f);
    end;
end;

procedure TGUI.FormResize(Sender: TObject);
begin
    {if LAFormCreated then
    begin
      if FormsSticky[1] = 1 then
        GUILight.SetBounds(Left + Width, Top, GUILight.Width,
                                  GUILight.Height)
      else if FormsSticky[1] = 2 then
        GUILight.SetBounds(Left - GUILight.Width, Top,
                                 GUILight.Width, GUILight.Height);
    end;}
    {if FGUIFormCreated then
    begin
      if FormsSticky[0] = 1 then
        GUIFormula.SetBounds(Left + Width, Top, GUIFormula.Width,
                                  GUIFormula.Height)
      else if FormsSticky[0] = 2 then
        GUIFormula.SetBounds(Left - GUIFormula.Width, Top,
                                 GUIFormula.Width, GUIFormula.Height);
    end;}
    if AFormCreated and (bAniFormStick = 1) then
      AnimationForm.SetBounds(Left, Top + Height, AnimationForm.Width,
                              AnimationForm.Height);
    if PPFormCreated then
    begin
      if FormsSticky[2] = 1 then
        PostProForm.SetBounds(Left + Width, Top, PostProForm.Width,
                                  PostProForm.Height)
      else if FormsSticky[2] = 2 then
        PostProForm.SetBounds(Left - PostProForm.Width, Top,
                                 PostProForm.Width, PostProForm.Height);
    end;
    //Memo_M_1.Height := Min(240, Max(80, Panel_M_1.Height - Memo_M_1.Top - Panel_M_4.Height - 1));
end;

procedure TGUI.Timer_M_8Timer(Sender: TObject);  //Repaint done? + Animation save BMP
var y, ymin, c: Integer;
begin
    ymin := 999999;
    c := 0;
    for y := 0 to RepYThreads - 1 do
    begin
      if RepaintCounts[y] > 0 then Inc(c);
      if RepYact[y] < ymin then ymin := RepYact[y];
    end;
    if ymin >= RepaintYact then
      UpdateScaledImage(RepaintYact div ImageScale, ymin div ImageScale);
    RepaintYact := ymin;
    if c = 0 then
    begin
      Timer_M_8.Enabled := False;
      isRepainting   := False;
      if (AnimationForm.AniOption > 0) and SaveAniImage then DoSaveAniImage else
      if SaveTileImage then DoSaveTileImage else
      if Timer_M_3.Enabled then Timer_M_3Timer(Self) else StoreUndoLight;
    end;
    Timer_M_8.Interval := 100;
end;

procedure TGUI.DisableBchange;
begin
    SpinEdit_M_2.OnChangingEx := nil;
    Edit_M_25.OnChange        := nil;
    Edit_M_6.OnChange         := nil;
    Edit_M_8.OnChange         := nil;
    SpinEdit_M_5.OnChangingEx := nil;
end;

procedure TGUI.EnableBchange;
begin
    SpinEdit_M_2.OnChangingEx := SpinEdit_M_2ChangingEx;
    Edit_M_25.OnChange        := SpinEdit_M_2Change;
    Edit_M_6.OnChange         := SpinEdit_M_2Change;
    Edit_M_8.OnChange         := SpinEdit_M_2Change;
    SpinEdit_M_5.OnChangingEx := SpinEdit_M_2ChangingEx;
end;

procedure TGUI.SpeedButton_M_3Click(Sender: TObject);
var SB: TSpeedButton;
    t: Integer;
begin
    SB := Sender as TSpeedButton;
    t  := SB.Tag;
    if SB.Cursor = crUpArrow then
    begin
      SpeedButton_M_3.Cursor  := crDefault;
      SpeedButton_M_13.Cursor := crDefault;
      SpeedButton_M_5.Cursor  := crDefault;
      SpeedButton_M_6.Cursor  := crDefault;
      SpeedButton_M_10.Down   := False;
      FillInPreset(t);
      SaveAccPreset(t);
    end
    else if SB.Down then SetPreset(t);
end;

procedure TGUI.SpeedButton_M_7Click(Sender: TObject);
begin
    MakeHeader;
    CopyHeaderAsTextToClipBoard(@MHeader, Caption);
end;

procedure TGUI.TextParsLoadSuccess;
begin
    InternAspect := MHeader.Width / Max(1, MHeader.Height);
    ImageScale := Min(10, Max(1, MHeader.bImageScale));
    LoadBackgroundPicT(@MHeader.Light);
    SetEditsFromHeader;
    bUserChange := False;
    GUI.CheckBox_L_21.Checked := False;{LIGHT}
    bUserChange := True;
    GUI.SetLightFromHeader(MHeader);{LIGHT}
    if MHeader.Light.BGbmp[0] = 0 then GUI.Image_L_5.Visible := False else
      MakeLMPreviewImage(GUI.Image_L_5, @M3DBackGroundPic);{LIGHT}
    MButtonsUp;
    AllPresetsUp;
    OutMessage('Parameters loaded, press "Calculate 3D" to render.');
    ClearScreen;
    Caption := 'Mandelbulb 3D';
end;

procedure TGUI.SpeedButton_M_8Click(Sender: TObject);
var PC: PChar;
    i: Integer;
    s: String;
begin
    PageCtrls.ActivePage := TabImage;
    PC := StrAlloc(3000);
    try
      i := Clipboard.GetTextBuf(PChar(PC), 3000);
      if (i > 800) and GetHeaderFromText(StrPas(PC), MHeader, s) then
      begin
        TextParsLoadSuccess;
        Caption := s;
      end
      else
        FTextBox.Visible := True;
    finally
      StrDispose(PC);
    end;
end;

procedure TGUI.SpeedButton_M_36Click(Sender: TObject);
var
   today : TDateTime;
   ts, ds : TStringDynArray;
   dt, t, d, dd, mm, yy: string;
begin
   PageCtrls.ActivePage := TabImage;
   // StringReplace(const Source, OldPattern, NewPattern: string; Flags: TReplaceFlags)
   // SplitString(const S, Delimiters: string)
   today := Now;

//   t := TimeToStr(today);
//   ts := SplitString(t, ':');
//   h := ts[0]; m := ts[1]; s := ts[2];
//   t := s + '-' + m + '-' + h;

   d := DateToStr(today);
   ds := SplitString(d, '/');
   dd := ds[0]; mm := ds[1]; yy := ds[2];
   d := yy + '-' + mm + '-' + dd;

   t := StringReplace(TimeToStr(today), ':', '-', [rfReplaceAll, rfIgnoreCase]);
   dt := d + '-' + t;

//   msg1 := DateToStr(today) + ' ' + TimeToStr(today);
//   msg2 := StringReplace(msg1, '/', '-', [rfReplaceAll, rfIgnoreCase]);
//   msg1 := StringReplace(msg2, ':', '-', [rfReplaceAll, rfIgnoreCase]);

//   ShowMessage('today Now = ' + DateToStr(today) + '_' + TimeToStr(today));
//   ShowMessage(dt);
   FTextBox.caption := dt;
   FTextBox.Visible := True;
end;

procedure TGUI.SpeedButton_M_10Click(Sender: TObject);
begin
    if SpeedButton_M_3.Cursor = crUpArrow then
    begin
      SpeedButton_M_3.Cursor  := crDefault;
      SpeedButton_M_13.Cursor := crDefault;
      SpeedButton_M_5.Cursor  := crDefault;
      SpeedButton_M_6.Cursor  := crDefault;
      SpeedButton_M_10.Down   := False;
    end else begin
      SpeedButton_M_3.Cursor  := crUpArrow;
      SpeedButton_M_13.Cursor := crUpArrow;
      SpeedButton_M_5.Cursor  := crUpArrow;
      SpeedButton_M_6.Cursor  := crUpArrow;
      AllPresetsUp;
    end;
end;

procedure TGUI.Rotate4Dvec(var vec: TVec4D);
var x, y, z: Double;
    v3b: TVec3D;
    Smatrix4: TSMatrix4;
begin
    if Panel_F_2.Enabled then //{FORMULA}
    begin
      x := StrToFloatK(XWEdit.Text) * Pid180;{FORMULA}
      y := StrToFloatK(YWEdit.Text) * Pid180;{FORMULA}
      z := StrToFloatK(ZWEdit.Text) * Pid180;{FORMULA}
      v3b := TPVec3D(@vec)^;
      BuildSMatrix4(x, y, z, Smatrix4);
      Rotate4Dex(@v3b, @vec, @Smatrix4);
    end;
end;

procedure TGUI.Button_M_13Click(Sender: TObject);  //insert julia values
var v4: TVec4D;
begin
    v4[0] := StrToFloatK(Edit_M_9.Text);  //mid vals
    v4[1] := StrToFloatK(Edit_M_10.Text);
    v4[2] := StrToFloatK(Edit_M_17.Text);
    v4[3] := 0;
    Rotate4Dvec(v4);
    Edit_M_28.Text := FloatToStr(v4[0]);
    Edit_M_29.Text := FloatToStr(v4[1]);
    Edit_M_30.Text := FloatToStr(v4[2]);
    Edit_M_7.Text := FloatToStr(v4[3]);
      //Wadd
{The following code causes “stay on top” forms to allow a MessageBox to appear on top. After the message box is closed, the topmost forms are restored so that they continue to float to the top.
Begin
  with Application do
  begin
    NormalizeTopMosts;
    MessageBox('This should be on top.', 'Look', MB_OK);
    RestoreTopMosts;
  end;
end; }
{  with Application do
  begin
    NormalizeTopMosts;
    MessageBox(PChar(FloatToStr(v4[3])), 'You have to set the W_Add value in the formula to:', MB_OK);
    RestoreTopMosts;
  end;  }
   //   InputBox('Information', 'You have to set the W_Add value in the formula to:', FloatToStr(v4[3]));
end;

procedure TGUI.SpeedButton_M_12Click(Sender: TObject);
begin
    AnimationForm.Visible := True;
    BringToFront2(AnimationForm.Handle);
end;

procedure TGUI.SpinEdit_M_2Change(Sender: TObject);
begin
    AllPresetsUp;
end;

procedure TGUI.SpinEdit_M_2ChangingEx(Sender: TObject;
  var AllowChange: Boolean; NewValue: Integer; Direction: TUpDownDirection);
begin
    AllPresetsUp;
end;

procedure TGUI.FormDestroy(Sender: TObject);
var i: Integer;
begin
    LAtmpLight.Lights[0].Loption := 1;{LIGHT}
    SaveIni(False); //only if filedatetime = lastIniFileDatetime
    for i := 0 to 5 do FreeCF(@HybridCustoms[i]);
    for i := 0 to 5 do FreeCF(@calcHybridCustoms[i]);
    OPD.Free;
end;

procedure TGUI.IniDirsBtnClick(Sender: TObject);
begin
    LoadIni;
    IniDirForm.Visible := True;
end;

procedure TGUI.BugReportBtnClick(Sender: TObject);
begin
  ShellExecute(0, 'OPEN', PChar('http://bugs.mb3d.org/'), '', '', SW_SHOWNORMAL);
end;

procedure TGUI.ProofPosLight;{LIGHT}
begin
    //with GUILight do
    begin
      if (PageControl_M_1.ActivePageIndex = 1) then
      begin
        bUserChange := False;
        SetPosLightTo0(TabControl_L_1.TabIndex);
        PageControl_M_1Change(Self);
        bUserChange := True;
      end;
    end;
end;

{procedure TGUI.SpeedButton_M_15Click(Sender: TObject);
begin
    GUINav.Visible := True;
    BringToFront2(GUINav.Handle);
end;}

procedure TGUI.Button_M_14Click(Sender: TObject);  //reset pos
var d: Double;
begin
    Edit_M_1.Text := '-2.0';
    Edit_M_17.Text := '0.0';
    Edit_M_3.Text := '30.0';
    Edit_M_9.Text := '0.0';
    Edit_M_10.Text := '0.0';
    Edit_M_5.Text := '0.8';
    Edit_M_14.Text := '30';
    BuildRotMatrix(0.0001, -0.0001, 0, @MHeader.hVgrads);
    if TryStrToFloat(RBailoutEdit.Text, d) and (d > 500) then //{FORMULA}
    begin
      Edit_M_1.Text := '-8.0';
      Edit_M_17.Text := '0.0';
      Edit_M_3.Text := '120.0';
      Edit_M_5.Text := '0.18';
    end;
    ParasChanged;
    SetEulerEditsFromHeader;
end;

procedure TGUI.Button_M_15Click(Sender: TObject);
begin
    PostProForm.Visible := True;
    BringToFront2(PostProForm.Handle);
end;

procedure TGUI.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #27) and (Screen.Cursor = crNone) then GUI.ChangeNaviMode;{NAVI}
end;

procedure TGUI.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var k: Word;
    d: Double;
begin
    k := Key;
    if (k = 27) and (Screen.Cursor = crNone) then ChangeNaviMode;  //esc
    if (k in [112, 113]) and TryStrToFloat(Edit_N_4.Text, d) then //F1,F2 - farplane
    begin
      if k = 112 then d := d * 0.8 else d := d * 1.25;
      Edit_N_4.Text := FloatToStrF(Max(1, Min(10000, d)), ffFixed, 5, 1);
    end;
    if (k in [114, 115]) and TryStrToFloat(Edit_N_3.Text, d) then //F3,F4 - fov
    begin
      if k = 114 then d := d * 0.8 else d := d * 1.25;
      Edit_N_3.Text := FloatToStrF(Max(1, Min(360, d)), ffFixed, 5, 1);
    end;
    if k = 116 then RadioGroup_N_2.ItemIndex := (RadioGroup_N_2.ItemIndex + 1) mod 3;
    if k = 117 then CheckBox_N_1.Checked := not CheckBox_N_1.Checked;

    if CheckBox_N_2.Checked then
    case Key of
      90:  k := 87;
      65:  k := 81;
      81:  k := 65;
      87:  k := 0;
    end;
    case k of
      69:  SpeedButton_N_1.Click;  //e
   67,81:  SpeedButton_N_2.Click;  //c,q
      65:  SpeedButton_N_3.Click;  //a
      68:  SpeedButton_N_4.Click;  //d
      70:  if not CheckBox_N_5.Checked then SpeedButton_N_18.Click; //f - Ani Keyframe
      73:  SpeedButton_N_5.Click;  //i
      75:  SpeedButton_N_6.Click;  //k
      74:  SpeedButton_N_7.Click;  //j
      76:  SpeedButton_N_8.Click;  //l
      87:  SpeedButton_N_9.Click;  //w/z
      83:  SpeedButton_N_10.Click; //s
      85:  SpeedButton_N_12.Click; //u
      79:  SpeedButton_N_13.Click; //o
    end;
end;

procedure TGUI.SpeedButton_M_19Click(Sender: TObject);  //aspect
var t, wid: Integer;
    b: LongBool;
begin
    t := (Sender as TSpeedButton).Tag;
    wid := StrToIntTrim(Edit_M_11.Text);
    b := bUserChange;
    bUserChange := False;
    case t of
      1:  Edit_M_12.Text := IntToStr((wid * 3) div 4);
      2:  Edit_M_12.Text := IntToStr((wid * 3) div 5);
      3:  if UserAspect.X > 0 then
            Edit_M_12.Text := IntToStr((wid * UserAspect.Y) div UserAspect.X);
    end;
    MHeader.Height := StrToIntTry(Edit_M_12.Text, MHeader.Height);
    MHeader.TilingOptions := 0;
    CheckBox_M_10Click(Sender);
    bUserChange := b;
end;

procedure TGUI.UpdateAspectCaption;
begin
    if UserAspect.X > 0 then
      SpeedButton_M_21.Caption := IntToStr(UserAspect.X) + ':' + IntToStr(UserAspect.Y)
    else
      SpeedButton_M_21.Caption := 'user';
end;

procedure TGUI.SpeedButton_M_21MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i: Integer;
begin
    if ssRight in Shift then    //define user aspect ratio
    begin
      i := StrToIntTrim(InputBox('User defined aspect ratio', 'Input the width factor:', '16'));
      if i < 1 then Exit;
      UserAspect.X := i;
      i := StrToIntTrim(InputBox('User defined aspect ratio', 'Input the height divisor:', '9'));
      if i < 1 then
      begin
        UserAspect.X := 0;
        Exit;
      end;
      UserAspect.Y := i;
      UpdateAspectCaption;
      IniVal[11] := SpeedButton_M_21.Caption;
    end;
end;

procedure TGUI.Edit_M_11Change(Sender: TObject);
var i: Integer;
    s: Single;
begin
    if bUserChange then
    begin
      AllPresetsUp;
      if CheckBox_M_10.Checked and ((Sender as TEdit).Tag > 0) then
      begin
        if (Sender as TEdit).Tag = 1 then  //width changing
        begin
          if TryStrToInt(Trim(Edit_M_11.Text), i) and (i > 0) then
          begin
            s := i / MHeader.Width;
            bUserChange := False;
            Edit_M_12.Text := IntToStr(Round(i / InternAspect));
            ScaleDEstop(s);
            ScaleRclip(s);
            bUserChange := True;
          end;
        end
        else if (Sender as TEdit).Tag = 2 then  //height changing
        begin
          if TryStrToInt(Trim(Edit_M_12.Text), i) and (i > 0) then
          begin
            bUserChange := False;
            Edit_M_11.Text := IntToStr(Round(i * InternAspect));
            if TryStrToInt(Trim(Edit_M_11.Text), i) and (i > 0) then
            begin
              s := i / MHeader.Width;
              ScaleDEstop(s);
              ScaleRclip(s);
            end;
            bUserChange := True;
          end;
        end;
      end;
      if TryStrToInt(Trim(Edit_M_11.Text), i) and (i > 0) then
        MHeader.Width := i;
      if TryStrToInt(Trim(Edit_M_12.Text), i) and (i > 0) then
        MHeader.Height := i;
      MHeader.TilingOptions := 0;
    end;
end;

procedure TGUI.Edit_M_33Change(Sender: TObject);
begin
    if bUserChange then Authors[0] := Edit_M_33.Text;
end;

procedure TGUI.Edit_M_34Change(Sender: TObject);
begin
    if bUserChange then Authors[1] := Edit_M_34.Text;
end;

procedure TGUI.SpeedButton_M_18MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var rot: Double;
    M: TMatrix3;
begin
    ProofPosLight;
    MakeHeader;         // +.. store Undo in Header files!
    with MHeader do
    begin
      rot := StrToFloatK(Edit_M_4.Text) * MPid180;
      case (Sender as TSpeedButton).Tag of
        11:  BuildRotMatrix(rot, 0, 0, @M);
        12:  BuildRotMatrix(-rot, 0, 0, @M);
        13:  BuildRotMatrix(0, -rot, 0, @M);
        14:  BuildRotMatrix(0, rot, 0, @M);
        15:  BuildRotMatrix(0, 0, rot, @M);
        16:  BuildRotMatrix(0, 0, -rot, @M);
      end;
      if Button = mbLeft then
      begin
        Multiply2Matrix(@M, @hVgrads);
        hVgrads := M;
      end else begin
        Multiply2Matrix(@hVgrads, @M);
        RotateVectorReverse(@dXmid, @M);
        SetEditsFromHeader;
      end;
      SliceCalc := 2;
      Timer_M_1.Enabled := True; //calc2D
    end;
end;

procedure TGUI.SpeedButton_M_25Click(Sender: TObject);  //Batch process
begin
    BatchForm1.Visible := True;
    BringToFront2(BatchForm1.Handle);
end;

procedure TGUI.FormDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
    Accept := True;
end;

procedure TGUI.Shape_M_1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    Shape_M_1.Visible := False;
end;

procedure TGUI.Shape_M_2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var p: TPoint;
begin
    if ssRight in Shift then
    begin
      p := Point(X, Y);
      p := Shape_M_2.ClientToScreen(p);
      PopupMenu_M_4.Popup(p.X, p.Y);
    end
    else
      Image_M_1MouseDown(Sender, Button, Shift, X + Shape_M_2.Left - Image_M_1.Left, Y + Shape_M_2.Top - Image_M_1.Top);
end;

procedure TGUI.Shape_M_2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    Image_M_1MouseMove(Sender, Shift, X + Shape_M_2.Left - Image_M_1.Left, Y + Shape_M_2.Top - Image_M_1.Top);
end;

procedure TGUI.ShapeBox_M_1Click(Sender: TObject);
begin
    Shape_M_2.Shape := stRectangle;
end;

procedure TGUI.ShapeDisc_M_1Click(Sender: TObject);
begin
    Shape_M_2.Shape :=stCircle;
end;

procedure TGUI.SpeedButton_M_9MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if Button = mbLeft then RestoreUndo else
    if Button = mbRight then Redo else Exit;
    SetEditsFromHeader;
    GUI.SetLightFromHeader(MHeader);{LIGHT}
    GUI.ComboBox_L_3.ItemIndex := -1;{LIGHT}
    TabControl_F_1Change(Sender);{FORMULA}
    ParasChanged;
    AllPresetsUp;
end;

procedure TGUI.SpeedButton_M_26Click(Sender: TObject);  //Save Zbuf
begin
    if SaveDialog_M_6.Execute then SaveZBuf(SaveDialog_M_6.Filename, SaveDialog_M_6.FilterIndex);
end;

procedure TGUI.SaveDialog_M_6TypeChange(Sender: TObject);
var S: String;
begin
    case SaveDialog_M_6.FilterIndex of
      1:  SaveDialog_M_6.DefaultExt := 'bmp';
      2:  SaveDialog_M_6.DefaultExt := 'png';
    end;
    S := SaveDialog_M_6.Filename;
    if SysUtils.DirectoryExists(S) then S := '';
    if S <> '' then
      case SaveDialog_M_6.FilterIndex of
        1:  S := ChangeFileExt(S, '.bmp');
        2:  S := ChangeFileExt(S, '.png');
      else
        S := '';
      end;
    if S <> '' then
      SendMessage(GetParent(SaveDialog_M_6.Handle), CDM_SETCONTROLTEXT, $480, Longint(PChar(ExtractFileName(S))));
end;

procedure TGUI.SaveImageO(OutputType: Integer; FileNam: String);
var TileRect: TRect;
    Crop: Integer;
    bmp: TBitmap;
begin
    if (MHeader.TilingOptions shr 28) and 3 <> 0 then
    begin
      GetTilingInfosFromHeader(@MHeader, TileRect, Crop);
      SdoAA;
      bmp := TBitmap.Create;
      try
        bmp.PixelFormat := pf24bit;
        bmp.SetSize((TileRect.Right - TileRect.Left + 1 - 2 * Crop) div ImageScale,
          (TileRect.Bottom - TileRect.Top + 1 - 2 * Crop) div ImageScale);
        bmp.Canvas.CopyRect(Rect(0, 0, bmp.Width, bmp.Height), GUI.Image_M_1.Picture.Bitmap.Canvas,
            Rect(Crop div ImageScale, Crop div ImageScale,
                 Crop div ImageScale + bmp.Width, Crop div ImageScale + bmp.Height));
        case OutputType of
          0:  SavePNG(FileNam, bmp, CheckBox_M_13.Checked);
          1:  SaveJPEGfromBMP(FileNam, bmp, StrToIntTry(Edit_M_26.Text, 95));
          2:  SaveBMP(FileNam, bmp, pf24bit);
        end;
      finally
        bmp.Free;
      end;
    end
    else
    begin
      SdoAA;
      case OutputType of
        0:  SavePNG(FileNam, GUI.Image_M_1.Picture.Bitmap, CheckBox_M_13.Checked);
        1:  SaveJPEGfromBMP(FileNam, GUI.Image_M_1.Picture.Bitmap, StrToIntTry(Edit_M_26.Text, 95));
        2:  SaveBMP(FileNam, GUI.Image_M_1.Picture.Bitmap, pf24bit);
      end;
    end;
end;

procedure TGUI.Button_M_3Click(Sender: TObject);    //save BMP,PNG
var i, c: Integer;
begin
    Val(IniVal[16], i, c);
    if c = 0 then SaveDialog_M_6.FilterIndex := i + 1;
    if SaveDialog_M_6.Execute then
    begin
      IniVal[16] := IntToStr(SaveDialog_M_6.FilterIndex - 1);
      SaveImageO(4 - SaveDialog_M_6.FilterIndex * 2, SaveDialog_M_6.FileName);
      SetSaveDialogNames(SaveDialog_M_6.FileName);
    end;
end;

procedure TGUI.SpeedButton_M_24Click(Sender: TObject);
begin
    FVoxelExport.Visible := True;
    BringToFront2(FVoxelExport.Handle);
end;

procedure TGUI.Button_M_11Click(Sender: TObject);    //calculate a rough 8x8blocky image
var TileSize: TPoint;
begin
    PropagateCurrFrameNumber;
    TilingForm.SaveThisTile := False;
    MakeHeader;
    if (MHeader.Width < 1) or (MHeader.Height < 1) then Exit;
    MHeader.bCalc3D := 1;
    MHeader.bStereoMode := 0;
    MakeLightValsFromHeaderLight(@MHeader, @HeaderLightVals, 1, MHeader.bStereoMode);
    ProofPosLight;
    try
      TileSize := GetTileSize(@MHeader);
      SetLength(siLight5, TileSize.X * TileSize.Y);
      mSLoffset := TileSize.X * SizeOf(TsiLight5);
      SetImageSize;
    except
      SetLength(siLight5, 0);
      mSLoffset := 0;
    end;
    if Length(siLight5) = 0 then
    begin
      mSLoffset := 0;
      btnCalc3D.Caption := 'Calculate 3D';
      ShowMessage('Out of memory, decrease the imagesize.');
      Exit;
    end;
    DisableButtons;
    try
      MCalcThreadStats.pLBcalcStop := @MCalcStop;
      MCalcThreadStats.pMessageHwnd := Self.Handle;
      CalcMandBlocky;
    finally
      EnableButtons;
      MCalcThreadStats.iProcessingType := 0;
    end;
end;

procedure TGUI.Button_M_12Click(Sender: TObject);   // calculate left eye image
begin
    MHeader.bCalc3D := 1;
    StoreUndo;
    MHeader.bStereoMode := (Sender as TButton).Tag;
    CalcMand(True);
end;

procedure TGUI.Button_M_16Click(Sender: TObject);
var B: TButton;
begin
    B := Sender as TButton;
    if B.Caption = 'Click on image' then
    begin
      if B.Tag = 4 then
        B.Caption := 'Get min.dist. from image'
      else
        B.Caption := 'Get values from image';
      iGetPosFromImage := 0;
      SetImageCursor;
    end
    else
    begin
      B.Caption := 'Click on image';
      iGetPosFromImage := B.Tag;
      MButtonsUp;
      Image_M_1.Cursor := crCross;
    end;
end;

procedure TGUI.SpinButton2DownClick(Sender: TObject);
begin
    ImageScale := Min(10, ImageScale + 1);
    SetImageSize;
    UpdateScaledImageFull;
end;

procedure TGUI.SpinButton2UpClick(Sender: TObject);
begin
    ImageScale := Max(1, ImageScale - 1);
    SetImageSize;
    UpdateScaledImageFull;
end;

procedure TGUI.N111Click(Sender: TObject);
var s: Integer;
begin
    s := (Sender as TMenuItem).Tag;
    if s in [1..10] then
    begin
      ImageScale := s;
      SetImageSize;
      UpdateScaledImageFull;
    end;
end;

function TGUI.OverImage(p: TPoint): LongBool;
begin
    Result := (p.X >= 0) and (p.Y >= 0) and (p.X < Max(Image_M_1.Width, ScrollBox1.Width))
                         and (p.Y < Max(Image_M_1.Height, ScrollBox1.Height));
end;

procedure TGUI.SetShape_M_2Size(NewSize: Integer);
var mx, my, ns: Integer;
begin
    if NewSize in [3..31] then
    begin
      ns := Shape_M_2.Width div 2;
      mx := Shape_M_2.Left + ns;
      my := Shape_M_2.Top + ns;
      ns := NewSize div 2;
      Shape_M_2.SetBounds(mx - ns, my - ns, NewSize, NewSize);
    end;
end;

procedure TGUI.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
    if Shape_M_2.Visible then
    begin
      if WheelDelta < 0 then SetShape_M_2Size(Shape_M_2.Width - 2) else
      if WheelDelta > 0 then SetShape_M_2Size(Shape_M_2.Width + 2);
      Handled := True;
    end
    else if OverImage(Image_M_1.ScreenToClient(MousePos)) then
    begin
      if WheelDelta < 0 then SpinButton2DownClick(Sender) else
      if WheelDelta > 0 then SpinButton2UpClick(Sender);
      Handled := True;
    end;

    if not OverForm(ScreenToClient(MousePos)) then
    begin
      Handled := True;
      GUI.FormMouseWheel(Sender, Shift, WheelDelta, MousePos, Handled);
      Exit;
    end;
    if UpDownLight.Focused then
    begin
      Handled := True;
      if WheelDelta > 0 then
        UpDownLight.Position := UpDownLight.Position + 1
      else if WheelDelta < 0 then
        UpDownLight.Position := UpDownLight.Position - 1;
    end
    else if UpDownDiffMap.Focused then
    begin
      Handled := True;
      if WheelDelta > 0 then
        UpDownDiffMap.Position := UpDownDiffMap.Position + 1
      else if WheelDelta < 0 then
        UpDownDiffMap.Position := UpDownDiffMap.Position - 1;
    end
    else if Edit_L_1.Focused then
    begin
      Handled := True;
      if WheelDelta > 0 then SpinButton_L_Up else
      if WheelDelta < 0 then SpinButton_L_Down;
    end;
end;

procedure TGUI.SpeedButton_M_27Click(Sender: TObject);   //Big renders
begin
    TilingForm.Visible := True;
    BringToFront2(TilingForm.Handle);
end;

procedure TGUI.SpeedButton_M_28Click(Sender: TObject);
begin
    MCForm.Visible := True;
    BringToFront2(MCForm.Handle);
end;

procedure TGUI.SaveDialog_M_1TypeChange(Sender: TObject);
var S: String;
begin
    case SaveDialog_M_1.FilterIndex of
      1:  SaveDialog_M_1.DefaultExt := 'jpg';
      2:  SaveDialog_M_1.DefaultExt := 'png';
    end;
    S := SaveDialog_M_1.Filename;
    if SysUtils.DirectoryExists(S) then S := '';
    if S <> '' then
      case SaveDialog_M_1.FilterIndex of
        1:  S := ChangeFileExt(S, '.jpg');
        2:  S := ChangeFileExt(S, '.png');
      else
        S := '';
      end;
    if S <> '' then
      SendMessage(GetParent(SaveDialog_M_1.Handle), CDM_SETCONTROLTEXT, $480, Longint(PChar(ExtractFileName(S))));
end;

procedure TGUI.SpeedButton_M_29Click(Sender: TObject); //save paras+image
var f: file;
begin
    if SaveDialog_M_1.Execute then
    begin
      MakeHeader;
      AssignFile(f, ChangeFileExt(SaveDialog_M_1.FileName, '.m3p'));
      Rewrite(f, 1);
      MHeader.MandId := actMandId;
      BlockWrite(f, MHeader, SizeOf(MHeader));
      HAddon.bHCAversion := 16;
      BlockWrite(f, HAddon, SizeOf(THeaderCustomAddon));
      CloseFile(f);
      SaveImageO(2 - SaveDialog_M_1.FilterIndex, SaveDialog_M_1.FileName);
      SetSaveDialogNames(SaveDialog_M_1.FileName);
    end;
end;

procedure TGUI.Button_M_19Click(Sender: TObject);
begin
    Edit_M_23.Text := Edit_M_9.Text;
    Edit_M_24.Text := Edit_M_10.Text;
    Edit_M_22.Text := Edit_M_17.Text;
end;

procedure TGUI.SendMove;
var M: TMessage;
begin
    M.Msg := WM_Move;
    M.WParam := 0;
    M.LParam := 0;
    WndProc(M);
end;

procedure TGUI.Stickthiswindowtotherightside1Click(Sender: TObject);
begin
    FormsSticky[StickIt] := (Sender as TMenuItem).Tag;
    SendMove;
end;

procedure TGUI.btnCalc3DMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var CP: TPoint;
begin
    if (Button = mbRight) and (btnCalc3D.Caption = 'Calculate 3D') then
    begin
      GetCursorPos(CP);
      PopupMenu_M_3.Popup(CP.X, CP.Y);
    end;
end;

procedure TGUI.StartrenderingandsaveafterwardstheM3Ifile1Click(
  Sender: TObject);
begin  //start rendering+save M3I autom.
    if SaveDialog_M_3.Execute then
    begin
      SaveAutoM3Ifilename := SaveDialog_M_3.FileName;
      btnCalc3DClick(Self);
      SaveM3IfileAuto := True;
    end;
end;

procedure TGUI.SpeedButton_M_30Click(Sender: TObject); //get midpoint from image
begin
    if SpeedButton_M_30.Caption = 'click image' then
    begin
      SpeedButton_M_30.Caption := 'get midpoint';
      iGetPosFromImage := 0;
      SetImageCursor;
    end
    else
    begin
      SpeedButton_M_30.Caption := 'click image';
      iGetPosFromImage := 22;
      MButtonsUp;
      Image_M_1.Cursor := crCross;
    end;
end;

procedure TGUI.FormHide(Sender: TObject);
begin
    IniVal[24] := IntToStr(Left) + ' ' + IntToStr(Top);
    IniVal[25] := IntToStr(Width) + ' ' + IntToStr(Height);
end;

procedure TGUI.CheckBox_M_10Click(Sender: TObject);
var dw, dh: Double;
begin
    if CheckBox_M_10.Checked then //keep aspect
      if StrToFloatKtry(Edit_M_11.Text, dw) and StrToFloatKtry(Edit_M_12.Text, dh) and
        (dw > 0.5) and (dh > 0.5) then InternAspect := dw / dh;
end;

procedure TGUI.CheckBox_M_14Click(Sender: TObject);
begin
    TBoostChanged := True;
end;

procedure TGUI.CheckBox_M_7Click(Sender: TObject);
begin
    PageControl_M_1Change(Sender);
end;

procedure TGUI.Timer_M_2Timer(Sender: TObject);
begin
    if (btnCalc3D.Caption = 'Calculate 3D') and (Now - LastHisParSaveTime > 1 / (24 * 12)) and
      not (CompareMem(@LHPSLight, @MHeader.Light, SizeOf(TLightingParas9)) or
      (AFormCreated and (AnimationForm.AniOption > 0)) or (BatchStatus > 0)) then
    begin
      StoreHistoryPars(MHeader);
      FastMove(MHeader.Light, LHPSLight, SizeOf(TLightingParas9));
    end;
end;

procedure TGUI.SpeedButton_M_35Click(Sender: TObject);
var CP: TPoint;
begin
    CP := SpeedButton_M_35.ClientToScreen(Point(0, SpeedButton_M_35.Height));
    PopupMenu_M_1.Popup(CP.X, CP.Y);
end;

{procedure TGUI.RefreshNavigator(const Enabled: Boolean);
begin
  if Enabled and GUINav.Visible then begin
    SpeedButton_N_11Click(nil);
  end;
end;}

function TGUI.IsCalculating: Boolean;
begin
  Result := btnCalc3D.Caption = 'Stop';
end;

procedure TGUI.PropagateCurrFrameNumber;
begin
  TMapSequenceFrameNumberHolder.SetCurrFrameNumber( StrToInt('0'+GUI.FrameEdit.Text) );
end;


//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

                        {  F  O  R  M  U  L  A  }

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

procedure TGUI.UpdateFromHeader(Header: TPMandHeader10);
begin
    with Header^ do
    begin
      bUserChangeF := False;
      RBailoutEdit.Text := FloatToStr(RStop);
      TabControl_F_2Change(Self);
      MaxIterEdit.Text := IntToStr(Iterations);
      MaxIterHybridPart2Edit.Text := IntToStr(iMaxItsF2);
      MinIterEdit.Text := IntToStr(MinimumIterations);
      XWEdit.Text := FloatToStr(dXWrot / Pid180);
      YWEdit.Text := FloatToStr(dYWrot / Pid180);
      ZWEdit.Text := FloatToStr(dZWrot / Pid180);
      CheckBox_F_2.Checked := (PTHeaderCustomAddon(PCFAddon).bOptions2 and 1) > 0;
      ComboBox_F_1.ItemIndex := (PTHeaderCustomAddon(PCFAddon).bOptions2 and 6) shr 1;
      DECombineCmb.ItemIndex := PTHeaderCustomAddon(PCFAddon).bOptions3 and 7;
      if DECombineCmb.ItemIndex < 5 then
        Edit_F_23.Text := FloatToStrSingle(Min0MaxCS(sDEcombS, 100))
      else
      begin
        Edit_F_23.Text := IntToStr(DEmixColorOption);
        Edit_F_25.Text := FloatToStrSingle(sNotZero(MinMaxCS(-100, sFmixPow, 100)));
      end;
      bUserChangeF := True;
    end;
end;

procedure TGUI.UpDown_F_1Click(Sender: TObject; Button: TUDBtnType);
var i: Integer;
begin
    if bUserChangeF then
    begin
      i := Max(2, Min(6, UpDown_F_1.Position));
      if (Button = btNext) and (i < 6) then Inc(i) else
      if (Button = btPrev) and (i > 2) then Dec(i);
      Label_F_28.Caption := IntToStr(i);
      GUI.Haddon.bHybOpt2 := (GUI.Haddon.bHybOpt2 and $70) or (i - 1);
      CheckHybridOptions(@GUI.Haddon);       // bHybOpt2:    Word;   //start2, end2, repeat2    3x 4bit
    end;
end;

procedure TGUI.MakeLB11list(text: String);
var i, j: Integer;
    LB: TListBoxEx;
begin
    text := UpperCase(Trim(text));
    ListBoxEx_F_11.Clear;
    for j := 1 to FGUIFormDropDownButtonCount do
    begin
      LB := FindComponent('ListBoxEx_F_' + IntToStr(j)) as TListBoxEx;
      if LB <> nil then
      begin
        for i := 0 to LB.Items.Count - 1 do
          if Pos(text, UpperCase(StrLastWords(LB.Items[i]))) > 0 then
            ListBoxEx_F_11.Items.Add(LB.Items[i]);
      end;
    end;
end;

procedure TGUI.NewJITFormulaItmClick(Sender: TObject);
var
  JITFormulaEditorForm: TJITFormulaEditorForm;
begin
  JITFormulaEditorForm := TJITFormulaEditorForm.Create(Self);
  try
    JITFormulaEditorForm.EditMode := emNew;
    if JITFormulaEditorForm.ShowModal = mrOK then begin
      LoadFormulaNames;
    end;
  finally
    JITFormulaEditorForm.Free;
  end;
end;

procedure TGUI.AdjustTC1height;
var i: Integer;
begin
    if Panel_F_3.Visible then i := Panel_F_3.Height else i := 0;
    if Panel_F_2.Visible then i := i + Panel_F_2.Height;
    //GUIFormula.ClientHeight := TabControl_F_1.Height + TabControl_F_2.Height + Panel_F_1.Height + i;
end;

procedure TGUI.Check4DandInfo;         //check for 4d rotation visible
//var p: TPoint;
begin
    Panel_F_2.Visible := Is4Dtype(@GUI.MHeader);
    AdjustTC1height;
    SpeedButton_F_2.Enabled := DescrOfFName(ComboEdit_F_1.Text) > '';
    RichEdit_F_1.Visible := False;
    Button_F_3.Visible := False;
    //p := FNormalPos(GUI.HAddon.Formulas[TabControl_F_1.TabIndex]);
    //Button_F_4.Visible := p.X >= 0;
    //if Button_F_4.Visible then Button_F_4.Top := p.Y;
end;

function TGUI.FNormalPos(Formula: THAformula): TPoint;
var i: Integer;
    L: TLabel;
begin
    Result := Point(-1, 0);
    i := 0;
    repeat
      if Formula.iOptionCount <= i then Break;
      L := (FindComponent('Label_F_' + IntToStr(i + 1)) as TLabel);
      if Pos('NORMAL', UpperCase(L.Caption)) > 0 then
      begin
        Result.X := i;
        Result.Y := L.Top;
        Break;
      end;
      Inc(i);
    until i > 12;
end;

function TGUI.ListBoxIsFull(LB: TListBoxEx): LongBool;
begin
    Result := (LB.Items.Count + 1) * LB.ItemHeight >= MaxLBheight;
end;

procedure TGUI.AddFormulaName(FName: String; DEfunc: Integer);
var stat: Integer;
begin
  stat := TFormulaNamesLoader.GetFavouriteStatus(FName);
  if stat > -2 then
  begin
    FName := IntToStr(stat) + ' ' + FName;
    case DEfunc of
      2,11:  ListBoxEx_F_2.Items.Add(FName); // 3Da
         4:  ListBoxEx_F_3.Items.Add(FName); // 4D
       5,6:  ListBoxEx_F_4.Items.Add(FName); // 4Da
     -1,-2:  if not ListBoxIsFull(ListBoxEx_F_5) then ListBoxEx_F_5.Items.Add(FName) else   // Ads
             if not ListBoxIsFull(ListBoxEx_F_6) then ListBoxEx_F_6.Items.Add(FName) else
               ListBoxEx_F_8.Items.Add(FName);
        20:  if not ListBoxIsFull(ListBoxEx_F_9) then ListBoxEx_F_9.Items.Add(FName) else   // dIFS  shapes
               ListBoxEx_F_10.Items.Add(FName);
    21..22:  ListBoxEx_F_12.Items.Add(FName); // dIFS  trafos
      else  // 3D
        if not ListBoxIsFull(ListBoxEx_F_1) then ListBoxEx_F_1.Items.Add(FName) else
          ListBoxEx_F_7.Items.Add(FName);
    end;
  end;
end;

function TGUI.FNameIsIncluded(Name: String): LongBool;
var i, l: Integer;
    LB: TListBoxEx;
begin
    Result := False;
    for l := 1 to FGUIFormDropDownButtonCount do
    begin
      LB := FindComponent('ListBoxEx_F_' + IntToStr(l)) as TListBoxEx;
      if LB <> nil then
      begin
        for i := 0 to LB.Items.Count - 1 do
          if CompareText(Trim(Name), StrLastWords(LB.Items[i])) = 0 then Result := True;
      end;
      if Result then Break;
    end;
end;

procedure TGUI.LoadFormulaNames;
var sdir, s2, se, s3: String;
    i, df: Integer;
    sr: TSearchRec;
    b: LongBool;
    LBE: TListBoxEx;
begin
    for i := 1 to FGUIFormDropDownButtonCount do
    begin
      LBE := (FindComponent('ListBoxEx_F_' + IntToStr(i)) as TListBoxEx);
      LBE.Clear;
      if i = 4 then LBE.Items.Add(' ');
    end;
    for i := 0 to 6 do AddFormulaName(InternFormulaNames[i], InternFormulasDEfunc[i]);
    AddFormulaName('Aexion C', 0);
    //TESTIFS disable if not wanted
 //   AddFormulaName('testIFS', testIFSDEoption);
    s2 := '';
    sdir := IncludeTrailingPathDelimiter(IniDirs[3]);
    if FindFirst(sdir + '*.m3f', 0, sr) = 0 then
    repeat
      se := ChangeFileExt(sr.Name, '');
      s3 := UpperCase(se);
      b := (s3 <> 'TRAFASSELQUAT') or not CanLoadF('CommQuat');
      b := b and ((s3 <> '_FLIPXY') or not CanLoadF('_FlipXYc'));
      b := b and ((s3 <> '_FLIPXZ') or not CanLoadF('_FlipXZc'));
      b := b and ((s3 <> '_FLIPYZ') or not CanLoadF('_FlipYZc'));
      b := b and ((s3 <> 'ABOXMODKALIFIXED') or not CanLoadF('ABoxModKali'));
      b := b and (s3 <> 'SQKOCH') and (s3 <> 'DJD-QUAT') and (s3 <> '_IFS-TESS');
      if b and CanLoadCustomFormula(sdir + sr.Name, df) and
        (not FNameIsIncluded(se)) then AddFormulaName(se, df);
    until FindNext(sr) <> 0;
    FindClose(sr);
    s2 := sdir;
    for i := 1 to FGUIFormDropDownButtonCount do
      SetListBoxWidth(FindComponent('ListBoxEx_F_' + IntToStr(i)) as TListBoxEx);
    SetListBoxWidth(ListBoxEx_F_12);
    Button_F_3.Visible := False;
    RichEdit_F_1.Visible := False;
end;

procedure TGUI.CalcRstop;
var i, j, n: Integer;
    d: Double;
begin
    d := 2;
    if TabControl_F_2.TabIndex <> 1 then n := 5 else n := 1;
    for i := 0 to n do with GUI.HAddon.Formulas[i] do
    begin
      if n = 5 then j := GUI.HAddon.Formulas[i].iItCount
               else j := Ord(GUI.HAddon.Formulas[i].iFnr > -1);
      if j > 0 then
      begin
        if iFnr in [4, 5, 6] then d := 1024 else
        if iFnr = 7 then d := Max(d, testhybridRstop) else
        if iFnr > 19 then
          d := Max(d, PTCustomFormula(GUI.MHeader.PHCustomF[i]).dRstop)
        else
          d := Max(d, 16);
        if i = 0 then TabControl_F_1.Tabs[0] := 'Formula1 •'
                 else TabControl_F_1.Tabs[i] := 'Fo.' + IntToStr(i + 1) + ' •';
      end
      else if i = 0 then TabControl_F_1.Tabs[0] := 'Formula1'
                    else TabControl_F_1.Tabs[i] := 'Fo.' + IntToStr(i + 1);
    end;
    RBailoutEdit.Text := FloatToStr(d);
end;

procedure TGUI.SetFormulaCBs(s: String);
var b: LongBool;
begin
    b := bUserChangeF;
    bUserChange := False;
    ComboEdit_F_1.Text := Trim(s);
    bUserChangeF := b;
end;

procedure TGUI.SetTabNames;
var i, t, n, ti: Integer;
    ne: TNotifyEvent;
begin
    ne := TabControl_F_1.OnChange;
    try
    TabControl_F_1.OnChange := nil;
    if (GUI.HAddon.bOptions1 and 3) = 1 then n := 1 else n := 5;
    if TabControl_F_1.Tabs.Count <> n + 1 then
    begin
      ti := TabControl_F_1.TabIndex;
      TabControl_F_1.Tabs.Clear;
      for t := 0 to n do
      begin
        if n = 5 then i := GUI.HAddon.Formulas[t].iItCount
                 else i := Ord(GUI.HAddon.Formulas[t].CustomFName[0] > 0);
        if t = 0 then
        begin
          if i < 1 then TabControl_F_1.Tabs.Add('Formula1')
                   else TabControl_F_1.Tabs.Add('Formula1 •');
        end
        else if i < 1 then TabControl_F_1.Tabs.Add('Fo.' + IntToStr(t + 1))
                      else TabControl_F_1.Tabs.Add('Fo.' + IntToStr(t + 1) + ' •');
      end;
      TabControl_F_1.TabIndex := Min(n, ti);
    end else begin
      for t := 0 to n do
      begin
        if n = 5 then i := GUI.HAddon.Formulas[t].iItCount
                 else i := Ord(GUI.HAddon.Formulas[t].CustomFName[0] > 0);
        if t = 0 then
        begin
          if i < 1 then TabControl_F_1.Tabs[t] := 'Formula1'
                   else TabControl_F_1.Tabs[t] := 'Formula1 •';
        end
        else if i < 1 then TabControl_F_1.Tabs[t] := 'Fo.' + IntToStr(t + 1)
                      else TabControl_F_1.Tabs[t] := 'Fo.' + IntToStr(t + 1) + ' •';
      end;
    end;
    if n = 5 then LabelItCount.Caption := 'Iterationcount' else LabelItCount.Caption := 'Weight';
    CheckBox_F_1.Visible := n = 5;
    finally
      TabControl_F_1.OnChange := ne;
    end;
end;

procedure TGUI.TabControl_F_1Change(Sender: TObject);
var i, t: Integer;
    E: TEdit;
    L: TLabel;
    bAltHybrid: LongBool;
    Formulaname: String;
begin
    SetTabNames;
    bAltHybrid := LabelItCount.Caption = 'Iterationcount';
    t := TabControl_F_1.TabIndex;
    ExchangeFormulaRightBtn.Enabled := (t = 0) or (bAltHybrid and (t < 5));
    ExchangeFormulaLeftBtn.Enabled := (t > 0);
    with GUI.HAddon.Formulas[t] do
    begin
      bUserChangeF := False;
      if bAltHybrid then
      begin
        if iItCount < 0 then iItCount := 0;
        EditItCount.Text := IntToStr(iItCount);
      end
      else EditItCount.Text := FloatToStrSingle(PSingle(@iItCount)^);
      Formulaname := Trim(CustomFtoStr(CustomFname));
      SetFormulaCBs(Formulaname);
      EditJITFormulaItm.Enabled := Pos('JIT', Formulaname) = 1;
      for i := 0 to 15 do
      begin
        E := (FindComponent('Edit_F_' + IntToStr(i + 1)) as TEdit);
        E.Visible := iOptionCount > i;
        L := (FindComponent('Label_F_' + IntToStr(i + 1)) as TLabel);
        L.Visible := iOptionCount > i;
        if iOptionCount > i then
        begin
          E.Text := FloatToStr(dOptionValue[i]);
          L.Caption := PTCustomFormula(GUI.MHeader.PHCustomF[t]).sOptionStrings[i];
        end;
      end;
      Panel_F_3.Visible := TabControl_F_2.TabIndex = 2;
      Check4DandInfo;
      if TabControl_F_2.TabIndex = 2 then
        CheckBox_F_1.Checked := t in [GUI.HAddon.bHybOpt1 shr 4, GUI.HAddon.bHybOpt2 shr 8]
      else CheckBox_F_1.Checked := t = (GUI.HAddon.bHybOpt1 shr 4);
      RichEdit_F_1.Visible := False;
      Button_F_3.Visible := False;
      RadioGroup_F_1Click(Sender);
      bUserChangeF := True;
    end;
end;

procedure TGUI.SpeedButton_F_11Click(Sender: TObject);  //load a new formula file
begin
    if OpenDialog_F_3.Execute then
      if LoadCustomFormula(OpenDialog_F_3.FileName,
        PTCustomFormula(GUI.MHeader.PHCustomF[TabControl_F_1.TabIndex])^,
        GUI.HAddon.Formulas[TabControl_F_1.TabIndex].CustomFname,
        GUI.HAddon.Formulas[TabControl_F_1.TabIndex].dOptionValue, True, 0, nil, False) then
      begin
        if not AnsiSameText(IncludeTrailingPathDelimiter(IniDirs[3]),
           IncludeTrailingPathDelimiter(ExtractFileDir(OpenDialog_F_3.FileName))) then
          CopyFile(PChar(OpenDialog_F_3.FileName) , PChar(IncludeTrailingPathDelimiter(IniDirs[3]) +
            ExtractFileName(OpenDialog_F_3.FileName)), True);
        CopyTypeAndOptionFromCFtoHAddon(GUI.MHeader.PHCustomF[TabControl_F_1.TabIndex],
          @GUI.HAddon, TabControl_F_1.TabIndex);
        if GUI.HAddon.Formulas[TabControl_F_1.TabIndex].iItCount < 1 then
          GUI.HAddon.Formulas[TabControl_F_1.TabIndex].iItCount := 1;
        LoadFormulaNames;
        SetFormulaCBs(CustomFtoStr(GUI.HAddon.Formulas[TabControl_F_1.TabIndex].CustomFname));
        GUI.HAddon.Formulas[TabControl_F_1.TabIndex].iFnr := 20;
        TabControl_F_1Change(Sender);
        CalcRstop;
      end;
end;

procedure TGUI.JITFormulaBtnClick(Sender: TObject);
var
  Position: TPoint;
begin
  if GetCursorPos(Position) then
    JITPopupMenu.Popup(Position.X, Position.Y);
end;

procedure TGUI.EditItCountChange(Sender: TObject);
begin
    if bUserChangeF then
    begin
      if TabControl_F_2.TabIndex <> 1 then
        TryStrToInt(Trim(EditItCount.Text), GUI.HAddon.Formulas[TabControl_F_1.TabIndex].iItCount)
      else
        TryStrToFloat(Trim(EditItCount.Text), PSingle(@GUI.HAddon.Formulas[TabControl_F_1.TabIndex].iItCount)^);
      CalcRstop;
    end;
end;

procedure TGUI.EditJITFormulaItmClick(Sender: TObject);
var
  Formulaname: String;
  JITFormulaEditorForm: TJITFormulaEditorForm;
begin
  JITFormulaEditorForm := TJITFormulaEditorForm.Create(Self);
  try
    JITFormulaEditorForm.EditMode := emEdit;
    Formulaname := ComboEdit_F_1.Text;
    JITFormulaEditorForm.Formulaname := Formulaname;
    if JITFormulaEditorForm.ShowModal = mrOk then begin
      LoadFormulaNames;
      SelectFormula( Formulaname );
    end;
  finally
    JITFormulaEditorForm.Free;
  end;
end;

procedure TGUI.Edit_F_1Change(Sender: TObject);
begin
    if bUserChangeF then
    begin
      if not StrToFloatKtry((Sender as TEdit).Text,
        GUI.HAddon.Formulas[TabControl_F_1.TabIndex].dOptionValue[(Sender as TEdit).Tag]) then
        (Sender as TEdit).Font.Color := clMaroon
      else
        (Sender as TEdit).Font.Color := clWindowText;
    end
    else (Sender as TEdit).Font.Color := clWindowText;
end;

procedure TGUI.CheckBox_F_1Click(Sender: TObject);
var i: Integer;
begin
    if bUserChangeF then
    begin
      if CheckBox_F_1.Checked then i := TabControl_F_1.TabIndex else i := 0;
      if (TabControl_F_2.TabIndex = 2) and (TabControl_F_1.TabIndex + 1 >= UpDown_F_1.Position) then
      begin
        if i = 0 then i := UpDown_F_1.Position - 1;
        GUI.HAddon.bHybOpt2 := (GUI.HAddon.bHybOpt2 and $77) or (i shl 8);
      end
      else GUI.HAddon.bHybOpt1 := (GUI.HAddon.bHybOpt1 and $7) or (i shl 4);  //end1, repeat1            2x 4bit
    end;
end;

procedure TGUI.TabControl_F_2Change(Sender: TObject);
var i: Integer;
begin
    if not bUserChangeF then //  bOptions1:   Byte;   //type of hybrid: 0:alt  1:interpolhybrid  2:DEcombinated  3: (K/L?)IFS
      TabControl_F_2.TabIndex := GUI.HAddon.bOptions1 and 3
    else
    begin
      GUI.HAddon.bOptions1 := TabControl_F_2.TabIndex;
      CheckHybridOptions(@GUI.HAddon);
  //    if TabControl_F_2.TabIndex = 2 then
    //    GUI.HAddon.bHybOpt2 := (GUI.HAddon.bHybOpt2 and $707) or $50;//bHybOpt2: start2, end2, repeat2    3x 4bit
    end;
    if TabControl_F_2.TabIndex = 2 then Label_F_20.Caption := 'Maxits hybrid part1:'
                                else Label_F_20.Caption := 'Max. iterations:';

    Label_F_28.Visible := TabControl_F_2.TabIndex = 2;    //show/hide start of 2nd hybrid
    UpDown_F_1.Visible := Label_F_28.Visible;
    UpDown_F_1.Position := Max(1, GUI.HAddon.bHybOpt2 and 7) + 1;
    Label_F_28.Caption := IntToStr(UpDown_F_1.Position);
 //   if UpDown_F_1.Visible then CheckHybridOptions(@GUI.Haddon);

    if TabControl_F_2.TabIndex <> 1 then  //Alt hybrid, DEcomb
    begin
      if bUserChangeF then
      begin
        if OldTab2index = 1 then for i := 0 to 1 do  //put integer counts in, were single vals
        begin
          if GUI.HAddon.Formulas[i].CustomFName[0] = 0 then GUI.HAddon.Formulas[i].iItCount := 0 else
          GUI.HAddon.Formulas[i].iItCount := Round(MinMaxCS(0, PSingle(@GUI.HAddon.Formulas[i].iItCount)^, 100));
        end;
      end
      else DECombineCmb.ItemIndex := GUI.HAddon.bOptions3 and 7;
    end
    else  // Interpol hybrid
    begin
      if bUserChangeF then
      if OldTab2index <> 1 then for i := 0 to 1 do
        PSingle(@GUI.HAddon.Formulas[i].iItCount)^ := Max(1, GUI.HAddon.Formulas[i].iItCount);
    end;
    OldTab2index := TabControl_F_2.TabIndex;
    SetTabNames;
    TabControl_F_1Change(Sender);
    Label_F_19.Visible := TabControl_F_2.TabIndex = 2;
    MaxIterHybridPart2Edit.Visible := Label_F_19.Visible;
    AdjustTC1height;
end;

procedure TGUI.TabControl_F_2Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
    OldTab2index := TabControl_F_2.TabIndex;
end;

procedure TGUI.Button_F_3Click(Sender: TObject);
begin
    Button_F_3.Visible := False;
    RichEdit_F_1.Visible := False;
    ListBoxEx_F_15.Visible := False;
end;

procedure TGUI.SpeedButton_F_2Click(Sender: TObject);
begin
    if ListBoxEx_F_15.Visible then ListBoxEx_F_15.Visible := False;
    if RichEdit_F_1.Visible then
    begin
      Button_F_3.Visible := False;
      RichEdit_F_1.Visible := False;
    end else begin
      RichEdit_F_1.Text := DescrOfFName(ComboEdit_F_1.Text);
      Button_F_3.Visible := True;
      RichEdit_F_1.Visible := True;
    end;
end;

procedure TGUI.Button_F_4Click(Sender: TObject);
var i, n, t: Integer;
    d: Double;
begin
    t := TabControl_F_1.TabIndex;
    with GUI.HAddon do
    begin
      i := FNormalPos(Formulas[t]).X;
      d := Sqrt(Sqr(Formulas[t].dOptionValue[i]) +
                Sqr(Formulas[t].dOptionValue[i + 1]) +
                Sqr(Formulas[t].dOptionValue[i + 2]));
      if d > 0 then d := 1 / d;
      for n := 0 to 2 do
        Formulas[t].dOptionValue[i + n] := Formulas[t].dOptionValue[i + n] * d;
    end;
    TabControl_F_1Change(Sender);
end;

procedure TGUI.SpeedButtonEx_F_1MouseEnter(Sender: TObject);
var SBrx: TSpeedButtonEx;
    MPos: TPoint;
begin
    Timer_F_5.Enabled := False;
    SBrx := Sender as TSpeedButtonEx;
    GetCursorPos(MPos);
    Timer_F_5.Tag := (MPos.Y shl 20) or (SBrx.Tag shl 16) or (GetTickCount and $FFFF);
    Timer_F_5.Interval := 20;
    Timer_F_5.Enabled := True;
end;

function ScreenPosInListBox(const LB: TListBoxEx; const sp: TPoint): Boolean;
var sap: TPoint;
begin
    sap := LB.ClientToScreen(Point(0, 0));
    Result := (sp.X >= sap.X) and (sp.Y >= sap.Y - 2) and (sp.X < sap.X + LB.Width)
                              and (sp.Y < sap.Y + LB.Height);
end;

function ScreenPosInSButton(const SB: TSpeedButtonEx; const sp: TPoint): Boolean;
var sap: TPoint;
begin
    sap := SB.ClientToScreen(Point(0, 0));
    Result := (sp.X >= sap.X) and (sp.Y >= sap.Y - 2) and (sp.X < sap.X + SB.Width)
                              and (sp.Y < sap.Y + SB.Height);
end;

procedure TGUI.SpeedButtonEx_F_1MouseLeave(Sender: TObject);
var mpos: TPoint;
    SB: TSpeedButtonEx;
    LB: TListBoxEx;
begin
    Timer_F_5.Enabled := False;
    GetCursorPos(mpos);
    SB := Sender as TSpeedButtonEx;
    SB.Down := False;
   // SB.Flat := True;  //test
    LB := FindComponent('ListBoxEx_F_' + IntToStr(SB.Tag)) as TListBoxEx;
    if (LB <> nil) and not ScreenPosInListBox(LB, mpos) then
    begin
      ShowListBox(LB, False);
      Timer_F_1.Enabled := False;
    end;
end;

procedure TGUI.HideAllListBoxEx_F_PopupsButNot(const n: Integer);
var i: integer;
    LBE: TListBoxEx;
    SB: TSpeedButtonEx;
begin
    for i := 1 to FGUIFormDropDownButtonCount do if i <> n then
    begin
      LBE := FindComponent('ListBoxEx_F_' + IntToStr(i)) as TListBoxEx;
      if (LBE <> nil) and LBE.Visible then
      begin
        ShowListBox(LBE, False);
        SB := FindComponent('SpeedButtonEx_F_' + IntToStr(i)) as TSpeedButtonEx;
        if (SB <> nil) and SB.Down then SB.Down := False;
      end;
    end;
    if ListBoxEx_F_12.Visible and (n < 11) then
    begin
      ShowListBox(ListBoxEx_F_12, False);
      if SpeedButtonEx_F_11.Down then SpeedButtonEx_F_11.Down := False;
    end;
end;

procedure TGUI.Timer_F_1Timer(Sender: TObject);
var mpos: TPoint;
    i, c: Integer;
    LBE: TListBoxEx;
    SB: TSpeedButtonEx;
begin
    GetCursorPos(mpos);
    c := 0;
    Timer_F_1.Enabled := False;
    for i := 1 to FGUIFormDropDownButtonCount do
    begin
      LBE := FindComponent('ListBoxEx_F_' + IntToStr(i)) as TListBoxEx;
      if (LBE = nil) or not LBE.Visible then Continue;
      Inc(c);
      if not ScreenPosInListBox(LBE, mpos) then
      begin
        SB := FindComponent('SpeedButtonEx_F_' + IntToStr(i)) as TSpeedButtonEx;
        if (SB <> nil) and ScreenPosInSButton(SB, mpos) then Continue;
        Timer_F_1.Tag := Timer_F_1.Tag - 1;
        if Timer_F_1.Tag <= 0 then
        begin
          Timer_F_1.Tag := 5;
          ShowListBox(LBE, False);
          if (SB <> nil) and SB.Down then SB.Down := False;
          Break;
        end;
      end
      else Timer_F_1.Tag := 5;
    end;
    if c > 0 then Timer_F_1.Enabled := True;
end;

procedure TGUI.Timer_F_4Timer(Sender: TObject);
begin
    HideAllListBoxEx_F_PopupsButNot(0);
    Timer_F_4.Enabled := False;
end;

procedure TGUI.SetListBoxWidth(LB: TListBoxEx);
var i, l: Integer;
begin
    for l := 0 to LB.Items.Count - 1 do
      if LB.Items[l][1] <> ' ' then LB.Items[l] := '    ' + LB.Items[l];
    l := SpeedButtonEx_F_1.Top + SpeedButtonEx_F_1.Height;
    if LB.Tag = 11 then l := ComboEdit_F_1.Top + ComboEdit_F_1.Height;
    LB.Height := Min(LB.Items.Count * LB.ItemHeight + 4, TabControl_F_1.Height - l);
    LB.Font.Size := 7;
    LB.Canvas.Font := LB.Font;
    LB.Repaint;
    i := 0;
    for l := 0 to LB.Items.Count - 1 do
      i := Max(i, LB.Canvas.TextWidth(LB.Items[l]));
    if LB.Width <> i + 28 then LB.Width := i + 28;
end;

procedure TGUI.ListboxPopup(var LB: TListBoxEx; const pos: TPoint);
var l: Integer;
begin
    if not LB.Visible then
    begin
      LB.Left := Min(pos.X, TabControl_F_1.Width - LB.Width);
      LB.Top := pos.Y;
      ShowListBox(LB, True);
      for l := 0 to LB.Items.Count - 1 do LB.Selected[l] := False;
      Timer_F_1.Tag := 5;
      Timer_F_1.Enabled := True;
    end;
end;

procedure TGUI.Timer_F_5Timer(Sender: TObject);  //enabled if sbutton entered
var Zeitdif, MPYdif, t, t2: Integer;
    MPos: Tpoint;
    SB: TSpeedButtonEx;
    LB:   TListBoxEx;
begin
    Timer_F_5.Interval := 100;
    Zeitdif := (GetTickCount and $FFFF) - (Timer_F_5.Tag and $FFFF) + 1;
    if Zeitdif < 1 then Inc(Zeitdif, $FFFF);
    GetCursorPos(MPos);
    MPYdif := (Timer_F_5.Tag shr 20) - MPos.Y;
    if abs(MPYdif * 16) div Zeitdif < 1 then   //? horizontal movements to another button popups new listbox fast
    begin
      Timer_F_5.Enabled := False;
      t := (Timer_F_5.Tag shr 16) and $F;
      if t = 12 then t2 := 11 else t2 := t;
      SB := FindComponent('SpeedButtonEx_F_' + IntToStr(t2)) as TSpeedButtonEx;
      if (SB = nil) or not SB.Enabled then Exit;
      LB := FindComponent('ListBoxEx_F_' + IntToStr(t)) as TListBoxEx;
      if ScreenPosInSButton(SB, MPos) then //new check if mouse on button
      begin
        Timer_F_4.Enabled := False;
        HideAllListBoxEx_F_PopupsButNot(t);
        if LB <> nil then ListboxPopup(LB, Point(SB.Left - 2, SB.Top + SB.Height));
        SB.Down := True;
      end
      else if (LB <> nil) and (not LB.Visible) then SB.Down := False;
    end;
end;

procedure ClearFormula(nr: Integer);
begin
    with GUI.HAddon.Formulas[nr] do
    begin
      iFnr := -1;
      CustomFname[0] := 0;
      iItCount := 0;
      iOptionCount := 0;
    end;
end;

procedure TGUI.SelectFormula(FName: String);
var i: Integer;
    s: String;
    success: LongBool;
begin
    if ListBoxEx_F_15.Visible then ShowListBox(ListBoxEx_F_15, False);
    s := Trim(FName);
    success := False;
    if s <> '' then
    begin
      if isInternFormula(s, i) then
      begin
        GetHAddOnFromInternFormula(@GUI.MHeader, i, TabControl_F_1.TabIndex);
        success := True;
      end else begin
        PutStringInCustomF(GUI.HAddon.Formulas[TabControl_F_1.TabIndex].CustomFname, s);
        if LoadCustomFormulaFromHeader(GUI.HAddon.Formulas[TabControl_F_1.TabIndex].CustomFname,
           PTCustomFormula(GUI.MHeader.PHCustomF[TabControl_F_1.TabIndex])^,    //could be in use by calc thread!
           GUI.HAddon.Formulas[TabControl_F_1.TabIndex].dOptionValue) then
        begin
          if TabControl_F_2.TabIndex <> 1 then
            if GUI.HAddon.Formulas[TabControl_F_1.TabIndex].iItCount < 1 then
              GUI.HAddon.Formulas[TabControl_F_1.TabIndex].iItCount := 1;
          CopyTypeAndOptionFromCFtoHAddon(GUI.MHeader.PHCustomF[TabControl_F_1.TabIndex],
            @GUI.HAddon, TabControl_F_1.TabIndex);
          success := True;
          GUI.HAddon.Formulas[TabControl_F_1.TabIndex].iFnr := 20;    //for backward compatibilty reason
        end;
      end;
    end;
    if not success then  //deselect formula
    begin
      ClearFormula(TabControl_F_1.TabIndex);
      TabControl_F_1Change(Self);
      Check4DandInfo;
    end else begin
      if TabControl_F_2.TabIndex <> 1 then
      if GUI.HAddon.Formulas[TabControl_F_1.TabIndex].iItCount < 1 then
        GUI.HAddon.Formulas[TabControl_F_1.TabIndex].iItCount := 1;
      TabControl_F_1Change(Self);
      CalcRstop;
      Check4DandInfo;
    end;
end;

procedure TGUI.ListBoxEx_F_1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i: Integer;
    LB: TListBoxEx;
    p: TPoint;
begin
    if Button = mbLeft then
    begin
      LB := Sender as TListBoxEx;
      i := LB.ItemIndex;
      if i >= 0 then SelectFormula(StrLastWords(LB.Items[i]));
      ShowListBox(LB, False);
      SetFocus;
      if LB.Tag <> 11 then
        (FindComponent('SpeedButtonEx_F_' + IntToStr(LB.Tag)) as TSpeedButtonEx).Down := False;
      Timer_F_1.Enabled := False;
    end
    else if Button = mbRight then
    begin
      LB := Sender as TListBoxEx;
      i := LB.ItemIndex;
      if i >= 0 then
      begin
        HighlightedFormula := StrLastWords(LB.Items[i]);
        if HighlightedFormula > '' then
        begin
          Hidethisformula1.Visible := True;
          p := LB.ClientToScreen(Point(X, Y));
          PopupMenuRateFormula.Popup(p.X + 3, p.Y);
        end;
      end;
    end;
end;

procedure TGUI.ListBoxEx_F_1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var mpos, rp: TPoint;
    i: Integer;
    LB: TListBoxEx;
begin
    GetCursorPos(mpos);
    LB := Sender as TListBoxEx;
    rp := LB.ScreenToClient(mpos);
    if (rp.X >= 0) and (rp.X < LB.Width) and
       (rp.Y >= 0) and (rp.Y < LB.Height) then
    begin
      i := LB.ItemAtPos(rp, True);
      if (i >= 0) and not LB.Selected[i] then LB.Selected[i] := True;
    end;
end;

procedure TGUI.ListBoxEx_F_1MouseEnter(Sender: TObject);
begin
    Timer_F_4.Enabled := False;
    HideAllListBoxEx_F_PopupsButNot((Sender as TListBoxEx).Tag);
end;

procedure TGUI.ListBoxEx_F_1MouseLeave(Sender: TObject); //leave triggers in XE2 also if on vertical scrollbar!
var mpos: TPoint;
    LB: TListBoxEx;
    SB: TSpeedButtonEx;
begin
    GetCursorPos(mpos);
    LB := Sender as TListBoxEx;
    SB := FindComponent('SpeedbuttonEx' + IntToStr(LB.Tag)) as TSpeedButtonEx;
    if (SB <> nil) and (not ScreenPosInSButton(SB, mpos)) and not ScreenPosInListBox(LB, mpos) //new, check if on box included scrollbar
      then Timer_F_4.Enabled := True;
end;

procedure TGUI.SpeedButton_F_3Click(Sender: TObject);   //Reset formulas
begin
    ResetFormulas(@GUI.HAddon);
  //  GUI.MHeader.byRepeatFrom := 0;
    GUI.MHeader.MinimumIterations := 1;  //not displayed...
    GUI.MHeader.Iterations := 60;
    GUI.MHeader.RStop := 16;
    TabControl_F_1.TabIndex := 0;
    SelectFormula('Integer Power');
    TabControl_F_2.TabIndex := 0;
    GUI.HAddon.Formulas[0].iItCount := 1;
    GUI.HAddon.bOptions1 := 0;
    GUI.HAddon.bHybOpt1 := 0;     //end1, repeat1            2x 4bit
    GUI.HAddon.bHybOpt2 := $151;  //start2, end2, repeat2    3x 4bit
    TabControl_F_1.OnChange(Self);
    UpdateFromHeader(@GUI.MHeader);
end;

procedure TGUI.RadioGroup_F_1Click(Sender: TObject);
begin
    if bUserChangeF then GUI.HAddon.bOptions3 := DECombineCmb.ItemIndex;
    Label_F_18.Visible := DECombineCmb.ItemIndex > 2;
    Edit_F_23.Visible := Label_F_18.Visible;
    Edit_F_25.Visible := DECombineCmb.ItemIndex > 4;
    Label_F_27.Visible := Edit_F_25.Visible;
    if Edit_F_23.Visible then if not Edit_F_25.Visible then
    begin
      Label_F_18.Caption := 'Ds:';
      Edit_F_23.Text := FloatToStrSingle(Min0MaxCS(GUI.MHeader.sDEcombS, 100));
      Edit_F_23.Hint := 'Absolute distance of the smooth combine functions,' + #13#10 +
                     'you can use scientific notation like 3e-5 for small values.' + #13#10 +
                     'Try 1/zoom to get close to a working value.';
    end else begin
      Label_F_18.Caption := 'Co:';
      Edit_F_23.Hint := 'Color Option:' + #13#10 +
                     '0:  Average of both formulas.' + #13#10 +
                     '1:  Color of first formula.' + #13#10 +
                     '2:  Color of second formula.';
      Edit_F_23.Text := IntToStr(GUI.MHeader.DEmixColorOption); //0..2
    end;
end;

procedure TGUI.Hidethisformula1Click(Sender: TObject);
begin //set formula status
    StoreFavouriteStatus(HighlightedFormula, (Sender as TMenuItem).Tag);
    LoadFormulaNames;
    if ListBoxEx_F_15.Visible then SpeedButton_F_4Click(Sender);
end;

procedure TGUI.SpeedButton_F_4Click(Sender: TObject);
var i, v: Integer;
begin
    if ListBoxEx_F_15.Visible then
    begin
      ListBoxEx_F_15.Visible := False;
      Button_F_3.Visible := False;
    end
    else
    begin
      ListBoxEx_F_15.Clear;
      try
        ListBoxEx_F_15.Items.LoadFromFile(IncludeTrailingPathDelimiter(IniDirs[3]) + 'FavouriteList.txt');
      except
        ListBoxEx_F_15.Clear;
      end;
      i := 0;
      while i < ListBoxEx_F_15.Items.Count do
      begin
        if (not TryStrToInt(StrFirstWord(ListBoxEx_F_15.Items[i]), v)) or (v > -2) then
        begin
          ListBoxEx_F_15.Selected[i] := True;
          ListBoxEx_F_15.DeleteSelected;
        end
        else
        begin
          ListBoxEx_F_15.Items[i] := StrLastWords(ListBoxEx_F_15.Items[i]);
          Inc(i);
        end;
      end;
      ShowListBox(ListBoxEx_F_15, True);
      Button_F_3.Visible := True;
    end;
end;

procedure TGUI.ListBoxEx_F_15MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var p: TPoint;
begin
    if Button = mbRight then
    begin
      if ListBoxEx_F_15.ItemIndex >= 0 then
      begin
        HighlightedFormula := Trim(ListBoxEx_F_15.Items[ListBoxEx_F_15.ItemIndex]);
        if HighlightedFormula > '' then
        begin
          Hidethisformula1.Visible := False;
          p := ListBoxEx_F_15.ClientToScreen(Point(X, Y));
          PopupMenuRateFormula.Popup(p.X + 3, p.Y);
        end;
      end;
    end;
end;

procedure TGUI.ListBoxEx_F_9DrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);  //odSelected
(*
  var i: Integer;
    sv: TSVec;
*)
begin
  inherited;
    //paint background on formula status, +vote: green, -vote: red
    with (Control as TListBox).Canvas do  { draw on control canvas, not on the form }
    begin
    // Does not work well themes
(*
      if odSelected in State then
        sv := ColToSVecNoScale(ColorToRGB(clHighLight))
      else
        sv := ColToSVecNoScale(ColorToRGB(clWindow));
      if not TryStrToInt(StrFirstWord((Control as TListBox).Items[Index]), i) then i := 1;
      if i <> 1 then
      begin
        if LengthOfSVec(sv) > 127 then
        begin
          if i > 1 then
          begin
            sv[1] := sv[1] - 25;
            sv[2] := sv[2] - 25;
          end else begin
            sv[0] := sv[0] - 25;
            sv[2] := sv[2] - 25;
          end;
        end else begin
          if i > 1 then
            sv[0] := sv[0] + 30
          else
            sv[1] := sv[1] + 30;
        end;
      end;
      Brush.Color := SVecToColNoScale(sv);
*)
      FillRect(Rect);       { clear the rectangle }
      TextOut(Rect.Left + 10, Rect.Top, StrLastWords((Control as TListBox).Items[Index]));  { display the text }
    end;
end;

procedure TGUI.ListBoxEx_F_11MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if Button = mbLeft then
    begin
      ListBoxEx_F_1MouseDown(Sender, Button, Shift, X, Y);
      ShowListBox(ListBoxEx_F_11, False);
    end;
end;

procedure TGUI.ComboEdit_F_1Change(Sender: TObject);
begin
    if bUserChangeF then      //update lbex11 for all possible formulanames, including text
    begin
      if Trim(ComboEdit_F_1.Text) > '' then
      begin
        MakeLB11list(ComboEdit_F_1.Text);
        if ListBoxEx_F_11.Items.Count > 0 then
        begin
          SetListBoxWidth(ListBoxEx_F_11);
          ListboxPopup(ListBoxEx_F_11, Point(ComboEdit_F_1.Left, ComboEdit_F_1.Top + ComboEdit_F_1.Height));
        end
        else ShowListBox(ListBoxEx_F_11, False);
      end;
    end;
end;

procedure TGUI.ComboEdit_F_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    13: begin   //return
          if ListBoxEx_F_11.Visible and (ListBoxEx_F_11.ItemIndex >= 0) then
            SelectFormula(StrLastWords(ListBoxEx_F_11.Items[ListBoxEx_F_11.ItemIndex]))
          else SelectFormula(ComboEdit_F_1.Text);
          ShowListBox(ListBoxEx_F_11, False);
        end;
    40: if ListBoxEx_F_11.Visible then  //down
          ListBoxEx_F_11.ItemIndex := Min(ListBoxEx_F_11.Items.Count - 1, ListBoxEx_F_11.ItemIndex + 1);
    38: if ListBoxEx_F_11.Visible then  //up
          ListBoxEx_F_11.ItemIndex := Max(0, ListBoxEx_F_11.ItemIndex - 1);
    end;
end;

procedure TGUI.ComboEdit_F_1Exit(Sender: TObject);
begin
    ShowListBox(ListBoxEx_F_11, False);
end;

procedure TGUI.TabControl_F_1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var mp: TPoint;
    i: Integer;
begin
    if Button = mbRight then
    begin
      GetCursorPos(mp);
      for i := 0 to 5 do PopupMenuCopyFormula.Items[i].Enabled := i <> TabControl_F_1.TabIndex;
      Shiftallformulasonetotheright1.Caption := 'Shift formulas ' +
           IntToStr(TabControl_F_1.TabIndex + 1) + ' to 5 a position to the right';
      Shiftallformulasonetotheright1.Visible := TabControl_F_1.TabIndex < 5;
      Shifttotheleft1.Caption := 'Shift formulas ' +
           IntToStr(TabControl_F_1.TabIndex + 1) + ' to 6 a position to the left';
      PopupMenuCopyFormula.Popup(mp.X, mp.Y);
    end;
end;

procedure TGUI.Copythevaluesto1Click(Sender: TObject);
var SourceNr, DestNr, i: Integer;
begin
    SourceNr := TabControl_F_1.TabIndex;
    if SourceNr = 0 then DestNr := 2 else DestNr := 1;
    DestNr := StrToIntTrim(InputBox('Copy the values', 'to formula nr:', IntToStr(DestNr))) - 1;
    if DestNr <> SourceNr then
    begin
      for i := 0 to GUI.HAddon.Formulas[SourceNr].iOptionCount - 1 do
        GUI.HAddon.Formulas[DestNr].dOptionValue[i] := GUI.HAddon.Formulas[SourceNr].dOptionValue[i];
      TabControl_F_1Change(Sender);
    end;
end;

procedure TGUI.Copythisformulatoformulanr11Click( Sender: TObject);
var SourceNr, DestNr, i, j: Integer;
    dOptionValues: array[0..15] of Double;
begin  //copy formula to...
    DestNr := Min(5, Max(0, (Sender as TMenuItem).Tag));
    SourceNr := TabControl_F_1.TabIndex;
    if DestNr <> SourceNr then
    begin
      GUI.HAddon.Formulas[DestNr] := GUI.HAddon.Formulas[SourceNr];
      for i := 0 to 1 do
      begin
        if i = 0 then j := SourceNr else j := DestNr;
        if GUI.HAddon.Formulas[j].iFnr < 20 then
          ParseCFfromOld(GUI.HAddon.Formulas[j].iFnr, GUI.MHeader.PHCustomF[j], dOptionValues)
        else
          LoadCustomFormulaFromHeader(GUI.HAddon.Formulas[j].CustomFname,
              PTCustomFormula(GUI.MHeader.PHCustomF[j])^, dOptionValues);
      end;
      TabControl_F_1Change(Sender);
    end;
end;

procedure TGUI.Shiftallformulasonetotheright1Click( Sender: TObject);
var StartNr, i: Integer;
    dOptionValues: array[0..15] of Double;
begin    // shitf all f's from tabnr one to right
    StartNr := TabControl_F_1.TabIndex;
    for i := 5 downto StartNr + 1 do
    begin
      GUI.HAddon.Formulas[i] := GUI.HAddon.Formulas[i - 1];
      if GUI.HAddon.Formulas[i].iFnr < 20 then
        ParseCFfromOld(GUI.HAddon.Formulas[i].iFnr, GUI.MHeader.PHCustomF[i], dOptionValues)
      else
        LoadCustomFormulaFromHeader(GUI.HAddon.Formulas[i].CustomFname,
            PTCustomFormula(GUI.MHeader.PHCustomF[i])^, dOptionValues);
    end;
    ClearFormula(StartNr);
    i := GUI.HAddon.bHybOpt1 shr 4;
    if i >= StartNr then GUI.HAddon.bHybOpt1 := (GUI.HAddon.bHybOpt1 and 7) or ((i + 1) shl 4);  //end1, repeat1
    i := GUI.HAddon.bHybOpt2 shr 8;
    if i >= StartNr then GUI.HAddon.bHybOpt2 := (GUI.HAddon.bHybOpt2 and $77) or ((i + 1) shl 8);  //start2, end2, repeat2
    CheckHybridOptions(@GUI.HAddon);
    TabControl_F_1Change(Sender);
end;

procedure TGUI.Shifttotheleft1Click(Sender: TObject);
var StartNr, i: Integer;
    dOptionValues: array[0..15] of Double;
begin    // shitf all f's from tabnr one to left
    StartNr := Max(0, TabControl_F_1.TabIndex - 1);
    for i := StartNr to 4 do
    begin
      GUI.HAddon.Formulas[i] := GUI.HAddon.Formulas[i + 1];
      if GUI.HAddon.Formulas[i].iFnr < 20 then
        ParseCFfromOld(GUI.HAddon.Formulas[i].iFnr, GUI.MHeader.PHCustomF[i], dOptionValues)
      else
        LoadCustomFormulaFromHeader(GUI.HAddon.Formulas[i].CustomFname,
            PTCustomFormula(GUI.MHeader.PHCustomF[i])^, dOptionValues);
    end;
    ClearFormula(5);
    i := GUI.HAddon.bHybOpt1 shr 4;
    if i >= Max(1, StartNr) then GUI.HAddon.bHybOpt1 := (GUI.HAddon.bHybOpt1 and 7) or ((i - 1) shl 4);  //end1, repeat1
    i := GUI.HAddon.bHybOpt2 shr 8;
    if i >= Max(1, StartNr) then GUI.HAddon.bHybOpt2 := (GUI.HAddon.bHybOpt2 and $77) or ((i - 1) shl 8);  //start2, end2, repeat2
    CheckHybridOptions(@GUI.HAddon);
    TabControl_F_1Change(Sender);
end;

procedure TGUI.ShowListBox(LB: TListBoxEx; const Visible: Boolean);
begin
  ShowScrollBar(LB.Handle, SB_VERT, False);
  LB.Visible := Visible;
  LB.Enabled := Visible;
  ShowScrollBar(LB.Handle, SB_VERT, Visible);
end;

procedure TGUI.ExchangeFormulaLeftBtnClick(Sender: TObject); //exchange with prev F
var t, i: Integer;
    HAF: THAformula;
    dOptionValues: array[0..15] of Double;
begin
  t := TabControl_F_1.TabIndex;
  if t > 0  then begin
    HAF := GUI.HAddon.Formulas[t];
    GUI.HAddon.Formulas[t] := GUI.HAddon.Formulas[t - 1];
    GUI.HAddon.Formulas[t - 1] := HAF;
    for i := t downto t - 1 do begin
      if GUI.HAddon.Formulas[i].iFnr < 20 then
        ParseCFfromOld(GUI.HAddon.Formulas[i].iFnr, GUI.MHeader.PHCustomF[i], dOptionValues)
      else
        LoadCustomFormulaFromHeader(GUI.HAddon.Formulas[i].CustomFname,
           PTCustomFormula(GUI.MHeader.PHCustomF[i])^, dOptionValues);
     end;
     TabControl_F_1.TabIndex := TabControl_F_1.TabIndex - 1;
     TabControl_F_1Change(Sender);
  end;
end;

procedure TGUI.ExchangeFormulaRightBtnClick(Sender: TObject);   //exchange with next F
var t, i: Integer;
    HAF: THAformula;
    dOptionValues: array[0..15] of Double;
begin
  t := TabControl_F_1.TabIndex;
  if t < 5  then begin
    HAF := GUI.HAddon.Formulas[t];
    GUI.HAddon.Formulas[t] := GUI.HAddon.Formulas[t + 1];
    GUI.HAddon.Formulas[t + 1] := HAF;
    for i := t to t + 1 do begin
      if GUI.HAddon.Formulas[i].iFnr < 20 then
        ParseCFfromOld(GUI.HAddon.Formulas[i].iFnr, GUI.MHeader.PHCustomF[i], dOptionValues)
      else
        LoadCustomFormulaFromHeader(GUI.HAddon.Formulas[i].CustomFname,
           PTCustomFormula(GUI.MHeader.PHCustomF[i])^, dOptionValues);
     end;
     TabControl_F_1.TabIndex := TabControl_F_1.TabIndex + 1;
     TabControl_F_1Change(Sender);
  end;
end;


//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

                     {  L  I  G  H  T  I  N  G  }

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

function GetDiffMapNr(LightPars: TPLightingParas9): Integer;
begin
    Result := LightPars.bColorMap or (LightPars.Lights[1].AdditionalByteEx shl 8);
end;

procedure TGUI.MakeHisto;
var x: Integer;
    PL: TPsiLight5;
    dHL: Double;
const dm: Double = 0.0000305175;
begin
    for x := 0 to 32767 do LColHisto[x] := 0;
    for x := 0 to 32767 do OTColHisto[x] := 0;
    LColInteriorHistoLength := Image_L_2.Width;
    SetLength(LColInteriorHisto, LColInteriorHistoLength);
    for x := 0 to LColInteriorHistoLength - 1 do LColInteriorHisto[x] := 0;
    PL := @GUI.siLight5[0];
    dHL := LColInteriorHistoLength - 1;
    for x := 0 to High(GUI.siLight5) do
    begin
      if PL.Zpos < 32768 then
      begin
        if PL.SIgradient < 32768 then
          Inc(LColHisto[PL.SIgradient])
        else
          Inc(LColInteriorHisto[Round(Sqrt(Sqrt((PL.SIgradient - 32768) * dm)) * dHL)]);
        Inc(OTColHisto[PL.OTrap and $7FFF]);
      end;
      Inc(PL);
    end;
    LColHistoMaxN := 1;
    LColInteriorHistoMaxN := 1;
    OTColHistoMaxN := 1;
    for x := 0 to 32767 do
      if LColHisto[x] > LColHistoMaxN then LColHistoMaxN := LColHisto[x];
    for x := 0 to 32767 do
      if OTColHisto[x] > OTColHistoMaxN then OTColHistoMaxN := OTColHisto[x];
    for x := 1 to LColInteriorHistoLength - 1 do
      if LColInteriorHisto[x] > LColInteriorHistoMaxN then
        LColInteriorHistoMaxN := LColInteriorHisto[x];
    RepaintColHisto;
end;

procedure TGUI.RepaintColHisto;
var x, y, c, x2, x3, a, x2inc: Integer;
    d, dmin, dmul: Double;
begin
    y := Image_L_1.Height + 1;
    with Image_L_1.Picture.Bitmap do
    begin
      SetSize(Image_L_1.Width, y - 1);
    //  Width  := Image_L_1.Width;
    //  Height := y - 1;
      if SBFineAdj.Down then
      begin
        dmin := Sqr((TBcolStartPos + 30) / 90) * 32767 - 10900;
        dmul := (Sqr((TBcolStopPos + 30) / 90) * 32767 - 10900 - dmin) / 32767;
        x2   := Round(-16384 * dmul + dmin);
      end else begin
        dmin := 0;
        dmul := 1;
        x2   := 0;
      end;
      for x := 0 to Width - 1 do
      begin
        if SBFineAdj.Down then
          x3 := Round((x * 65535 / (Width - 1) - 16384) * dmul + dmin)
        else
          x3 := Round(Sqr(x * 4 / (3 * (Width - 1))) * 32767 - 10900);
        x2inc := Sign(x3 - x2);
        a := 0;
        d := 0;
        if CheckBox_L_2.Checked then
        begin
          repeat
            if (x2 >= 0) and (x2 < 32768) then
            begin
              d := d + OTColHisto[x2];
              Inc(a);
            end;
            x2 := x2 + x2inc;
          until x2 = x3;
          if (OTColHistoMaxN <> 0) and (a <> 0) then d := d / (a * OTColHistoMaxN); //was: int overflow
        end else begin
          repeat
            if (x2 >= 0) and (x2 < 32768) then
            begin
              d := d + LColHisto[x2];
              Inc(a);
            end;
            x2 := x2 + x2inc;
          until x2 = x3;
          if (LColHistoMaxN <> 0) and (a <> 0) then d := d / (a * LColHistoMaxN);
        end;
        c := 255 - Round(Sqrt(Sqrt(Clamp01D(d))) * 255);
        Canvas.Pen.Color := c or (c shl 8) or (((c and $FE) + 200)  shl 15);
        Canvas.MoveTo(x, 0);
        Canvas.LineTo(x, y);
      end;
    end;
    y := Image_L_2.Height + 1;
    if Length(LColInteriorHisto) >= Image_L_2.Width then
    with Image_L_2.Picture.Bitmap do
    begin
      Width  := Image_L_2.Width;
      Height := y - 1;
      for x := 0 to Width - 1 do
      begin
        d := LColInteriorHisto[x] / LColInteriorHistoMaxN;     //read of adr 0 when starting with parameter m3p file! ->CB2.click
        if d > 1 then d := 1;
        c := 255 - Round(Sqrt(Sqrt(d)) * 255);
        Canvas.Pen.Color := c or (c shl 8) or (((c and $FE) + 200)  shl 15);
        Canvas.MoveTo(x, 0);
        Canvas.LineTo(x, y);
      end;
    end;
end;

procedure SetCosTabFunction; //.. function to interpolate and less vals in tab. +Also a similar power function with some tabs + ipol
var i, j, k, l: Integer;
    d: Double;
    e: Extended;
    TmpTabSmall: array[0..127] of Single;
begin
    for i := 0 to 127 do
    begin
      d := Cos(i * 0.0490873852123405184);    //old for navi: 0 to 2pi angle
      DiffCosTabNavi[0][i] := Clamp0D(d);           //average: 0.318
      DiffCosTabNavi[1][i] := Sqr(Clamp0D(d));       //average: 0.25
      DiffCosTabNavi[2][i] := d * s05 + s05;        //average: 0.5
      DiffCosTabNavi[3][i] := Sqr(d * s05 + s05);   //average: 0.375
      d := 1 - (i - 2) / 60;
      if d > 0.15 then DiffCosTabNsmall[0][i] := (d - 0.08) * 1.0869565 else
      if d <= 0 then DiffCosTabNsmall[0][i] := 0 else
        DiffCosTabNsmall[0][i] := Power(d, Max(1, (0.505 - d) * 3.8));
      DiffCosTabNsmall[1][i] := Sqr(Clamp0D(d));
      DiffCosTabNsmall[2][i] := d * s05 + s05;
      DiffCosTabNsmall[3][i] := Sqr(d * s05 + s05);
      d := 1 - (i - 2) / 380;
      if d >= 1 then PowerTabSmall[i] := 1 else
      if d <= 0 then PowerTabSmall[i] := 0 else PowerTabSmall[i] := Power(d, 38);
      GaussTabSmall[i] := Power(enat, -Sqr(i * 0.0503936));
    end;
    for k := 0 to 3 do
    begin
      for j := 0 to 127 do TmpTabSmall[j] := Sqrt(Max0S(DiffCosTabNsmall[k][j]));
      for j := 0 to 127 do
      begin
        e := 0;
        for i := 0 to 60 do
        begin
          l := Abs(j + i - 30);
          if l < 128 then e := e + TmpTabSmall[l];
        end;
        DiffCosTabNsmall[k + 4][j] := Sqr(e * 0.011 + Sqr(e * 0.007)); //DiffCosTabN[k + 4][Round(Min0MaxCS((j - 2) * 16384/121, 16383))];
      end;
    end;
//    showmessage(floattostr(DiffCosTabN[6][16383]) + ' ' + floattostr(DiffCosTabN[3][16383]));
end;

function FastPowLUT(base, expo: Single): Single; //for lighting spec calculation with float exponent!
var w1: Single;
    ip: Integer;
    w: TSVec;
    p1: TPSingleArray;
begin
    if base <= 0 then Result := 0 else
    if base >= 1 then Result := 1 else
    begin
      w1 := (1 - base) * 10 * expo;
      ip := Trunc(w1);
      if ip < 0 then Result := 1 else
      if ip > 123 then Result := 13e-7 / (w1 - 120) else
      begin
        w := MakeSplineCoeff(Frac(w1));
        p1 := @PowerTabSmall[ip + 1]; //0
        Result := p1[0] * w[0] + p1[1] * w[1] + p1[2] * w[2] + p1[3] * w[3];
  {      p1 := @PowerTabSmall[1][ip + 1];
        w1 := Min0MaxCS((Expo - 8) * 0.02, 1); //weight LUT 0->1
        Result := (Result + w1 * (p1[0] * w[0] + p1[1] * w[1] + p1[2] * w[2] + p1[3] * w[3] - Result));  }
      end;
    end;
end;

                                  //  ebp+8          eax
procedure MakeCubicWeightsFromT(const t: Single; var sv: TSVec);  //all weights 6 times bigger!
const s3: Single = 3;
    s6: Single = 6;
{begin
    sv[3] := t*t*t;
    sv[2] := 3*t*t;
    sv[0] := -sv[3] + sv[2] - 2*t;
    sv[1] := 3*sv[3] - 2*sv[2] - 3*t + 6;
    sv[2] := -3*sv[3] + sv[2] + 6*t;
    sv[3] := sv[3] - t;              }
asm
    fld  dword [ebp + 8]
    fld  st
    fmul st, st      //t*t,t
    fld  st
    fmul st, st(2)   //t³,t²,t
    fld  s3
    fmul st(2), st   //3, t³=sv[3], 3*t²=sv[2], t
    fld  st(2)       //sv[2], 3, sv[3], sv[2], t
    fsub st, st(2)   //sv[2]-sv[3], 3, sv[3], sv[2], t
    fsub st, st(4)   //sv[2]-sv[3]-t, 3, sv[3], sv[2], t
    fsub st, st(4)   //sv[2]-sv[3]-2*t, 3, sv[3], sv[2], t
    fstp dword [eax] //3, sv[3], sv[2], t
    fld  st(1)       //sv[3], 3, sv[3], sv[2], t
    fmul st, st(1)   //3*sv[3], 3, sv[3], sv[2], t
    fsub st, st(3)   //3*sv[3]-sv[2], 3, sv[3], sv[2], t
    fsub st, st(3)   //3*sv[3]-2*sv[2], 3, sv[3], sv[2], t
    fld  st(4)
    fmul st, st(2)
    fsubp
    fadd s6
    fstp dword [eax + 4]
    fmul st, st(1)
    fsubp st(2), st  //t³,3*t²-3*t³,t
    fsub st, st(2)
    fstp dword [eax + 12]  //3*t²-3*t³,t
    fxch
    fmul s6
    faddp
    fstp dword [eax + 8]
end;
                        //0..16383
function GetGaussFuncNavi(iL1, iL2: Integer): Single;
var i1, i2: Integer;
    t1, t2: Single;
    p1, p2: TPSingleArray;
const s1d128: Single = 1/128;
begin
    i1 := iL1 shr 7;
    i2 := iL2 shr 7;
    t1 := (iL1 and $7F) * s1d128;
    t2 := (iL2 and $7F) * s1d128;
    if i1 > 126 then
    begin
      i1 := 126;
      t1 := 1;
    end;
    if i2 > 126 then
    begin
      i2 := 126;
      t2 := 1;
    end;
    p1 := @GaussTabSmall[i1];
    p2 := @GaussTabSmall[i2];
    Result := (p1[0] + t1 * (p1[1] - p1[0])) * (p2[0] + t2 * (p2[1] - p2[0]));
end;
                           //  0..16383 +edges
function GetCosTabValNavi(Tnr, i1, i2: Integer): Single;
var i1t, i2t: Integer;
    t1, t2: Single;
    p1, p2: TPSingleArray;
const s1d128: Single = 1/128;
begin
    i1t := (i1 and $7FFF) shr 1;
    i2t := (i2 and $7FFF) shr 1;
    t1 := (i1t and $7F) * s1d128;
    t2 := (i2t and $7F) * s1d128;
    i1t := i1t shr 7;
    i2t := i2t shr 7;
    if i1t > 126 then
    begin
      i1t := 126;
      t1 := 1;
    end;
    if i2t > 126 then
    begin
      i2t := 126;
      t2 := 1;
    end;
    p1 := @DiffCosTabNavi[Tnr][i1t];
    p2 := @DiffCosTabNavi[Tnr][i2t];
    Result := (p1[0] + t1 * (p1[1] - p1[0])) * (p2[0] + t2 * (p2[1] - p2[0]));
end;

                   // 0..3          -1..1  0..1           0..1
function GetCosTabVal(const Tnr: Integer; const DotP, Rough: Single): Single;
var ip: Integer;
    t: Single;
    w: TSVec;
    p1: TPSingleArray;
begin //new function for tabs[0..(127)255]  (62)122 is midpoint=0 of DotP
    t := 62 - 60 * DotP;
    ip := Trunc(t) - 1;
    if ip < 0 then
    begin
      ip := 0;
      t := 0;
    end
    else if ip > 124 then
    begin
      ip := 124;
      t := 1;
    end
    else t := Frac(t);
    w := MakeSplineCoeff(t);     // MakeCubicWeightsFromT(t, w);
    if SupportSSE then
    asm
      mov edx, Tnr
      shl edx, 7
      add edx, ip
      lea eax, DiffCosTabNsmall + edx * 4
      movups xmm2, w
      movups xmm0, [eax]
      movups xmm1, [eax + $800]
      mulps  xmm0, xmm2
      mulps  xmm1, xmm2
      movaps xmm3, xmm0
      unpcklps xmm3, xmm1
      unpckhps xmm0, xmm1
      addps   xmm3, xmm0
      movhlps xmm0, xmm3
      addps  xmm3, xmm0
      movaps xmm2, xmm3
      shufps xmm2, xmm2, 1
      subss  xmm2, xmm3
      mulss  xmm2, Rough
      addss  xmm2, xmm3
      movss  Result, xmm2
    end
    else
    begin
      p1 := @DiffCosTabNsmall[Tnr][ip];
      Result := p1[0] * w[0] + p1[1] * w[1] + p1[2] * w[2] + p1[3] * w[3];
      p1 := @DiffCosTabNsmall[Tnr + 4][ip];
      Result := (Result + Rough * (p1[0] * w[0] + p1[1] * w[1] + p1[2] * w[2] + p1[3] * w[3] - Result));
    end;
end;

function GetCosTabValSqr(const Tnr: Integer; const DotP, Rough: Single): Single;
var ip: Integer;
    t: Single;
    w: TSVec;
    p1: TPSingleArray;
begin //new function for tabs[0..127]  62 is midpoint=0 of DotP
    t := 62 - 60 * DotP;
    ip := Trunc(t) - 1;
    if ip < 0 then
    begin
      ip := 0;
      t := 0;
    end
    else if ip > 124 then
    begin
      ip := 124;
      t := 1;
    end
    else t := Frac(t);
    w := MakeSplineCoeff(t);
    if SupportSSE then
    asm
      mov edx, Tnr
      shl edx, 7
      add edx, ip
      lea eax, DiffCosTabNsmall + edx * 4
      movups xmm2, w
      movups xmm0, [eax]
      movups xmm1, [eax + $800]
      mulps  xmm0, xmm2
      mulps  xmm1, xmm2
      movaps xmm3, xmm0
      unpcklps xmm3, xmm1
      unpckhps xmm0, xmm1
      addps   xmm3, xmm0
      movhlps xmm0, xmm3
      addps  xmm3, xmm0
      mulps  xmm3, xmm3
      movaps xmm2, xmm3
      shufps xmm2, xmm2, 1
      subss  xmm2, xmm3
      mulss  xmm2, Rough
      addss  xmm2, xmm3
      movss  Result, xmm2
    end
    else
    begin
      p1 := @DiffCosTabNsmall[Tnr][ip];
      Result := Sqr(p1[0] * w[0] + p1[1] * w[1] + p1[2] * w[2] + p1[3] * w[3]);
      p1 := @DiffCosTabNsmall[Tnr + 4][ip];
      Result := (Result + Rough * (Sqr(p1[0] * w[0] + p1[1] * w[1] + p1[2] * w[2] + p1[3] * w[3]) - Result));
    end;
end;

procedure TGUI.SetLightFromHeader(var Header: TMandHeader10);
var i: Integer;
begin
    bUserChangeL := False;
    with Header do
    try
      SBFineAdj.Down := (Light.TBoptions and $10000) > 0;
      TBcolStartPos  := Light.TBpos[9];
      TBcolStopPos   := Light.TBpos[10];
      TrackBar_L_14.Position := Light.VarColZpos;
      TrackBar_L_3.Position  := Light.TBpos[3] and $FFFF;
      TrackBar_L_19.Position := Light.TBpos[3] shr 16;
      TrackBar_L_20.Position := Light.PicOffsetX;
      TrackBar_L_21.Position := Light.PicOffsetY;
      TrackBar_L_22.Position := Light.PicOffsetZ;
      TrackBar_L_23.Position := ShortInt((Light.TBpos[11] shr 8) and $FF) + 53;
      TrackBar_L_24.Position := Light.RoughnessFactor;
      TrackBar_L_11.Position := Light.TBpos[11] and $FF;
      TrackBar_L_32.Position := Light.Lights[3].AdditionalByteEx;
      UpDownDiffMap.Position := GetDiffMapNr(@Light);
      CheckBox_L_15.Checked  := GetDiffMapNr(@Light) <> 0;
      if CheckBox_L_15.Checked then
      begin
        TrackBar_L_30.Position := (Light.TBpos[8] shr 20) and $FF;
        TrackBar_L_29.Position := (Light.TBpos[7] shr 12) and $FF;
        TrackBar_L_28.Position := (Light.TBpos[7] shr 20) and $FF;
        TrackBar_L_31.Position := Light.Lights[2].AdditionalByteEx;
      end else begin
        TrackBar_L_30.Position := 128;
        TrackBar_L_29.Position := 128;
        TrackBar_L_28.Position := 128;
        TrackBar_L_31.Position := 30;
      end;
      for i := 4 to 10 do if not (i in [7, 8]) then
(FindComponent('TrackBar_L_' + IntToStr(i)) as TTrackBar).Position := Light.TBpos[i];
      TrackBar_L_7.Position := Light.TBpos[7] and $FFF;
      TrackBar_L_8.Position := Light.TBpos[8] and $FFF;
      LAtmpLight := Light;
      SetSButtonColor(3, Light.AmbCol);
      SetSButtonColor(4, MakeDynFogCol);
      SetSButtonColor(6, Light.AmbCol2);
      SetSButtonColor(10, Light.DepthCol);
      SetSButtonColor(11, Light.DepthCol2);
      SetSButtonColor(30, Light.DynFogCol2);
      SetSDButtonColors;
      if (Light.TBoptions and $10000) > 0 then
      begin
        TrackBar_L_9.Position  := Integer(Light.FineColAdj1) - 30;
        TrackBar_L_10.Position := Integer(Light.FineColAdj2) - 30;
      end;
      TrackBar_L_12.Position := (Light.TBoptions and 127);
      TrackBar_L_13.Position := (Light.TBoptions shr 7) and 127;
      CheckBox_L_1.Checked   := (Light.TBoptions and $4000) <> 0;
      CheckBox_L_2.Checked   := (Light.TBoptions and $20000) <> 0;
      CheckBox_L_3.Checked   := (Light.TBoptions and $40000) <> 0;
      CheckBox_L_12.Checked  := (Light.TBoptions and $8000) = 0;
      CheckBox_L_13.Checked  := (Light.TBoptions and $80000) <> 0;     //smooth BGimage on load
      TrackBar_L_18.Position := (Light.TBoptions shr 23) and $3F;
      CheckBox_L_9.Checked   := (Light.TBoptions and $20000000) <> 0;  //BG+Amb light rel to object
      CheckBox_L_5.Checked   := (Light.AdditionalOptions and $80) <> 0;//convert to spherical on load
      CheckBox_L_10.Checked  := (Light.AdditionalOptions and 1) <> 0;  //Internal gamma of 2
      RadioGroup_L_1.ItemIndex := Light.Lights[1].FreeByte and 3;
      CheckBox_L_16.Checked  := (Light.Lights[2].FreeByte and 1) <> 0;
      CheckBox_L_17.Checked  := (Light.AdditionalOptions and 8) <> 0;  //Add BGpic light
      CheckBox_L_18.Checked  := (Light.AdditionalOptions and 4) <> 0;  //DiffMap relative to object. now: y+c comb
      CheckBox_L_19.Checked  := (Light.Lights[0].FreeByte and 1) <> 0; //Blend DynFog
      CheckBox_L_23.Checked  := (Light.Lights[0].FreeByte and 2) <> 0; //only add light
      //change on new lighting:
      CheckBox_L_20.Checked := (Light.AdditionalOptions and 16) <> 0;  //fit left+right edges in load
      CheckBox_L_21.Checked := (Light.AdditionalOptions and 32) <> 0;  //small bg image for ambient
      CheckBox_L_22.Checked := (Light.Lights[3].FreeByte and 1) <> 0;  //No color interpolation
      TrackBar_L_33.Position := Light.Lights[4].AdditionalByteEx;
      CheckBox_L_8.Checked := Light.BGbmp[0] <> 0;                    //BG picture -> try load on para load when Mid > 19!

      if (Light.TBoptions and $40000000) > 0 then SpeedButton_L_5.Down := True else
      if (Light.TBoptions and $80000000) > 0 then SpeedButton_L_8.Down := True else
                                                  SpeedButton_L_7.Down := True;

      TabControl_L_1.TabIndex := 0;
      TabControl_L_1Change(Self);

      SetLAplusPosToZero;
      for i := 0 to 5 do if (Light.Lights[i].Loption and 12) > 0 then SetPosLightTo0(i);

      UpdateTabHeader(-1);
      if ColorFormCreated and ColorForm.Visible then ColorForm.RepaintImage(@Light, False);

      if not AnsiSameText(CustomFtoStr(Light.BGbmp), CustomFtoStr(LastBGname)) then
      begin
        MakeLMPreviewImage(Image_L_5, @M3DBackGroundPic);
        FastMove(LAtmpLight.BGbmp, LastBGname, 24);
      end;

    finally
      bUserChangeL := True;
    end;
end;

procedure TGUI.PutLightFInHeader(var Header: TMandHeader10);
var i: Cardinal;
begin
    with Header do
    begin
      Light := LAtmpLight;
      for i := 3 to 11 do Light.TBpos[i] :=
                (FindComponent('TrackBar_L_' + IntToStr(i)) as TTrackBar).Position;

      Light.TBpos[3] := Light.TBpos[3] or (TrackBar_L_19.Position shl 16);  //fog far offset
      Light.TBpos[11] := Light.TBpos[11] or ((ShortInt(TrackBar_L_23.Position - 53) shl 8) and $FF00);    //ambient 2nd reflection

      if SBFineAdj.Down then
      begin
        Light.FineColAdj1 := Light.TBpos[9] + 30;
        Light.FineColAdj2 := Light.TBpos[10] + 30;
        Light.TBpos[9]  := TBcolStartPos;
        Light.TBpos[10] := TBcolStopPos;
      end
      else
      begin
        Light.FineColAdj1 := 0;
        Light.FineColAdj2 := 0;
      end;
      Light.PicOffsetX := TrackBar_L_20.Position;
      Light.PicOffsetY := TrackBar_L_21.Position;
      Light.PicOffsetZ := TrackBar_L_22.Position;
      Light.VarColZpos := TrackBar_L_14.Position;
      Light.RoughnessFactor := TrackBar_L_24.Position;
      if Panel_L_2.Visible then
      begin
        Light.bColorMap := UpDownDiffMap.Position and $FF;
        Light.Lights[1].AdditionalByteEx := UpDownDiffMap.Position shr 8;
        Light.TBpos[7] := Light.TBpos[7] or (TrackBar_L_29.Position shl 12) or (TrackBar_L_28.Position shl 20);  //diffcolormap x,y offsets
        Light.TBpos[8] := Light.TBpos[8] or (TrackBar_L_30.Position shl 20);
      end
      else
      begin
        Light.bColorMap := 0;
        Light.Lights[1].AdditionalByteEx := 0;
      end;
      Light.AdditionalOptions := (Ord(CheckBox_L_5.Checked) shl 7)
          or (Ord(CheckBox_L_10.Checked) and 1) //or (Min(1, RadioGroup_L_1.ItemIndex) shl 1)
          or ((Ord(CheckBox_L_20.Checked) and 1) shl 4) or ((Ord(CheckBox_L_17.Checked) and 1) shl 3)
          or ((Ord(CheckBox_L_18.Checked) and 1) shl 2) or ((Ord(CheckBox_L_21.Checked) and 1) shl 5);  //diffmap rel to object: now: comb map Y with diff colors!
      Light.Lights[1].FreeByte := RadioGroup_L_1.ItemIndex;
      if SpeedButton_L_5.Down then i := $40000000 else
      if SpeedButton_L_8.Down then i := $80000000 else i := 0;
      i := i or (actLightId shl 20);
      Light.Lights[0].AdditionalByteEx := actLightIdEx;
      Light.Lights[0].FreeByte := (Ord(CheckBox_L_19.Checked) and 1) or ((Ord(CheckBox_L_23.Checked) and 1) shl 1);
      Light.Lights[2].FreeByte := Ord(CheckBox_L_16.Checked) and 1;
      Light.Lights[3].FreeByte := Ord(CheckBox_L_22.Checked) and 1;
      Light.Lights[2].AdditionalByteEx := TrackBar_L_31.Position;
      Light.Lights[3].AdditionalByteEx := TrackBar_L_32.Position;
      Light.Lights[4].AdditionalByteEx := TrackBar_L_33.Position;
      Light.TBoptions := TrackBar_L_12.Position or
                         (TrackBar_L_13.Position shl 7) or
                         (Ord(CheckBox_L_1.Checked) shl 14) or
                         ((1 - Ord(CheckBox_L_12.Checked)) shl 15) or
                         (Ord(SBFineAdj.Down) shl 16) or
                         (Ord(CheckBox_L_2.Checked) shl 17) or
                         (Ord(CheckBox_L_3.Checked) shl 18) or
                         (Ord(CheckBox_L_13.Checked) shl 19) or
                         (Ord(CheckBox_L_9.Checked) shl 29) or
                         (TrackBar_L_18.Position shl 23) or i;
    end;
end;

function TGUI.TBChanged: LongBool;
var i: Integer;
    TB: TTrackBar;
const TBnr: array[0..24] of Byte = (3,4,5,6,7,8,9,10,11,12,13,14,18,19,20,21,22,
                                    23,24,28,29,30,31,32,33);
begin
    Result := False;
    for i := 0 to 24 do
    begin
      TB := FindComponent('TrackBar_L_' + IntToStr(TBnr[i])) as TTrackBar;
      if TB = nil then
        TBoldpos[i] := i
      else
      if TB.Position <> TBoldpos[i] then   //rangecheck
      begin
        Result := True;
        TBoldpos[i] := TB.Position;
      end;
    end;
end;

procedure TGUI.TrackBarExYangChange(Sender: TObject);
begin
    if bUserChangeL and TBChanged then TriggerRepaint;
    LastPositionDMScale[RadioGroup_L_1.ItemIndex] := TrackBar_L_31.Position; //diffmap mode
end;

procedure TGUI.TrackBar_L_33Change(Sender: TObject);
begin
    Label_L_45.Caption := FloatToStrSingle(Power(1.04, TrackBar_L_33.Position - 40));
    if bUserChangeL and TBChanged then TriggerRepaint;
end;

procedure PaintSDPreviewColors(LAtmpLight: TPLightingParas9; CanvasS, CanvasD: TCanvas; Wid: Integer);
var x, xFrom, xTo, actN: Integer;                                                      //34
    w1, sm: Single;
    bNoColIpol: LongBool;
begin
    actN   := 1;
    xFrom  := 0;
    sm     := Wid * s1d32767;
    with LAtmpLight^ do
    begin
      bNoColIpol := (Lights[3].FreeByte and 1) <> 0;
      xTo := Round(LCols[1].Position * sm);
      for x := 0 to Wid - 1 do  //33
      begin
        if (x > xTo) and (actN < 10) then
        begin
          Inc(actN);
          xFrom := xTo;
          if actN > 9 then xTo := Wid - 1 else xTo := Round(LCols[actN].Position * sm);
          if xTo <= xFrom then xTo := xFrom + 1;
        end;
        w1 := 1 - (x - xFrom) / Max(1, xTo - xFrom);
        if bNoColIpol then CanvasD.Pen.Color := LCols[actN - 1].ColorDif and $FFFFFF else
        CanvasD.Pen.Color :=    //diff
          InterpolateColor(LCols[actN - 1].ColorDif, LCols[actN mod 10].ColorDif, w1, 1 - w1);
        CanvasD.MoveTo(x + 2, 1);
        CanvasD.LineTo(x + 2, 12);
        if bNoColIpol then CanvasS.Pen.Color := LCols[actN - 1].ColorSpe and $FFFFFF else
        CanvasS.Pen.Color :=    //Spec
          InterpolateColor(LCols[actN - 1].ColorSpe, LCols[actN mod 10].ColorSpe, w1, 1 - w1);
        CanvasS.MoveTo(x + 2, 4);
        CanvasS.LineTo(x + 2, 12);
        if bNoColIpol then CanvasS.Pen.Color := TransparencyToColor(LCols[actN - 1].ColorSpe) else
        CanvasS.Pen.Color :=    //Transp
          InterpolateColor(TransparencyToColor(LCols[actN - 1].ColorSpe),
                           TransparencyToColor(LCols[actN mod 10].ColorSpe), w1, 1 - w1);
        CanvasS.MoveTo(x + 2, 1);
        CanvasS.LineTo(x + 2, 4);
     end;
   end;
end;

procedure TGUI.SetSDButtonColors;
var x, xFromI, xToI, actNI: Integer;
    w1, sm: Single;
    bNoColIpol: LongBool;
begin
    actNI  := 1;
    xFromI := 0;
    sm     := 34 * s1d32767;
    with LAtmpLight do
    begin
      bNoColIpol := (Lights[3].FreeByte and 1) <> 0;
      PaintSDPreviewColors(@LAtmpLight, SpeedButton_L_2.Glyph.Canvas, SpeedButton_L_1.Glyph.Canvas, 34);
      xToI := Round(ICols[1].Position * sm);
      for x := 0 to 33 do
      begin
        if (x > xToI) and (actNI < 4) then
        begin
          Inc(actNI);
          xFromI := xToI;
          if actNI > 3 then xToI := 33 else xToI := Round(ICols[actNI].Position * sm);
          if xToI <= xFromI then xToI := xFromI + 1;
        end;
        w1 := 1 - (x - xFromI) / (xToI - xFromI);
        if bNoColIpol then SpeedButton_L_33.Glyph.Canvas.Pen.Color := ICols[actNI - 1].Color and $FFFFFF else
        SpeedButton_L_33.Glyph.Canvas.Pen.Color :=    //cuts
          InterpolateColor(ICols[actNI - 1].Color, ICols[actNI and 3].Color, w1, 1 - w1);
        SpeedButton_L_33.Glyph.Canvas.MoveTo(x + 2, 4);
        SpeedButton_L_33.Glyph.Canvas.LineTo(x + 2, 12);
        if bNoColIpol then SpeedButton_L_33.Glyph.Canvas.Pen.Color :=
          TransparencyToColor(ICols[actNI - 1].Color) else
        SpeedButton_L_33.Glyph.Canvas.Pen.Color :=    //Transp+spec
          InterpolateColor(TransparencyToColor(ICols[actNI - 1].Color),
                           TransparencyToColor(ICols[actNI and 3].Color), w1, 1 - w1);
        SpeedButton_L_33.Glyph.Canvas.MoveTo(x + 2, 1);
        SpeedButton_L_33.Glyph.Canvas.LineTo(x + 2, 4);
     end;
   end;
end;

procedure TGUI.SetSButtonColor(ButtonNr: Integer; Color: TRGB);
var SB: TSpeedButton;
begin
    SB := FindComponent('SpeedButton_L_' + IntToStr(ButtonNr)) as TSpeedButton;
    if SB <> nil then
    begin
      SB.Glyph.Canvas.Pen.Color   := clBlack;
      SB.Glyph.Canvas.Brush.Color := RGBtoCardinal(Color);
      SB.Glyph.Canvas.Rectangle(1, 0, 14, 13);
    end;
end;

function TGUI.MakeDynFogCol: TRGB;
begin
    Result[0] := LAtmpLight.DynFogR;
    Result[1] := LAtmpLight.DynFogG;
    Result[2] := LAtmpLight.DynFogB;
end;

procedure TGUI.SpeedButton_L_1Click(Sender: TObject);
var T: Integer;
    tmpRGB: TRGB;
begin
    T := (Sender as TSpeedButton).Tag;
    if T in [3,4,6,10,11,12,30] then
    begin
      Case T of
         3: tmpRGB := LAtmpLight.AmbCol;
         4: tmpRGB := MakeDynFogCol;
         6: tmpRGB := LAtmpLight.AmbCol2;
        10: tmpRGB := LAtmpLight.DepthCol;
        11: tmpRGB := LAtmpLight.DepthCol2;
        12: tmpRGB := LAtmpLight.Lights[TabControl_L_1.TabIndex].Lcolor;
        30: tmpRGB := LAtmpLight.DynFogCol2;
      end;
      ColorDialog_L_1.Color := RGBtoCardinal(tmpRGB);
      if ColorDialog_L_1.Execute then
      begin
        tmpRGB := CardinalToRGB(ColorToRGB(ColorDialog_L_1.Color));
        SetSButtonColor(T, tmpRGB);
        Case T of
           3: LAtmpLight.AmbCol := tmpRGB;
           4: begin
                LAtmpLight.DynFogR := tmpRGB[0];
                LAtmpLight.DynFogG := tmpRGB[1];
                LAtmpLight.DynFogB := tmpRGB[2];
              end;
           6: LAtmpLight.AmbCol2   := tmpRGB;
          10: LAtmpLight.DepthCol  := tmpRGB;
          11: LAtmpLight.DepthCol2 := tmpRGB;
          12: LAtmpLight.Lights[TabControl_L_1.TabIndex].Lcolor := tmpRGB;
          30: LAtmpLight.DynFogCol2 := tmpRGB;
        end;
        TriggerRepaint;
      end;
    end;
end;

procedure TGUI.MakeGlyph(SB: TSpeedButton; PNr: Integer);
var BMP: TBitmap;
begin
    BMP := MakeColPresetGlyph(PNr);
    SB.Glyph.Assign(BMP);
    BMP.Free;
end;

procedure TGUI.N01Click(Sender: TObject);
var t: Integer;
    P: TLpreset20;
begin
    t := (Sender as TMenuItem).Tag;
    if t in [1..15] then
    begin
      if t > 5 then P := CustomPresets[t]
               else P := ConvertColPreset164To20(Presets[t]);
      LAtmpLight.DepthCol  := CardinalToRGB(P.DepthCol);
      LAtmpLight.DepthCol2 := CardinalToRGB(P.DepthCol2);
      SetSButtonColor(10, LAtmpLight.DepthCol);
      SetSButtonColor(11, LAtmpLight.DepthCol2);
      TriggerRepaint;
    end;
end;

procedure TGUI.MakeDepthColList;
var i: Integer;
    P: TLpreset20;
    bmp: TBitmap;
    MI: TMenuItem;
begin
    ImageList_L_1.Clear;
    PopupMenuLightBMP.Items.Clear;
    bmp := TBitmap.Create;
    bmp.PixelFormat := pf32Bit;
    bmp.Width := 32;
    bmp.Height := 16;
    for i := 1 to 15 do
    begin
      if i > 5 then P := CustomPresets[i]
               else P := ConvertColPreset164To20(Presets[i]);
      bmp.Canvas.Brush.Color := P.DepthCol and $FFFFFF;
      bmp.Canvas.FillRect(Rect(1,1,15,15));
      bmp.Canvas.Brush.Color := P.DepthCol2 and $FFFFFF;
      bmp.Canvas.FillRect(Rect(16,1,31,15));
      ImageList_L_1.Add(bmp, nil);
      MI := TMenuItem.Create(PopupMenuLightBMP);
      MI.Caption := IntToStr(i);
      MI.Tag := i;
      MI.ImageIndex := i - 1;
      MI.OnClick := N01Click;
      PopupMenuLightBMP.Items.Add(MI);
    end;
    bmp.Free;
end;

procedure TGUI.UpdateQuickLoadCB;
var F: TSearchRec;
begin
    ComboBox_L_3.Items.Clear;
    if FindFirst(IniDirs[7] + '*.m3l', faAnyFile, F) = 0 then
    begin
      repeat
        ComboBox_L_3.Items.Add(ChangeFileExt(F.Name, ''));
      until FindNext(F) <> 0;
    end;
    FindClose(F);
end;

procedure TGUI.Button_L_1Click(Sender: TObject);   //Load Light paras
begin
    if OpenDialog_L_1.Execute and GetLightParaFile(OpenDialog_L_1.FileName, GUI.MHeader.Light, CheckBox_L_11.Checked) then
    begin
      LoadBackgroundPicT(@GUI.MHeader.Light);
      SetLightFromHeader(GUI.MHeader);
      TriggerRepaint;
      ComboBox_L_3.ItemIndex := -1;
      RepaintColHisto;
    end;
end;

procedure TGUI.Button_L_2Click(Sender: TObject); //Save Light paras
var f: file;
begin
    if SaveDialog_L_1.Execute then
    begin
      PutLightFInHeader(GUI.MHeader);
      AssignFile(f, ChangeFileExtSave(SaveDialog_L_1.FileName, '.m3l'));
      Rewrite(f, 1);
      BlockWrite(f, GUI.MHeader.Light, SizeOf(GUI.MHeader.Light));
      CloseFile(f);
      UpdateQuickLoadCB;
    end;
end;

function TGUI.VisLightExBit(const Light: TLight8): Integer;
begin
    if (Light.Loption and 4) <> 0 then Result := (ComboBox_L_5.ItemIndex and 4) shl 5
    else Result := (ComboBox_L_4.ItemIndex and 4) shl 5;
end;

procedure TGUI.ComboBox_L_1Change(Sender: TObject);
begin
    if bUserChangeL then
    begin
      LAtmpLight.Lights[TabControl_L_1.TabIndex].LFunction :=         // vislight source dependend on choosen light...
        ComboBox_L_2.ItemIndex or (ComboBox_L_1.ItemIndex shl 4) or
        VisLightExBit(LAtmpLight.Lights[TabControl_L_1.TabIndex]);    // or ((ComboBox_L_4(5).ItemIndex and 4) shl 5 // = bit 8 of 8
      TriggerRepaint;                                          // or VisLightFuncEx(LightNr)
    end;
end;

procedure TGUI.SetLAplusPosToZero;
var x, y: Integer;
begin
    for y := 0 to 5 do for x := 0 to 2 do LAposMids[y, x] := 0;
    OldTB15Pos := 0;
    OldTB16Pos := 0;
    OldTB17Pos := 0;
end;

function TGUI.VisFuncToIndex(const Light: TLight8): Integer;
const Ctab: array[0..3] of Integer = (0, 3, 1, 2);
begin
    Result := Ctab[(Light.Loption shr 3) and 3] or ((Light.LFunction and 128) shr 5);
end;

function TGUI.IndexToVisFunc(i: Integer): Byte;
const Ctab: array[0..3] of Byte = (0, $10, $18, 8);
begin
    Result := Ctab[i and 3];
end;

procedure TGUI.Insertvolumetriclightcolor1Click(Sender: TObject);
var i: Integer;
begin   //insert vol light color in dynfogs
    i := Max(0, Min(5, StrToIntTrim(GUI.Edit_M_16.Text) - 1));
    LAtmpLight.DynFogCol2 := LAtmpLight.Lights[i].Lcolor;
    LAtmpLight.DynFogR := LAtmpLight.DynFogCol2[0];
    LAtmpLight.DynFogG := LAtmpLight.DynFogCol2[1];
    LAtmpLight.DynFogB := LAtmpLight.DynFogCol2[2];
    SetSButtonColor(4, LAtmpLight.DynFogCol2);
    SetSButtonColor(30, LAtmpLight.DynFogCol2);
    TriggerRepaint;
end;

function TGUI.GetPageContr1index(Loption: Byte): Integer;
const pc1: array[0..3] of Integer = (0, 2, 1, 0);
begin
    Result := pc1[(Loption shr 1) and 3];  //bit2: lmap bit3: poslight.. 0-0 1-2 2-1
end;

procedure TGUI.TabControl_L_1Change(Sender: TObject); //Light nr tab
var i, n, n2: Integer;
    btmp: LongBool;
begin
    btmp := bUserChangeL;
    bUserChangeL := False;
    try
      i := TabControl_L_1.TabIndex;
      CheckBox_L_4.Checked := (LAtmpLight.Lights[i].Loption and 1) = 0;
      CheckBox_L_7.Checked := (LAtmpLight.Lights[i].Loption and $40) = 0;
      n := PageControl_L_1.TabIndex;
      n2 := GetPageContr1index(LAtmpLight.Lights[i].Loption);
      if (n <> 1) or (n = n2) then PageControl_L_1.SelectNextPage(n = 0);
      n := PageControl_L_1.TabIndex;
      if n <> n2 then PageControl_L_1.SelectNextPage(n < n2);
      SetSButtonColor(12, LAtmpLight.Lights[i].Lcolor);
      ComboBox_L_2.ItemIndex := LAtmpLight.Lights[i].LFunction and $07;          //spec func
      ComboBox_L_1.ItemIndex := (LAtmpLight.Lights[i].LFunction shr 4) and 3;    //amb func
      ComboBox_L_4.ItemIndex := VisFuncToIndex(LAtmpLight.Lights[i]);    //vis poslight func
      ComboBox_L_5.ItemIndex := ComboBox_L_4.ItemIndex;
    finally
      bUserChangeL := btmp;
    end;
end;

procedure TGUI.TrackBarExXangChange(Sender: TObject);  //global light angles
var d7: Double7B;
begin
    if bUserChangeL then
    begin
      d7 := LAtmpLight.Lights[TabControl_L_1.TabIndex].LXpos;
      LAtmpLight.Lights[TabControl_L_1.TabIndex].LXpos := DoubleToD7B(TrackBarExXang.Position * -Pid180);
      if not D7Bequal(d7, LAtmpLight.Lights[TabControl_L_1.TabIndex].LXpos) then TriggerRepaint;
    end;
end;

procedure TGUI.TrackBarYangleChange(Sender: TObject);
var d7: Double7B;
begin
    if bUserChangeL then
    begin
      d7 := LAtmpLight.Lights[TabControl_L_1.TabIndex].LYpos;
      LAtmpLight.Lights[TabControl_L_1.TabIndex].LYpos := DoubleToD7B(TrackBarExYang.Position * Pid180);
      if not D7Bequal(d7, LAtmpLight.Lights[TabControl_L_1.TabIndex].LYpos) then TriggerRepaint;
    end;
end;

procedure TGUI.SetStartPreset;
var P: TLpreset20;
begin
    P := ConvertColPreset16To20(@StartPreset);
    P.Lights[2] := defaultLight8;  //lights[1] too..
    P.Lights[3] := defaultLight8;
    FastMove(P.AmbCol, LAtmpLight.AmbCol, 16);
    FastMove(P.Lights, LAtmpLight.Lights, 316);
    UpdateLightParasAbove3(LAtmpLight); //new
    PutLightFInHeader(GUI.MHeader);
    GUI.MHeader.Light.DynFogCol2 := MakeDynFogCol;
    SetLightFromHeader(GUI.MHeader);
    TrackBar_L_7.Position := StartPreset.TB578pos[0];
    TrackBar_L_5.Position := StartPreset.TB578pos[1];
    TrackBar_L_8.Position := StartPreset.TB578pos[2];
end;

procedure TGUI.SetPresetL(nr: Integer; KeepLights: LongBool);
var P: TLpreset20;
    i: Integer;
    ba: array[0..5] of Byte;
begin
    if nr > 5 then P := CustomPresets[nr]
              else P := ConvertColPreset164To20(Presets[nr]);
    UpdatePresetFrom20(P);
    FastMove(P.AmbCol, LAtmpLight.AmbCol, 15);
    if not KeepLights then
    begin
      for i := 0 to 5 do if (P.Lights[i].Loption and 1) = 0 then  //only lights that are on, else just turn off...
      begin
        // FastMove(P.Lights[i], LAtmpLight.Lights[i], 32)
        FastMove(P.Lights[i], LAtmpLight.Lights[i], 16);  //only up to AdditionalByteEx
        LAtmpLight.Lights[i].LYpos := P.Lights[i].LYpos;
        LAtmpLight.Lights[i].LZpos := P.Lights[i].LZpos;
      end
      else LAtmpLight.Lights[i].Loption := LAtmpLight.Lights[i].Loption or 1;
    end
    else for i := 0 to 5 do ba[i] := LAtmpLight.Lights[i].LFunction and $80;
    FastMove(P.LCols, LAtmpLight.LCols, 124); //object cols out+inside
    LAtmpLight.TBoptions := (LAtmpLight.TBoptions and $FF8FFFFF) or (4 shl 20);
    UpdateLightParasAbove3(LAtmpLight);
    LAtmpLight.Lights[3].FreeByte := P.Lights[3].FreeByte; //NN col ipol
    if KeepLights then for i := 0 to 5 do
      LAtmpLight.Lights[i].LFunction := (LAtmpLight.Lights[i].LFunction and $7F) or ba[i]; //visLight nr4
    SetSButtonColor(3, LAtmpLight.AmbCol);
    SetSButtonColor(4, MakeDynFogCol);
    SetSButtonColor(6, LAtmpLight.AmbCol2);
    SetSButtonColor(10, LAtmpLight.DepthCol);
    SetSButtonColor(11, LAtmpLight.DepthCol2);
    LAtmpLight.DynFogCol2 := MakeDynFogCol;       //DFC2 is not in preset
    SetSButtonColor(30, LAtmpLight.DynFogCol2);
    bUserChangeL := False;
    CheckBox_L_22.Checked := LAtmpLight.Lights[3].FreeByte <> 0;
    SetSDButtonColors;
    TrackBar_L_7.Position := P.TB578pos[0];
    TrackBar_L_5.Position := P.TB578pos[1];
    TrackBar_L_8.Position := P.TB578pos[2];
    if ColorForm.Visible then ColorForm.RepaintImage(@LAtmpLight, False);
    if not KeepLights then
    begin
      TabControl_L_1Change(Self);
      SetLAplusPosToZero;
      for i := 0 to 5 do if (p.Lights[i].Loption and 12) > 0 then SetPosLightTo0(i);
      UpdateTabHeader(-1);
    end;
    ComboBox_L_3.ItemIndex := -1;
    bUserChangeL := True;
end;

procedure TGUI.GetPresetL(nr: Integer);
begin
    if nr > 5 then
    begin
      FastMove(LAtmpLight.AmbCol, CustomPresets[nr].AmbCol, 16);
      FastMove(LAtmpLight.Lights, CustomPresets[nr].Lights, 316);
      CustomPresets[nr].TB578pos[0] := TrackBar_L_7.Position;
      CustomPresets[nr].TB578pos[1] := TrackBar_L_5.Position;
      CustomPresets[nr].TB578pos[2] := TrackBar_L_8.Position;
    end;
end;

procedure TGUI.SpeedButton_L_15Click(Sender: TObject); //preset pushed
var SB: TSpeedButton;
    t, i: Integer;
begin
    SB := Sender as TSpeedButton;
    t  := SB.Tag;
    if SB.Cursor = crUpArrow then
    begin
      SpeedButtonMem.Down := False;
      for i := 20 to 29 do
        (FindComponent('SpeedButton_L_' + IntToStr(i)) as TSpeedButton).Cursor := crDefault;
      GetPresetL(t);
      SaveColPreset(t - 6);
      MakeGlyph(SB, t);
    end else begin
      SetPresetL(t, CheckBox_L_11.Checked);
      TriggerRepaint;
    end;
end;

procedure TGUI.SpeedButtonMemClick(Sender: TObject);
var i: Integer;
begin
    if SpeedButton_L_20.Cursor = crUpArrow then
    begin
      for i := 20 to 29 do
        (FindComponent('SpeedButton_L_' + IntToStr(i)) as TSpeedButton).Cursor := crDefault;
      SpeedButtonMem.Down := False;
    end else begin
      for i := 20 to 29 do
        (FindComponent('SpeedButton_L_' + IntToStr(i)) as TSpeedButton).Cursor := crUpArrow;
    end;
end;

procedure TGUI.SBFineAdjClick(Sender: TObject);
begin
    if SBFineAdj.Down then
    begin
      TBcolStartPos := TrackBar_L_9.Position;
      TBcolStopPos  := TrackBar_L_10.Position;
      TrackBar_L_9.Position  := 0;
      TrackBar_L_10.Position := 60;
    end
    else
    begin
      bUserChangeL := False;
      TrackBar_L_9.Position  := TBcolStartPos;
      bUserChangeL := True;
      TrackBar_L_10.Position := TBcolStopPos;
    end;
    RepaintColHisto;
end;

procedure TGUI.CheckBox_L_1Click(Sender: TObject); //Color cycling
begin
    if bUserChangeL then TriggerRepaint;
end;

procedure TGUI.CheckBox_L_21Click(Sender: TObject); //use a small image as ambient color
begin
    if CheckBox_L_21.Checked then
    begin
      if CheckBox_L_8.Checked then
      begin
        MakeSmallLMimage(@M3DSmallBGpic, @M3DBackGroundPic);
        //test:
     //   MakeLMPreviewImage(Image_L_5, @M3DSmallBGpic);
      end
      else CheckBox_L_21.Checked := False;
    end;
    SpeedButton_L_3.Enabled := not CheckBox_L_21.Checked;
    SpeedButton_L_6.Enabled := not CheckBox_L_21.Checked;
    TrackBar_L_8.Enabled := not CheckBox_L_21.Checked;
    if bUserChangeL then TriggerRepaint;
end;

procedure TGUI.CheckBox_L_22Click(Sender: TObject);
begin
    LAtmpLight.Lights[3].FreeByte := Ord(CheckBox_L_22.Checked) and 1;
    if ColorFormCreated and ColorForm.Visible then ColorForm.RepaintImage(@LAtmpLight, False);
    SetSDButtonColors;
    if bUserChangeL then TriggerRepaint;
end;

procedure TGUI.CheckBox_L_2Click(Sender: TObject);
begin
    RepaintColHisto;
    if bUserChangeL then TriggerRepaint;
end;

procedure TGUI.SpeedButton_L_2Click(Sender: TObject); //Object Colors change
begin
    ColorForm.Visible := True;
    ColorForm.BringToFront;
    if (Sender is TSpeedButton) and ((Sender as TSpeedButton).Tag = 33) then
      ColorForm.RadioGroup1.ItemIndex := 1 else ColorForm.RadioGroup1.ItemIndex := 0;
end;

procedure TGUI.UpdateTabHeader(nr: Integer);
var i, i1, i2: Integer;
begin
    i1 := nr;
    i2 := nr;
    if nr < 0 then
    begin
      i1 := 0;
      i2 := 5;
    end;
    for i := i1 to i2 do if (LAtmpLight.Lights[i].Loption and 1) = 0 then
      TabControl_L_1.Tabs[i] := 'Li.' + IntToStr(i + 1) + ' •'
    else
      TabControl_L_1.Tabs[i] := 'Li.' + IntToStr(i + 1);
end;

procedure TGUI.CheckBox_L_4Click(Sender: TObject);
begin    //light on/off
    if bUserChangeL then
    begin
      LAtmpLight.Lights[TabControl_L_1.TabIndex].LOption := (LAtmpLight.Lights[TabControl_L_1.TabIndex].LOption and $F8)
        or (1 - (Byte(CheckBox_L_4.Checked) and 1)) or (GetPageContr1index(PageControl_L_1.TabIndex shl 1) shl 1);
      TriggerRepaint;
    end;
    UpdateTabHeader(TabControl_L_1.TabIndex);
end;

procedure TGUI.CheckBox_L_7Click(Sender: TObject);  //HS enabled = bit7, default = on = 0
begin
    if bUserChangeL then
    begin
      if CheckBox_L_7.Checked then LAtmpLight.Lights[TabControl_L_1.TabIndex].Loption :=
        LAtmpLight.Lights[TabControl_L_1.TabIndex].Loption and $BF
      else LAtmpLight.Lights[TabControl_L_1.TabIndex].Loption :=
        LAtmpLight.Lights[TabControl_L_1.TabIndex].Loption or $40;
      if CheckBox_L_4.Checked then TriggerRepaint;
    end;
end;

procedure TGUI.SetPosLightTo0(tab: Integer);
begin
    TPVec3D(@LAposMids[tab])^ := DVecFromLightPos(LAtmpLight.Lights[tab]);
    OldTB15Pos := 0;
    OldTB16Pos := 0;
    OldTB17Pos := 0;
end;

procedure TGUI.PageControl_L_1Change(Sender: TObject);
var i: Integer;
    b: LongBool;
begin
    i := TabControl_L_1.TabIndex;
    b := bUserChangeL;
    if b then LAtmpLight.Lights[i].Loption := (LAtmpLight.Lights[i].Loption and $F9) or
                                              (GetPageContr1index(PageControl_L_1.TabIndex shl 1) shl 1);
    SpeedButton_L_12.Visible := PageControl_L_1.TabIndex < 2;
    ComboBox_L_1.Enabled := SpeedButton_L_12.Visible;
    ComboBox_L_2.Enabled := SpeedButton_L_12.Visible;

    bUserChangeL := False;
    if PageControl_L_1.TabIndex = 0 then  //global light
    begin
      if b then
      begin
        LAtmpLight.Lights[i].LightMapNr := 0;
        TrackBarExXang.Position := 0;
        TrackBarExYang.Position := 0;
        LAtmpLight.Lights[i].LYpos := CDouble7B0;
        LAtmpLight.Lights[i].LXpos := CDouble7B0;
        LAtmpLight.Lights[i].Lamp := Word(SingleToShortFloat(1));
      end else begin
        TrackBarExYang.Position := Round(D7BtoDouble(LAtmpLight.Lights[i].LYpos) * -M180dPi);
        TrackBarExXang.Position := Round(D7BtoDouble(LAtmpLight.Lights[i].LXpos) * M180dPi);
      end;
      CheckBox_L_6.Checked := (LAtmpLight.Lights[i].Loption and $20) > 0;
    end
    else if PageControl_L_1.TabIndex = 1 then
    begin        //positional light
      if b then LAtmpLight.Lights[i].LightMapNr := 0;
      TrackBarExXpos.Position := 0;
      TrackBarExYpos.Position := 0;
      TrackBarExZpos.Position := 0;
      OldTB15pos := 0;
      OldTB16pos := 0;
      OldTB17pos := 0;
      if b then //new: set light amount based on zoom
        LAtmpLight.Lights[i].Lamp := Word(SingleToShortFloat(1 / GUI.MHeader.dZoom));
      Edit_L_1.Text := ShortFloatToStr(ShortFloat(LAtmpLight.Lights[i].Lamp)); //FloatToStrSingle(ShortFloatToSingle(@LAtmpLight.Lights[i].Lamp));
    end
    else  //LightMap
    begin
      if b then
      begin
        Inc(RepaintCounter);
        TrackBar_L_26.Position := 128;
        TrackBar_L_25.Position := 128;
        TrackBar_L_27.Position := 128;
        LAtmpLight.Lights[i].LXpos[0] := 128;
        LAtmpLight.Lights[i].LYpos[0] := 128;
        LAtmpLight.Lights[i].LZpos[0] := 128;
        UpDownLight.Position := 1;
        LAtmpLight.Lights[i].LightMapNr := 1;
        LAtmpLight.Lights[i].Lamp := Word(SingleToShortFloat(1));
      end else begin
        TrackBar_L_26.Position := LAtmpLight.Lights[i].LXpos[0];
        TrackBar_L_25.Position := LAtmpLight.Lights[i].LYpos[0];
        TrackBar_L_27.Position := LAtmpLight.Lights[i].LZpos[0];
        UpDownLight.Position := LAtmpLight.Lights[i].LightMapNr;
        if LAtmpLight.Lights[i].LightMapNr = 0 then
        begin
          LAtmpLight.Lights[i].LightMapNr := 1;
          UpDownLight.Position := 1;
          TriggerRepaint;
        end;
      end;
      CheckBox_L_14.Checked := (LAtmpLight.Lights[i].Loption and $20) > 0;
      LoadLightMapNr(UpDownLight.Position, @LightMaps[i]);
      MakeLMPreviewImage(Image_L_3, @LightMaps[TabControl_L_1.TabIndex]);
    end;
    Edit_L_1.Text := ShortFloatToStr(ShortFloat(LAtmpLight.Lights[i].Lamp));
    bUserChangeL := b;
    if b then TriggerRepaint;
end;

procedure TGUI.TrackBarExXposChange(Sender: TObject);    //posLight
var dm, d: Double;
    dv, lp, lv, cp: TVec3D;
    m: TMatrix3;
    i: Integer;
begin
    if bUserChangeL then
    begin
      i := TabControl_L_1.TabIndex;
      CalcStepWidth(@GUI.MHeader);
      m := NormaliseMatrixTo(1, @GUI.MHeader.hVGrads);

      cp := CalcCamPos(@GUI.MHeader);
      lp := DVecFromLightPos(LAtmpLight.Lights[i]);
      lv := SubtractVectors(lp, cp);  //vec from cam to light

      if GUI.MHeader.bStereoMode = 2 then d := 180 else d := GUI.MHeader.dFOVy;

   //   dm := Abs(DotOfVectors(@dv, @m[2]));      //distance from viewplane to lightpos

      dm := LengthOfVec(lv);

      dm := (GUI.MHeader.dStepWidth + dm * Sin(d * Pid180 / GUI.MHeader.Height))
            * LengthOfSize(@GUI.MHeader) * 0.0025;

      dv[0] := (TrackBarExXpos.Position - OldTB16pos) * dm;   //-180..180 pos
      dv[1] := (TrackBarExYpos.Position - OldTB15pos) * -dm;
      dm := (TrackBarExZpos.Position - OldTB17pos) * dm;  //new
      dv[2] := 0; //new
      OldTB15pos := TrackBarExYpos.Position;
      OldTB16pos := TrackBarExXpos.Position;

      //lv rotated m (like in normals calc rough) for movement?

      TranslatePos(@lp, @dv, @m);
      if TrackBarExZpos.Position <> OldTB17pos then   //new
      begin
        OldTB17pos := TrackBarExZpos.Position;
        dv := NormaliseVectorTo(1, lv);
        mAddVecWeight(@lp, @dv, dm);
      end;
      SetLightPosFromDVec(LAtmpLight.Lights[i], lp);
      LAposMids[i] := TPos3D(DVecFromLightPos(LAtmpLight.Lights[i]));
      TriggerRepaint;
    end;
end;

procedure TGUI.TrackBarExXposMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    bUserChangeL := False;
    try
      (Sender as TTrackBarEx).Position := 0;
      if Sender = TrackBarExYpos then OldTB15pos := 0 else
      if Sender = TrackBarExXpos then OldTB16pos := 0 else
      if Sender = TrackBarExZpos then OldTB17pos := 0;
    finally
      bUserChangeL := True;
    end;
end;

procedure TGUI.UpDownXposClick(Sender: TObject; Button: TUDBtnType); //poslight move 1 step
var t, i: Integer;
    d: Double;
    dv, lv: TVec3D;
    m: TMatrix3;
begin
    i := TabControl_L_1.TabIndex;
    CalcStepWidth(@GUI.MHeader);
    m := NormaliseMatrixTo(1, @GUI.MHeader.hVGrads);
    dv := GetRealMidPos(@GUI.MHeader);
    mAddVecWeight(@dv, @m[2], GUI.MHeader.dZstart - GUI.MHeader.dZmid); //Startpos on viewplane
    lv := DVecFromLightPos(LAtmpLight.Lights[i]);
    dv := SubtractVectors(@lv, dv);  //vec from cam to light
    d := Abs(DotOfVectors(@dv, @m[2]));                      //distance from viewplane to lightpos
    d := (GUI.MHeader.dStepWidth + d * Sin(GUI.MHeader.dFOVy * Pid180 / GUI.MHeader.Height)) * s05;
    t := (Sender as TUpDown).Tag;
    if Button <> btNext then d := -d;
    if t = 1 then d := -d;
    mAddVecWeight(@lv, @m[t], d);
    SetLightPosFromDVec(LAtmpLight.Lights[i], lv);
    mAddVecWeight(@LAposMids[i], @m[t], d);
    TriggerRepaint;
end;

procedure TGUI.UpDown_L_4Click(Sender: TObject; Button: TUDBtnType);
begin
    if Button = btPrev then SpinButton_L_Down else
    if Button = btNext then SpinButton_L_Up;
end;

procedure TGUI.Edit_L_1Change(Sender: TObject);
var d: Double;
begin
    if bUserChangeL then
    begin
      if StrToFloatKtry(Edit_L_1.Text, d) then
      begin
        LAtmpLight.Lights[TabControl_L_1.TabIndex].Lamp := Word(SingleToShortFloat(d));
        TriggerRepaint;
      end;
    end;
end;

procedure TGUI.Edit_L_2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin   //Rightclick on MapEditField will bring up opendialog for lightmap
    if Button = mbRight then
    begin
      SetDialogDirectory(OpenPictureDialog1, IniDirs[9]);
      OpenPictureDialog1.FileName := (Sender as TEdit).Text;
      if OpenPictureDialog1.Execute and (GetFirstNumberFromFilename(OpenPictureDialog1.FileName) > '') then
        (Sender as TEdit).Text := GetFirstNumberFromFilename(OpenPictureDialog1.FileName);
    end;
end;

procedure TGUI.ButtonGetPosClick(Sender: TObject);
begin
    if ButtonGetPos.Caption = 'image' then
    begin
      ButtonGetPos.Caption := 'mid';
      GUI.iGetPosFromImage := 0;
      GUI.SetImageCursor;
    end
    else
    begin
      if PostProForm.CheckBox_P_21.Checked then PostProForm.CheckBox_P_21.Checked := False;
      if PostProForm.CheckBox_P_25.Checked then PostProForm.CheckBox_P_25.Checked := False;
      ButtonGetPos.Caption := 'image';
      GUI.iGetPosFromImage := 2;
      GUI.MButtonsUp;
      GUI.Image_M_1.Cursor := crCross;
      bUserChangeL := False;
      SetPosLightTo0(TabControl_L_1.TabIndex);
      TrackBarExYpos.Position := 0;
      TrackBarExXpos.Position := 0;
      TrackBarExZpos.Position := 0;
      bUserChangeL := True;
    end;
end;

procedure TGUI.PageControl_L_1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
    if bUserChangeL then SetPosLightTo0(TabControl_L_1.TabIndex);
end;

procedure TGUI.TabControl_L_1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
    if (PageControl_L_1.ActivePageIndex = 1) then SetPosLightTo0(TabControl_L_1.TabIndex);
end;

procedure TGUI.FogResetButtonClick(Sender: TObject);
begin
    TrackBar_L_3.Position := 128;
    TrackBar_L_6.Position := 53;
    TrackBar_L_19.Position := 128;
end;

function FindVecAngles(var d1, d2: Double; sv: TPSVec; m: TPMatrix3; bAbs: LongBool): Double;
var i, iskip, x, y: Integer;
    dmin, dt, db1, db2: Double;
    svt: TSVec;
function AbsErr(sv1, sv2: TPSVec): Double;
begin
    Result := Abs(sv1[0] - sv2[0]) + Abs(sv1[1] - sv2[1]) + Abs(sv1[2] - sv2[2]);
end;
begin
    dmin := 1000;
    for y := -5 to 5 do for x := -5 to 5 do
    begin
      d1 := x * Pi * 0.2;
      d2 := y * Pi * 0.2;
      BuildViewVectorFOV(d2, d1, @svt);
      SVectorChangeSign(@svt);
      if bAbs then RotateSVectorReverse(@svt, m);
      NormaliseSVectorVar(svt);
      dt := AbsErr(sv, @svt);
      if dt < dmin then
      begin
        dmin := dt;
        db1 := d1;
        db2 := d2;
      end;
    end;
    d1 := db1;
    d2 := db2;

    i := 4000;
    repeat
      if (i and 1) = 1 then d1 := db1 + dmin * 0.001   //gradient proof
                       else d2 := db2 + dmin * 0.001;
      BuildViewVectorFOV(d2, d1, @svt);
      SVectorChangeSign(@svt);
      if bAbs then RotateSVectorReverse(@svt, m);
      NormaliseSVectorVar(svt);
      dt := AbsErr(sv, @svt);
      dt := dmin * dmin * 0.001 / NonZero(dmin - dt);  //stepwidth based on gradient and result
      if (i and 1) = 1 then d1 := db1 + dt else d2 := db2 + dt;
      BuildViewVectorFOV(d2, d1, @svt);
      SVectorChangeSign(@svt);
      if bAbs then RotateSVectorReverse(@svt, m);
      NormaliseSVectorVar(svt);
      dt := AbsErr(sv, @svt);
      if dt < dmin then
      begin
        dmin := dt;
        db1 := d1;
        db2 := d2;
      end else begin
        d1 := db1;
        d2 := db2;
      end;
      Dec(i);
    until (i < 0) or (dmin < 1e-7);

    while d1 < -Pi do d1 := d1 + Pi * 2;
    while d1 > Pi do d1 := d1 - Pi * 2;
    while d2 < -Pi do d2 := d2 + Pi * 2;
    while d2 > Pi do d2 := d2 - Pi * 2;
    Result := dmin;
end;

procedure TGUI.Button_F_2Click(Sender: TObject);

var i, j, t: Integer;
    LB: TListBoxEx;
    ca: array[1..9] of Integer;
    s: String;
    d: Double;

begin
    PageCtrls.ActivePage := TabFormula;
    if btnCalc3D.Caption = 'Stop' then btnCalc3DClick(Self);
    if ListBoxEx_F_1.Visible then  //(Key = 't') and
    begin
      ListBoxEx_F_1.Items.Add('test');
      Button_F_2.Visible := True;
      SetListBoxWidth(ListBoxEx_F_1);
      SpeedButtonEx_F_9.Visible := True;
      AddFormulaName('testIFS', testIFSDEoption);
      Copythevaluesto1.Visible := True;
    end;
    with GUI.HAddOn do
    begin
      TabControl_F_2.TabIndex := 0;
      bOptions1 := 0;
      iFCount := Random(5) + 1;
      for i := 0 to 5 do
      begin
        TabControl_F_1.TabIndex := i;
        if i >= iFCount then Formulas[i].iItCount := 0 else
        begin
          Formulas[i].iItCount := Random(10) + 1;
          t := 0;
          for j := 1 to FGUIFormDropDownButtonCount - 1 do
          begin
            LB := FindComponent('ListBoxEx_F_' + IntToStr(j)) as TListBoxEx;
            ca[j] := LB.Items.Count - 1;
            t := t + ca[j];
          end;
          t := Random(t);
          j := 1;
          while (j < FGUIFormDropDownButtonCount) and (t >= ca[j]) do
          begin
            Dec(t, ca[j]);
            Inc(j);
          end;
          LB := FindComponent('ListBoxEx_F_' + IntToStr(j)) as TListBoxEx;
          j := Max(1, Min(LB.Items.Count - 1, t + 1));
          if Pos('CondItcount', LB.Items[j]) > 0 then
            Formulas[i].iItCount := 0
          else
          begin
            SelectFormula(StrLastWords(LB.Items[j]));
            for j := 0 to Formulas[i].iOptionCount - 1 do
            begin
              s := Uppercase(PTCustomFormula(GUI.MHeader.PHCustomF[i])^.sOptionStrings[j]);
              if Pos('SCALE', s) > 0 then begin d := Random - 0.5; if d < 0 then d := -1 - Sqr(d) * 15 else d := 1 + Sqr(d) * 15; end else
              if Pos(' MUL', s) > 0 then d := (Random - 0.5) * 20 else
              d := Random * 20;
              Formulas[i].dOptionValue[j] := d;
            end;
          end;
        end;
      end;
      TabControl_F_1.TabIndex := 0;
      TabControl_F_1.OnChange(Self);
      btnCalc3D.OnClick(Self);  //start calc3d
    end;
end;

procedure TGUI.CheckBox_L_6Click(Sender: TObject);
var sv: TSVec;
    dtmp, dtmp2: Double;
    Lnr: Integer;
begin
    if bUserChangeL then   //global light / LightMap rel to object
    begin
      Lnr := TabControl_L_1.TabIndex;
      if Sender = CheckBox_L_6 then
      begin  //global light, convert angles so that lightvec stays same
        dtmp := -D7BtoDouble(LAtmpLight.Lights[Lnr].LXpos);  //-pi..pi   -180..180
        dtmp2 := D7BtoDouble(LAtmpLight.Lights[Lnr].LYpos);
        BuildViewVectorFOV(dtmp2, dTmp, @sv);
        SVectorChangeSign(@sv);
        if not CheckBox_L_6.Checked then RotateSVectorReverse(@sv, @GUI.MHeader.hVGrads);
        NormaliseSVectorVar(sv);
        if FindVecAngles(dtmp, dtmp2, @sv, @GUI.MHeader.hVGrads, CheckBox_L_6.Checked) < 1e-3 then
        begin  //set sliders
          LAtmpLight.Lights[Lnr].LXpos := DoubleToD7B(-dtmp);
          LAtmpLight.Lights[Lnr].LYpos := DoubleToD7B(dtmp2);
          bUserChangeL := False;
          TrackBarExXang.Position := Round(dtmp * -M180dPi);
          TrackBarExYang.Position := Round(dtmp2 * -M180dPi);
          bUserChangeL := True;
        end;
      end;
      if (Sender as TCheckBox).Checked then
        LAtmpLight.Lights[Lnr].Loption := LAtmpLight.Lights[Lnr].Loption or $20
      else LAtmpLight.Lights[Lnr].Loption := LAtmpLight.Lights[Lnr].Loption and $DF;
      TriggerRepaint;
    end;
end;

procedure TGUI.CheckBox_L_8Click(Sender: TObject);   //background image
var bLoadSuccess: LongBool;
begin
    if bUserChangeL then
    begin
      bLoadSuccess := False;
      if CheckBox_L_8.Checked and OpenDialogPic.Execute then
      begin
        Inc(RepaintCounter);
        PutStringInLightFilename(LAtmpLight.BGbmp, ExtractFileName(OpenDialogPic.FileName));
        bLoadSuccess := LoadBackgroundPicT(@LAtmpLight);
       // if not bLoadSuccess then question: should i copy it to the bg directory?...
      end;
      if not bLoadSuccess then
      begin
        bUserChangeL := False;
        CheckBox_L_8.Checked := False;
        bUserChangeL := True;
        LAtmpLight.BGbmp[0] := 0;
        SetLength(M3DBackGroundPic.LMa, 0);
        M3DBackGroundPic.LMWidth := 0;
        M3DBackGroundPic.LMHeight := 0;
      end;
      TriggerRepaint;
    end;
    if LAtmpLight.BGbmp[0] = 0 then Image_L_5.Visible := False else
      MakeLMPreviewImage(Image_L_5, @M3DBackGroundPic);
    FastMove(LAtmpLight.BGbmp, LastBGname, 24);
    if not CheckBox_L_8.Checked then CheckBox_L_21.Checked := False;
end;

procedure TGUI.TrackBar_L_21KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = '0' then (Sender as TTrackBar).Position := (Sender as TTrackBar).SelStart;
end;

procedure TGUI.TrackBar_L_22Change(Sender: TObject);
begin
    if bUserChangeL and TBChanged then
    begin
      TriggerRepaint;
      if (PageMain.ActivePage <> TabNavi) and (GUI.NaviLightVals.iBackBMP = 1) then
      begin
        GUI.NaviHeader.Light.PicOffsetX := TrackBar_L_20.Position;{NAVI}
        GUI.NaviHeader.Light.PicOffsetY := TrackBar_L_21.Position;{NAVI}
        GUI.NaviHeader.Light.PicOffsetZ := TrackBar_L_22.Position;{NAVI}
        GUI.NewCalc;
      end;
    end;
end;

procedure TGUI.TrackBar_L_11KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = '1' then (Sender as TTrackBar).Position := (Sender as TTrackBar).SelStart;
end;

procedure TGUI.SpeedButton_L_9MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if Button = mbLeft then RestoreUndoLight else
    if Button = mbRight then RedoLight else Exit;
    SetLightFromHeader(GUI.MHeader);
    ComboBox_L_3.ItemIndex := -1;
    TriggerRepaint;
end;

procedure TGUI.ComboBox_L_3Select(Sender: TObject);
begin
    if GetLightParaFile(IniDirs[7] + ChangeFileExt(ComboBox_L_3.Items[ComboBox_L_3.ItemIndex], '.m3l'),
                        GUI.MHeader.Light, CheckBox_L_11.Checked) then
    begin
      LoadBackgroundPicT(@GUI.MHeader.Light);
      SetLightFromHeader(GUI.MHeader);
      TriggerRepaint;
      ComboBox_L_3.Font.Color := clWindowText;
      ComboBox_L_3.SetFocus;
      RepaintColHisto;
    end;
end;

procedure TGUI.ComboBox_L_3DropDown(Sender: TObject);
begin
    if ComboBox_L_3.Font.Color <> clWindowText then
    begin
      ComboBox_L_3.Font.Color := clWindowText;
      ComboBox_L_3.ItemIndex := -1;
    end;
end;

procedure TGUI.ComboBox_L_4Change(Sender: TObject);
var t: Integer;
begin
    if bUserChangeL then
    begin
      t := TabControl_L_1.TabIndex;
      bUserChangeL := False;
      if PageControl_L_1.TabIndex = 0 then
      begin
        LAtmpLight.Lights[t].Loption :=
          (LAtmpLight.Lights[t].Loption and $E7) or IndexToVisFunc(ComboBox_L_4.ItemIndex);
        ComboBox_L_5.ItemIndex := ComboBox_L_4.ItemIndex;
      end
      else
      begin
        LAtmpLight.Lights[t].Loption :=
         (LAtmpLight.Lights[t].Loption and $E7) or IndexToVisFunc(ComboBox_L_5.ItemIndex);
        ComboBox_L_4.ItemIndex := ComboBox_L_5.ItemIndex;
      end;
      LAtmpLight.Lights[t].LFunction :=
        (LAtmpLight.Lights[t].LFunction and $3F) or ((ComboBox_L_4.ItemIndex and 4) shl 5);
      bUserChangeL := True;
      TriggerRepaint;
    end;
end;

procedure TGUI.SpeedButton_L_3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if Button = mbRight then
    begin
      LAtmpLight.AmbCol := LAtmpLight.DepthCol;
      LAtmpLight.AmbCol2 := LAtmpLight.DepthCol2;
      SetSButtonColor(3, LAtmpLight.AmbCol);
      SetSButtonColor(6, LAtmpLight.AmbCol2);
      TriggerRepaint;
    end;
end;

procedure TGUI.SpeedButton_L_4MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var mp: TPoint;
begin
    if (Button = mbRight) and GUI.UpDown_M_5.Visible then
    begin
      GetCursorPos(mp);
      PopupMenuLightVolCol.Popup(mp.X, mp.Y);
    end;
end;

procedure TGUI.SpinButton_L_Down;  //decrease intensity
var d: Double;
begin
    if not StrToFloatKtry(Edit_L_1.Text, d) then d := 1;
    d := d * 0.707;
    LAtmpLight.Lights[TabControl_L_1.TabIndex].Lamp := Word(SingleToShortFloat(d));
    Edit_L_1.Text := ShortFloatToStr(ShortFloat(LAtmpLight.Lights[TabControl_L_1.TabIndex].Lamp));
end;

procedure TGUI.SpinButton_L_Up;    //increase intensity
var d: Double;
begin
    if not StrToFloatKtry(Edit_L_1.Text, d) then d := 1;
    d := d * 1.414;
    LAtmpLight.Lights[TabControl_L_1.TabIndex].Lamp := Word(SingleToShortFloat(d));
    Edit_L_1.Text := ShortFloatToStr(ShortFloat(LAtmpLight.Lights[TabControl_L_1.TabIndex].Lamp));
end;

procedure TGUI.TrackBar_L_26Change(Sender: TObject);     //Lightmap rotation x,y,z
var n: Integer;
begin
    if bUserChangeL then
    begin
      n := 0;
      if TrackBar_L_26.Position <> LAtmpLight.Lights[TabControl_L_1.TabIndex].LXpos[0] then Inc(n);
      LAtmpLight.Lights[TabControl_L_1.TabIndex].LXpos[0] := TrackBar_L_26.Position;
      if TrackBar_L_25.Position <> LAtmpLight.Lights[TabControl_L_1.TabIndex].LYpos[0] then Inc(n);
      LAtmpLight.Lights[TabControl_L_1.TabIndex].LYpos[0] := TrackBar_L_25.Position;
      if TrackBar_L_27.Position <> LAtmpLight.Lights[TabControl_L_1.TabIndex].LZpos[0] then Inc(n);
      LAtmpLight.Lights[TabControl_L_1.TabIndex].LZpos[0] := TrackBar_L_27.Position;
      if n > 0 then TriggerRepaint;
    end;
end;

procedure TGUI.UpDownLightChange(Sender: TObject); //lightmap nr change
begin
    if bUserChangeL then
    begin
      Inc(RepaintCounter);
      LAtmpLight.Lights[TabControl_L_1.TabIndex].LightMapNr := UpDownLight.Position;
    end;
    LoadLightMapNr(UpDownLight.Position, @LightMaps[TabControl_L_1.TabIndex]);
    MakeLMPreviewImage(Image_L_3, @LightMaps[TabControl_L_1.TabIndex]);
    if bUserChangeL then TriggerRepaint;
end;

function TGUI.OverForm(p: TPoint): LongBool;
begin
    Result := (p.X >= 0) and (p.Y >= 0) and (p.X < Width) and (p.Y < Height);
end;

procedure TGUI.UpDownDiffMapChange(Sender: TObject);
begin   //diffmap nr change
    if bUserChangeL then
    begin
      Inc(RepaintCounter);
      LAtmpLight.bColorMap := UpDownDiffMap.Position and $FF;
      LAtmpLight.Lights[1].AdditionalByteEx := UpDownDiffMap.Position shr 8;
    end;
    LoadLightMapNr(UpDownDiffMap.Position, @DiffColMap);
    MakeLMPreviewImage(Image_L_4, @DiffColMap);
    if bUserChangeL then TriggerRepaint;
end;

procedure TGUI.CheckBox_L_15Click(Sender: TObject);
begin
    Panel_L_1.Visible := not CheckBox_L_15.Checked;
    Panel_L_2.Visible := CheckBox_L_15.Checked;
    if CheckBox_L_15.Checked then
    begin
      if bUserChangeL then Inc(RepaintCounter);
      LoadLightMapNr(UpDownDiffMap.Position, @DiffColMap);
      MakeLMPreviewImage(Image_L_4, @DiffColMap);
    end;
    if bUserChangeL then TriggerRepaint;
end;

procedure TGUI.CheckBox_L_16Click(Sender: TObject); //DiffMap on normals
begin
    if bUserChangeL then
    begin
      bUserChangeL := False;
      if RadioGroup_L_1.ItemIndex > 1 then
      try
        if not CompareMem(@GUI.MHeader.dZoom, @LastZoom, 8) then
        begin
          LastZoom := GUI.MHeader.dZoom;
          LastPositionDMScale[2] := Round(Log10(LastZoom) * 12 + 30);
          LastPositionDMScale[3] := LastPositionDMScale[2];
        end;
        TrackBar_L_31.Position := LastPositionDMScale[RadioGroup_L_1.ItemIndex];
      except end;
      if RadioGroup_L_1.ItemIndex = 0 then
        TrackBar_L_31.Position := LastPositionDMScale[0];
      bUserChangeL := True;
      TriggerRepaint;
    end;
  //  Label_L_38.Visible := RadioGroup_L_1.ItemIndex = 0;
 //   CheckBox_L_18.Visible := RadioGroup_L_1.ItemIndex = 1;
    case RadioGroup_L_1.ItemIndex of
    0: begin  //its+otrap
         Label_L_35.Caption := 'Offset X:';
         Label_L_36.Caption := 'Offset Y:';
         Label_L_41.Caption := 'Rotation:';
      //   Label_L_42.Visible := True;
         TrackBar_L_30.Visible := True;
         Label_L_38.Visible := True;
         TrackBar_L_31.Visible := True;  //Scale
       end;
    1: begin  //on normals
         Label_L_35.Caption := 'Rotation X:';
         Label_L_36.Caption := 'Rotation Y:';
         Label_L_41.Caption := 'Rotation Z:';
         TrackBar_L_30.Visible := True;
      //   Label_L_42.Visible := False;
         Label_L_38.Visible := False;
         TrackBar_L_31.Visible := False;
       end;
 2, 3: begin  //wrap
         Label_L_35.Caption := 'Offset X:';
         Label_L_36.Caption := 'Offset Y:';
         Label_L_41.Caption := '';
         TrackBar_L_30.Visible := False;
     //    Label_L_42.Visible := False;
         Label_L_38.Visible := True;
         TrackBar_L_31.Visible := True;
       end;
    end;
end;

procedure TGUI.SpeedButton_L_31Click(Sender: TObject);
var b: Boolean;
begin
    SpeedButton_L_31.Tag := 1 - SpeedButton_L_31.Tag;
    b := SpeedButton_L_31.Tag = 0;
    SpeedButton_L_20.Visible := b;
    SpeedButton_L_21.Visible := b;
    SpeedButton_L_22.Visible := b;
    SpeedButton_L_23.Visible := b;
    SpeedButton_L_24.Visible := b;
    SpeedButton_L_25.Visible := b;
    SpeedButton_L_26.Visible := b;
    SpeedButton_L_27.Visible := b;
    SpeedButton_L_28.Visible := b;
    SpeedButton_L_29.Visible := b;
    SpeedButton_L_31.Visible := b;
    SpeedButton_L_32.Visible := not b;
    CheckBox_L_11.Visible := b;
    if b then
    begin
      Panel_L_3.Height := 3 * SpeedButton_L_18.Height + SpeedButton_L_13.Height + 11;
      ClientHeight := ClientHeight + 2 * SpeedButton_L_18.Height;
    end
    else
    begin
      Panel_L_3.Height := SpeedButton_L_18.Height + SpeedButton_L_13.Height + 11;
      ClientHeight := ClientHeight - 2 * SpeedButton_L_18.Height;
    end;
    SpeedButton_L_13.Top := Panel_L_3.Height - SpeedButton_L_13.Height - 5;
    SpeedButton_L_14.Top := SpeedButton_L_13.Top;
    ComboBox_L_3.Top := SpeedButton_L_13.Top + 4;
end;

procedure TGUI.SpeedButton_L_34Click(Sender: TObject);
var x, imin, imax, icount, n: Integer;
    dmin, dmul: Double;
    pia: PIntegerArray;
begin  // adjust color sliders to histogram
    imin := -1;
    imax := 32767;
    icount := 0;
    n := 0;
    if CheckBox_L_2.Checked then pia := @OTColHisto else pia := @LColHisto;
    for x := 0 to 32767 do Inc(icount, pia[x]);
    icount := Max(1, icount div 2000);      //use 0.05 percent at both ends...
    for x := 0 to 32767 do if pia[x] > 0 then
    begin
      Inc(n, pia[x]);
      if n >= icount then
      begin
        imin := x;
        Break;
      end;
    end;
    n := 0;
    for x := 32767 downto 0 do if pia[x] > 0 then
    begin
      Inc(n, pia[x]);
      if n >= icount then
      begin
        imax := x;
        Break;
      end;
    end;
    if imin < 0 then Exit;
    if SBFineAdj.Down then
    begin
      dmin := Sqr((TBcolStartPos + 30) / 90) * 32767 - 10900;
      dmul := MaxCD(1e-4, (Sqr((TBcolStopPos + 30) / 90) * 32767 - 10900 - dmin) * s1d32767);
      TrackBar_L_9.Position := Round(Min0MaxCD(((imin - dmin) / dmul + 16384) * 120 * d1d65535, 120)) - 30; //x3 := x * 65535 / (Width - 1)
      TrackBar_L_10.Position := Round(Min0MaxCD(((imax - dmin) / dmul + 16384) * 120 * d1d65535, 120)) - 30;
    end
    else
    begin
      TrackBar_L_9.Position := Round(Min0MaxCD(Sqrt((imin + 10900) * s1d32767) * 90, 120)) - 30;  // x3 := x * 4 / (3 * (Width - 1));
      TrackBar_L_10.Position := Round(Min0MaxCD(Sqrt((imax + 10900) * s1d32767) * 90, 120)) - 30;
    end;
    if TrackBar_L_10.Position = TrackBar_L_9.Position then
    if TrackBar_L_9.Position > 0 then TrackBar_L_9.Position := TrackBar_L_9.Position - 1
                              else TrackBar_L_10.Position := TrackBar_L_10.Position + 1;
end;

procedure TGUI.TabControl_L_1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var mp: TPoint;
    i: Integer;
begin
    if Button = mbRight then
    begin
      GetCursorPos(mp);
      for i := 0 to 5 do PopupMenuCopyLight.Items[i].Enabled := i <> TabControl_L_1.TabIndex;
      PopupMenuCopyLight.Popup(mp.X, mp.Y);
    end;
end;

procedure TGUI.CopythislighttoLight11Click(Sender: TObject);
var SourceNr, DestNr, b: Integer;
    bRepaint: LongBool;
begin  //copy light to...
    DestNr := Min(5, Max(0, (Sender as TMenuItem).Tag));
    SourceNr := TabControl_L_1.TabIndex;
    if DestNr <> SourceNr then
    begin
      bRepaint := (LAtmpLight.Lights[SourceNr].Loption and LAtmpLight.Lights[DestNr].Loption and 1) = 0;
      b := LAtmpLight.Lights[DestNr].AdditionalByteEx;
      LAtmpLight.Lights[DestNr] := LAtmpLight.Lights[SourceNr];
      LAtmpLight.Lights[DestNr].AdditionalByteEx := b;
      UpdateTabHeader(DestNr);
      if bRepaint then TriggerRepaint;
    end;
end;

procedure TGUI.PageCtrlsChange(Sender: TObject);
var i: Integer;
begin
  if PageCtrls.ActivePage <> TabHide then PageCtrls.Width := 340 else PageCtrls.Width := 28;
  if PageCtrls.ActivePage = TabNaviCtrls then
      PageMain.ActivePage := Tabnavi;
      if AdjustPanelFirstShow then
      begin
        AdjustPanelFirstShow := False;
        CurrentFindex := Point(0, 0);
        ResetJuliaPos0Vals;
        Reset4dRotVals;
        for i := 0 to 13 do
        begin
          AdjustSliderRange[i] := 1;
          AdjustSliderValType[i] := 0;
        end;
        AdjustSliderValType[9] := 2;  //int
        AdjustSliderRange[9] := 5;    //dFogOnIts
        AdjustSliderValType[13] := 2; //MaxIts
    //    AdjustSliderRange[13] := 5;
        for i := 10 to 13 do AdjustSliderValType[i] := -5;  //log
//        Panel_N_4.Visible := NaviHeader.bIsJulia <> 0;
//        AdjustPanel3positions;
        SpeedButton_N_26Click(Sender);
      end;

end;

procedure TGUI.PageMainChange(Sender: TObject);
begin
  if PageMain.ActivePage = TabNavi then
     PageCtrls.ActivePage := TabNaviCtrls;
     SpeedButton_N_11Click(nil);
end;


//------------------------------------------------------------------------------

//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
                    {  N  A  V  I  G  A  T  I  O  N  }
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------

//------------------------------------------------------------------------------

procedure TGUI.Timer_N_1Timer(Sender: TObject);
begin
    Timer_N_1.Interval := 100;
    Image_N_1.Repaint;
    if not isCalculatingN then
    begin
      iActiveThreads := 0;
      actStepWidth := actStepWidth shr 1;
      if actStepWidth = 0 then Timer_N_1.Enabled := False
                          else Calc(actStepWidth);
    end;
end;

procedure TGUI.NewCalc;
begin
    Inc(NglobalCounter);
    actStepWidth   := 16;
    Timer_N_1.Enabled := True;
end;

procedure TGUI.StopCalc;
begin
    Inc(NglobalCounter);
    actStepWidth := 1;
end;


procedure ModRotPoint(var Header: TMandHeader10);
var l, ds, de: Double;
begin
    with Header do
    begin
      NormVGrads(@Header);
      ds := dZstart - dZmid;
      de := dZend - dZmid;
      l := MinCD((dZend - dZmid) / dStepWidth, LengthOfSize(@Header) * 1.5);  //new midpoint for rotations, must be limited  to Zend!
      mAddVecWeight(@dXmid, @hVGrads[2], l);
      dZstart := dZmid + ds - dStepWidth * l;
      dZend := dZmid + de - dStepWidth * l;
    end;
end;

procedure TGUI.LoadLightPresets;
var i: Integer;
begin
    for i := 0 to 2 do NLPavailable[i] := LoadLightPreset(i + 1);
end;

function TGUI.LoadLightPreset(i: Integer): Boolean;
var s: String;
begin
    s := AppDataDir + 'NaviLightPreset' + IntToStr(i) + '.m3l';
    Result := GetLightParaFile(s, NaviLightPresets[i - 1], False);
end;

function TGUI.isCalculatingN: LongBool;
begin
    Result := GetActiveThreadCount(CalcThreadStatusID) > 0;
end;

procedure TGUI.WaitForCalcToStop(millisec: Integer);
var i: Integer;
begin
    StopCalc;
    i := millisec div 50;
    while (i >= 0) and isCalculatingN do
    begin
      Delay(50);
      Dec(i);
    end;
end;

procedure TGUI.maxLengthToCutPlane(var dLength: Double; var itmp: Integer; vPos: TPVec3D; MCTpar: PMCTparameter);
var dTmp: Double;
begin
    if MCTpar.iCutOptions <> 0 then
    with MCTpar^ do
    begin
      dLength := 0;
      if ((iCutOptions and 1) <> 0) and (Abs(Vgrads[2,0]) > 1e-20) then
      begin
        dTmp := (dCOX - vPos^[0]) / Vgrads[2,0];
        if dTmp > dLength then
        begin
          dLength := dTmp;
          itmp := 1;
        end;
      end;
      if ((iCutOptions and 2) <> 0) and (Abs(Vgrads[2,1]) > 1e-20) then
      begin
        dTmp := (dCOY - vPos^[1]) / Vgrads[2,1];
        if dTmp > dLength then
        begin
          dLength := dTmp;
          itmp := 2;
        end;
      end;
      if ((iCutOptions and 4) <> 0) and (Abs(Vgrads[2,2]) > 1e-20) then
      begin
        dTmp := (dCOZ - vPos^[2]) / Vgrads[2,2];
        if dTmp > dLength then
        begin
          dLength := dTmp;
          itmp := 3;
        end;
      end;
    end;
end;

function TGUI.GetLocalAbsoluteDE(var NotValid: LongBool): Double;
var ct: TVec3D;
    i, c: Integer;
    dTmp, dTmp2, dmul: Double;
    MedianList: array of Double;
    Iteration3Dext: TIteration3Dext;
    lMCTparas: TMCTparameter;
begin
    NotValid := False;
    Result := lMCTparas.iMandWidth * lMCTparas.StepWidth;
    NormVGrads(@NaviHeader);
    NaviHeader.bCalc3D := 1;
    bGetMCTPverbose := False;
    lMCTparas := GetMCTparasFromHeader(NaviHeader, True {False});  //todo: function to get only formula relevant paras for calc DE
    if not lMCTparas.bMCTisValid then
    begin
      NotValid := True;
      Exit;
    end;
    bGetMCTPverbose := True;
    IniIt3D(@lMCTparas, @Iteration3Dext);
    mCopyVec(@Iteration3Dext.C1, @lMCTparas.Xmit);
    i := 0;
    mCopyVec(@ct, @Iteration3Dext.C1);
    Iteration3Dext.CalcSIT := False;
    if lMCTparas.bInAndOutside then lMCTparas.bInsideRendering := False;
    lMCTparas.bCalcInside := lMCTparas.bInsideRendering;
    if lMCTparas.iCutOptions <> 0 then
    begin
      maxLengthToCutPlane(dTmp, i, @Iteration3Dext.C1, @lMCTparas);
      if i <> 0 then
      with Iteration3Dext do  // move to cutplane and calcDE...
      begin
        mCopyAddVecWeight(@C1, @ct, @lMCTparas.Vgrads[2], dTmp);
        dTmp2 := lMCTparas.CalcDE(@Iteration3Dext, @lMCTparas);
        if lMCTparas.bInAndOutside then
        begin
          lMCTparas.bInsideRendering := dTmp2 < lMCTparas.DEstop;
          lMCTparas.bCalcInside := lMCTparas.bInsideRendering;
          if lMCTparas.bInsideRendering then
            dTmp2 := lMCTparas.CalcDE(@Iteration3Dext, @lMCTparas);
        end;
        Result := dTmp + dTmp2;
      end;
    end;
    if i = 0 then
    with Iteration3Dext do
    begin
      if lMCTparas.bInAndOutside then
      begin
        dTmp2 := lMCTparas.CalcDE(@Iteration3Dext, @lMCTparas);
        lMCTparas.bInsideRendering := dTmp2 < lMCTparas.DEstop;
        lMCTparas.bCalcInside := lMCTparas.bInsideRendering;
      end;
      if lMCTparas.bInsideRendering then
      begin
        lMCTparas.CalcDE(@Iteration3Dext, @lMCTparas);
        NotValid := lMCTparas.DEoptionResult <> 20;
        if NotValid then Exit;
      end;
      dmul := 1;
      c := 0;
      SetLength(MedianList, 12);
      repeat
        for i := 0 to 8 do
        begin
          if i = 8 then mCopyVec(@C1, @ct) else
          begin
            mCopyAddVecWeight(@C1, @ct, @lMCTparas.Vgrads[0], ((i and 1) * 32 - 16) * dmul);
            mAddVecWeight(@C1, @lMCTparas.Vgrads[1], ((i and 2) * 16 - 16) * dmul);
            mAddVecWeight(@C1, @lMCTparas.Vgrads[2], ((i and 4) * 8 - 16) * dmul);
          end;
          try
            MedianList[c] := lMCTparas.CalcDE(@Iteration3Dext, @lMCTparas);
            if (MedianList[c] > 0) and (MedianList[c] < 1e15) and (c < 11) then Inc(c);
          except
          end;
        end;
        dmul := dmul * 2;
      until (c > 3) or (dmul > 40);
      if c = 0 then
      begin
        NotValid := True;
        Result := LengthOfVec(ct) * s05 / lMCTparas.StepWidth;
      end
      else Result := aMedian(c, MedianList, 0.6);
    end;
    Result := MinMaxCD(3, Result, 20000) * lMCTparas.StepWidth;
    Result := MinCD(Result, MaxCD(2, LengthOfVec(ct)));
end;

procedure TGUI.Calc(Nstep: Integer);
var I, x, nThreadCount: Integer;
    bAllOK: LongBool;
    CalcThread: array of TNaviCalcThread;
begin
  GUI.bHideMessages := True;
  bAllOK := False;
  try
    nThreadCount := Min(GUI.UpDownThread.Position, NaviHeader.Height);
    if Nstep = 8 then
    begin
      Label_N_24.Caption := FloatToStrF(NaviHeader.dZoom, ffGeneral, 4, 1);
      if NaviHeader.dZoom > 1e13 then Label_N_24.Font.Color := clRed
                                 else Label_N_24.Font.Color := clWindowText;
      SetWindowSize;// Panel_N_2.Visible
      if Moving then   //if objectparts are nearer than DE..
        NDEmultiplier := NDEmultiplier * MinMaxCD(0.5, NminDEcorrection *
      (NaviHeader.dZoom * NaviHeader.Width) / (LengthOfSize(@NaviHeader) * 2), 1); //  LengthOfSize(@NaviHeader) * 2 / (dZoom * Width) :=  AbsDE;
      NminDEcorrection      := 1000;
      NaviHeader.mZstepDiv  := 0.7 - 0.35 * (Byte(CheckBox_N_4.Checked) and 1);
      NaviHeader.sRaystepLimiter := MaxCS(NaviHeader.sRaystepLimiter, NaviHeader.mZstepDiv * 0.5);
      NaviHeader.bCalc3D    := 1;
      NaviHeader.dFOVy      := StrToFloatK(Edit_N_3.Text);
      NaviHeader.bPlanarOptic := RadioGroup_N_2.ItemIndex;
      bGetMCTPverbose       := False;
      for I := 0 to nThreadCount - 1 do begin
        MCTparas[I]              := getMCTparasFromHeader(NaviHeader, True);
        bGetMCTPverbose       := I = 0;
        if MCTparas[I].DEoption = 20 then MCTparas[I].iDEAddSteps := 7 else MCTparas[I].iDEAddSteps := 4;
        MakeLightValsFromHeaderLightNavi(@NaviHeader, @NaviLightVals, 1);
        MCTparas[I].ZcMul        := MCTparas[I].ZcMul * 0.00390625;   //because navi uses old light paras
        MCTparas[I].PLValsNavi   := @NaviLightVals;
        MCTparas[I].msDEsub      := 0;
        if (NaviHeader.Light.TBoptions and $20000) = 0 then MCTparas[I].ColorOption := 9; //smoothits, else 2nd choice functions
      end;
      //tests:
     // Label_N_18.Caption := 'Correction: ' + FloatToStr(NDEmultiplier);
    end;
    for I := 0 to nThreadCount - 1 do begin
      MCTparas[I].FSIstart      := Integer(Image_N_1.Picture.Bitmap.ScanLine[0]);  // scan line index out of range
      MCTparas[I].FSIoffset     := Integer(Image_N_1.Picture.Bitmap.ScanLine[1]) - MCTparas[I].FSIstart;
      MCTparas[I].NaviStep      := Nstep;
      MCTparas[I].SLwidMNpix    := MCTparas[I].FSIoffset div 4 - Nstep;
      SetLength(CalcThread, nThreadCount);
      for x := 0 to 5 do if MCTparas[I].nHybrid[x] > 0 then bAllOK := True;
    end;
  finally
    GUI.bHideMessages := False;
  end;
  if bAllOK then
  begin
    for x := 0 to nThreadCount - 1 do
    begin
      MCTparas[x].iThreadId := x + 1;
      try
        CalcThread[x] := TNaviCalcThread.Create(True);
        CalcThread[x].FreeOnTerminate := True;
        CalcThread[x].MCTparas        := MCTparas[x];
        CalcThread[x].NaviLightVals   := NaviLightVals;
        CalcThread[x].NaviLightVals.PLValignedNavi :=
          TPLValignedNavi((Integer(@CalcThread[x].NaviLightVals.LColSbuf[0]) + 15) and $FFFFFFF0);
        FastMove(NaviLightVals.PLValignedNavi^, CalcThread[x].NaviLightVals.PLValignedNavi^, SizeOf(TLValignedNavi));
        CalcThread[x].Priority        := cTPrio[GUI.ComboBoxThread.ItemIndex];
      except
        nThreadCount := x;
        Break;
      end;
    end;
    iActiveThreads := nThreadCount;
    MCTparas[0].PCalcThreadStats := GetNewThreadStatRecord(CalcThreadStatusID, nThreadCount, 0, Self.Handle);
    NglobalCounter := CalcThreadStatusID;
    if (CalcThreadStatusID = 0) or (MCTparas[0].PCalcThreadStats = nil) then
    begin
      GUI.OutMessage('Failed to create ThreadStats');
      for x := 0 to nThreadCount - 1 do CalcThread[x].Free;
      Exit;
    end;
    for x := 1 to nThreadCount do
    begin
      CalcThread[x - 1].MCTparas.iThreadCount := nThreadCount;
      CalcThread[x - 1].MCTparas.PCalcThreadStats := MCTparas[0].PCalcThreadStats;
    end;
    for x := 0 to nThreadCount - 1 do CalcThread[x].Start;
  end;
end;

procedure TGUI.SetZoom;
var de: Double;
    notValid: LongBool;
begin
    with NaviHeader do
    begin
      NormVGrads(@NaviHeader);
      notValid := True;
      if not CheckBox_N_1.Checked then  //not fixed zoom+steps
      begin    //vv critical?
        de := GetLocalAbsoluteDE(notValid) * NDEmultiplier;
        if not notValid then dZoom := LengthOfSize(@NaviHeader) * 2 / (de * Width);
      end;
      if notValid then
      begin
        CalcStepWidth(@NaviHeader);
        de := dStepWidth * LengthOfSize(@NaviHeader);  // = Sqrt(Sqr(Width) + Sqr(Height));
      end;
      NormVGrads(@NaviHeader);
      dZend := dZstart + de * MinMaxCD(1, StrToFloatK(Edit_N_4.Text), 90000); //Farplane
      if dZend - dZstart > 9999 then dZend := dZstart + 9999;
      NDEmultiplier := (NDEmultiplier - 1) * 0.8 + 1;
      CheckLabel18;
    end;
end;

procedure TGUI.ChangeNaviMode;
var TestRect: TRect;
    P0, P1: TPoint;
begin
    if Screen.Cursor = crDefault then
    begin
      P0 := Image_N_1.ClientToScreen(Point(0, 0));
      P1 := Image_N_1.ClientToScreen(Point(Image_N_1.Width, Image_N_1.Height));
      TestRect := Rect(P0.X, P0.Y, P1.X, P1.Y);
      ClipCursor(@TestRect);
      NMouseStartPos := Point((P0.X + P1.X) div 2, (P0.Y + P1.Y) div 2);
      SetCursorPos(NMouseStartPos.X, NMouseStartPos.Y);
      Screen.Cursor := crNone;
    end else begin
      Screen.Cursor := crDefault;
      ClipCursor(nil);
    end;
    CheckLabel18;
end;

procedure TGUI.CheckLabel18;
begin
    Label_N_18.Visible := UpDown_N_3.Visible and (Screen.Cursor = crNone);
    Label_N_31.Visible := not Label_N_18.Visible;
end;

procedure TGUI.TransformNHeader;
var notValid: LongBool;
    d: Double;
begin
    with NaviHeader do
    begin
      OriginalSize := Point(Width, Height);
      SetHeaderSize;
      bStepsafterDEStop := Min(7, bStepsafterDEStop);
      sDEstop := MaxCS(0.01, sDEstop);
      bUserChangeN := False;
      Edit_N_3.Text := FloatToStr(dFOVy);
      RadioGroup_N_2.ItemIndex := bPlanarOptic;
      //set cam position when zstart<zmid
      d := LengthOfVec(TPVec3D(@hVGrads[2])^);
      CalcStepWidth(@NaviHeader);
      mAddVecWeight(@dXmid, @hVGrads[2], (dZstart - dZmid) / d);  //step back so that midpoint becomes startpoint
      dZend := dZend - dZstart + dZmid;
      dZstart := dZmid;
      NDEmultiplier := 1;
      Moving := False;
      try //Set FarPlane according to (Zend - Zstart) distance
        Edit_N_4.Text := FloatToStrF(Max(1, Min(10000, (dZend - dZstart) / GetLocalAbsoluteDE(notValid))), ffFixed, 5, 1);
       // Edit_N_4.Text := FloatToStrF(MinMaxCD(1, (dZend - dZstart) / (LengthOfSize(@NaviHeader) * dStepWidth), 90000), ffFixed, 5, 1);       //^^ might be critical here?
      finally
        bUserChangeN := True;
      end;
      //plus set zoom according to local DE  (and move further back or fore to give nearly the same view..todo)
   //   SetZoom;  //uses also GetLocalAbsoluteDE if not fixedSteps
    end;
end;

procedure TGUI.PaintZeroVec;
var v: TVec3D;
    m: TMatrix3;
    s, sx, sy, sx2, sy2: Single;
    i: Integer;
begin
    with tmpBMP.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(ClipRect);
      m := NormaliseMatrixTo(1, @NaviHeader.hVGrads);
      mCopyVec(@v, @NaviHeader.dXmid);
      RotateVector(@v, @m);
      NormaliseVectorVar(v);
      if v[2] > 0 then Pen.Color := $50A0 else Pen.Color := $A000;
      Brush.Color := Pen.Color;
      s := 0.666666 * (3 + v[2]);
      MoveTo(40, 38);
      sx := 40 - v[0] * 18 * s;
      sy := 38 - v[1] * 18 * s;
      Pen.Width := 3;
      LineTo(Round(sx), Round(sy));
      Pen.Width := 2;
      for i := 1 to 4 do
      begin
        sx2 := sx + v[0] * s * i * 2;
        sy2 := sy + v[1] * s * i * 2;
        Ellipse(Round(sx2 - s * i), Round(sy2 - s * i),
                Round(sx2 + s * i), Round(sy2 + s * i));
      end;
    end;
    SetStretchBltMode(Image_N_2.Canvas.Handle, HALFTONE);
    StretchBlt(Image_N_2.Canvas.Handle, 0, 0, 40, 38,
               tmpBMP.Canvas.Handle, 0, 0, 80, 76, SRCCOPY);
    Image_N_2.Invalidate;
end;

procedure FlipI(var i1, i2: Integer);
var itmp: Integer;
begin
    itmp := i1;
    i1 := i2;
    i2 := itmp;
end;

procedure TGUI.RoundFvals;
var i, j: Integer;
begin
    if (NaviHAddon.bOptions1 and 3) = 1 then
    begin
      for j := 0 to 1 do
      for i := 0 to NaviHAddon.Formulas[j].iOptionCount - 1 do
        if isIntType(NaviHAddon.Formulas[j].byOptionType[i]) then
          NaviHAddon.Formulas[j].dOptionValue[i] := Round(NaviHAddon.Formulas[j].dOptionValue[i]);
    end
    else
    for j := 0 to 5 do if NaviHAddon.Formulas[j].iItCount > 0 then
      for i := 0 to NaviHAddon.Formulas[j].iOptionCount - 1 do
        if isIntType(NaviHAddon.Formulas[j].byOptionType[i]) then
          NaviHAddon.Formulas[j].dOptionValue[i] := Round(NaviHAddon.Formulas[j].dOptionValue[i]);
end;

procedure TGUI.PaintCoord;  //direct to bmp
var m: TMatrix3;
    sx, sy, sx2, sy2, tipsize: Single;
    i, i2: Integer;
    sorta: array[0..2] of Integer;
const ca: array[0..2] of Cardinal = ($50FF,$40F030,$FFB000);
begin
    if not CheckBox_N_6.Checked then Image_N_6.Visible := False else
    with Image_N_6.Picture.Bitmap.Canvas do
    begin
      Image_N_6.Transparent := False;
      Font.Style := [fsBold];
      Brush.Color := clBlack;
      FillRect(ClipRect);
      SetBkMode(Handle, TRANSPARENT);
      m := NormaliseMatrixTo(1, @NaviHeader.hVGrads);
      for i := 0 to 2 do sorta[i] := i;
      if m[2, 0] < m[2, 1] then FlipI(sorta[0], sorta[1]);
      if m[2, sorta[1]] < m[2, 2] then FlipI(sorta[1], sorta[2]);
      if m[2, sorta[0]] < m[2, sorta[1]] then FlipI(sorta[0], sorta[1]);
      for i := 0 to 2 do
      begin
        i2 := sorta[i];
        Pen.Width := 2;
        Pen.Color := ca[i2];
        MoveTo(60, 60);
        sx := 60 + m[0, i2] * 38;
        sy := 60 + m[1, i2] * 38;
        LineTo(Round(sx), Round(sy));
        //tip:
        tipsize := (2 - m[2, i2]) * 2 / MaxCS(0.1, Sqrt(Sqr(m[0, i2]) + (Sqr(m[1, i2]))));
        sx2 := sx - m[0, i2] * 8 - m[1, i2] * tipsize;
        sy2 := sy - m[1, i2] * 8 + m[0, i2] * tipsize;
        LineTo(Round(sx2), Round(sy2));
        MoveTo(Round(sx), Round(sy));
        sx2 := sx - m[0, i2] * 8 + m[1, i2] * tipsize;
        sy2 := sy - m[1, i2] * 8 - m[0, i2] * tipsize;
        LineTo(Round(sx2), Round(sy2));
        tipsize := (3 - m[2, i2]) * 4;
        Font.Color := Pen.Color;
        Font.Size := Round(-tipsize);
        sx := sx + m[0, i2] * tipsize * 0.8;
        sy := sy + m[1, i2] * tipsize * 0.8;
        TextOut(Round(sx) - Round(tipsize * 0.35), Round(sy) - Round(tipsize * 0.7), Chr(Ord('X') + i2));
      end;
      Image_N_6.Transparent := True;
      if not Image_N_6.Visible then Image_N_6.Visible := True;
    end;
end;






procedure TGUI.Image_N_1DblClick(Sender: TObject);
begin
    if bDoubleClick then ChangeNaviMode;
end;

procedure TGUI.Image_N_1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var p1: TPoint;
begin
    if (Button = mbRight) and (Screen.Cursor <> crNone) then
    begin
      Singleclicktochangethenavimode1.Checked := not bDoubleClick;
      Doubleclicktochangethenavimode1.Checked := bDoubleClick;
      p1 := ClientToScreen(Point(X, Y));
      PopupMenuNav.Popup(p1.X, p1.Y);
    end;
end;

procedure TGUI.Doubleclicktochangethenavimode1Click(
  Sender: TObject);
begin
    bDoubleClick := True;
    IniVal[20] := 'Yes';
end;

procedure TGUI.Singleclicktochangethenavimode1Click(
  Sender: TObject);
begin
    bDoubleClick := False;
    IniVal[20] := 'No';
end;

procedure TGUI.Image_N_1Click(Sender: TObject);
begin
    if not bDoubleClick then ChangeNaviMode;
end;


procedure TGUI.CheckBox_N_6Click(Sender: TObject);
begin
    PaintCoord;
end;

procedure TGUI.SetSB18text(Disabled: Boolean);
begin
    if Disabled then SpeedButton_N_18.Caption := 'Ani keyframe'
                else SpeedButton_N_18.Caption := 'Ani keyfr. (f)';
end;

procedure TGUI.DisableLightStoring;
begin
    SpeedButton_N_19.Cursor := crDefault;
    SpeedButton_N_20.Cursor := crDefault;
    SpeedButton_N_21.Cursor := crDefault;
    LightStoring := False;
    SpeedButton_N_19.Enabled := NLPavailable[0];
    SpeedButton_N_20.Enabled := NLPavailable[1];
    SpeedButton_N_21.Enabled := NLPavailable[2];
end;

procedure TGUI.SpeedButton_N_11Click(Sender: TObject); //insert main paras
begin
    GUI.PropagateCurrFrameNumber;
    WaitForCalcToStop(1000);
    GUI.MakeHeader;
    AssignHeader(@NaviHeader, @GUI.MHeader);
    Authors := GUI.Authors;
    bUserChangeN := False;
    TransformNHeader;
    ResetJuliaPos0Vals;
    SpeedButton_N_26Click(Sender); //update adjust panel
    PaintZeroVec;
    PaintCoord;
//    AdjustPanel3positions;
    DynFogAmountChanged := False;
    DEstopChanged := False;
    UpDown_N_1.Position := NaviHeader.Light.TBpos[6];
    Label_N_38.Caption := IntToStr(UpDown_N_1.Position - 53);
    if Copy(GUI.Caption, 1, 13) = 'Mandelbulb 3D' then
      Caption := 'main paras' else Caption := GUI.Caption;
    bUserChangeN :=True;
    NewCalc;
end;

procedure TGUI.Panel_N_1Click(Sender: TObject);
begin
    ActiveControl := Image_N_2.Parent;
end;

procedure TGUI.SpeedButton_N_14Click(Sender: TObject);  //copy view to main
begin
//    PageCtrls.ActivePage := TabImage;
    GUI.PageMain.ActivePage := TabMain;
    with GUI.MHeader do
    begin
      FastMove(NaviHeader.dZstart, dZstart, 80);  // dZstart up to RStop
      FastMove(NaviHeader.hVGrads, hVGrads, 72);  // hVGrads only
      dFOVy := NaviHeader.dFOVy;
      if DynFogAmountChanged then
      begin
        Light.TBpos[6] := NaviHeader.Light.TBpos[6];
        GUI.LAtmpLight.TBpos[6] := Light.TBpos[6];{LIGHT}
      end;
      sNaviMinDist := StrToFloatK(Edit_N_6.Text);
      bPlanarOptic := NaviHeader.bPlanarOptic;
      bStereoMode := 0;
      Iterations := NaviHeader.Iterations;
      dFOVy := NaviHeader.dFOVy;
      ModRotPoint(GUI.MHeader);   //translate midPoint in front of camera
      bIsJulia := NaviHeader.bIsJulia;     //new: also julia vals + formula
      if bIsJulia <> 0 then FastMove(NaviHeader.dJx, dJx, 32);
      bDFogIt := NaviHeader.bDFogIt;
      RStop := NaviHeader.RStop;
      sDEcombS := NaviHeader.sDEcombS;
      if DEstopChanged then sDEstop := NaviHeader.sDEstop;
      bColorOnIt := NaviHeader.bColorOnIt;
      RoundFvals;
      GUI.HAddOn := NaviHAddon;
      GUI.MHeader.bImageScale := ImageScale;
      GUI.Authors := Authors;
      GUI.SetEditsFromHeader;
      GUI.SetLightFromHeader(GUI.MHeader);{LIGHT}
      if Length(Caption) = 0 then GUI.Caption := 'Mandelbulb 3D' else
      begin
        if Caption[Length(Caption)] = '~' then GUI.Caption := Caption
                                          else GUI.Caption := Caption + '~';
        SetSaveDialogNames(GUI.Caption);
      end;
      GUI.ParasChanged;
    end;
    SetFocus;
end;

procedure TGUI.Edit_N_1Change(Sender: TObject);
var d: Double;
    s: String;
begin
    if bUserChangeN then
    begin
      s := (Sender as TEdit).Text;
      if not TryStrToFloat(s, d) then
        (Sender as TEdit).Text := StrOnlyNumbers(s)
      else
      if Sender = Edit_N_4 then SetZoom; //farplane change
      if (Sender as TEdit).Tag = 1 then NewCalc;
    end;
end;

procedure TGUI.SpeedButton_N_15Click(Sender: TObject);
begin
    GUI.PutLightFInHeader(NaviHeader);{LIGHT}
    UpDown_N_1.Position := NaviHeader.Light.TBpos[6];
    DynFogAmountChanged := False;
    Label_N_38.Caption := IntToStr(UpDown_N_1.Position - 53);
    NewCalc;
end;

procedure TGUI.SpeedButton_N_16Click(Sender: TObject); //insert formula from main
begin
    WaitForCalcToStop(1000);
    GUI.MakeHeader;
    NaviHAddon := GUI.HAddOn;
    NaviHeader.Iterations := GUI.MHeader.Iterations;
    NaviHeader.MinimumIterations := GUI.MHeader.MinimumIterations;
    NaviHeader.iMaxItsF2 := GUI.MHeader.iMaxItsF2;
    NaviHeader.RStop := GUI.MHeader.RStop;
    NaviHeader.sDEcombS := GUI.MHeader.sDEcombS;
    NaviHeader.sDEstop := GUI.MHeader.sDEstop; //*width/naviheader.width
    DEstopChanged := False;
    bUserChangeN := False;
    SpeedButton_N_26Click(Sender); //update adjust panel
    bUserChangeN :=True;
//    AdjustPanel3positions;
    NewCalc;
end;

procedure TGUI.SpeedButton_N_18Click(Sender: TObject);   // "f" insert paras to animation keyframe
var tmpHeader: TMandHeader10;
    i: Integer;
    CurrNaviFrame: Integer;
begin
    if AnimationForm.SpeedButton1.Enabled then begin
      if iActiveThreads > 0 then WaitForCalcToStop(2000);
      CurrNaviFrame := TMapSequenceFrameNumberHolder.GetCurrFrameNumber;
      try
        tmpHeader := GUI.MHeader;
        tmpHeader.PCFAddon := @NaviHAddon;
        FastMove(NaviHeader.dZstart, tmpHeader.dZstart, 96);  // dZstart up to dFOVy
        FastMove(NaviHeader.hVGrads, tmpHeader.hVGrads, 72);  // hVGrads only
        FastMove(NaviHeader.dXWrot, tmpHeader.dXWrot, 24);
        FastMove(NaviHeader.dJX, tmpHeader.dJX, 24);
        tmpHeader.bDFogIt := NaviHeader.bDFogIt;
        tmpHeader.RStop := NaviHeader.RStop;
        tmpHeader.sDEcombS := NaviHeader.sDEcombS;
        tmpHeader.sNaviMinDist := StrToFloatK(Edit_N_6.Text);
        tmpHeader.bPlanarOptic := NaviHeader.bPlanarOptic;
        tmpHeader.Iterations := NaviHeader.Iterations;
        if DEstopChanged then tmpHeader.sDEstop := NaviHeader.sDEstop;
        ModRotPoint(tmpHeader);
        tmpHeader.Light.TBpos[6] := UpDown_N_1.Position;
        for i := 0 to 5 do tmpHeader.PHCustomF[i] := @HybridCustoms[i];
        AnimationForm.Visible := True;
        AnimationForm.InsertFromHeader(@tmpHeader);  //Assigned, HAddon pointer must be set

        SetFocus;
      finally
        Sleep(250);
        TMapSequenceFrameNumberHolder.SetCurrFrameNumber(CurrNaviFrame);
      end;
    end;
end;

procedure TGUI.CheckBox_N_2Click(Sender: TObject);
begin
    if CheckBox_N_2.Checked then
    begin
      Label_N_6.Caption := '(q)';
      Label_N_5.Caption := '(c,a)';
      Label_N_12.Caption := '(z)';
    end else begin
      Label_N_6.Caption := '(a)';
      Label_N_5.Caption := '(c,q)';
      Label_N_12.Caption := '(w)';
    end;
end;

procedure TGUI.TrackBarEx_N_LightChange(Sender: TObject);
begin
    NaviLightness := Sqr(TrackBarEx_N_Light.Position * -0.05 + 0.85) + 0.2775;
    NewCalc;
end;

procedure TGUI.Button_N_1Click(Sender: TObject);
var notValid: LongBool;
begin
    CalcStepWidth(@NaviHeader);
    NaviHeader.sNaviMinDist := GetLocalAbsoluteDE(notValid) * NDEmultiplier;
    Edit_N_6.Text := FloatToStrSingle(NaviHeader.sNaviMinDist);
end;

procedure TGUI.CheckBox_N_5Click(Sender: TObject);
begin //Disable f-key
    SetSB18text(CheckBox_N_5.Checked);
end;

procedure TGUI.SpeedButton_N_22Click(Sender: TObject);
begin
    LightStoring := not LightStoring;
    if LightStoring then
    begin
      SpeedButton_N_19.Cursor := crUpArrow;
      SpeedButton_N_20.Cursor := crUpArrow;
      SpeedButton_N_21.Cursor := crUpArrow;
      SpeedButton_N_19.Enabled := True;
      SpeedButton_N_20.Enabled := True;
      SpeedButton_N_21.Enabled := True;
    end
    else DisableLightStoring;
end;

procedure TGUI.SpeedButton_N_19Click(Sender: TObject);
var t: Integer;
    f: file;
begin
    t := (Sender as TSpeedButton).Tag - 1;
    if (Sender as TSpeedButton).Cursor = crUpArrow then
    begin //store navilight
      AssignFile(f, AppDataDir + 'NaviLightPreset' + IntToStr(t + 1) + '.m3l');
      Rewrite(f, 1);
      BlockWrite(f, NaviHeader.Light, SizeOf(NaviHeader.Light));
      CloseFile(f);
      NaviLightPresets[t] := NaviHeader.Light;
      NLPavailable[t] := True;
      DisableLightStoring;
    end
    else if (t in [0..2]) and NLPavailable[t] then   //Set navilight
    begin
      NaviHeader.Light := NaviLightPresets[t];
      UpDown_N_1.Position := NaviHeader.Light.TBpos[6];
      Label_N_38.Caption := IntToStr(UpDown_N_1.Position - 53);
      TrackBarEx_N_Light.Position := 0;
      DynFogAmountChanged := False;
      NewCalc;
    end;
end;

procedure TGUI.CheckBox_N_1Click(Sender: TObject);
begin
    UpDown_N_3.Visible := CheckBox_N_1.Checked;
    CheckLabel18;
end;

procedure TGUI.Image_N_1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var p: TPoint;
    M: TMatrix3;
    h, v: Double;
begin
    if Screen.Cursor = crNone then
    begin
      GetCursorPos(p);
      if Abs(p.X - NMouseStartPos.X) + Abs(p.Y - NMouseStartPos.Y) > 1 then
      begin
        if NaviHeader.bStereoMode = 2 then h := 1.8 * Pi / Image_N_1.Height else
        begin
          h := NaviHeader.dFOVy;
          if Abs(h) < 15 then if h < 0 then h := -15 else h := 15;
          h := MinMaxCD(-180, h, 180) * Pid180 * 2 / Image_N_1.Height;
        end;
        if ssRight in Shift then //roll
        begin
          v := h * (p.X - NMouseStartPos.X - p.Y + NMouseStartPos.Y);
          BuildRotMatrix(0, 0, v, @M);
        end else begin  //view direction
          v := h * (p.Y - NMouseStartPos.Y);
          h := -h * (p.X - NMouseStartPos.X);
          BuildRotMatrix(v, h, 0, @M);
        end;
        Multiply2Matrix(@M, @NaviHeader.hVgrads);

        NaviHeader.hVgrads := M;
        NormVGrads(@NaviHeader);

        Image_N_1.OnMouseMove := nil;
        Image_N_6.OnMouseMove := nil;
        SetCursorPos(NMouseStartPos.X, NMouseStartPos.Y);
        Image_N_1.OnMouseMove := Image_N_1MouseMove;
        Image_N_6.OnMouseMove := Image_N_1MouseMove;

        Moving := False;
        NewCalc;
        PaintZeroVec;
        PaintCoord;  //test
      end;
    end;
end;

procedure TGUI.RadioGroup_N_2Click(Sender: TObject);
begin
    if bUserChangeN then NewCalc;
end;

procedure TGUI.UpDown_N_1Click(Sender: TObject; Button: TUDBtnType);
begin
    if Button = btPrev then
      NaviHeader.Light.TBpos[6] := Max(0, UpDown_N_1.Position - 1)
    else if Button = btNext then
      NaviHeader.Light.TBpos[6] := Min(153, UpDown_N_1.Position + 1);
    DynFogAmountChanged := True;
    Label_N_38.Caption := IntToStr(NaviHeader.Light.TBpos[6] - 53);
    NewCalc;
end;

procedure TGUI.UpDown_N_2Click(Sender: TObject; Button: TUDBtnType);
begin   //F iterations, weight
 //   CurrentFindex := FormulaIndex(FocusedSlider);
    if Button = btPrev then
    begin
      if (NaviHAddon.bOptions1 and 3) = 1 then  //ipol hybrid
        PSingle(@NaviHAddOn.Formulas[CurrentFindex.X].iItCount)^ := Max0S(PSingle(@NaviHAddOn.Formulas[CurrentFindex.X].iItCount)^ - 0.1)
      else
        NaviHAddOn.Formulas[CurrentFindex.X].iItCount := Max(0, StrToIntTrim(Label_N_47.Caption) - 1);
    end
    else if Button = btNext then
    begin
      if (NaviHAddon.bOptions1 and 3) = 1 then
        PSingle(@NaviHAddOn.Formulas[CurrentFindex.X].iItCount)^ := PSingle(@NaviHAddOn.Formulas[CurrentFindex.X].iItCount)^ + 0.1
      else
        NaviHAddOn.Formulas[CurrentFindex.X].iItCount := StrToIntTrim(Label_N_47.Caption) + 1;
    end;
    SpeedButton_N_26Click(Sender);
end;

procedure TGUI.SpinEdit_N_2Click(Sender: TObject; Button: TUDBtnType);
begin    //formula nr
    if Button = btPrev then
    begin
      if Label_N_49.Caption <> '1' then Label_N_49.Caption := IntToStr(StrToInt(Label_N_49.Caption) - 1);
    end
    else if Button = btNext then
    begin
      if Label_N_49.Caption <> '6' then Label_N_49.Caption := IntToStr(StrToInt(Label_N_49.Caption) + 1);
    end;
    SpeedButton_N_26Click(Sender);
end;


procedure TGUI.CheckBox_N_4Click(Sender: TObject);
begin
    NewCalc; //light paras has also to be changed (dyn fog offset..)
end;




procedure TGUI.SpeedButton_N_28Click(Sender: TObject);
begin   //send all fvals to main
    RoundFvals;
    GUI.HAddOn := NaviHAddon;
    GUI.TabControl_F_1Change(Sender);{FORMULA}
end;




procedure TGUI.CopyFormulaValueFromMain(Findex: TPoint);
begin
    NaviHAddon.Formulas[Findex.X].dOptionValue[Findex.Y] :=
      GUI.HAddon.Formulas[Findex.X].dOptionValue[Findex.Y];
end;

function TGUI.CopyFormulaNameFromMain(Findex: Integer): AnsiString;
begin
    Result := CustomFtoStr(GUI.HAddon.Formulas[Min(5, Max(0, Findex))].CustomFname);
end;

function TGUI.GetFormulaValue(Findex: TPoint): Double;
begin
    Result := NaviHAddon.Formulas[Findex.X].dOptionValue[Findex.Y];
end;

function TGUI.GetFormulaValType(Findex: TPoint): Integer;
begin
    Result := NaviHAddon.Formulas[Findex.X].byOptionType[Findex.Y];
end;

//------------------------------------------------------------------------------
                    {  G  A  V  I  G  A  T  I  O  N  }
//------------------------------------------------------------------------------



procedure TGUI.SpeedButton_N_1Click(Sender: TObject);   //navigating
var t, i, n, ip: Integer;
    BackStep, notValid: LongBool;
    M: TMatrix3;
    d, dZmidO, de, dM, dMinD, minDE, maxDE, de2, ds, dZstartO: Double;
    V: TVec3D;
    lVGrads: TMatrix3;
begin
    with NaviHeader do
    begin
      if (GetAsyncKeyState(VK_SHIFT) and $8001) > 0 then dM := 0.125 else dM := 1;
      ActiveControl := (Sender as TSpeedButton).Parent;
      t := (Sender as TSpeedButton).Tag;
      NormVGrads(@NaviHeader);
      lVGrads := NormaliseMatrixTo(1, @hVGrads); //for absolute distance estimates
      dZmidO := dZmid;
      dMinD := StrToFloatK(Edit_N_6.Text);
      BackStep := t in [1,3,6];
      Moving := (t < 7);
      if Moving then
      begin
        notValid := CheckBox_N_1.Checked;
        i := Min(90, StrToIntTrim(Edit_N_1.Text)); //stepsize in%
        if not notValid then de := GetLocalAbsoluteDE(notValid) * NDEmultiplier;
        if notValid then de := LengthOfSize(@NaviHeader) * dStepWidth;
        mCopyVec(@V, @dXmid);
        dZstartO := dZStart;
        d := 0.01 * i * de;
        if BackStep then d := -d;
        if t < 3 then n := 1 else
        if t < 5 then n := 0 else n := 2;
        mAddVecWeight(@dXmid, @lVGrads[n], d * dM); //transform also dZstart!!!
        dZStart := dZStartO + dZmid - dZmidO;
        if not notValid then //not fixed zoom and steps
        begin
          d := GetLocalAbsoluteDE(notValid) * NDEmultiplier;
          if (not notValid) and (d < dMinD) then  // min distance
          begin
            mCopyVec(@dXmid, @V);
            dZStart := dZstartO;
            if de > dMinD then
            begin
              de := de * (de - dMinD) / (de - d);
              d := 0.01 * i * de;
              if BackStep then d := -d;
              mAddVecWeight(@dXmid, @lVGrads[n], d * dM);
              dZStart := dZStartO + dZmid - dZmidO;
            end;
          end else begin
            minDE := MaxCD(1e-13, de * (100 - i) * 0.008);
            maxDE := MaxCD(minDE * 1.1, de * (100 + i) * 0.0125);
            ds := 1.25;
            ip := 200;
            repeat
              ds := ds * 0.8;
              de2 := 0.5 * (de + d);           //another DE in move direction + average
              d := 0.01 * i * de2 * ds;
              if BackStep then d := -d;
              mCopyAddVecWeight(@dXmid, @V, @lVGrads[n], d * dM);
              dZStart := dZStartO + dZmid - dZmidO;
              d := GetLocalAbsoluteDE(notValid) * NDEmultiplier;
              Inc(ip);
            until ((not notValid) and (d > minDE) and (d < maxDE) and
                  (MaxCD(Abs(dXmid), MaxCD(Abs(dYmid), Abs(dZmid))) < ip)) or (ip > 300);
          end;
          if notValid then
          begin
            mCopyVec(@dXmid, @V);
            dZStart := dZstartO;
            dZmid := dZmidO;
          end;
        end;
        d := dZmid - dZmidO;
        dZstart := dZstartO + d;
        dZend := dZend + d;
        SetZoom;
      end
      else   //rotating
      begin
        d := StrToFloatK(Edit_N_2.Text) * MPid180 * dM;
        if t in [8, 9, 11] then d := - d;
        case t of
         7, 8: BuildRotMatrix(d, 0, 0, @M);
        9, 10: BuildRotMatrix(0, d, 0, @M);
          else BuildRotMatrix(0, 0, d, @M);
        end;
        Multiply2Matrix(@M, @hVGrads);
        hVgrads := M;
      end;
      PaintZeroVec;
      PaintCoord;
      NewCalc;
    end;
end;





//------------------------------------------------------------------------------
             {  D  I  S  C  O  M  B  O  O  B  E  R  A  T  I  O  N  }
//------------------------------------------------------------------------------



procedure TGUI.UpdateFormulaLabels(Findex: TPoint);
var i, i2: Integer;
    LF, LV: TLabel;
    RX: TTrackBarEx;
    b: Boolean;
begin
    for i := 0 to 2 do
    begin
      i2 := FSubIndexTop + i;
      LF := FindComponent('Label_N_F' + IntToStr(i)) as TLabel;
      LV := FindComponent('Label_N_V' + IntToStr(i)) as TLabel;
      RX := FindComponent('TrackBarEx_N_' + IntToStr(i + 4)) as TTrackBarEx;
      if (LF <> nil) and (LV <> nil) and (RX <> nil) then
      begin
        b := (i2 < NaviHAddOn.Formulas[Findex.X].iOptionCount) and
         (((NaviHAddOn.bOptions1 and 3) = 1) or (NaviHAddOn.Formulas[Findex.X].iItCount > 0));
        LF.Visible := b;
        LV.Visible := b;
        RX.Visible := b;
        if b then
        begin
          LF.Caption := PTCustomFormula(GUI.MHeader.PHCustomF[Findex.X]).sOptionStrings[i2];
          if not isIntType(AdjustSliderValType[3 + i]) then
            LV.Caption := FloatToStrSingle(AdjustSliderValues[3 + i])
          else
            LV.Caption := IntToStr(Round(AdjustSliderValues[3 + i]));
        end;
      end;
      CheckFormulaImageVis;
    end;
    CheckFocus;
end;


procedure TGUI.SpeedButton_N_27Click(Sender: TObject);
var E: TEdit;
begin  //send formula value to main
    CurrentFindex := FormulaIndex(FocusedSlider);
    GUI.HAddOn.Formulas[CurrentFindex.X].dOptionValue[CurrentFindex.Y] := AdjustSliderValues[3 + FocusedSlider];
    if GUI.TabControl_F_1.TabIndex = CurrentFindex.X then//{FORMULA}
    begin
      E := (GUI.FindComponent('Edit_F_' + IntToStr(CurrentFindex.Y + 1)) as TEdit);{FORMULA}
      if isIntType(AdjustSliderValType[3 + FocusedSlider]) then
        E.Text := IntToStr(Round(AdjustSliderValues[3 + FocusedSlider]))
      else
        E.Text := FloatToStr(AdjustSliderValues[3 + FocusedSlider]);
    end;
end;



function TGUI.FormulaIndex(iSlider: Integer): TPoint;
begin
    Result.X := Max(0, Min(5, StrToIntTrim(Label_N_49.Caption) - 1));
    Result.Y := Max(0, Min(15, FSubIndexTop + iSlider));
end;

procedure TGUI.ScrollBar_N_1Change(Sender: TObject);
var i: Integer;
begin  //mov FSubIndexTop
    if bUserChangeN then
    begin
      i := Max(0, Min(15, NaviHAddon.Formulas[CurrentFindex.X].iOptionCount));
      i := Max(0, Min(i - 2, ScrollBar_N_1.Position));
      if i <> FSubIndexTop then
      begin
        FSubIndexTop := i;
        SpeedButton_N_26Click(Sender);
      end;
    end;
end;

procedure TGUI.CheckFormulaImageVis;
begin
    Image_N_4.Visible := FSubIndexTop > 0;
    Image_N_5.Visible := NaviHAddOn.Formulas[Max(0, Min(5, StrToInt(Label_N_49.Caption) - 1))].iOptionCount > FSubIndexTop + 3;
end;




procedure TGUI.SpeedButton_N_26Click(Sender: TObject); //also as general update
var i: Integer;
begin          //reset value ..from focused slider
    if FocusedSlider > 2 then FocusedSlider := 0;
    if Sender = SpeedButton_N_26 then
      CopyFormulaValueFromMain(FormulaIndex(FocusedSlider))
    else if Sender = SpinEdit_N_2 then
    begin
      FocusedSlider := 0;
      FSubIndexTop := 0;
    end;
    CurrentFindex := FormulaIndex(FocusedSlider);
    Label_N_44.Caption := CopyFormulaNameFromMain(CurrentFindex.X); //Fname
    if (NaviHAddon.bOptions1 and 3) = 1 then
    begin  //interpol hybrid has single values in itcount:
      Label_N_47.Caption := FloatToStrSingle(PSingle(@NaviHAddOn.Formulas[CurrentFindex.X].iItCount)^);
      Label_N_42.Caption := 'Weight:';
    end
    else
    begin
      Label_N_47.Caption := IntToStr(NaviHAddOn.Formulas[CurrentFindex.X].iItCount);
      Label_N_42.Caption := 'Iterations:';
    end;
//------------------------------------------------------------------------------
    if i in [3,4,5] then//for i := 3 to 5 do  //update all slider
     begin
      AdjustSliderValues[i] := GetFormulaValue(FormulaIndex(i - 3)); //from naviHaddon
      AdjustSliderPos0Values[i] := AdjustSliderValues[i];
      AdjustSliderValType[i] := GetFormulaValType(FormulaIndex(i - 3));
      if isAngleType(AdjustSliderValType[i]) then AdjustSliderRange[i] := 15 else AdjustSliderRange[i] := 1;
    end;
    UpdateFormulaLabels(CurrentFindex);
//------------------------------------------------------------------------------
    if SpeedButton_N_33.Caption = 'Dyn Fog on its:' then i := Naviheader.bDFogIt else i := Naviheader.bColorOnIt - 1;
    AdjustSliderPos0Values[9] := i;
    AdjustSliderPos0Values[10] := Naviheader.RStop;
    AdjustSliderPos0Values[11] := Naviheader.sDEcombS;
    AdjustSliderPos0Values[12] := Naviheader.sDEstop;
    AdjustSliderPos0Values[13] := Naviheader.Iterations;
    for i := 9 to 13 do AdjustSliderValues[i] := AdjustSliderPos0Values[i];
    UpdateDiversLabels;
    if (Sender = SpeedButton_N_26) or (Sender = UpDown_N_2) then Newcalc;
end;






procedure TGUI.Label_N_39MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var t, i: Integer;
    L: TLabel;
    d: Double;
    bUpdate: LongBool;
    s: String;
begin                        //inputBox popup
    L := Sender as TLabel;
    t := L.Tag;
    d := AdjustSliderValues[t];
    if t in [6..8] then s := FloatToStr(d / Pid180) else
    if t = 13 then s := IntToStr(Round(d)) else s := FloatToStr(d);
    if not InputQuery('Input', 'New value:', s) then Exit;
    if t in [6..8] then d := StrToFloatK(s) * Pid180 else d := StrToFloatK(s);
    AdjustSliderValues[t] := d;
    if t < 3 then
    begin
      TPVec3D(@NaviHeader.dJx)^[t] := AdjustSliderValues[t];
      UpdateJuliaLabels;
      bUpdate := NaviHeader.bIsJulia > 0;
    end
//------------------------------------------------------------------------------
    else if t < 6 then
    begin  //put new value to navi haddon
      s := L.Caption;
      UpdateFormulaLabels(FormulaIndex(t - 3));
      NaviHAddon.Formulas[FormulaIndex(t - 3).X].dOptionValue[FormulaIndex(t - 3).Y] := AdjustSliderValues[t];
      bUpdate := s <> L.Caption;
    end
//------------------------------------------------------------------------------
    else if t < 9 then
    begin
      TPVec3D(@NaviHeader.dXWrot)^[t - 6] := AdjustSliderValues[t];
      Update4dRotLabels;
      bUpdate := True;
    end
    else
    begin
      s := L.Caption;
      if t = 9 then
      begin
        AdjustSliderValues[9] := Min0MaxCD(255, AdjustSliderValues[9]);
        i := Round(AdjustSliderValues[9]);
        if SpeedButton_N_33.Caption = 'Dyn Fog on its:' then
          NaviHeader.bDFogIt := i
        else
        begin
          NaviHeader.bColorOnIt := i;
          Dec(i);
        end;
        L.Caption := IntToStr(i);
      end
      else if t = 10 then
      begin
        AdjustSliderValues[10] := MaxCD(0, AdjustSliderValues[10]);
        NaviHeader.RStop := AdjustSliderValues[10];
        L.Caption := FloatToStrSingle(NaviHeader.RStop);
      end
      else if t = 11 then
      begin
        AdjustSliderValues[11] := Min0MaxCD(AdjustSliderValues[11], 100);
        NaviHeader.sDEcombS := AdjustSliderValues[11];
        L.Caption := FloatToStrSingle(NaviHeader.sDEcombS);
      end
      else if t = 12 then
      begin
        AdjustSliderValues[12] := MinMaxCD(0.1, AdjustSliderValues[12], 300);
        NaviHeader.sDEstop := AdjustSliderValues[12];
        L.Caption := FloatToStrSingle(NaviHeader.sDEstop);
        DEstopChanged := True;
      end
      else if t = 13 then
      begin
        AdjustSliderValues[13] := MinMaxCD(1, AdjustSliderValues[13], 5000);
        NaviHeader.Iterations := Round(AdjustSliderValues[13]);
        L.Caption := IntToStr(NaviHeader.Iterations);
      end;
      bUpdate := s <> L.Caption;
    end;
    AdjustSliderPos0Values[t] := AdjustSliderValues[t];
    if bUpdate then NewCalc;
    CheckFocus;
end;




procedure TGUI.CheckFocus;
begin
    FocusedSlider := -1;
    //frm
    if TrackBarEx_N_4.Focused then FocusedSlider := 0 else
    if TrackBarEx_N_5.Focused then FocusedSlider := 1 else
    if TrackBarEx_N_6.Focused then FocusedSlider := 2 else
    //misc
    if TrackBarEx_N_10.Focused then FocusedSlider := 3 else
    if TrackBarEx_N_11.Focused then FocusedSlider := 4 else
    if TrackBarEx_N_12.Focused then FocusedSlider := 5 else
    if TrackBarEx_N_13.Focused then FocusedSlider := 6 else
    if TrackBarEx_N_14.Focused then FocusedSlider := 7;

    SpeedButton_N_26.Enabled := FocusedSlider in [0..2];
    SpeedButton_N_27.Enabled := SpeedButton_N_26.Enabled;
    SpeedButton_N_31.Enabled := FocusedSlider in [3..7];
    SpeedButton_N_32.Enabled := SpeedButton_N_31.Enabled;
    FocusedSlider := Max(0, FocusedSlider);
end;

procedure TGUI.RxSlider1Change(Sender: TObject);
var t, i: Integer;
    RS: TTrackBarEx;
    d, r, ph, th, sp, cp, st, ct: Double;
    bUpdate: LongBool;
    LV: TLabel;
    s: String;
begin
    if bUserChangeN then
    begin
      RS := Sender as TTrackBarEx;
      t := RS.Tag;
      d := (640 * 16) shr (RadioGroup_N_1.ItemIndex * 4); //min,fine,mid,big adjustments   16*640 ,640, 40, 40/16     slider: -60..60
      if isIntType(AdjustSliderValType[t]) then d := MinMaxCD(3, d * 0.5, 50);
//------------------------------------------------------------------------------
//      if (t < 3) and CheckBox_N_8.Checked then //julia, sphere coords
//------------------------------------------------------------------------------
//      begin
//        r := MaxCD(1e-10, LengthOfVec(TPVec3D(@AdjustSliderPos0Values[0])^));
//        ph := ArcSinSafe(AdjustSliderPos0Values[2] / r);
//        th := ArcTan2(AdjustSliderPos0Values[1], NonZero(AdjustSliderPos0Values[0]));
//        if t = 0 then
//        begin  //R scale
//          if r < 1e-9 then AdjustSliderPos0Values[0] := 1e-9 else
//          begin
//            d := MaxCD(1e-10, r + RS.Position / d) / r;
//            TPVec3D(@AdjustSliderValues[0])^ := ScaleVector(TPVec3D(@AdjustSliderPos0Values[0])^, d);
//          end;
//        end
//        else if t = 1 then
//        begin  //(-)  x<->y rotate
//          r := Sqrt(Sqr(AdjustSliderPos0Values[0]) + Sqr(AdjustSliderPos0Values[1]));
//          d := th + RS.Position * 10 / d;
//          SinCosD(d, st, ct);
//          AdjustSliderValues[0] := ct * r;
//          AdjustSliderValues[1] := st * r;
//        end else begin  //(|) sqrt(xx+yy)<->z rotate
//          d := ph + RS.Position * 4 / d;
//          SinCosD(d, sp, cp);
//          SinCosD(th, st, ct);
//          AdjustSliderValues[0] := cp * ct * r;
//          AdjustSliderValues[1] := cp * st * r;
//          AdjustSliderValues[2] := sp * r;
//        end;
//        TPVec3D(@NaviHeader.dJx)^ := TPVec3D(@AdjustSliderValues[0])^;
//      end
//------------------------------------------------------------------------------
//      else if AdjustSliderValType[t] = -5 then
//        AdjustSliderValues[t] := AdjustSliderPos0Values[t] * Power(3, RS.Position * AdjustSliderRange[t] / d)
//      else AdjustSliderValues[t] := AdjustSliderPos0Values[t] + RS.Position * AdjustSliderRange[t] / d;
//      bUpdate := False;
//      if t < 3 then
//      begin
//        TPVec3D(@NaviHeader.dJx)^[t] := AdjustSliderValues[t];
//        UpdateJuliaLabels;
//        bUpdate := NaviHeader.bIsJulia > 0;
//      end
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
      if t in [0,1,2] then  // (t < 3)
//------------------------------------------------------------------------------
          if CheckBox_N_8.Checked = True then  //julia, sphere coords      ?????????????????
            begin
              r := MaxCD(1e-10, LengthOfVec(TPVec3D(@AdjustSliderPos0Values[0])^));
              ph := ArcSinSafe(AdjustSliderPos0Values[2] / r);
              th := ArcTan2(AdjustSliderPos0Values[1], NonZero(AdjustSliderPos0Values[0]));
              if t = 0 then
                  begin  //R scale
                    if r < 1e-9 then AdjustSliderPos0Values[0] := 1e-9 else
                    begin
                      d := MaxCD(1e-10, r + RS.Position / d) / r;
                      TPVec3D(@AdjustSliderValues[0])^ := ScaleVector(TPVec3D(@AdjustSliderPos0Values[0])^, d);
                    end;
                  end
              else if t = 1 then
                  begin  //(-)  x<->y rotate
                    r := Sqrt(Sqr(AdjustSliderPos0Values[0]) + Sqr(AdjustSliderPos0Values[1]));
                    d := th + RS.Position * 10 / d;
                    SinCosD(d, st, ct);
                    AdjustSliderValues[0] := ct * r;
                    AdjustSliderValues[1] := st * r;
                  end else begin  //(|) sqrt(xx+yy)<->z rotate
                    d := ph + RS.Position * 4 / d;
                    SinCosD(d, sp, cp);
                    SinCosD(th, st, ct);
                    AdjustSliderValues[0] := cp * ct * r;
                    AdjustSliderValues[1] := cp * st * r;
                    AdjustSliderValues[2] := sp * r;
                  end;
              TPVec3D(@NaviHeader.dJx)^ := TPVec3D(@AdjustSliderValues[0])^;
            end
//------------------------------------------------------------------------------
      else if AdjustSliderValType[t] = -5 then    // ??????
            begin
            AdjustSliderValues[t] := AdjustSliderPos0Values[t] * Power(3, RS.Position * AdjustSliderRange[t] / d);
            end
      else
            begin
            AdjustSliderValues[t] := AdjustSliderPos0Values[t] + RS.Position * AdjustSliderRange[t] / d;
            end;
          bUpdate := False;
 //------------------------------------------------------------------------------
       if t in [0,1,2] then //if t < 3 then
          begin
            TPVec3D(@NaviHeader.dJx)^[t-100] := AdjustSliderValues[t]; // julia
            UpdateJuliaLabels;
            bUpdate := NaviHeader.bIsJulia > 0;
          end


      else if t in [6..8] then
      begin
        TPVec3D(@NaviHeader.dXWrot)^[t - 6] := AdjustSliderValues[t];
        Update4dRotLabels;
        bUpdate := True;
      end
      else if t in [9..13] then
      begin
        FocusedSlider := t - 6;
        LV := FindComponent('Label_N_V' + IntToStr(FocusedSlider)) as TLabel;
        if LV <> nil then
        begin
          s := LV.Caption;
          if t = 9 then
          begin
            i := Round(Min0MaxCD(AdjustSliderValues[9], 255));
            if SpeedButton_N_33.Caption = 'Dyn Fog on its:' then
              NaviHeader.bDFogIt := i
            else
            begin
              NaviHeader.bColorOnIt := i;
              Dec(i);
            end;
            AdjustSliderValues[9] := i;
            LV.Caption := IntToStr(i);
          end
          else if t = 10 then
          begin
            AdjustSliderValues[10] := MaxCD(0, AdjustSliderValues[10]);
            NaviHeader.RStop := AdjustSliderValues[10];
            LV.Caption := FloatToStrSingle(NaviHeader.RStop);
          end
          else if t = 11 then
          begin
            AdjustSliderValues[11] := Min0MaxCD(AdjustSliderValues[11], 100);
            NaviHeader.sDEcombS := AdjustSliderValues[11];
            LV.Caption := FloatToStrSingle(NaviHeader.sDEcombS);
          end
          else if t = 12 then
          begin
            AdjustSliderValues[12] := MinMaxCD(0.1, AdjustSliderValues[12], 300);
            NaviHeader.sDEstop := AdjustSliderValues[12];
            LV.Caption := FloatToStrSingle(NaviHeader.sDEstop);
            DEstopChanged := True;
          end
          else if t = 13 then
          begin
            AdjustSliderValues[13] := MinMaxCD(1, AdjustSliderValues[13], 2000);
            NaviHeader.Iterations := Round(AdjustSliderValues[13]);
            LV.Caption := IntToStr(NaviHeader.Iterations);
          end;
          bUpdate := s <> LV.Caption;
        end;
      end
//------------------------------------------------------------------------------
      else if RS.Visible then
      begin  //put new value to navi haddon
        FocusedSlider := t - 3;
        LV := FindComponent('Label_N_V' + IntToStr(FocusedSlider)) as TLabel;
        if LV <> nil then
        begin
          s := LV.Caption;
          UpdateFormulaLabels(FormulaIndex(FocusedSlider));
          NaviHAddon.Formulas[FormulaIndex(FocusedSlider).X].dOptionValue[FormulaIndex(FocusedSlider).Y] := AdjustSliderValues[t];
          bUpdate := s <> LV.Caption;
        end;
      end;
//------------------------------------------------------------------------------
      if bUpdate then NewCalc;
      CheckFocus;
    end;
end;

procedure TGUI.RxSlider1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var t: Integer;
    RS: TTrackBarEx;
begin
    bUserChangeN := False;
    RS := Sender as TTrackBarEx;
    t := RS.Tag;
//------------------------------------------------------------------------------
//    if (t < 3) and CheckBox_N_8.Checked then
    if t in [100,101,102] then
        if CheckBox_N_8.Checked then
            TPVec3D(@AdjustSliderPos0Values[0])^ := TPVec3D(@AdjustSliderValues[0])^ //julia, sphere coords
    else
      AdjustSliderPos0Values[t] := AdjustSliderValues[t];
//------------------------------------------------------------------------------

    RS.Position := 0;
    bUserChangeN := True;
    CheckFocus;
end;

procedure TGUI.UpdateDiversLabels;
begin
    if SpeedButton_N_33.Caption = 'Dyn Fog on its:' then
      Label_N_V3.Caption := IntToStr(NaviHeader.bDFogIt)
    else Label_N_V3.Caption := IntToStr(NaviHeader.bColorOnIt - 1);
    Label_N_V4.Caption := FloatToStrSingle(NaviHeader.RStop);
    Label_N_V5.Caption := FloatToStrSingle(NaviHeader.sDEcombS);
    Label_N_V6.Caption := FloatToStrSingle(NaviHeader.sDEstop);
    Label_N_V7.Caption := IntToStr(NaviHeader.Iterations);
end;

procedure TGUI.SpeedButton_N_31Click(Sender: TObject);
begin  //reset a divers value
    CheckFocus;
    case FocusedSlider of
    3: begin
         if SpeedButton_N_33.Caption = 'Dyn Fog on its:' then
         begin
           Naviheader.bDFogIt := GUI.MHeader.bDFogIt;
           AdjustSliderPos0Values[9] := Naviheader.bDFogIt;
         end
         else
         begin
           Naviheader.bColorOnIt := GUI.MHeader.bColorOnIt;
           AdjustSliderPos0Values[9] := Naviheader.bColorOnIt - 1;
         end;
         AdjustSliderPos0Values[9] := Naviheader.bDFogIt;
       end;
    4: begin
         Naviheader.RStop := GUI.MHeader.RStop;
         AdjustSliderPos0Values[10] := Naviheader.RStop;
       end;
    5: begin
         Naviheader.sDEcombS := GUI.MHeader.sDEcombS;
         AdjustSliderPos0Values[11] := Naviheader.sDEcombS;
       end;
    6: begin
         Naviheader.sDEcombS := GUI.MHeader.sDEcombS;
         AdjustSliderPos0Values[11] := Naviheader.sDEcombS;
       end;
    7: begin
         Naviheader.Iterations := GUI.MHeader.Iterations;
         AdjustSliderPos0Values[13] := Naviheader.Iterations;
       end;
    else Exit;
    end;
    AdjustSliderValues[6 + FocusedSlider] := AdjustSliderPos0Values[6 + FocusedSlider];
    UpdateDiversLabels;
    Newcalc;
end;

procedure TGUI.SpeedButton_N_32Click(Sender: TObject);
begin   //send a divers value
    CheckFocus;
    case FocusedSlider of
    3:  if SpeedButton_N_33.Caption = 'Dyn Fog on its:' then
          GUI.Edit_M_16.Text := IntToStr(Naviheader.bDFogIt)
        else GUI.Edit_M_35.Text := IntToStr(Naviheader.bColorOnIt - 1);
    4:  GUI.RBailoutEdit.Text := FloatToStrSingle(Naviheader.RStop);{FORMULA}
    5:  GUI.Edit_F_23.Text := FloatToStrSingle(Naviheader.sDEcombS);{FORMULA}
    6:  GUI.Edit_M_25.Text := FloatToStrSingle(Naviheader.sDEstop);
    7:  GUI.MaxIterEdit.Text := IntToStr(Naviheader.Iterations);{FORMULA}
    end;
end;

procedure TGUI.SpeedButton_N_33Click(Sender: TObject);
begin
    if SpeedButton_N_33.Caption = 'Dyn Fog on its:' then
    begin
      SpeedButton_N_33.Caption := 'Color on its:';
      Label_N_38.Visible := False;
      UpDown_N_1.Visible := False;
      AdjustSliderValues[9] := NaviHeader.bColorOnIt - 1;
    end else begin
      SpeedButton_N_33.Caption := 'Dyn Fog on its:';
      Label_N_38.Visible := True;
      UpDown_N_1.Visible := True;
      AdjustSliderValues[9] := NaviHeader.bDFogIt;
    end;
    AdjustSliderPos0Values[9] := AdjustSliderValues[9];
    Label_N_V3.Caption := IntToStr(Round(AdjustSliderValues[9]));
end;










procedure TGUI.CheckBox_N_7Click(Sender: TObject);
begin //Julia mode on/off
    NaviHeader.bIsJulia  := Byte(CheckBox_N_7.Checked);
    Newcalc;
end;

procedure TGUI.SpeedButton_N_24Click(Sender: TObject);
begin
    InputJuliaVals;
    if NaviHeader.bIsJulia > 0 then Newcalc;
end;

procedure TGUI.SpeedButton_N_25Click(Sender: TObject);
begin  //send julia values to main
    GUI.Edit_M_28.Text := FloatToStr(NaviHeader.dJx);
    GUI.Edit_M_29.Text := FloatToStr(NaviHeader.dJy);
    GUI.Edit_M_30.Text := FloatToStr(NaviHeader.dJz);
    GUI.CheckBox_M_7.Checked := NaviHeader.bIsJulia > 0;
end;

procedure TGUI.InputJuliaVals;
begin
    NaviHeader.bIsJulia := GUI.MHeader.bIsJulia;
    TPVec3D(@NaviHeader.dJx)^ := TPVec3D(@GUI.MHeader.dJx)^;
    ResetJuliaPos0Vals;
end;

procedure TGUI.Input4dRotVals;
begin
    TPVec3D(@NaviHeader.dXWrot)^ := TPVec3D(@GUI.MHeader.dXWrot)^;
    Reset4dRotVals;
end;

procedure TGUI.ResetJuliaPos0Vals;
begin
    TPVec3D(@AdjustSliderPos0Values[0])^ := TPVec3D(@GUI.NaviHeader.dJx)^;{NAVI}
    TPVec3D(@AdjustSliderValues[0])^ := TPVec3D(@AdjustSliderPos0Values[0])^;
    UpdateJuliaLabels;
    CheckBox_N_7.Checked := NaviHeader.bIsJulia > 0;
end;

procedure TGUI.Reset4dRotVals;
begin
    TPVec3D(@AdjustSliderPos0Values[6])^ := TPVec3D(@GUI.NaviHeader.dXWrot)^;{NAVI}
    TPVec3D(@AdjustSliderValues[6])^ := TPVec3D(@AdjustSliderPos0Values[6])^;
    Update4dRotLabels;
end;

procedure TGUI.UpdateJuliaLabels;
begin
    Label_N_39.Caption := FloatToStrSingle(AdjustSliderValues[0]);
    Label_N_40.Caption := FloatToStrSingle(AdjustSliderValues[1]);
    Label_N_41.Caption := FloatToStrSingle(AdjustSliderValues[2]);
end;

procedure TGUI.Update4dRotLabels;
begin
    Label_N_50.Caption := FloatToStrSingle(AdjustSliderValues[6] / Pid180);
    Label_N_51.Caption := FloatToStrSingle(AdjustSliderValues[7] / Pid180);
    Label_N_52.Caption := FloatToStrSingle(AdjustSliderValues[8] / Pid180);
end;

procedure TGUI.SpeedButton_N_29Click(Sender: TObject);
begin
    Input4dRotVals;
    Newcalc;
end;

procedure TGUI.SpeedButton_N_30Click(Sender: TObject);
begin
    GUI.XWEdit.Text := FloatToStr(NaviHeader.dXWrot / Pid180);{FORMULA}
    GUI.YWEdit.Text := FloatToStr(NaviHeader.dYWrot / Pid180);{FORMULA}
    GUI.ZWEdit.Text := FloatToStr(NaviHeader.dZWrot / Pid180);{FORMULA}
end;











procedure TGUI.UpDown_N_3Click(Sender: TObject; Button: TUDBtnType);
begin
    if Button = btPrev then SpinButton_N_Down else
    if Button = btNext then SpinButton_N_Up;
end;

procedure TGUI.SpinButton_N_Down;
begin
    NaviHeader.dZoom := NaviHeader.dZoom * 0.707;
    SetZoom;
    NewCalc;
end;

procedure TGUI.SpinButton_N_Up;
begin
    NaviHeader.dZoom := NaviHeader.dZoom * 1.414;
    SetZoom;
    NewCalc;
end;




procedure TGUI.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var MPos: TPoint;
    b: Boolean;
    i: Integer;
begin
    if Panel_N_5.Visible then
    begin
      GetCursorPos(MPos);
      Mpos := Panel_N_5.ScreenToClient(Mpos);
      b := (Mpos.Y >= ScrollBar_N_1.Top) and
           (Mpos.Y <= ScrollBar_N_1.Top + ScrollBar_N_1.Height) and
           (Mpos.X >= Panel_N_5.Width - ScrollBar_N_1.Width) and (Mpos.X <= Panel_N_5.Width);
      b := b and (Image_N_4.Visible or Image_N_5.Visible);
      if b and not ScrollBar_N_1.Visible then
      begin
        bUserChangeN := False;
        i := Max(0, Min(15, NaviHAddon.Formulas[CurrentFindex.X].iOptionCount));
        ScrollBar_N_1.Max := Max(FSubIndexTop, i - 2);
        ScrollBar_N_1.Min := 0;
        ScrollBar_N_1.Position := FSubIndexTop;
        bUserChangeN := True;
        Image_N_4.Visible := False;
        Image_N_5.Visible := False;
        ScrollBar_N_1.Visible := True;
      end
      else if ScrollBar_N_1.Visible then
      begin
        ScrollBar_N_1.Visible := False;
        CheckFormulaImageVis;
      end;
    end;
end;




procedure TGUI.SetHeaderSize;
//var
//  hmax, p2h: Integer;
//  NaviScale: Double;
//  s: String;
begin
//    if NaviSizeCmb.ItemIndex >= 0 then begin
//      s := NaviSizeCmb.Items[NaviSizeCmb.ItemIndex];
//      NaviScale := StrToFloat(Copy(s, 1, Length(s) - 1)) / 100;
//      if NaviScale < 0.2 then
//        NaviScale := 0.2
//      else if NaviScale > 2.0 then
//        NaviScale := 2.0;
//    end
//    else
//      NaviScale := 1.0;
NaviHeader.Width:=640;
NaviHeader.Height:=480;
//NaviHeader.Width:=PageMain.TabWidth;
//NaviHeader.Height:=PageMain.TabHeight-Panel_N_1.Height-Panel_N_2.Height;
//    if Panel_N_2.Visible then p2h := Panel_N_2.Height else p2h := 0;
//    hmax := Screen.WorkAreaHeight - 20 - GUI.Height + ClientHeight;
//    hmax := Screen.WorkAreaHeight - 20 - GUINav.Height + ClientHeight - Panel_N_1.Height - p2h;
//    if hmax < 200 then hmax := 200;

//    with NaviHeader do
//    begin
//      if (OriginalSize.Y * 640) div OriginalSize.X > hmax then
//      begin
//        Height := (hmax + 7) and $FF8;
//        Width := ((Height * OriginalSize.X) div OriginalSize.Y + 4) and $FF8;
//        if Width > 640 then Width := 640 else if Width < 8 then Width := 8;
//      end
//      else
//      begin
//        Width := 640;
//        Height := Min(hmax, (OriginalSize.Y * 640) div OriginalSize.X + 4) and $FF8;
//        if Height < 8 then Height := 8;
//      end;
//      Width := Round(Width * NaviScale);
//      Height := Round(Height * NaviScale);
//      ClientHeight := Height + Panel_N_1.Height + p2h;
//    end;
end;


procedure TGUI.SetWindowSize; //todo: modify also maxwidth if to high
var p2h, i, j: Integer;
begin
//    Panel_N_2.Visible := Panel_N_2visible;
    SetHeaderSize;
    Image_N_1.Picture.Bitmap.SetSize(NaviHeader.Width, NaviHeader.Height);
    Image_N_1.SetBounds(0, 0, NaviHeader.Width, NaviHeader.Height);
    Image_N_6.Top := Image_N_1.Top + NaviHeader.Height div 2 - 60;  //onclick disabled when visible!
    Image_N_6.Left := Image_N_1.Left + NaviHeader.Width div 2 - 60;

//    if Panel_N_2visible then p2h := Panel_N_2.Height else p2h := 0;
//    if Screen.WorkAreaHeight > 810 then i := 660 else i := 580;
//    ClientHeight := Max(i, NaviHeader.Height + Panel_N_1.Height + p2h);
//    j := 646;
//    if Panel_N_3.Visible then
//      Inc(j, Panel_N_3.Width);
//    ClientWidth := Max(j, NaviHeader.Width); //+ Panel_N_5.Width
//    Panel_N_1.Top := ClientHeight - p2h - Panel_N_1.Height;
//    Panel_N_2.Top := ClientHeight - p2h;

//    if (Image_N_1.Picture.Bitmap.Width <> NaviHeader.Width) or
//       (Image_N_1.Picture.Bitmap.Height <> NaviHeader.Height) then
//    begin
//      if iActiveThreads > 0 then WaitForCalcToStop(2000);
//      Image_N_1.Picture.Bitmap.SetSize(NaviHeader.Width, NaviHeader.Height);
//      if( NaviHeader.Width > 640) then
//        Image_N_1.SetBounds(0,0, NaviHeader.Width, NaviHeader.Height)
//      else
//        Image_N_1.SetBounds((640 - NaviHeader.Width) div 2, (Panel_N_1.Top - NaviHeader.Height) div 2,
//                         NaviHeader.Width, NaviHeader.Height);
//    end
//    else Image_N_1.Top := (Panel_N_1.Top - NaviHeader.Height) div 2;
//    Image_N_6.Top := Image_N_1.Top + NaviHeader.Height div 2 - 60;  //onclick disabled when visible!
//    Image_N_6.Left := Image_N_1.Left + NaviHeader.Width div 2 - 60;
end;



procedure TGUI.SpeedButton_N_17Click(Sender: TObject);
var i: Integer;
begin    //expand/shrink panel2
    SpeedButton_N_17.Glyph.Canvas.FillRect(SpeedButton_N_17.Glyph.Canvas.ClipRect);
    if Panel_N_2.Visible then ImageList_N_1.GetBitmap(0, SpeedButton_N_17.Glyph)
                      else ImageList_N_1.GetBitmap(1, SpeedButton_N_17.Glyph);
//    i := NaviHeader.Height;
//    SetWindowSize(not Panel_N_2.Visible);
//    if i <> NaviHeader.Height then NewCalc;
end;



procedure TGUI.WmThreadStat(var Msg: TMessage);
begin
 {   case Msg.WParam of
      1:  begin Label_N_27.Caption := errorstring[1]; Label_N_27.Visible := True; end;
      2:  begin Label_N_28.Caption := errorstring[2]; Label_N_28.Visible := True; end;
      3:  begin Label_N_29.Caption := errorstring[3]; Label_N_29.Visible := True; end;
      4:  begin Label_N_30.Caption := errorstring[4]; Label_N_30.Visible := True; end;
    end; }
    case Msg.WParam of
      1:  begin Label_N_27.Caption := IntToStr(Msg.LParam); Label_N_27.Visible := True; end;
      2:  begin Label_N_28.Caption := IntToStr(Msg.LParam); Label_N_28.Visible := True; end;
      3:  begin Label_N_29.Caption := IntToStr(Msg.LParam); Label_N_29.Visible := True; end;
      4:  begin Label_N_30.Caption := IntToStr(Msg.LParam); Label_N_30.Visible := True; end;
    end;
end;
















Initialization

    AppFolder  := ExtractFilePath(Application.ExeName);
    AppDataDir := GetSpecialFolderPath(CSIDL_LOCAL_APPDATA) + '\Mandelbulb3D';
    if not SysUtils.DirectoryExists(AppDataDir) then AppDataDir := AppFolder;
    AppDataDir := IncludeTrailingPathDelimiter(AppDataDir);
    M3DBackGroundPic.LMnumber := 0;
    M3DBackGroundPic.LMframe := 0;
    M3DBackGroundPic.LMWidth := 0;
    SetCosTabFunction;{LIGHT}


//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

end.
