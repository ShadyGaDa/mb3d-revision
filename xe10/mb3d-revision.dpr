program M3D;

{$RTTI EXPLICIT METHODS([]) FIELDS([]) PROPERTIES([])}
{$WeakLinkRTTI ON}

{$R 'M3Iregister.res' '..\util\M3Iregister.rc'}

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  MAIN in '..\MAIN.pas' {GUI},
  ColorPick in '..\ColorPick.pas' {ColorForm},
  FormulaClass in '..\formula\FormulaClass.pas',
  formulas in '..\formula\formulas.pas',
  IniDirsForm in '..\prefs\IniDirsForm.pas' {IniDirForm},
  VisualThemesGUI in '..\prefs\VisualThemesGUI.pas' {VisualThemesFrm},
  AmbHiQ in '..\util\AmbHiQ.pas',
  AmbShadowCalcThreadN in '..\util\AmbShadowCalcThreadN.pas',
  Calc in '..\util\Calc.pas',
  CalcAmbShadowDE in '..\util\CalcAmbShadowDE.pas',
  calcBlocky in '..\util\calcBlocky.pas',
  CalcHardShadow in '..\util\CalcHardShadow.pas',
  CalcSR in '..\util\CalcSR.pas',
  CalcThread in '..\util\CalcThread.pas',
  CalcThread2D in '..\util\CalcThread2D.pas',
  ColorSSAO in '..\util\ColorSSAO.pas',
  DivUtils in '..\util\DivUtils.pas',
  DOF in '..\util\DOF.pas',
  FileHandling in '..\util\FileHandling.pas',
  ThreadUtils in '..\util\ThreadUtils.pas',
  TypeDefinitions in '..\util\TypeDefinitions.pas',
  Undo in '..\util\Undo.pas',
  Math3D in '..\util\Math3D.pas',
  TextBox in '..\FORMS\TextBox.pas' {FTextBox},
  IFS in '..\formula\IFS.pas',
  CustomFormulas in '..\formula\CustomFormulas.pas',
  FTGifAnimate in '..\image\FTGifAnimate.pas',
  M3Iregister in '..\util\M3Iregister.pas',
  TrackBarEx in '..\TrackBarEx.pas',
  SpeedButtonEx in '..\SpeedButtonEx.pas',
  ListBoxEx in '..\ListBoxEx.pas',
  Interpolation in '..\util\Interpolation.pas',
  ImageProcess in '..\util\ImageProcess.pas',
  HeaderTrafos in '..\util\HeaderTrafos.pas',
  Paint in '..\util\Paint.pas',
  PaintThread in '..\util\PaintThread.pas',
  RegisterM3Pgraphic in '..\util\RegisterM3Pgraphic.pas',
  GIF_Image in '..\image\GIF_Image.pas',
  FormulaCompiler in '..\COMPILER\FormulaCompiler.pas',
  JITFormulaEditGUI in '..\COMPILER\JITFormulaEditGUI.pas' {JITFormulaEditorForm},
  JITFormulas in '..\COMPILER\JITFormulas.pas',
  ParamValueEditGUI in '..\COMPILER\ParamValueEditGUI.pas' {ParamValueEditFrm},
  CalcMonteCarlo in '..\MonteCarlo\CalcMonteCarlo.pas',
  ColorOptionForm in '..\MonteCarlo\ColorOptionForm.pas' {FColorOptions},
  MonteCarloForm in '..\MonteCarlo\MonteCarloForm.pas' {MCForm},
  FormulaNames in '..\MUTATION\FormulaNames.pas',
  MB3DFacade in '..\MUTATION\MB3DFacade.pas',
  MutaGen in '..\MUTATION\MutaGen.pas',
  MutaGenGUI in '..\MUTATION\MutaGenGUI.pas' {MutaGenFrm},
  PreviewRenderer in '..\MUTATION\PreviewRenderer.pas',
  Maps in '..\MAP\Maps.pas',
  MapSequences in '..\MAP\MapSequences.pas',
  MapSequencesGUI in '..\MAP\MapSequencesGUI.pas' {MapSequencesFrm},
  uMapCalcWindow in '..\MAP\uMapCalcWindow.pas' {MapCalcWindow},
  Animation in '..\ANIMATE\Animation.pas' {AnimationForm},
  AniPreviewWindow in '..\ANIMATE\AniPreviewWindow.pas' {AniPreviewForm},
  AniProcess in '..\ANIMATE\AniProcess.pas' {AniProcessForm},
  BatchForm in '..\PROCESS\BatchForm.pas' {BatchForm1},
  BRInfoWindow in '..\PROCESS\BRInfoWindow.pas' {BRInfoForm},
  CalcPart in '..\PROCESS\CalcPart.pas',
  DoubleSize in '..\PROCESS\DoubleSize.pas',
  PostProcessForm in '..\PROCESS\PostProcessForm.pas' {PostProForm},
  Tiling in '..\PROCESS\Tiling.pas' {TilingForm},
  VoxelExport in '..\PROCESS\VoxelExport.pas' {FVoxelExport},
  CalcVoxelSliceThread in '..\PROCESS\CalcVoxelSliceThread.pas',
  NaviCalcThread in '..\util\NaviCalcThread.pas';

{$R *.res}

{$SetPEFlags $20}

begin
  SetMinimumBlockAlignment(mba16Byte);
  Application.Initialize;
  Application.Title := 'mb3d';
  Application.CreateForm(TGUI, GUI);
  Application.CreateForm(TIniDirForm, IniDirForm);
  Application.CreateForm(TVisualThemesFrm, VisualThemesFrm);
  Application.CreateForm(TColorForm, ColorForm);
  Application.CreateForm(TFTextBox, FTextBox);
  Application.CreateForm(TJITFormulaEditorForm, JITFormulaEditorForm);
  Application.CreateForm(TParamValueEditFrm, ParamValueEditFrm);
  Application.CreateForm(TFColorOptions, FColorOptions);
  Application.CreateForm(TMCForm, MCForm);
  Application.CreateForm(TMutaGenFrm, MutaGenFrm);
  Application.CreateForm(TMapSequencesFrm, MapSequencesFrm);
  Application.CreateForm(TMapCalcWindow, MapCalcWindow);
  Application.CreateForm(TAnimationForm, AnimationForm);
  Application.CreateForm(TAniPreviewForm, AniPreviewForm);
  Application.CreateForm(TAniProcessForm, AniProcessForm);
  Application.CreateForm(TBatchForm1, BatchForm1);
  Application.CreateForm(TBRInfoForm, BRInfoForm);
  Application.CreateForm(TPostProForm, PostProForm);
  Application.CreateForm(TTilingForm, TilingForm);
  Application.CreateForm(TFVoxelExport, FVoxelExport);
  Application.Run;
end.
