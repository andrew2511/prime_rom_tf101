.class public abstract Lcom/infraware/evengine/ICoEngineInterface;
.super Ljava/lang/Object;
.source "ICoEngineInterface.java"

# interfaces
.implements Lcom/infraware/evengine/E;
.implements Lcom/infraware/evengine/E$EV_EDITMODETYPE;
.implements Lcom/infraware/evengine/E$EV_DOCEXTENSION_TYPE;
.implements Lcom/infraware/evengine/E$EV_VIEWMODE_TYPE;


# static fields
.field protected static mInterface:Lcom/infraware/evengine/ICoEngineInterface;


# instance fields
.field protected Ev:Lcom/infraware/evengine/EV;

.field protected Native:Lcom/infraware/evengine/EvNative;

.field public mEditorMode:I

.field protected mHeapSize:I

.field public m_nViewMode:I

.field protected mbInit:Z

.field protected mbSuspend:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x3c

    iput v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->mHeapSize:I

    .line 12
    iput-boolean v1, p0, Lcom/infraware/evengine/ICoEngineInterface;->mbInit:Z

    .line 13
    iput v1, p0, Lcom/infraware/evengine/ICoEngineInterface;->mbSuspend:I

    .line 14
    iput v1, p0, Lcom/infraware/evengine/ICoEngineInterface;->mEditorMode:I

    .line 15
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->m_nViewMode:I

    .line 19
    new-instance v0, Lcom/infraware/evengine/EV;

    invoke-direct {v0}, Lcom/infraware/evengine/EV;-><init>()V

    iput-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Ev:Lcom/infraware/evengine/EV;

    .line 20
    new-instance v0, Lcom/infraware/evengine/EvNative;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EvNative;-><init>(Lcom/infraware/evengine/ICoEngineInterface;)V

    iput-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Native:Lcom/infraware/evengine/EvNative;

    .line 21
    return-void
.end method

.method public static getInterface()Lcom/infraware/evengine/ICoEngineInterface;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/infraware/evengine/ICoEngineInterface;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/infraware/evengine/EvCompInterfaceMsg;

    invoke-direct {v0}, Lcom/infraware/evengine/EvCompInterfaceMsg;-><init>()V

    sput-object v0, Lcom/infraware/evengine/ICoEngineInterface;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 34
    :cond_0
    sget-object v0, Lcom/infraware/evengine/ICoEngineInterface;->mInterface:Lcom/infraware/evengine/ICoEngineInterface;

    return-object v0
.end method


# virtual methods
.method public EV()Lcom/infraware/evengine/EV;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Ev:Lcom/infraware/evengine/EV;

    return-object v0
.end method

.method public abstract IApplyBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V
.end method

.method public abstract IApplyBookMark()V
.end method

.method public abstract IBookMarkOnOff(I)V
.end method

.method public abstract IBookmarkEditor(ILjava/lang/String;)V
.end method

.method public abstract IBulletNumbering(III)V
.end method

.method public abstract ICanCellDelete_Editor()Z
.end method

.method public abstract ICanExtendSortRange()V
.end method

.method public abstract ICanInsertBookmark_Editor()I
.end method

.method public abstract ICancel()V
.end method

.method public abstract ICancelFontAttribute()V
.end method

.method public abstract ICaretMark(II)V
.end method

.method public abstract ICaretMove(I)V
.end method

.method public abstract ICaretShow(I)V
.end method

.method public abstract ICellInsertDelete(II)V
.end method

.method public abstract ICellMergeSeparate(III)V
.end method

.method public abstract IChangeDisplay(I)V
.end method

.method public abstract IChangeScreen(III)V
.end method

.method public abstract IChangeViewMode(IIII)V
.end method

.method public abstract ICharInsert(II)V
.end method

.method public IClose()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Native:Lcom/infraware/evengine/EvNative;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->SetListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V

    .line 133
    iget-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->clear()V

    .line 134
    return-void
.end method

.method public abstract ICreateTable(III)V
.end method

.method public abstract IDeleteBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V
.end method

.method public abstract IDocumentModified_Editor()Z
.end method

.method public abstract IEditDocument(IIILjava/lang/String;)V
.end method

.method public abstract IEditPageRedrawBitmap()V
.end method

.method public abstract IExitPreview()V
.end method

.method public abstract IFinalize()V
.end method

.method public abstract IFindWordNext(I)V
.end method

.method public abstract IFindWordNextByPos(II)V
.end method

.method public abstract IFindWordStart(II)V
.end method

.method public abstract IFindWordStop()V
.end method

.method public abstract IFlick(II)V
.end method

.method public abstract IGetBWPCellStatusInfo_Editor()J
.end method

.method public abstract IGetBWPGrapAttrInfo_Editor()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;
.end method

.method public abstract IGetBWPOpInfo_Editor()Lcom/infraware/evengine/EV$BWP_OP_INFO;
.end method

.method public abstract IGetBWPSplitCellMaxNum_Editor()Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;
.end method

.method public abstract IGetBookClipCount(Lcom/infraware/evengine/EV$BOOK_CLIP;)I
.end method

.method public abstract IGetBookClipName(ILcom/infraware/evengine/EV$BOOK_CLIP;)V
.end method

.method public abstract IGetBookmarkCount_Editor()I
.end method

.method public abstract IGetBookmarkInfo_Editor(I)Ljava/lang/String;
.end method

.method public abstract IGetBookmarkLabel(I)Lcom/infraware/evengine/EV$BOOKMARK_LABEL;
.end method

.method public abstract IGetBorderProperty()Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;
.end method

.method public abstract IGetBulletType_Editor()Lcom/infraware/evengine/EV$BULLET_TYPE;
.end method

.method public abstract IGetCaretAfterString(I)Ljava/lang/String;
.end method

.method public abstract IGetCaretBeforeString(I)Ljava/lang/String;
.end method

.method public abstract IGetCaretInfo_Editor()Lcom/infraware/evengine/EV$CARET_INFO;
.end method

.method public abstract IGetCaretPos()Lcom/infraware/evengine/EV$CARET_POS;
.end method

.method public abstract IGetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;
.end method

.method public abstract IGetCellProperty_Editor()Lcom/infraware/evengine/EV$CELL_PROPERTY;
.end method

.method public abstract IGetCellType()I
.end method

.method public abstract IGetChartInfo()Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;
.end method

.method public abstract IGetColumn()I
.end method

.method public abstract IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;
.end method

.method public abstract IGetCurrentSheetIndex()I
.end method

.method public abstract IGetEditStauts_Editor()J
.end method

.method public abstract IGetEditorMode_Editor()I
.end method

.method public abstract IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;
.end method

.method public abstract IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
.end method

.method public abstract IGetHyperLinkInfoEx(II)Lcom/infraware/evengine/EV$HYPERLINK_INFO;
.end method

.method public abstract IGetHyperLinkInfo_Editor()Lcom/infraware/evengine/EV$HYPERLINK_INFO;
.end method

.method public IGetInitialHeapSize()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->mHeapSize:I

    return v0
.end method

.method public abstract IGetInvalidRect_Editor()Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;
.end method

.method public abstract IGetMarkString()Ljava/lang/String;
.end method

.method public abstract IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
.end method

.method public abstract IGetProperties()Lcom/infraware/evengine/EV$PROPERTIES;
.end method

.method public abstract IGetProtectStatus_Editor()I
.end method

.method public abstract IGetScreenPos()Lcom/infraware/evengine/EV$SCREEN_INFO;
.end method

.method public abstract IGetScrollInfo_Editor()Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;
.end method

.method public abstract IGetSeparateMarkString_Editor()Ljava/lang/String;
.end method

.method public abstract IGetSheetCount()I
.end method

.method public abstract IGetSheetInfo(Lcom/infraware/evengine/EV$SHEET_INFO;I)V
.end method

.method public abstract IGetSheetNameList()[Ljava/lang/String;
.end method

.method public abstract IGetSlideNoteString_Editor(I)Ljava/lang/String;
.end method

.method public abstract IGetSortRange(Lcom/infraware/evengine/EV$RANGE;I)I
.end method

.method public abstract IGetSystemFontCount()I
.end method

.method public abstract IGetSystemFontNames()[Ljava/lang/String;
.end method

.method public abstract IGetTextToSpeachString(III)V
.end method

.method public abstract IGetTouchString(II)Ljava/lang/String;
.end method

.method public abstract IGetUseFontCount()I
.end method

.method public abstract IGetUseFontNames()[Ljava/lang/String;
.end method

.method public abstract IHIDAction(IIII)V
.end method

.method public abstract IHyperLink(III)V
.end method

.method public abstract IHyperLinkEnd()V
.end method

.method public abstract IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;II)V
.end method

.method public abstract IIndentation(I)V
.end method

.method public IInitialize(II)V
    .locals 2
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget v1, p0, Lcom/infraware/evengine/ICoEngineInterface;->mHeapSize:I

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->ISetHeapSize(I)V

    .line 112
    return-void
.end method

.method public abstract IInputChar(I)V
.end method

.method public abstract IInsertShape(I)V
.end method

.method public abstract IInsertString(Ljava/lang/String;III)V
.end method

.method public abstract IInsertTextBox()V
.end method

.method public abstract IIsComplexColumn()Z
.end method

.method public abstract IMemo(ILjava/lang/String;IIIII)V
.end method

.method public abstract IMovePage(II)V
.end method

.method public abstract INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IOpenEx(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IParagraphAlign(I)V
.end method

.method public abstract IPivotScreen(III)V
.end method

.method public abstract IPopupOffset(IIIII)V
.end method

.method public abstract IPrint(IIILjava/lang/String;)V
.end method

.method public abstract IReDraw()V
.end method

.method public abstract IRedoUndo(I)V
.end method

.method public abstract IRemoveAllBookMark()V
.end method

.method public abstract IRemoveBookMark(Ljava/lang/String;)V
.end method

.method public abstract IRotate(II)V
.end method

.method public abstract ISaveBookMark()V
.end method

.method public abstract ISaveDocument(Ljava/lang/String;)V
.end method

.method public abstract ISaveThumbnailAt(IIILjava/lang/String;I)V
.end method

.method public IScreenCaptureModeOnOff(I)V
    .locals 0
    .parameter "a_bOn"

    .prologue
    .line 221
    return-void
.end method

.method public abstract IScroll(IIIII)V
.end method

.method public abstract ISearchStart(Ljava/lang/String;IIII)V
.end method

.method public abstract ISearchStop()V
.end method

.method public abstract ISelectAll()V
.end method

.method public abstract ISellectAll()V
.end method

.method public abstract ISetBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)I
.end method

.method public abstract ISetBookmarkLabel(Lcom/infraware/evengine/EV$BOOKMARK_LABEL;I)V
.end method

.method public abstract ISetBorder(IIIIIIIIIZ)V
.end method

.method public abstract ISetColors(III)V
.end method

.method public abstract ISetColumn(II)V
.end method

.method public abstract ISetCompBackColor(IIIIJJIII)V
.end method

.method ISetEditorMode_Editor(I)V
    .locals 0
    .parameter "EV_EDITMODETYPE"

    .prologue
    .line 108
    iput p1, p0, Lcom/infraware/evengine/ICoEngineInterface;->mEditorMode:I

    return-void
.end method

.method public abstract ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V
.end method

.method public ISetHeapSize(I)V
    .locals 1
    .parameter "a_nHeapSize"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetHeapSize(I)V

    .line 79
    return-void
.end method

.method public abstract ISetLineShape(IIII)V
.end method

.method public abstract ISetLineSpace(I)V
.end method

.method public abstract ISetListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V
.end method

.method public ISetLocale(I)V
    .locals 1
    .parameter "a_nLocale"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetLocale(I)V

    .line 83
    return-void
.end method

.method public abstract ISetModeStatus(I)V
.end method

.method public abstract ISetObjDelete()V
.end method

.method public abstract ISetObjPos(I)V
.end method

.method public abstract ISetObjResize(II)V
.end method

.method public abstract ISetObjTextEdit()V
.end method

.method public abstract ISetObjectAttribute(IIIIIIIIII)V
.end method

.method public abstract ISetPageMap(IIIIII)V
.end method

.method public abstract ISetParaAttribute(IIIIIIIIIIZ)V
.end method

.method public abstract ISetPreview(IILjava/lang/String;)V
.end method

.method public ISetPreviewListener(Lcom/infraware/evengine/EvListener$PreviewListener;)V
    .locals 1
    .parameter "PvL"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->SetPreViewListener(Lcom/infraware/evengine/EvListener$PreviewListener;)V

    .line 99
    return-void
.end method

.method public abstract ISetPreviewTimerCB()V
.end method

.method public abstract ISetPrint(IIILjava/lang/String;I)V
.end method

.method public abstract ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ISetPrintMode()V
.end method

.method public abstract ISetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V
.end method

.method public abstract ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V
.end method

.method public abstract ISetScreenMode(I)V
.end method

.method public abstract ISetShapeObjectAttribute(IIIIIIIIIIZ)V
.end method

.method public abstract ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V
.end method

.method public abstract ISetSortRange(Lcom/infraware/evengine/EV$RANGE;)V
.end method

.method public abstract ISetTemplateShape(II)V
.end method

.method public abstract ISetThumbnailBackground(Z)V
.end method

.method public abstract ISetViewMode(I)V
.end method

.method public abstract ISetWebMode()V
.end method

.method public abstract ISetZoom(IIIIIIIIIII)V
.end method

.method public abstract ISheetBorder(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V
.end method

.method public abstract ISheetClear(I)V
.end method

.method public abstract ISheetEdit(ILjava/lang/String;IIII)V
.end method

.method public abstract ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract ISheetFixFrame()V
.end method

.method public abstract ISheetFocus()V
.end method

.method public abstract ISheetFormat(IIIIIIII)V
.end method

.method public abstract ISheetFunction(I)V
.end method

.method public abstract ISheetInputField(I)V
.end method

.method public abstract ISheetInsertCell(II)V
.end method

.method public abstract ISheetInsertChart(ILcom/infraware/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract ISheetInsertColumns(III)V
.end method

.method public abstract ISheetInsertRows(III)V
.end method

.method public abstract ISheetMerge()V
.end method

.method public abstract ISheetPageBreak()V
.end method

.method public abstract ISheetProtection()V
.end method

.method public abstract ISheetRecalculate()V
.end method

.method public abstract ISheetSetAlignment(II)V
.end method

.method public abstract ISheetSetColor(I)V
.end method

.method public abstract ISheetSetRowColSize(III)V
.end method

.method public abstract ISheetShowHideRowCol(III)V
.end method

.method public abstract ISheetSort(IIII)V
.end method

.method public abstract IShowHideImage(I)V
.end method

.method public abstract ISlideAddMove(III)V
.end method

.method public abstract ISlideNote(III)V
.end method

.method public abstract ISlideNoteInput(ILjava/lang/String;I)V
.end method

.method public abstract ISlideObjInsert(III)V
.end method

.method public abstract ISlideObjStart(III)V
.end method

.method public abstract ISlideObjStartEx(III)V
.end method

.method public abstract ISlideShow(III)V
.end method

.method public abstract ITextPlay(IIII)V
.end method

.method public abstract IThreadSuspend(I)V
.end method

.method public abstract IThumbnail(IIIII)V
.end method

.method public abstract IToggleSheetLineBreak()V
.end method

.method public abstract IZoomInOut(II)V
.end method

.method public abstract IsStartOfSentence_Editor()I
.end method

.method OnFinalizeComplete()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->mbInit:Z

    return-void
.end method

.method OnInitComplete(I)V
    .locals 1
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->mbInit:Z

    return-void
.end method

.method abstract OnTimerStart()V
.end method

.method abstract OnTimerStop()V
.end method

.method public getDocFileExtentionType(Ljava/lang/String;)I
    .locals 4
    .parameter "filePath"

    .prologue
    .line 40
    const/16 v0, 0xff

    .line 41
    .local v0, EV_DOCEXTENSION_TYPE:I
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 42
    .local v1, nIndex:I
    if-ltz v1, :cond_0

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, strExt:Ljava/lang/String;
    const-string v3, ".doc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 45
    const/4 v0, 0x2

    .line 66
    .end local v2           #strExt:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 46
    .restart local v2       #strExt:Ljava/lang/String;
    :cond_1
    const-string v3, ".docx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 47
    const/16 v0, 0x12

    goto :goto_0

    .line 48
    :cond_2
    const-string v3, ".ppt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_3
    const-string v3, ".pptx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 51
    const/16 v0, 0x13

    goto :goto_0

    .line 52
    :cond_4
    const-string v3, ".pps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 53
    const/16 v0, 0x27

    goto :goto_0

    .line 54
    :cond_5
    const-string v3, ".xls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 55
    const/4 v0, 0x5

    goto :goto_0

    .line 56
    :cond_6
    const-string v3, ".xlsx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 57
    const/16 v0, 0x14

    goto :goto_0

    .line 58
    :cond_7
    const-string v3, ".pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 59
    const/4 v0, 0x6

    goto :goto_0

    .line 60
    :cond_8
    const-string v3, ".csv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 61
    const/4 v0, 0x5

    goto :goto_0

    .line 62
    :cond_9
    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, ".text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 63
    :cond_a
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public getFontFileList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->GetFontFileList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseFontFileNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetUseFontNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isInit()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/infraware/evengine/ICoEngineInterface;->mbInit:Z

    return v0
.end method
