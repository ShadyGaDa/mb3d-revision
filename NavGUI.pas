unit NavGUI;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ExtCtrls,
  Buttons,
  StdCtrls,
  TypeDefinitions,
  ImgList,
  ComCtrls,
  Menus,
  TrackBarEx,
  Math3D,
  System.ImageList;

type
  TGUINav = class(TForm)
    Image_N_1: TImage;
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
    Timer_N_1: TTimer;
    SpeedButton_N_11: TSpeedButton;
    SpeedButton_N_12: TSpeedButton;
    SpeedButton_N_13: TSpeedButton;
    Label_N_15: TLabel;
    Label_N_16: TLabel;
    Label_N_17: TLabel;
    Panel_N_2: TPanel;
    Label_N_7: TLabel;
    Edit_N_1: TEdit;
    Label_N_9: TLabel;
    Edit_N_2: TEdit;
    Label_N_8: TLabel;
    Edit_N_3: TEdit;
    Label_N_11: TLabel;
    Label_N_19: TLabel;
    Label_N_20: TLabel;
    Label_N_21: TLabel;
    SpeedButton_N_14: TSpeedButton;
    SpeedButton_N_15: TSpeedButton;
    SpeedButton_N_16: TSpeedButton;
    Label_N_22: TLabel;
    Edit_N_4: TEdit;
    Label_N_23: TLabel;
    Label_N_24: TLabel;
    SpeedButton_N_17: TSpeedButton;
    ImageList_N_1: TImageList;
    Bevel_N_1: TBevel;
    SpeedButton_N_18: TSpeedButton;
    CheckBox_N_1: TCheckBox;
    CheckBox_N_2: TCheckBox;
    Label_N_26: TLabel;
    Edit_N_6: TEdit;
    Button_N_1: TButton;
    Label_N_27: TLabel;
    Label_N_28: TLabel;
    Label_N_29: TLabel;
    Label_N_30: TLabel;
    Label_N_31: TLabel;
    CheckBox_N_4: TCheckBox;
    Image_N_2: TImage;
    Label_N_32: TLabel;
    Label_N_33: TLabel;
    CheckBox_N_5: TCheckBox;
    Image_N_3: TImage;
    SpeedButton_N_19: TSpeedButton;
    SpeedButton_N_20: TSpeedButton;
    SpeedButton_N_21: TSpeedButton;
    SpeedButton_N_22: TSpeedButton;
    Label_N_18: TLabel;
    CheckBox_N_6: TCheckBox;
    Label_N_34: TLabel;
    Label_N_35: TLabel;
    Label_N_36: TLabel;
    Label_N_37: TLabel;
    PopupMenuNav: TPopupMenu;
    ChooseOption1: TMenuItem;
    N1: TMenuItem;
    Doubleclicktochangethenavimode1: TMenuItem;
    Singleclicktochangethenavimode1: TMenuItem;
    SpeedButton_N_23: TSpeedButton;
    Panel_N_3: TPanel;
    Label_N_39: TLabel;
    Label_N_40: TLabel;
    Label_N_41: TLabel;
    Label_N_V0: TLabel;
    SpeedButton_N_24: TSpeedButton;
    SpeedButton_N_25: TSpeedButton;
    CheckBox_N_8: TCheckBox;
    Label_N_F0: TLabel;
    Label_N_45: TLabel;
    SpeedButton_N_26: TSpeedButton;
    SpeedButton_N_27: TSpeedButton;
    SpeedButton_N_28: TSpeedButton;
    RadioGroup_N_1: TRadioGroup;
    Panel_N_4: TPanel;
    Panel_N_5: TPanel;
    CheckBox_N_7: TCheckBox;
    Label_N_44: TLabel;
    Bevel_N_2: TBevel;
    Bevel_N_3: TBevel;
    Label_N_V1: TLabel;
    Label_N_F1: TLabel;
    Label_N_V2: TLabel;
    Label_N_F2: TLabel;
    ScrollBar_N_1: TScrollBar;
    Image_N_4: TImage;
    Image_N_5: TImage;
    Image_N_6: TImage;
    Panel_N_6: TPanel;
    Label_N_52: TLabel;
    Label_N_50: TLabel;
    Label_N_51: TLabel;
    SpeedButton_N_29: TSpeedButton;
    SpeedButton_N_30: TSpeedButton;
    Image_N_8: TImage;
    Panel_N_7: TPanel;
    Label_N_V3: TLabel;
    SpeedButton_N_31: TSpeedButton;
    SpeedButton_N_32: TSpeedButton;
    Bevel_N_5: TBevel;
    Label_N_V4: TLabel;
    Label_N_48: TLabel;
    Label_N_V5: TLabel;
    Label_N_53: TLabel;
    UpDown_N_1: TUpDown;
    Label_N_38: TLabel;
    TrackBarEx_N_2: TTrackBarEx;
    TrackBarEx_N_3: TTrackBarEx;
    TrackBarEx_N_1: TTrackBarEx;
    TrackBarEx_N_4: TTrackBarEx;
    TrackBarEx_N_5: TTrackBarEx;
    TrackBarEx_N_6: TTrackBarEx;
    TrackBarEx_N_7: TTrackBarEx;
    TrackBarEx_N_8: TTrackBarEx;
    TrackBarEx_N_9: TTrackBarEx;
    TrackBarEx_N_10: TTrackBarEx;
    TrackBarEx_N_11: TTrackBarEx;
    TrackBarEx_N_12: TTrackBarEx;
    Label_N_V6: TLabel;
    Label_N_46: TLabel;
    TrackBarEx_N_13: TTrackBarEx;
    RadioGroup_N_2: TRadioGroup;
    SpinEdit_N_2: TUpDown;
    UpDown_N_2: TUpDown;
    Label_N_42: TLabel;
    Label_N_47: TLabel;
    Label_N_49: TLabel;
    UpDown_N_3: TUpDown;
    Label_N_V7: TLabel;
    Label_N_55: TLabel;
    TrackBarEx_N_14: TTrackBarEx;
    SpeedButton_N_33: TSpeedButton;
    SizeGroup: TGroupBox;
    DecreaseNaviSizeBtn: TSpeedButton;
    IncreaseNaviSizeBtn: TSpeedButton;
    NaviSizeCmb: TComboBox;
    Button_N_2: TSpeedButton;
    Button_N_3: TSpeedButton;
    Button_N_4: TSpeedButton;
    Button_N_5: TSpeedButton;
    TrackBarEx_N_15: TTrackBarEx;
    procedure SpeedButton_N_1Click(Sender: TObject);
    procedure Timer_N_1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton_N_11Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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
    procedure TrackBarEx_N_15Change(Sender: TObject);
    procedure Button_N_1Click(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure CheckBox_N_3Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CheckBox_N_5Click(Sender: TObject);
    procedure SpeedButton_N_22Click(Sender: TObject);
    procedure SpeedButton_N_19Click(Sender: TObject);
    procedure SpinButton1Down;
    procedure SpinButton1Up;
    procedure CheckBox_N_1Click(Sender: TObject);
    procedure Image_N_1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image_N_1DblClick(Sender: TObject);
    procedure Image_N_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Doubleclicktochangethenavimode1Click(Sender: TObject);
    procedure Singleclicktochangethenavimode1Click(Sender: TObject);
    procedure Image_N_1Click(Sender: TObject);
    procedure SpeedButton_N_23Click(Sender: TObject);
    procedure RxSlider1Change(Sender: TObject);
    procedure RxSlider1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_N_24Click(Sender: TObject);
    procedure SpeedButton_N_25Click(Sender: TObject);
    procedure SpeedButton_N_26Click(Sender: TObject);
    procedure SpeedButton_N_27Click(Sender: TObject);
    procedure SpeedButton_N_28Click(Sender: TObject);
    procedure Button_N_2Click(Sender: TObject);
    procedure CheckBox_N_7Click(Sender: TObject);
    procedure Button_N_3Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ScrollBar_N_1Change(Sender: TObject);
    procedure CheckBox_N_6Click(Sender: TObject);
    procedure Button_N_4Click(Sender: TObject);
    procedure SpeedButton_N_29Click(Sender: TObject);
    procedure SpeedButton_N_30Click(Sender: TObject);
    procedure Button_N_5Click(Sender: TObject);
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
    procedure NaviSizeCmbChange(Sender: TObject);
    procedure DecreaseNaviSizeBtnClick(Sender: TObject);
    procedure IncreaseNaviSizeBtnClick(Sender: TObject);
  private
    { Private-Deklarationen }
    FirstStart: LongBool;
    actStepWidth, iActiveThreads: Integer;
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
    procedure Calc(Nstep: Integer);
    procedure TransformNHeader;
    function GetLocalAbsoluteDE(var NotValid: LongBool): Double;
    procedure SetZoom;
    procedure StopCalc;
    procedure SetWindowSize(Panel_N_2visible: LongBool);
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
    procedure AdjustPanel3positions;
    function CopyFormulaNameFromMain(Findex: Integer): AnsiString;
    procedure CheckFocus;
    procedure PaintCoord;
    procedure SetHeaderSize;
    procedure CheckFormulaImageVis;
    procedure EnableButtons;
  protected
    procedure WmThreadReady(var Msg: TMessage); message WM_ThreadReady;
    procedure WmThreadStat(var Msg: TMessage); message WM_ThreadStat;
  public
    { Public-Deklarationen }
    HybridCustoms: array[0..5] of TCustomFormula;
    bUserChange: LongBool;
    bDoubleClick: LongBool;
    NaviLightness: Single;
    NDEmultiplier: Single;
    NLPavailable: array[0..2] of LongBool;
    NMouseStartPos: TPoint;
    NaviLightPresets: array[0..2] of TLightingParas9;
    NaviHeader: TMandHeader10;
    NaviHAddon: THeaderCustomAddon;
    NaviLightVals: TLightValsNavi;
    Authors: AuthorStrings;
    BGpicRotMatrix: TSMatrix3;
 //   NaviNewLightVals: TLightVals;
    procedure NewCalc;
    function isCalculating: LongBool;
    procedure SetSB18text(Disabled: Boolean);
    procedure ChangeNaviMode;
 //   procedure WndProc(var Message: TMessage); override;
  end;

var
  GUINav: TGUINav;
  FNaviFormCreated: LongBool = False;
  NglobalCounter: Integer = 0;
  NminDEcorrection: Single = 1000;
  errorstring: array[1..4] of string;

implementation

uses
  NaviCalcThread,
  DivUtils,
  HeaderTrafos,
  MAIN,
  Math,
  CustomFormulas,
  FileHandling,
  Animation,
  Calc,
  ThreadUtils,
  MapSequences,
  System.Character;
//FormulaGUI
//LightGUI

{$R *.dfm}

{procedure TGUINav.WndProc(var Message: TMessage);
begin
    inherited WndProc(Message);
end;  }
procedure TGUINav.CheckLabel18;
begin
    Label_N_18.Visible := UpDown_N_3.Visible and (Screen.Cursor = crNone);
    Label_N_31.Visible := not Label_N_18.Visible;
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

procedure TGUINav.SetSB18text(Disabled: Boolean);
begin
    if Disabled then SpeedButton_N_18.Caption := 'Ani keyframe'
                else SpeedButton_N_18.Caption := 'Ani keyfr. (f)';
end;

procedure TGUINav.DisableLightStoring;
begin
    SpeedButton_N_19.Cursor := crDefault;
    SpeedButton_N_20.Cursor := crDefault;
    SpeedButton_N_21.Cursor := crDefault;
    LightStoring := False;
    SpeedButton_N_19.Enabled := NLPavailable[0];
    SpeedButton_N_20.Enabled := NLPavailable[1];
    SpeedButton_N_21.Enabled := NLPavailable[2];
end;

procedure TGUINav.LoadLightPresets;
var i: Integer;
begin
    for i := 0 to 2 do NLPavailable[i] := LoadLightPreset(i + 1);
end;

procedure TGUINav.Label_N_39MouseDown(Sender: TObject; Button: TMouseButton;
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
    else if t < 6 then
    begin  //put new value to navi haddon
      s := L.Caption;
      UpdateFormulaLabels(FormulaIndex(t - 3));
      NaviHAddon.Formulas[FormulaIndex(t - 3).X].dOptionValue[FormulaIndex(t - 3).Y] := AdjustSliderValues[t];
      bUpdate := s <> L.Caption;
    end
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

function TGUINav.LoadLightPreset(i: Integer): Boolean;
var s: String;
begin
    s := AppDataDir + 'NaviLightPreset' + IntToStr(i) + '.m3l';
    Result := GetLightParaFile(s, NaviLightPresets[i - 1], False);
end;

function TGUINav.isCalculating: LongBool;
begin
    Result := GetActiveThreadCount(CalcThreadStatusID) > 0;
end;

procedure TGUINav.WaitForCalcToStop(millisec: Integer);
var i: Integer;
begin
    StopCalc;
    i := millisec div 50;
    while (i >= 0) and isCalculating do
    begin
      Delay(50);
      Dec(i);
    end;
end;

procedure TGUINav.maxLengthToCutPlane(var dLength: Double; var itmp: Integer; vPos: TPVec3D; MCTpar: PMCTparameter);
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

function TGUINav.GetLocalAbsoluteDE(var NotValid: LongBool): Double;
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

procedure TGUINav.WmThreadReady(var Msg: TMessage);
begin
    Dec(iActiveThreads);
    if iActiveThreads = 0 then Timer_N_1.Interval := 5;
end;

procedure TGUINav.WmThreadStat(var Msg: TMessage);
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

procedure TGUINav.SetHeaderSize;
var
  hmax, p2h: Integer;
  NaviScale: Double;
  s: String;
begin
    if NaviSizeCmb.ItemIndex >= 0 then begin
      s := NaviSizeCmb.Items[NaviSizeCmb.ItemIndex];
      NaviScale := StrToFloat(Copy(s, 1, Length(s) - 1)) / 100;
      if NaviScale < 0.2 then
        NaviScale := 0.2
      else if NaviScale > 2.0 then
        NaviScale := 2.0;
    end
    else
      NaviScale := 1.0;

    if Panel_N_2.Visible then p2h := Panel_N_2.Height else p2h := 0;
    hmax := Screen.WorkAreaHeight - 20 - GUINav.Height + ClientHeight - Panel_N_1.Height - p2h;
    if hmax < 200 then hmax := 200;

    with NaviHeader do
    begin
      if (OriginalSize.Y * 640) div OriginalSize.X > hmax then
      begin
        Height := (hmax + 7) and $FF8;
        Width := ((Height * OriginalSize.X) div OriginalSize.Y + 4) and $FF8;
        if Width > 640 then Width := 640 else if Width < 8 then Width := 8;
      end
      else
      begin
        Width := 640;
        Height := Min(hmax, (OriginalSize.Y * 640) div OriginalSize.X + 4) and $FF8;
        if Height < 8 then Height := 8;
      end;
      Width := Round(Width * NaviScale);
      Height := Round(Height * NaviScale);
 //     ClientHeight := Height + Panel_N_1.Height + p2h;
    end;
end;

procedure TGUINav.TransformNHeader;
var notValid: LongBool;
    d: Double;
begin
    with NaviHeader do
    begin
      OriginalSize := Point(Width, Height);
      SetHeaderSize;
      bStepsafterDEStop := Min(7, bStepsafterDEStop);
      sDEstop := MaxCS(0.01, sDEstop);
      bUserChange := False;
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
        bUserChange := True;
      end;
      //plus set zoom according to local DE  (and move further back or fore to give nearly the same view..todo)
   //   SetZoom;  //uses also GetLocalAbsoluteDE if not fixedSteps
    end;
end;

procedure TGUINav.SetWindowSize(Panel_N_2visible: LongBool); //todo: modify also maxwidth if to high
var p2h, i, j: Integer;
begin
    Panel_N_2.Visible := Panel_N_2visible;
    SetHeaderSize;
    if Panel_N_2visible then p2h := Panel_N_2.Height else p2h := 0;
    if Screen.WorkAreaHeight > 810 then i := 660 else i := 580;
    ClientHeight := Max(i, NaviHeader.Height + Panel_N_1.Height + p2h);
    j := 646;
    if Panel_N_3.Visible then
      Inc(j, Panel_N_3.Width);
    ClientWidth := Max(j, NaviHeader.Width + Panel_N_5.Width);
    Panel_N_1.Top := ClientHeight - p2h - Panel_N_1.Height;
    Panel_N_2.Top := ClientHeight - p2h;
    if (Image_N_1.Picture.Bitmap.Width <> NaviHeader.Width) or
       (Image_N_1.Picture.Bitmap.Height <> NaviHeader.Height) then
    begin
      if iActiveThreads > 0 then WaitForCalcToStop(2000);
      Image_N_1.Picture.Bitmap.SetSize(NaviHeader.Width, NaviHeader.Height);
      if( NaviHeader.Width > 640) then
        Image_N_1.SetBounds(0,0, NaviHeader.Width, NaviHeader.Height)
      else
        Image_N_1.SetBounds((640 - NaviHeader.Width) div 2, (Panel_N_1.Top - NaviHeader.Height) div 2,
                         NaviHeader.Width, NaviHeader.Height);
    end
    else Image_N_1.Top := (Panel_N_1.Top - NaviHeader.Height) div 2;
    Image_N_6.Top := Image_N_1.Top + NaviHeader.Height div 2 - 60;  //onclick disabled when visible!
    Image_N_6.Left := Image_N_1.Left + NaviHeader.Width div 2 - 60;
end;

procedure TGUINav.Calc(Nstep: Integer);
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
      SetWindowSize(Panel_N_2.Visible);
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
      MCTparas[I].FSIstart      := Integer(Image_N_1.Picture.Bitmap.ScanLine[0]);
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

procedure TGUINav.SetZoom;
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

procedure TGUINav.SpeedButton_N_1Click(Sender: TObject);   //navigating
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

procedure TGUINav.Timer_N_1Timer(Sender: TObject);
begin
    Timer_N_1.Interval := 100;
    Image_N_1.Repaint;
    if not isCalculating then
    begin
      iActiveThreads := 0;
      actStepWidth := actStepWidth shr 1;
      if actStepWidth = 0 then Timer_N_1.Enabled := False
                          else Calc(actStepWidth);
    end;
end;

procedure TGUINav.PaintZeroVec;
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

procedure TGUINav.PaintCoord;  //direct to bmp
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

procedure TGUINav.FormShow(Sender: TObject);
begin
    with NaviHeader do
    begin
      if FirstStart then
      begin
        GUI.PropagateCurrFrameNumber;
        if not Assigned(Image_N_1.Picture.Bitmap) then
          Image_N_1.Picture.Bitmap := TBitmap.Create;
        Image_N_1.Picture.Bitmap.PixelFormat := pf32Bit;
        FirstStart := False;
        bUserChange := False;
        // bug fix ini val becomes txt after ini reset
        if IsNumber(StrToInt(IniVal[2])) then Edit_N_1.Text := IniVal[2] else Edit_N_1.Text := '20';
        if IsNumber(StrToInt(IniVal[3])) then Edit_N_2.Text := IniVal[3] else Edit_N_2.Text := '5';
        //Edit_N_1.Text := IniVal[2];
        //Edit_N_2.Text := IniVal[3];
     //   Edit_N_4.Text := IniVal[4];
        Edit_N_3.Text := IniVal[5];
        CheckBox_N_2.Checked := IniVal[10] = '1';
        CheckBox_N_5.Checked := IniVal[14] = '0';
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
        if IniVal[34] = '1' then SpeedButton_N_23Click(Sender);
      end;
      DisableLightStoring;
    end;
    bUserChange := True;
    EnableButtons;
end;

procedure TGUINav.FormCreate(Sender: TObject);
var i: Integer;
begin
    Image_N_1.Parent.ControlStyle := [csOpaque];
    FirstStart := True;
    bUserChange := False;
    NglobalCounter := 0;
    FocusedSlider := 0;
    NaviLightness := 1;
    DoubleBuffered := True;
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
    FNaviFormCreated := True;
    NaviSizeCmb.ItemIndex := NaviSizeCmb.Items.IndexOf(IniVal[36]);
end;

procedure TGUINav.SpeedButton_N_11Click(Sender: TObject); //insert main paras
begin
    GUI.PropagateCurrFrameNumber;
    WaitForCalcToStop(1000);
    GUI.MakeHeader;
    AssignHeader(@NaviHeader, @GUI.MHeader);
    Authors := GUI.Authors;
    bUserChange := False;
    TransformNHeader;
    ResetJuliaPos0Vals;
    SpeedButton_N_26Click(Sender); //update adjust panel
    PaintZeroVec;
    PaintCoord;
    AdjustPanel3positions;
    DynFogAmountChanged := False;
    DEstopChanged := False;
    UpDown_N_1.Position := NaviHeader.Light.TBpos[6];
    Label_N_38.Caption := IntToStr(UpDown_N_1.Position - 53);
    if Copy(GUI.Caption, 1, 13) = 'Mandelbulb 3D' then
      Caption := 'main paras' else Caption := GUI.Caption;
    bUserChange :=True;
    NewCalc;
end;

procedure TGUINav.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    StopCalc;
    CanClose := (not isCalculating) or ((NglobalCounter - CalcThreadStatusID) > 3);
    Timer_N_1.Enabled := not CanClose;
end;

procedure TGUINav.Panel_N_1Click(Sender: TObject);
begin
    ActiveControl := Image_N_2.Parent;
end;

procedure TGUINav.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TGUINav.SpeedButton_N_14Click(Sender: TObject);  //copy view to main
begin
    //GUI.PageCtrls.ActivePage := TabImage;
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

procedure TGUINav.NewCalc;
begin
    Inc(NglobalCounter);
    actStepWidth   := 16;
    Timer_N_1.Enabled := True;
end;

procedure TGUINav.StopCalc;
begin
    Inc(NglobalCounter);
    actStepWidth := 1;
end;

procedure TGUINav.Edit_N_1Change(Sender: TObject);
var d: Double;
    s: String;
begin
    if bUserChange then
    begin
      s := (Sender as TEdit).Text;
      if not TryStrToFloat(s, d) then
        (Sender as TEdit).Text := StrOnlyNumbers(s)
      else
      if Sender = Edit_N_4 then SetZoom; //farplane change
      if (Sender as TEdit).Tag = 1 then NewCalc;
    end;
end;

procedure TGUINav.SpeedButton_N_15Click(Sender: TObject);
begin
    GUI.PutLightFInHeader(NaviHeader);{LIGHT}
    UpDown_N_1.Position := NaviHeader.Light.TBpos[6];
    DynFogAmountChanged := False;
    Label_N_38.Caption := IntToStr(UpDown_N_1.Position - 53);
    NewCalc;
end;

procedure TGUINav.SpeedButton_N_16Click(Sender: TObject); //insert formula from main
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
    bUserChange := False;
    SpeedButton_N_26Click(Sender); //update adjust panel
    bUserChange :=True;
    AdjustPanel3positions;
    NewCalc;
end;

procedure TGUINav.SpeedButton_N_17Click(Sender: TObject);
var i: Integer;
begin    //expand/shrink panel2
    SpeedButton_N_17.Glyph.Canvas.FillRect(SpeedButton_N_17.Glyph.Canvas.ClipRect);
    if Panel_N_2.Visible then ImageList_N_1.GetBitmap(0, SpeedButton_N_17.Glyph)
                      else ImageList_N_1.GetBitmap(1, SpeedButton_N_17.Glyph);
    i := NaviHeader.Height;
    SetWindowSize(not Panel_N_2.Visible);
    if i <> NaviHeader.Height then NewCalc;
end;

procedure TGUINav.SpeedButton_N_18Click(Sender: TObject);   // "f" insert paras to animation keyframe
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

procedure TGUINav.CheckBox_N_2Click(Sender: TObject);
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

procedure TGUINav.TrackBarEx_N_15Change(Sender: TObject);
begin
    NaviLightness := Sqr(TrackBarEx_N_15.Position * -0.05 + 0.85) + 0.2775;
    NewCalc;
end;

procedure TGUINav.Button_N_1Click(Sender: TObject);
var notValid: LongBool;
begin
    CalcStepWidth(@NaviHeader);
    NaviHeader.sNaviMinDist := GetLocalAbsoluteDE(notValid) * NDEmultiplier;
    Edit_N_6.Text := FloatToStrSingle(NaviHeader.sNaviMinDist);
end;

procedure TGUINav.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var C   : TControl;
    MPos: TPoint;
    h, v: Double;
    M:    TMatrix3;
begin
    if (Screen.Cursor = crNone) and UpDown_N_3.Visible then
    begin
      if WheelDelta < 0 then SpinButton1Down else SpinButton1Up;
      Handled := True;
      Exit;
    end;
    C := ControlAtPos(ScreenToClient(MousePos), False, True);
    if C <> nil then
    begin
      if (C = Image_N_1) or (C = Image_N_6) then    //only if mouse is over navi.image1+6
      begin
        if WheelDelta < 0 then  //Wheel down
          SpeedButton_N_10.Click   //s
        else
        begin
          if Screen.Cursor = crDefault then
          begin   // get mousecursorpos over image and steer in that direction...(zoom in)
            MPos := Image_N_1.ScreenToClient(MousePos);
            h := Sin(NaviHeader.dFOVy * Pid180);   //rotate in that drection
            v := h * (MPos.Y - Image_N_1.Height shr 1) / Image_N_1.Height;
            h := -h * (MPos.X - Image_N_1.Width shr 1) / Image_N_1.Height;
            BuildRotMatrix(v, h, 0, @M);
            Multiply2Matrix(@M, @NaviHeader.hVgrads);
            NaviHeader.hVgrads := M;
          end;
          SpeedButton_N_9.Click;  //w/z   step forward
        end;
      end
      else if (Image_N_4.Visible or Image_N_5.Visible) and (C = Panel_N_3) then
      begin
        C := Panel_N_3.ControlAtPos(Panel_N_3.ScreenToClient(MousePos), False, True);
        if C = Panel_N_5 then
        begin
          if WheelDelta > 0 then ScrollBar_N_1.Position := Max(0, ScrollBar_N_1.Position - 1)
          else ScrollBar_N_1.Position := Min(ScrollBar_N_1.Max, ScrollBar_N_1.Position + 1);
          Panel_N_5.SetFocus;
        end;
      end;
    end;
    Handled := True;
end;

procedure TGUINav.CheckBox_N_3Click(Sender: TObject);
begin
    NewCalc; //light paras has also to be changed (dyn fog offset..)
end;

procedure TGUINav.FormHide(Sender: TObject);
begin
    IniVal[2] := Edit_N_1.Text;
    IniVal[3] := Edit_N_2.Text;
 //   IniVal[4] := Edit_N_4.Text;
    IniVal[5] := Edit_N_3.Text;
    if CheckBox_N_2.Checked then IniVal[10] := '1' else IniVal[10] := '0';
    if CheckBox_N_5.Checked then IniVal[14] := '0' else IniVal[14] := '1';
    if CheckBox_N_4.Checked then IniVal[19] := 'Yes' else IniVal[19] := 'No';
    DisableLightStoring;
    if Screen.Cursor = crNone then Screen.Cursor := crDefault;
end;

procedure TGUINav.FormDestroy(Sender: TObject);
begin
    tmpBMP.Free;
    tmpBMPc.Free;
end;

procedure TGUINav.CheckBox_N_5Click(Sender: TObject);
begin //Disable f-key
    SetSB18text(CheckBox_N_5.Checked);
end;

procedure TGUINav.SpeedButton_N_22Click(Sender: TObject);
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

procedure TGUINav.SpeedButton_N_19Click(Sender: TObject);
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
      TrackBarEx_N_15.Position := 0;
      DynFogAmountChanged := False;
      NewCalc;
    end;
end;

procedure TGUINav.SpinButton1Down;
begin
    NaviHeader.dZoom := NaviHeader.dZoom * 0.707;
    SetZoom;
    NewCalc;
end;

procedure TGUINav.SpinButton1Up;
begin
    NaviHeader.dZoom := NaviHeader.dZoom * 1.414;
    SetZoom;
    NewCalc;
end;

procedure TGUINav.CheckBox_N_1Click(Sender: TObject);
begin
    UpDown_N_3.Visible := CheckBox_N_1.Checked;
    CheckLabel18;
end;

procedure TGUINav.ChangeNaviMode;
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

procedure TGUINav.Image_N_1MouseMove(Sender: TObject; Shift: TShiftState;
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

procedure TGUINav.Image_N_1DblClick(Sender: TObject);
begin
    if bDoubleClick then ChangeNaviMode;
end;

procedure TGUINav.Image_N_1MouseDown(Sender: TObject;
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

procedure TGUINav.Doubleclicktochangethenavimode1Click(
  Sender: TObject);
begin
    bDoubleClick := True;
    IniVal[20] := 'Yes';
end;

procedure TGUINav.Singleclicktochangethenavimode1Click(
  Sender: TObject);
begin
    bDoubleClick := False;
    IniVal[20] := 'No';
end;

procedure TGUINav.Image_N_1Click(Sender: TObject);
begin
    if not bDoubleClick then ChangeNaviMode;
end;

procedure TGUINav.InputJuliaVals;
begin
    NaviHeader.bIsJulia := GUI.MHeader.bIsJulia;
    TPVec3D(@NaviHeader.dJx)^ := TPVec3D(@GUI.MHeader.dJx)^;
    ResetJuliaPos0Vals;
end;

procedure TGUINav.Input4dRotVals;
begin
    TPVec3D(@NaviHeader.dXWrot)^ := TPVec3D(@GUI.MHeader.dXWrot)^;
    Reset4dRotVals;
end;

procedure TGUINav.ResetJuliaPos0Vals;
begin
    TPVec3D(@AdjustSliderPos0Values[0])^ := TPVec3D(@GUINav.NaviHeader.dJx)^;
    TPVec3D(@AdjustSliderValues[0])^ := TPVec3D(@AdjustSliderPos0Values[0])^;
    UpdateJuliaLabels;
    CheckBox_N_7.Checked := NaviHeader.bIsJulia > 0;
end;

procedure TGUINav.RadioGroup_N_2Click(Sender: TObject);
begin
    if bUserChange then NewCalc;
end;

procedure TGUINav.Reset4dRotVals;
begin
    TPVec3D(@AdjustSliderPos0Values[6])^ := TPVec3D(@GUINav.NaviHeader.dXWrot)^;
    TPVec3D(@AdjustSliderValues[6])^ := TPVec3D(@AdjustSliderPos0Values[6])^;
    Update4dRotLabels;
end;

procedure TGUINav.UpdateJuliaLabels;
begin
    Label_N_39.Caption := FloatToStrSingle(AdjustSliderValues[0]);
    Label_N_40.Caption := FloatToStrSingle(AdjustSliderValues[1]);
    Label_N_41.Caption := FloatToStrSingle(AdjustSliderValues[2]);
end;

procedure TGUINav.Update4dRotLabels;
begin
    Label_N_50.Caption := FloatToStrSingle(AdjustSliderValues[6] / Pid180);
    Label_N_51.Caption := FloatToStrSingle(AdjustSliderValues[7] / Pid180);
    Label_N_52.Caption := FloatToStrSingle(AdjustSliderValues[8] / Pid180);
end;

procedure TGUINav.CheckFormulaImageVis;
begin
    Image_N_4.Visible := FSubIndexTop > 0;
    Image_N_5.Visible := NaviHAddOn.Formulas[Max(0, Min(5, StrToInt(Label_N_49.Caption) - 1))].iOptionCount > FSubIndexTop + 3;
end;

procedure TGUINav.UpdateFormulaLabels(Findex: TPoint);
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

procedure TGUINav.CopyFormulaValueFromMain(Findex: TPoint);
begin
    NaviHAddon.Formulas[Findex.X].dOptionValue[Findex.Y] :=
      GUI.HAddon.Formulas[Findex.X].dOptionValue[Findex.Y];
end;

function TGUINav.CopyFormulaNameFromMain(Findex: Integer): AnsiString;
begin
    Result := CustomFtoStr(GUI.HAddon.Formulas[Min(5, Max(0, Findex))].CustomFname);
end;

function TGUINav.GetFormulaValue(Findex: TPoint): Double;
begin
    Result := NaviHAddon.Formulas[Findex.X].dOptionValue[Findex.Y];
end;

function TGUINav.GetFormulaValType(Findex: TPoint): Integer;
begin
    Result := NaviHAddon.Formulas[Findex.X].byOptionType[Findex.Y];
end;

function TGUINav.FormulaIndex(iSlider: Integer): TPoint;
begin
    Result.X := Max(0, Min(5, StrToIntTrim(Label_N_49.Caption) - 1));
    Result.Y := Max(0, Min(15, FSubIndexTop + iSlider));
end;

procedure TGUINav.SpeedButton_N_23Click(Sender: TObject);
var i: Integer;
begin  //adjustment panel open/close
    SpeedButton_N_23.Glyph.Canvas.FillRect(SpeedButton_N_23.Glyph.Canvas.ClipRect);
    if Panel_N_3.Visible then
    begin
      Panel_N_3.Visible := False;
      ClientWidth := ClientWidth - Panel_N_3.Width;
      ImageList_N_1.GetBitmap(2, SpeedButton_N_23.Glyph);
      IniVal[34] := '0';
    end
    else
    begin
      Panel_N_3.Visible := True;
      ClientWidth := ClientWidth + Panel_N_3.Width;
      ImageList_N_1.GetBitmap(3, SpeedButton_N_23.Glyph);
      IniVal[34] := '1';
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
        Panel_N_4.Visible := NaviHeader.bIsJulia <> 0;
        AdjustPanel3positions;
        SpeedButton_N_26Click(Sender);
      end;
    end;
end;

procedure TGUINav.CheckFocus;
begin
    FocusedSlider := -1;
    if TrackBarEx_N_4.Focused then FocusedSlider := 0 else
    if TrackBarEx_N_5.Focused then FocusedSlider := 1 else
    if TrackBarEx_N_6.Focused then FocusedSlider := 2 else
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

procedure TGUINav.RxSlider1Change(Sender: TObject);
var t, i: Integer;
    RS: TTrackBarEx;
    d, r, ph, th, sp, cp, st, ct: Double;
    bUpdate: LongBool;
    LV: TLabel;
    s: String;
begin
    if bUserChange then
    begin
      RS := Sender as TTrackBarEx;
      t := RS.Tag;
      d := (640 * 16) shr (RadioGroup_N_1.ItemIndex * 4); //min,fine,mid,big adjustments   16*640 ,640, 40, 40/16     slider: -60..60
      if isIntType(AdjustSliderValType[t]) then d := MinMaxCD(3, d * 0.5, 50);
      if (t < 3) and CheckBox_N_8.Checked then //julia, sphere coords
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
      else if AdjustSliderValType[t] = -5 then
        AdjustSliderValues[t] := AdjustSliderPos0Values[t] * Power(3, RS.Position * AdjustSliderRange[t] / d)
      else AdjustSliderValues[t] := AdjustSliderPos0Values[t] + RS.Position * AdjustSliderRange[t] / d;
      bUpdate := False;
      if t < 3 then
      begin
        TPVec3D(@NaviHeader.dJx)^[t] := AdjustSliderValues[t];
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
      if bUpdate then NewCalc;
      CheckFocus;
    end;
end;

procedure TGUINav.RxSlider1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var t: Integer;
    RS: TTrackBarEx;
begin
    bUserChange := False;
    RS := Sender as TTrackBarEx;
    t := RS.Tag;
    if (t < 3) and CheckBox_N_8.Checked then
      TPVec3D(@AdjustSliderPos0Values[0])^ := TPVec3D(@AdjustSliderValues[0])^
    else
      AdjustSliderPos0Values[t] := AdjustSliderValues[t];
    RS.Position := 0;
    bUserChange := True;
    CheckFocus;
end;

procedure TGUINav.SpeedButton_N_24Click(Sender: TObject);
begin
    InputJuliaVals;
    if NaviHeader.bIsJulia > 0 then Newcalc;
end;

procedure TGUINav.SpeedButton_N_25Click(Sender: TObject);
begin  //send julia values to main
    GUI.Edit_M_28.Text := FloatToStr(NaviHeader.dJx);
    GUI.Edit_M_29.Text := FloatToStr(NaviHeader.dJy);
    GUI.Edit_M_30.Text := FloatToStr(NaviHeader.dJz);
    GUI.CheckBox_M_7.Checked := NaviHeader.bIsJulia > 0;
end;

procedure TGUINav.SpeedButton_N_26Click(Sender: TObject); //also as general update
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
    for i := 3 to 5 do  //update all slider
    begin
      AdjustSliderValues[i] := GetFormulaValue(FormulaIndex(i - 3)); //from naviHaddon
      AdjustSliderPos0Values[i] := AdjustSliderValues[i];
      AdjustSliderValType[i] := GetFormulaValType(FormulaIndex(i - 3));
      if isAngleType(AdjustSliderValType[i]) then AdjustSliderRange[i] := 15 else
        AdjustSliderRange[i] := 1;
    end;
    UpdateFormulaLabels(CurrentFindex);
    if SpeedButton_N_33.Caption = 'Dyn Fog on its:' then i := Naviheader.bDFogIt
                                                 else i := Naviheader.bColorOnIt - 1;
    AdjustSliderPos0Values[9] := i;
    AdjustSliderPos0Values[10] := Naviheader.RStop;
    AdjustSliderPos0Values[11] := Naviheader.sDEcombS;
    AdjustSliderPos0Values[12] := Naviheader.sDEstop;
    AdjustSliderPos0Values[13] := Naviheader.Iterations;
    for i := 9 to 13 do AdjustSliderValues[i] := AdjustSliderPos0Values[i];
    UpdateDiversLabels;
    if (Sender = SpeedButton_N_26) or (Sender = UpDown_N_2) then Newcalc;
end;

procedure TGUINav.SpeedButton_N_27Click(Sender: TObject);
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

procedure TGUINav.RoundFvals;
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

procedure TGUINav.SpeedButton_N_28Click(Sender: TObject);
begin   //send all fvals to main
    RoundFvals;
    GUI.HAddOn := NaviHAddon;
    GUI.TabControl_F_1Change(Sender);{FORMULA}
end;

procedure TGUINav.AdjustPanel3positions;
var i: Integer;
begin
    i := RadioGroup_N_1.Height + 1 + SizeGroup.Height;
    Button_N_2.Top := i;
    Inc(i, Button_N_2.Height);
    Panel_N_4.Top := i;
    if Panel_N_4.Visible then Inc(i, Panel_N_4.Height);
    Inc(i);
    Button_N_3.Top := i;
    Inc(i, Button_N_3.Height);
    Panel_N_5.Top := i;
    if Panel_N_5.Visible then Inc(i, Panel_N_5.Height);
    Inc(i);
    Button_N_4.Top := i;
    Button_N_4.Enabled := GUI.Panel_F_2.Visible;{FORMULA}
    if not Button_N_4.Enabled then Panel_N_6.Visible := False;
    Inc(i, Button_N_4.Height);
    Panel_N_6.Top := i;
    if Panel_N_6.Visible then Inc(i, Panel_N_6.Height);
    Inc(i);
    Button_N_5.Top := i;
    Inc(i, Button_N_5.Height);
    Panel_N_7.Top := i;
end;

procedure TGUINav.Button_N_2Click(Sender: TObject);
begin
    Panel_N_4.Visible := not Panel_N_4.Visible;
    AdjustPanel3positions;
end;

procedure TGUINav.CheckBox_N_7Click(Sender: TObject);
begin //Julia mode on/off
    NaviHeader.bIsJulia  := Byte(CheckBox_N_7.Checked);
    Newcalc;
end;

procedure TGUINav.Button_N_3Click(Sender: TObject);
begin
    Panel_N_5.Visible := not Panel_N_5.Visible;
    AdjustPanel3positions;
end;

procedure TGUINav.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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
        bUserChange := False;
        i := Max(0, Min(15, NaviHAddon.Formulas[CurrentFindex.X].iOptionCount));
        ScrollBar_N_1.Max := Max(FSubIndexTop, i - 2);
        ScrollBar_N_1.Min := 0;
        ScrollBar_N_1.Position := FSubIndexTop;
        bUserChange := True;
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

procedure TGUINav.ScrollBar_N_1Change(Sender: TObject);
var i: Integer;
begin  //mov FSubIndexTop
    if bUserChange then
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

procedure TGUINav.CheckBox_N_6Click(Sender: TObject);
begin
    PaintCoord;
end;

procedure TGUINav.Button_N_4Click(Sender: TObject);
begin
    Panel_N_6.Visible := not Panel_N_6.Visible;
    AdjustPanel3positions;
end;

procedure TGUINav.SpeedButton_N_29Click(Sender: TObject);
begin
    Input4dRotVals;
    Newcalc;
end;

procedure TGUINav.SpeedButton_N_30Click(Sender: TObject);
begin
    GUI.XWEdit.Text := FloatToStr(NaviHeader.dXWrot / Pid180);{FORMULA}
    GUI.YWEdit.Text := FloatToStr(NaviHeader.dYWrot / Pid180);{FORMULA}
    GUI.ZWEdit.Text := FloatToStr(NaviHeader.dZWrot / Pid180);{FORMULA}
end;

procedure TGUINav.Button_N_5Click(Sender: TObject);
begin
    Panel_N_7.Visible := not Panel_N_7.Visible;
    if Panel_N_4.Visible and Panel_N_5.Visible and Panel_N_7.Visible then Panel_N_4.Visible := False;
    AdjustPanel3positions;
end;

procedure TGUINav.UpdateDiversLabels;
begin
    if SpeedButton_N_33.Caption = 'Dyn Fog on its:' then
      Label_N_V3.Caption := IntToStr(NaviHeader.bDFogIt)
    else Label_N_V3.Caption := IntToStr(NaviHeader.bColorOnIt - 1);
    Label_N_V4.Caption := FloatToStrSingle(NaviHeader.RStop);
    Label_N_V5.Caption := FloatToStrSingle(NaviHeader.sDEcombS);
    Label_N_V6.Caption := FloatToStrSingle(NaviHeader.sDEstop);
    Label_N_V7.Caption := IntToStr(NaviHeader.Iterations);
end;

procedure TGUINav.SpeedButton_N_31Click(Sender: TObject);
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

procedure TGUINav.SpeedButton_N_32Click(Sender: TObject);
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

procedure TGUINav.SpeedButton_N_33Click(Sender: TObject);
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

procedure TGUINav.UpDown_N_1Click(Sender: TObject; Button: TUDBtnType);
begin
    if Button = btPrev then
      NaviHeader.Light.TBpos[6] := Max(0, UpDown_N_1.Position - 1)
    else if Button = btNext then
      NaviHeader.Light.TBpos[6] := Min(153, UpDown_N_1.Position + 1);
    DynFogAmountChanged := True;
    Label_N_38.Caption := IntToStr(NaviHeader.Light.TBpos[6] - 53);
    NewCalc;
end;

procedure TGUINav.UpDown_N_2Click(Sender: TObject; Button: TUDBtnType);
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

procedure TGUINav.UpDown_N_3Click(Sender: TObject; Button: TUDBtnType);
begin
    if Button = btPrev then SpinButton1Down else
    if Button = btNext then SpinButton1Up;
end;

procedure TGUINav.SpinEdit_N_2Click(Sender: TObject; Button: TUDBtnType);
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

procedure TGUINav.NaviSizeCmbChange(Sender: TObject);
var
  Height: Integer;
begin
  if NaviSizeCmb.ItemIndex >= 0 then
    IniVal[36] := NaviSizeCmb.Items[NaviSizeCmb.ItemIndex];
  EnableButtons;
  Height := NaviHeader.Height;
  SetWindowSize(Panel_N_2.Visible);
  if Height <> NaviHeader.Height then begin
    if iActiveThreads > 0 then WaitForCalcToStop(2000);
    NewCalc;
  end;
end;

procedure TGUINav.EnableButtons;
begin
  DecreaseNaviSizeBtn.Enabled := NaviSizeCmb.ItemIndex > 0;
  IncreaseNaviSizeBtn.Enabled := NaviSizeCmb.ItemIndex < NaviSizeCmb.Items.Count - 1;
end;

procedure TGUINav.DecreaseNaviSizeBtnClick(Sender: TObject);
begin
  if NaviSizeCmb.ItemIndex > 0 then begin
    NaviSizeCmb.ItemIndex := NaviSizeCmb.ItemIndex - 1;
    NaviSizeCmbChange(Sender);
  end;
end;

procedure TGUINav.IncreaseNaviSizeBtnClick(Sender: TObject);
begin
  if NaviSizeCmb.ItemIndex < NaviSizeCmb.Items.Count - 1 then begin
    NaviSizeCmb.ItemIndex := NaviSizeCmb.ItemIndex + 1;
    NaviSizeCmbChange(Sender);
  end;
end;


{procedure Copy2BMPhalfsize(var destBmp, sourceBmp: TBitmap);
var x, y, i, sloff1, sloff2, n: Integer;
    sl1, sl2, sl3, p1, p2, p3: PCardinal;
begin
    with destBMP do
    begin
      sl1 := ScanLine[0];
      sl2 := sourceBmp.ScanLine[0];
      sl3 := sourceBmp.ScanLine[1];
      sloff2 := Integer(sl3) - Integer(sl2) * 2;
      sloff1 := Integer(ScanLine[1]) - Integer(sl1);
      for y := 0 to Height - 1 do
      begin
        p1 := sl1;
        p2 := sl2;
        p3 := sl3;
        for x := 0 to Width - 1 do
        begin
          if p2^ <> 0 then
          begin
            p1^ := p2^;
            n := 1;
          end else begin
            p1^ := 0;
            n := 0;
          end;
          if p3^ <> 0 then
          begin
            if n = 0 then p1^ := p3^ else p1^ := ((p1^ and $FEFEFE) shr 1) + ((p3^ and $FEFEFE) shr 1);
            Inc(n);
          end
          Inc(p2);
          Inc(p3);
          if p2^ <> 0 then
          begin
            if n = 0 then p1^ := p2^ else
            if n = 1 then p1^ := ((p1^ and $FEFEFE) shr 1) + ((p2^ and $FEFEFE) shr 1)
                     else p1^ := ((p1^ and $FEFEFE) shr 1) + ((p2^ and $FEFEFE) shr 2);
            Inc(n);
          end;
          if p3^ <> 0 then
          begin
            if n = 0 then p1^ := p2^ else
            if n = 1 then p1^ := ((p1^ and $FEFEFE) shr 1) + ((p2^ and $FEFEFE) shr 1)
                     else p1^ := ((p1^ and $FEFEFE) shr 1) + ((p2^ and $FEFEFE) shr 2);
            Inc(n);
          end;


        end;
        sl1 := PCardinal(Integer(sl1) + sloff1);
        sl2 := PCardinal(Integer(sl2) + sloff2);
        sl3 := PCardinal(Integer(sl3) + sloff2);
      end;
      Modified := True;
    end;
end;  }

{procedure TGUINav.PaintCoord;
var m: TMatrix3;
    sx, sy, sx2, sy2, tipsize: Single;
    i, i2: Integer;
    sorta: array[0..2] of Integer;
const ca: array[0..2] of Cardinal = ($50FF,$40F030,$FFB000);
begin
    if not CheckBox_N_6.Checked then Image_N_6.Visible := False else
    with tmpBMPc.Canvas do
    begin
      SetBkMode(Handle, TRANSPARENT);
  //    Font.Size := -20;
      Font.Style := [fsBold];
      Brush.Color := clBlack;
      FillRect(ClipRect);
      m := NormaliseMatrixTo(1, @NaviHeader.hVGrads);
      for i := 0 to 2 do sorta[i] := i;
      if m[2, 0] < m[2, 1] then FlipI(sorta[0], sorta[1]);
      if m[2, sorta[1]] < m[2, 2] then FlipI(sorta[1], sorta[2]);
      if m[2, sorta[0]] < m[2, sorta[1]] then FlipI(sorta[0], sorta[1]);
      for i := 0 to 2 do
      begin
        i2 := sorta[i];
        Pen.Width := 4;
        Pen.Color := ca[i2];
        MoveTo(120, 120);
        sx := 120 + m[0, i2] * 75;
        sy := 120 + m[1, i2] * 75;
        LineTo(Round(sx), Round(sy));
        //tip:
        tipsize := (2 - m[2, i2]) * 4 / MaxCS(0.1, Sqrt(Sqr(m[0, i2]) + (Sqr(m[1, i2]))));
        sx2 := sx - m[0, i2] * 16 - m[1, i2] * tipsize;
        sy2 := sy - m[1, i2] * 16 + m[0, i2] * tipsize;
        LineTo(Round(sx2), Round(sy2));
        MoveTo(Round(sx), Round(sy));
        sx2 := sx - m[0, i2] * 16 + m[1, i2] * tipsize;
        sy2 := sy - m[1, i2] * 16 - m[0, i2] * tipsize;
        LineTo(Round(sx2), Round(sy2));
        tipsize := (3 - m[2, i2]) * 8;
        Font.Color := Pen.Color;
        Font.Size := Round(-tipsize);
        sx := sx + m[0, i2] * tipsize * 0.8;
        sy := sy + m[1, i2] * tipsize * 0.8;
        TextOut(Round(sx) - Round(tipsize * 0.35), Round(sy) - Round(tipsize * 0.7), Chr(Ord('X') + i2));
      end;
      Image_N_6.Transparent := False;
      SetStretchBltMode(Image_N_6.Canvas.Handle, HALFTONE);
      StretchBlt(Image_N_6.Canvas.Handle, 0, 0, 120, 120,
                 tmpBMPc.Canvas.Handle, 0, 0, 240, 240, SRCCOPY);
      Image_N_6.Transparent := True;
      if not Image_N_6.Visible then Image_N_6.Visible := True;
    end;
end;  }


end.


