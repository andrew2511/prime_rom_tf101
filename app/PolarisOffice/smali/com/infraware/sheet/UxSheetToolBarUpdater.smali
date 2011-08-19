.class public Lcom/infraware/sheet/UxSheetToolBarUpdater;
.super Lcom/infraware/common/UxToolBarUpdater;
.source "UxSheetToolBarUpdater.java"

# interfaces
.implements Lcom/infraware/common/UDM$UDM_SHEET_TOOLBAR_ID;
.implements Lcom/infraware/evengine/E;
.implements Lcom/infraware/evengine/E$EV_EDIT_CURSOR_MODE;
.implements Lcom/infraware/evengine/E$EV_STATUS;
.implements Lcom/infraware/evengine/E$EV_SHEET_FORMAT;
.implements Lcom/infraware/evengine/E$EV_SHEET_CELL_TYPE;
.implements Lcom/infraware/evengine/E$EV_SHEET_EDITOR_STATUS;
.implements Lcom/infraware/evengine/E$EV_BORDER_STYLE;


# instance fields
.field m_eLatestBorderStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

.field m_nEditMode:I

.field m_nEditStatus:J

.field private m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

.field private m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field private m_oSheetActivity:Lcom/infraware/sheet/UxSheetEditorActivity;

.field private m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;

.field m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

.field m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

.field m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;


# direct methods
.method public constructor <init>(Lcom/infraware/sheet/UxSheetEditorActivity;Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;Lcom/infraware/common/helpers/EvClipboardHelper;Lcom/infraware/common/EvObjectProc;)V
    .locals 2
    .parameter "a_oActivity"
    .parameter "a_oToolbar"
    .parameter "a_oClipBoardHelper"
    .parameter "a_oObjectHandler"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/infraware/common/UxToolBarUpdater;-><init>(Lcom/infraware/common/UxDocEditorBase;)V

    .line 17
    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oSheetActivity:Lcom/infraware/sheet/UxSheetEditorActivity;

    .line 18
    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;

    .line 19
    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 20
    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

    .line 21
    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    .line 22
    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    .line 23
    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditStatus:J

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditMode:I

    .line 26
    sget-object v0, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_eLatestBorderStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    .line 31
    iput-object p1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oSheetActivity:Lcom/infraware/sheet/UxSheetEditorActivity;

    .line 32
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oSheetActivity:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getCoreInterface()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 33
    iput-object p2, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;

    .line 34
    iput-object p3, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

    .line 35
    iput-object p4, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 36
    return-void
.end method


# virtual methods
.method public canBullets()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public canCopy()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public canCopyCut()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public canCut()Z
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isProtectSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canFont()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public canObjectZOrder()Z
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$CARET_INFO;->bCaret:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 354
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canParagraph()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public canPaste()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x200

    const/4 v2, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isCellSelected()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 270
    :goto_0
    return v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isProtectSheet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 268
    :cond_1
    iget-wide v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditStatus:J

    and-long/2addr v0, v3

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

    invoke-virtual {v0}, Lcom/infraware/common/helpers/EvClipboardHelper;->hasText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 270
    goto :goto_0
.end method

.method public canRedo()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 288
    iget-wide v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditStatus:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSave()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public canUndo()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x2

    .line 281
    iget-wide v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditStatus:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastestBorderStyle()Lcom/infraware/common/UserClasses$BORDER_STYLE;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_eLatestBorderStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    return-object v0
.end method

.method isCellSelected()Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEditInFieldMode()Z
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEmptyCell()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFreezeSheet()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$SHEET_INFO;->bFreeze:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isHiddenCol()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHiddenRow()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMergeCells()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwCellType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->isModified()Z

    move-result v0

    return v0
.end method

.method isPartCols()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPartRows()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProtectSheet()Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getSheetInfo()Lcom/infraware/evengine/EV$SHEET_INFO;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    .line 216
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetDetailInfo(Lcom/infraware/evengine/EV$SHEET_INFO;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$SHEET_INFO;->bProtectSheet:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSelectionFunctionMode()Z
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSheetEditMode()Z
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSingleCell()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 169
    :goto_0
    return v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    move v0, v3

    .line 162
    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    if-ne v0, v1, :cond_2

    .line 165
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    if-ne v0, v1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    if-ne v0, v1, :cond_2

    .line 167
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    if-ne v0, v1, :cond_2

    move v0, v3

    .line 168
    goto :goto_0

    :cond_2
    move v0, v2

    .line 169
    goto :goto_0
.end method

.method isSingleMergeCell()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isMergeCells()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 155
    :goto_0
    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 155
    goto :goto_0
.end method

.method isWholeCols()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nRow2:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v0, v1

    const v1, 0xffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWholeRows()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v0, v0, Lcom/infraware/evengine/EV$RANGE;->nCol2:I

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    iget v1, v1, Lcom/infraware/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v0, v1

    const/16 v1, 0x7fff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEditMode(I)V
    .locals 0
    .parameter "a_nEditMode"

    .prologue
    .line 242
    iput p1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditMode:I

    .line 243
    return-void
.end method

.method public setLastestBorderStyle(Lcom/infraware/common/UserClasses$BORDER_STYLE;)V
    .locals 0
    .parameter "a_eLatestBorderStyle"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_eLatestBorderStyle:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    .line 344
    return-void
.end method

.method public statusCheck(I)Z
    .locals 3
    .parameter "a_nToolBarId"

    .prologue
    const/4 v2, 0x1

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->isProtectSheet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 74
    :pswitch_1
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->canSave()Z

    move-result v0

    .line 75
    goto :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->canCopy()Z

    move-result v0

    .line 78
    goto :goto_0

    .line 84
    :cond_1
    packed-switch p1, :pswitch_data_1

    .line 138
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "UxSheetToolBarUpdater - statusCheck"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 87
    :pswitch_3
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->canSave()Z

    move-result v0

    .line 88
    goto :goto_0

    .line 93
    :pswitch_4
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->canUndo()Z

    move-result v0

    .line 94
    goto :goto_0

    .line 96
    :pswitch_5
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->canRedo()Z

    move-result v0

    .line 97
    goto :goto_0

    .line 99
    :pswitch_6
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->canCopy()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->canCut()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->canPaste()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    move v0, v1

    .line 100
    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    .line 99
    goto :goto_1

    .line 109
    :pswitch_7
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isCellSelected()Z

    move-result v0

    .line 110
    goto :goto_0

    .line 112
    :pswitch_8
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isMergeCells()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isCellSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isSingleCell()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :cond_3
    const/4 v0, 0x1

    .line 114
    goto :goto_0

    .line 117
    :pswitch_9
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isCellSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 118
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 119
    :cond_4
    const/4 v0, 0x1

    .line 120
    goto :goto_0

    .line 122
    :pswitch_a
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isSingleCell()Z

    move-result v0

    .line 123
    goto :goto_0

    .line 125
    :pswitch_b
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isCellSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isEmptyCell()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 127
    goto/16 :goto_0

    .line 129
    :pswitch_c
    invoke-virtual {p0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isCellSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->dwBorderStyle:I

    if-eqz v1, :cond_5

    .line 130
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;->getToolbarEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/infraware/common/UserClasses$BORDER_STYLE;->BORDER_STYLE_THIN:Lcom/infraware/common/UserClasses$BORDER_STYLE;

    invoke-virtual {p0, v1}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->setLastestBorderStyle(Lcom/infraware/common/UserClasses$BORDER_STYLE;)V

    goto/16 :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method

.method public updateCellInfo()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    .line 252
    return-void
.end method

.method public updateEditInfo()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetEditStauts()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditStatus:J

    .line 248
    return-void
.end method

.method public updateFormatInfo()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    .line 256
    return-void
.end method

.method public updateSheetInfo()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->EV()Lcom/infraware/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getSheetInfo()Lcom/infraware/evengine/EV$SHEET_INFO;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetDetailInfo(Lcom/infraware/evengine/EV$SHEET_INFO;)V

    .line 261
    return-void
.end method

.method public updateToolbar()V
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    if-nez v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    if-nez v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v2, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sSheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    invoke-virtual {v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->getSheetDetailInfo(Lcom/infraware/evengine/EV$SHEET_INFO;)V

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getCaretInfo()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 62
    return-void

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;

    invoke-virtual {p0, v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->statusCheck(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;->setToolbarEnable(IZ)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
