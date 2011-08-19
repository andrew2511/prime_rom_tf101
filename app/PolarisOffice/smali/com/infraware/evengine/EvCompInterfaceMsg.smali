.class Lcom/infraware/evengine/EvCompInterfaceMsg;
.super Lcom/infraware/evengine/ICoEngineInterface;
.source "EvCompInterfaceMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;
    }
.end annotation


# instance fields
.field protected final mHandler:Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/infraware/evengine/ICoEngineInterface;-><init>()V

    .line 47
    new-instance v0, Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;-><init>(Lcom/infraware/evengine/EvCompInterfaceMsg;)V

    iput-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->mHandler:Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;

    .line 59
    return-void
.end method


# virtual methods
.method public IApplyBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V
    .locals 1
    .parameter "a_pClip"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IApplyBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V

    .line 947
    return-void
.end method

.method public IApplyBookMark()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IApplyBookMark()V

    .line 295
    return-void
.end method

.method public IBookMarkOnOff(I)V
    .locals 1
    .parameter "a_bOn"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IBookMarkOnOff(I)V

    .line 287
    return-void
.end method

.method public IBookmarkEditor(ILjava/lang/String;)V
    .locals 1
    .parameter "EEV_BOOKMARK_EDITOR_MODE"
    .parameter "a_pszBookmark"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IBookmarkEditor(ILjava/lang/String;)V

    .line 568
    return-void
.end method

.method public IBulletNumbering(III)V
    .locals 1
    .parameter "EEV_BULLET_NUMBERIG"
    .parameter "EEV_BULLETNUMBER_TYPE"
    .parameter "bNumberReset"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->IBulletNumbering(III)V

    .line 520
    return-void
.end method

.method public ICanCellDelete_Editor()Z
    .locals 2

    .prologue
    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, nRet:Z
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->ICanCellDelete()Z

    move-result v0

    .line 728
    return v0
.end method

.method public ICanExtendSortRange()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ICanExtendSortRange()I

    .line 894
    return-void
.end method

.method public ICanInsertBookmark_Editor()I
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ICanInsertBookmark_Editor()I

    move-result v0

    return v0
.end method

.method public ICancel()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ICancel()V

    .line 381
    return-void
.end method

.method public ICancelFontAttribute()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ICancelFontAttribute()V

    .line 468
    return-void
.end method

.method public ICaretMark(II)V
    .locals 1
    .parameter "EEV_CARET_MARK"
    .parameter "nSelectMode"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ICaretMark(II)V

    .line 517
    return-void
.end method

.method public ICaretMove(I)V
    .locals 1
    .parameter "EEV_CARET_MOVE"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ICaretMove(I)V

    .line 502
    return-void
.end method

.method public ICaretShow(I)V
    .locals 1
    .parameter "a_bCaret"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ICaretShow(I)V

    .line 505
    return-void
.end method

.method public ICellInsertDelete(II)V
    .locals 1
    .parameter "EEV_CELL_ISERT_DELETE"
    .parameter "a_nCellType"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ICellInsertDelete(II)V

    .line 559
    return-void
.end method

.method public ICellMergeSeparate(III)V
    .locals 1
    .parameter "EEV_WORD_CELL_MERGE_SEP"
    .parameter "a_nRow"
    .parameter "a_nCol"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ICellMergeSeparate(III)V

    .line 562
    return-void
.end method

.method public IChangeDisplay(I)V
    .locals 0
    .parameter "EEV_DISPLAY_MODE_TYPE"

    .prologue
    .line 231
    return-void
.end method

.method public IChangeScreen(III)V
    .locals 6
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    const/4 v4, 0x0

    .line 225
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IChangeScreen(IIIII)V

    .line 226
    return-void
.end method

.method public IChangeViewMode(IIII)V
    .locals 1
    .parameter "EEV_VIEW_MODE"
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "bDraw"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IChangeViewMode(IIII)V

    .line 407
    return-void
.end method

.method public ICharInsert(II)V
    .locals 1
    .parameter "EEV_CHAR_IPUT"
    .parameter "a_wCode"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ICharInsert(II)V

    .line 556
    return-void
.end method

.method public IClose()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IClose()V

    .line 131
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->mHandler:Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;->setOperationTimer(Z)V

    .line 133
    invoke-super {p0}, Lcom/infraware/evengine/ICoEngineInterface;->IClose()V

    .line 134
    return-void
.end method

.method public ICreateTable(III)V
    .locals 1
    .parameter "a_nRow"
    .parameter "a_nCol"
    .parameter "a_nColor"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ICreateTable(III)V

    .line 485
    return-void
.end method

.method public IDeleteBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V
    .locals 1
    .parameter "a_pClip"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IDeleteBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V

    .line 950
    return-void
.end method

.method public IDocumentModified_Editor()Z
    .locals 2

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, nRet:Z
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->IDocumentModified()Z

    move-result v0

    .line 720
    return v0
.end method

.method public IEditDocument(IIILjava/lang/String;)V
    .locals 1
    .parameter "EEV_EDIT_DOCUMENT"
    .parameter "nNative"
    .parameter "nDataType"
    .parameter "data"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IEditDocument(IIILjava/lang/String;)V

    .line 441
    return-void
.end method

.method public IEditPageRedrawBitmap()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IEditPageRedrawBitmap()V

    .line 535
    return-void
.end method

.method public IExitPreview()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IExitPreview()V

    .line 680
    return-void
.end method

.method public IFinalize()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/infraware/evengine/EvCompInterfaceMsg;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IFinalize()V

    .line 102
    :cond_0
    return-void
.end method

.method public IFindWordNext(I)V
    .locals 1
    .parameter "a_bDirUp"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IFindWordNext(I)V

    .line 333
    return-void
.end method

.method public IFindWordNextByPos(II)V
    .locals 1
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IFindWordNextByPos(II)V

    .line 337
    return-void
.end method

.method public IFindWordStart(II)V
    .locals 1
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IFindWordStart(II)V

    .line 329
    return-void
.end method

.method public IFindWordStop()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IFindWordStop()V

    .line 341
    return-void
.end method

.method public IFlick(II)V
    .locals 1
    .parameter "a_nVelocityX"
    .parameter "a_nVelocityY"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IFlick(II)V

    .line 156
    return-void
.end method

.method public IGetBWPCellStatusInfo_Editor()J
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetBWPCellStatusInfo_Editor()J

    move-result-wide v0

    return-wide v0
.end method

.method public IGetBWPGrapAttrInfo_Editor()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBwpGrapAttrInfo()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetBWPGrapAttrInfo(Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;)V

    .line 711
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getBwpGrapAttrInfo()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetBWPOpInfo_Editor()Lcom/infraware/evengine/EV$BWP_OP_INFO;
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBwpOpInfo()Lcom/infraware/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetBWPOpInfo(Lcom/infraware/evengine/EV$BWP_OP_INFO;)V

    .line 703
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getBwpOpInfo()Lcom/infraware/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetBWPSplitCellMaxNum_Editor()Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBwpSplitCellMaxNum()Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetBWPSplitCellMaxNum(Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;)V

    .line 707
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getBwpSplitCellMaxNum()Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

    move-result-object v0

    return-object v0
.end method

.method public IGetBookClipCount(Lcom/infraware/evengine/EV$BOOK_CLIP;)I
    .locals 1
    .parameter "a_pClip"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IGetBookClipCount(Lcom/infraware/evengine/EV$BOOK_CLIP;)I

    move-result v0

    return v0
.end method

.method public IGetBookClipName(ILcom/infraware/evengine/EV$BOOK_CLIP;)V
    .locals 1
    .parameter "a_nIndex"
    .parameter "a_pClip"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IGetBookClipName(ILcom/infraware/evengine/EV$BOOK_CLIP;)V

    .line 941
    return-void
.end method

.method public IGetBookmarkCount_Editor()I
    .locals 2

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, nCnt:I
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->IGetBookmarkCount_Editor()I

    move-result v0

    .line 769
    return v0
.end method

.method public IGetBookmarkInfo_Editor(I)Ljava/lang/String;
    .locals 2
    .parameter "a_nIndex"

    .prologue
    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, strTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/evengine/EvNative;->IGetBookmarkInfo_Editor(I)Ljava/lang/String;

    move-result-object v0

    .line 775
    return-object v0
.end method

.method public IGetBookmarkLabel(I)Lcom/infraware/evengine/EV$BOOKMARK_LABEL;
    .locals 2
    .parameter "a_nIndex"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBookmarkLabel()Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/infraware/evengine/EvNative;->IGetBookmarkLabel(ILcom/infraware/evengine/EV$BOOKMARK_LABEL;)V

    .line 683
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getBookmarkLabel()Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

    move-result-object v0

    return-object v0
.end method

.method public IGetBorderProperty()Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getGuiBorderEvent()Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetBorderProperty(Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;)V

    .line 933
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getGuiBorderEvent()Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v0

    return-object v0
.end method

.method public IGetBulletType_Editor()Lcom/infraware/evengine/EV$BULLET_TYPE;
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBulletType()Lcom/infraware/evengine/EV$BULLET_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetBulletType(Lcom/infraware/evengine/EV$BULLET_TYPE;)V

    .line 753
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getBulletType()Lcom/infraware/evengine/EV$BULLET_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretAfterString(I)Ljava/lang/String;
    .locals 1
    .parameter "a_length"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IGetCaretAfterString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretBeforeString(I)Ljava/lang/String;
    .locals 1
    .parameter "a_length"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IGetCaretBeforeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretInfo_Editor()Lcom/infraware/evengine/EV$CARET_INFO;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getCaretInfoEvent()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretPos()Lcom/infraware/evengine/EV$CARET_POS;
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getCaretPos()Lcom/infraware/evengine/EV$CARET_POS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetCaretPos(Lcom/infraware/evengine/EV$CARET_POS;)V

    .line 508
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getCaretPos()Lcom/infraware/evengine/EV$CARET_POS;

    move-result-object v0

    return-object v0
.end method

.method public IGetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getSheetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetCellInfo(Lcom/infraware/evengine/EV$SHEET_CELL_INFO;)V

    .line 905
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getSheetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCellProperty_Editor()Lcom/infraware/evengine/EV$CELL_PROPERTY;
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getCellProperty()Lcom/infraware/evengine/EV$CELL_PROPERTY;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetCellProperty(Lcom/infraware/evengine/EV$CELL_PROPERTY;)V

    .line 757
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getCellProperty()Lcom/infraware/evengine/EV$CELL_PROPERTY;

    move-result-object v0

    return-object v0
.end method

.method public IGetCellType()I
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetCellType()I

    move-result v0

    return v0
.end method

.method public IGetChartInfo()Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;
    .locals 2

    .prologue
    .line 915
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getGuiSheetChartEvent()Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;

    move-result-object v0

    .line 916
    .local v0, chartInfo:Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1, v0}, Lcom/infraware/evengine/EvNative;->IGetChartInfo(Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;)V

    .line 917
    return-object v0
.end method

.method public IGetColumn()I
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetColumn()I

    move-result v0

    return v0
.end method

.method public IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getConfigInfo()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCurrentSheetIndex()I
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetCurrentSheetIndex()I

    move-result v0

    return v0
.end method

.method public IGetEditStauts_Editor()J
    .locals 3

    .prologue
    .line 747
    const-wide/16 v0, 0x0

    .line 748
    .local v0, a_Status:J
    iget-object v2, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v2}, Lcom/infraware/evengine/EvNative;->IGetEditStauts()J

    move-result-wide v0

    .line 749
    return-wide v0
.end method

.method public IGetEditorMode_Editor()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->mEditorMode:I

    return v0
.end method

.method public IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getGuiFontEvent()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetFontAttInfo(Lcom/infraware/evengine/EV$FONT_INFO;)V

    .line 699
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getGuiFontEvent()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getSheetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetFormatInfo(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 909
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getSheetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetHyperLinkInfoEx(II)Lcom/infraware/evengine/EV$HYPERLINK_INFO;
    .locals 2
    .parameter "a_nX"
    .parameter "a_nY"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/infraware/evengine/EvNative;->IGetHyperLinkInfoEx(IILcom/infraware/evengine/EV$HYPERLINK_INFO;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->bUse:I

    .line 975
    :goto_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    return-object v0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->bUse:I

    goto :goto_0
.end method

.method public IGetHyperLinkInfo_Editor()Lcom/infraware/evengine/EV$HYPERLINK_INFO;
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetHyperLinkInfo(Lcom/infraware/evengine/EV$HYPERLINK_INFO;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x0

    .line 734
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    goto :goto_0
.end method

.method public IGetInvalidRect_Editor()Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getInvalidDrawInfo()Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetInvalidRect(Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;)V

    .line 715
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getInvalidDrawInfo()Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetMarkString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, strTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->IGetMarkString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    return-object v0
.end method

.method public IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getGuiSetParaAttEvent()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetParaAttInfo(Lcom/infraware/evengine/EV$SET_PARAATT_INFO;)Z

    .line 739
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getGuiSetParaAttEvent()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetProperties()Lcom/infraware/evengine/EV$PROPERTIES;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getProperties()Lcom/infraware/evengine/EV$PROPERTIES;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V

    .line 392
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getProperties()Lcom/infraware/evengine/EV$PROPERTIES;

    move-result-object v0

    return-object v0
.end method

.method public IGetProtectStatus_Editor()I
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetProtectStatus_Editor()I

    move-result v0

    return v0
.end method

.method public IGetScreenPos()Lcom/infraware/evengine/EV$SCREEN_INFO;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getScreenInfo()Lcom/infraware/evengine/EV$SCREEN_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetScrollInfo_Editor()Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getScrollInfoEditor()Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v0

    return-object v0
.end method

.method public IGetSeparateMarkString_Editor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, strTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v0

    .line 997
    return-object v0
.end method

.method public IGetSheetCount()I
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetSheetCount()I

    move-result v0

    return v0
.end method

.method public IGetSheetInfo(Lcom/infraware/evengine/EV$SHEET_INFO;I)V
    .locals 1
    .parameter "a_pSheetInfo"
    .parameter "a_nIndex"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IGetSheetInfo(Lcom/infraware/evengine/EV$SHEET_INFO;I)V

    .line 913
    return-void
.end method

.method public IGetSheetNameList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetSheetNameList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IGetSlideNoteString_Editor(I)Ljava/lang/String;
    .locals 2
    .parameter "a_nPageNum"

    .prologue
    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, strTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/evengine/EvNative;->IGetSlideNoteString(I)Ljava/lang/String;

    move-result-object v0

    .line 763
    return-object v0
.end method

.method public IGetSortRange(Lcom/infraware/evengine/EV$RANGE;I)I
    .locals 2
    .parameter "a_ppRange"
    .parameter "a_bExtendRange"

    .prologue
    .line 897
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/evengine/EvNative;->IGetSortRange(Lcom/infraware/evengine/EV$RANGE;I)I

    move-result v0

    .line 898
    .local v0, nRet:I
    return v0
.end method

.method public IGetSystemFontCount()I
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetSystemFontCount()I

    move-result v0

    return v0
.end method

.method public IGetSystemFontNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetSystemFontNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IGetTextToSpeachString(III)V
    .locals 1
    .parameter "nSize"
    .parameter "nDir"
    .parameter "nTextline"

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->IGetTextToSpeachString(III)V

    .line 1014
    return-void
.end method

.method public IGetTouchString(II)Ljava/lang/String;
    .locals 2
    .parameter "nSx"
    .parameter "nSy"

    .prologue
    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, strTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/evengine/EvNative;->IGetTouchString(II)Ljava/lang/String;

    move-result-object v0

    .line 1009
    return-object v0
.end method

.method public IGetUseFontCount()I
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetUseFontCount()I

    move-result v0

    return v0
.end method

.method public IGetUseFontNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetUseFontNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IHIDAction(IIII)V
    .locals 1
    .parameter "EEV_HID_ACTION"
    .parameter "a_nXPos"
    .parameter "a_nYPos"
    .parameter "a_wModifiers"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IHIDAction(IIII)V

    .line 548
    return-void
.end method

.method public IHyperLink(III)V
    .locals 1
    .parameter "EEV_HYPERLIK_MODE"
    .parameter "a_nXPos"
    .parameter "a_nYPos"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->IHyperLink(III)V

    .line 313
    return-void
.end method

.method public IHyperLinkEnd()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IHyperLinkEnd()V

    .line 317
    return-void
.end method

.method public IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "a_pszHyperText"
    .parameter "a_pszHyperLink"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "a_pImgPath"
    .parameter "a_bitmap"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 523
    return-void
.end method

.method public IIndentation(I)V
    .locals 1
    .parameter "EEV_IDENTATION"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IIndentation(I)V

    .line 565
    return-void
.end method

.method public IInitialize(II)V
    .locals 8
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    const/4 v4, 0x1

    .line 81
    invoke-super {p0, p1, p2}, Lcom/infraware/evengine/ICoEngineInterface;->IInitialize(II)V

    .line 83
    invoke-virtual {p0}, Lcom/infraware/evengine/EvCompInterfaceMsg;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    .line 89
    const/16 v3, 0x8

    .line 92
    const/16 v6, 0x10

    .line 93
    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v5, v4

    .line 85
    invoke-virtual/range {v0 .. v7}, Lcom/infraware/evengine/EvNative;->IInitialize(IIIIIII)V

    .line 95
    :cond_0
    return-void
.end method

.method public IInputChar(I)V
    .locals 1
    .parameter "a_wCode"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IInputChar(I)V

    .line 495
    return-void
.end method

.method public IInsertShape(I)V
    .locals 1
    .parameter "a_nShape"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IInsertShape(I)V

    .line 644
    return-void
.end method

.method public IInsertString(Ljava/lang/String;III)V
    .locals 1
    .parameter "aszTemp"
    .parameter "nCompType"
    .parameter "nPos"
    .parameter "nStrLen"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IInsertString(Ljava/lang/String;III)V

    .line 526
    return-void
.end method

.method public IInsertTextBox()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IInsertTextBox()V

    .line 638
    return-void
.end method

.method public IIsComplexColumn()Z
    .locals 2

    .prologue
    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, nRet:Z
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->IIsComplexColumn()Z

    move-result v0

    .line 1028
    return v0
.end method

.method public IMemo(ILjava/lang/String;IIIII)V
    .locals 0
    .parameter "EEV_MEMO_TYPE"
    .parameter "a_sText"
    .parameter "a_nSelIndex"
    .parameter "a_nXpos"
    .parameter "a_nYpos"
    .parameter "a_nIconW"
    .parameter "a_nIconH"

    .prologue
    .line 353
    return-void
.end method

.method public IMovePage(II)V
    .locals 1
    .parameter "EEV_MOVE_TYPE"
    .parameter "a_nPage"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IMovePage(II)V

    .line 143
    return-void
.end method

.method public INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "a_sFilePath"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_eLoadType"
    .parameter "a_eNewTemplatePPT"
    .parameter "a_nLocale"
    .parameter "bLandScape"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/evengine/EvNative;->INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "a_sFilePath"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "EEV_FILE_LOAD_TYPE"
    .parameter "a_nLocale"
    .parameter "bLandScape"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, v0

    .line 120
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    .line 116
    invoke-virtual/range {v1 .. v16}, Lcom/infraware/evengine/EvNative;->IOpen(Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public IOpenEx(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "a_sFilePath"
    .parameter "a_sPassword"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nLocale"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"

    .prologue
    .line 125
    return-void
.end method

.method public IParagraphAlign(I)V
    .locals 1
    .parameter "EEV_PARAGRAPH_ALIGN"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IParagraphAlign(I)V

    .line 529
    return-void
.end method

.method public IPivotScreen(III)V
    .locals 1
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->IPivotScreen(III)V

    .line 235
    return-void
.end method

.method public IPopupOffset(IIIII)V
    .locals 6
    .parameter "EEV_POPUP_ONOFF"
    .parameter "a_nLeft"
    .parameter "a_nRight"
    .parameter "a_nTop"
    .parameter "a_nBottom"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IPopupOffset(IIIII)V

    .line 574
    return-void
.end method

.method public IPrint(IIILjava/lang/String;)V
    .locals 1
    .parameter "EEV_PRIT_PAPER_TYPE"
    .parameter "a_nStartPage"
    .parameter "a_nEndPage"
    .parameter "a_sFilePath"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IPrint(IIILjava/lang/String;)V

    .line 372
    return-void
.end method

.method public IReDraw()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IReDraw()V

    .line 207
    return-void
.end method

.method public IRedoUndo(I)V
    .locals 1
    .parameter "EEV_REDO_UNDO"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IRedoUndo(I)V

    .line 492
    return-void
.end method

.method public IRemoveAllBookMark()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IRemoveAllBookMark()V

    .line 303
    return-void
.end method

.method public IRemoveBookMark(Ljava/lang/String;)V
    .locals 1
    .parameter "a_sFilePath"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IRemoveBookMark(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public IRotate(II)V
    .locals 1
    .parameter "EEV_ROTATE_TYPE"
    .parameter "a_nAngle"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IRotate(II)V

    .line 203
    return-void
.end method

.method public ISaveBookMark()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISaveBookMark()V

    .line 291
    return-void
.end method

.method public ISaveDocument(Ljava/lang/String;)V
    .locals 3
    .parameter "a_pszFilePath"

    .prologue
    .line 431
    const-string v0, "EvCompinterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ISaveDocument = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISaveDocument(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public ISaveThumbnailAt(IIILjava/lang/String;I)V
    .locals 6
    .parameter "a_nPageIndex"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_szSavePath"
    .parameter "a_nSaveType"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->ISaveThumbnailAt(IIILjava/lang/String;I)V

    .line 1047
    return-void
.end method

.method public IScreenCaptureModeOnOff(I)V
    .locals 0
    .parameter "a_bOn"

    .prologue
    .line 240
    return-void
.end method

.method public IScroll(IIIII)V
    .locals 6
    .parameter "EEV_SCROLL_COMMAND_TYPE"
    .parameter "EEV_SCROLL_FACTOR_TYPE"
    .parameter "a_nOffsetX"
    .parameter "a_nOffsetY"
    .parameter "EEV_KEY_TYPE"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IScroll(IIIII)V

    .line 194
    return-void
.end method

.method public ISearchStart(Ljava/lang/String;IIII)V
    .locals 6
    .parameter "a_sFind"
    .parameter "a_bMatchWord"
    .parameter "a_bCase"
    .parameter "a_bDirUp"
    .parameter "a_bFixedZoom"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->ISearchStart(Ljava/lang/String;IIII)V

    .line 321
    return-void
.end method

.method public ISearchStop()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISearchStop()V

    .line 325
    return-void
.end method

.method public ISelectAll()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISelectAll()V

    .line 611
    return-void
.end method

.method public ISellectAll()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISellectAll()V

    .line 780
    return-void
.end method

.method public ISetBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)I
    .locals 1
    .parameter "a_pClip"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)I

    move-result v0

    return v0
.end method

.method public ISetBookmarkLabel(Lcom/infraware/evengine/EV$BOOKMARK_LABEL;I)V
    .locals 1
    .parameter "a_pLabel"
    .parameter "a_bSaveBookmarkInfo"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISetBookmarkLabel(Lcom/infraware/evengine/EV$BOOKMARK_LABEL;I)V

    .line 687
    return-void
.end method

.method public ISetBorder(IIIIIIIIIZ)V
    .locals 11
    .parameter "nBMask"
    .parameter "nBStyle"
    .parameter "nBLeftColor"
    .parameter "nBTopColor"
    .parameter "nBRightColor"
    .parameter "nBBottomColor"
    .parameter "nBHoriColor"
    .parameter "nBVertColor"
    .parameter "nBCellColor"
    .parameter "a_bUndo"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/infraware/evengine/EvNative;->ISetBorder(IIIIIIIIIZ)V

    .line 623
    return-void
.end method

.method public ISetColors(III)V
    .locals 1
    .parameter "nMask"
    .parameter "nForeColor"
    .parameter "nBackColor"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISetColors(III)V

    .line 626
    return-void
.end method

.method public ISetColumn(II)V
    .locals 1
    .parameter "a_nColCnt"
    .parameter "a_bAllPage"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISetColumn(II)V

    .line 957
    return-void
.end method

.method public ISetCompBackColor(IIIIJJIII)V
    .locals 12
    .parameter "a_nStart1"
    .parameter "a_nEnd1"
    .parameter "a_nStart2"
    .parameter "a_nEnd2"
    .parameter "a_dwColor1"
    .parameter "a_dwColor2"
    .parameter "a_bApplyFlag"
    .parameter "a_bDirectDraw"
    .parameter "a_nFakeCaretIndex"

    .prologue
    .line 964
    monitor-enter p0

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/EvNative;->ISetCompBackColor(IIIIJJIII)V

    .line 964
    monitor-exit p0

    .line 967
    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V
    .locals 10
    .parameter "a_pszFont"
    .parameter "a_nFSize"
    .parameter "a_nMaskAtt"
    .parameter "a_nFontAtt"
    .parameter "a_nFColor"
    .parameter "a_nBColor"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_bUndo"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/evengine/EvNative;->ISetFontAttribute(Ljava/lang/String;IIIIIIIZ)V

    .line 453
    return-void
.end method

.method public ISetHeapSize(I)V
    .locals 1
    .parameter "a_nHeapSize"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ISetHeapSize(I)V

    .line 64
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetHeapSize(I)V

    .line 65
    return-void
.end method

.method public ISetLineShape(IIII)V
    .locals 1
    .parameter "EEV_BORDER_STYLE"
    .parameter "a_LineThickness"
    .parameter "EEV_LIE_ARROW_TYPE"
    .parameter "a_LineColor"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->ISetLineShape(IIII)V

    .line 617
    return-void
.end method

.method public ISetLineSpace(I)V
    .locals 1
    .parameter "a_LineSpaceType"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetLineSpace(I)V

    .line 614
    return-void
.end method

.method public ISetListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V
    .locals 6
    .parameter "DvL"
    .parameter "EvL"
    .parameter "EvWL"
    .parameter "EvPL"
    .parameter "EvSL"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->SetListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V

    .line 73
    return-void
.end method

.method public ISetModeStatus(I)V
    .locals 1
    .parameter "EEV_VIEW_MODE"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetModeStatus(I)V

    .line 532
    return-void
.end method

.method public ISetObjDelete()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISetObjDelete()V

    .line 668
    return-void
.end method

.method public ISetObjPos(I)V
    .locals 1
    .parameter "a_nSendToType"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetObjPos(I)V

    .line 693
    return-void
.end method

.method public ISetObjResize(II)V
    .locals 1
    .parameter "a_nSizeX"
    .parameter "a_nSizeY"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISetObjResize(II)V

    .line 690
    return-void
.end method

.method public ISetObjTextEdit()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISetObjTextEdit()V

    .line 665
    return-void
.end method

.method public ISetObjectAttribute(IIIIIIIIII)V
    .locals 11
    .parameter "aObjMastAtt"
    .parameter "aFillColor"
    .parameter "aGradient"
    .parameter "aBorderColor"
    .parameter "aBorderThick"
    .parameter "aBorderStyle"
    .parameter "aWidth"
    .parameter "aHeight"
    .parameter "aArrowType"
    .parameter "aRate"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/infraware/evengine/EvNative;->ISetObjectAttribute(IIIIIIIIII)V

    .line 482
    return-void
.end method

.method public ISetPageMap(IIIIII)V
    .locals 7
    .parameter "EEV_PAGEMAP_COMMAND_TYPE"
    .parameter "a_bDrawContents"
    .parameter "EEV_PAGEMAP_POSITION_TYPE"
    .parameter "a_bGenerateDrawEvt"
    .parameter "a_nRowMargin"
    .parameter "a_nColMargin"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/EvNative;->ISetPageMap(IIIIII)V

    .line 266
    return-void
.end method

.method public ISetParaAttribute(IIIIIIIIIIZ)V
    .locals 12
    .parameter "a_VAlign"
    .parameter "a_HAlign"
    .parameter "a_nLeftMargineValue"
    .parameter "a_nRightMarginValue"
    .parameter "a_nFirstLineType"
    .parameter "a_nFirstLineValue"
    .parameter "a_nLineSpace"
    .parameter "a_nLineSpaceValue"
    .parameter "a_nParaTopValue"
    .parameter "a_nParaBottomValue"
    .parameter "a_bUndo"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/EvNative;->ISetParaAttribute(IIIIIIIIIIZ)V

    .line 598
    return-void
.end method

.method public ISetPreview(IILjava/lang/String;)V
    .locals 6
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_szFilePath"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    const/16 v3, 0x10

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->ISetPreview(IIILjava/lang/String;I)V

    .line 674
    return-void
.end method

.method public ISetPreviewTimerCB()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISetPreviewTimerCB()V

    .line 677
    return-void
.end method

.method public ISetPrint(IIILjava/lang/String;I)V
    .locals 6
    .parameter "a_PaperSize"
    .parameter "a_StartPage"
    .parameter "a_EndPage"
    .parameter "a_szFilePath"
    .parameter "a_ReturnType"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->ISetPrint(IIILjava/lang/String;I)V

    .line 988
    return-void
.end method

.method public ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "a_PaperSize"
    .parameter "a_StartPage"
    .parameter "a_EndPage"
    .parameter "a_szFilePath"
    .parameter "a_ReturnType"
    .parameter "a_nMargin"
    .parameter "a_szPageBoundary"
    .parameter "a_szOutputPath"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/EvNative;->ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method public ISetPrintMode()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISetPrintMode()V

    .line 608
    return-void
.end method

.method public ISetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V
    .locals 1
    .parameter "a_Properties"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V

    .line 397
    return-void
.end method

.method public ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 7
    .parameter "a_sFind"
    .parameter "a_bMathchWord"
    .parameter "a_bCase"
    .parameter "a_bDirUp"
    .parameter "a_sReplace"
    .parameter "bReplaceMode"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/EvNative;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    .line 602
    return-void
.end method

.method public ISetScreenMode(I)V
    .locals 1
    .parameter "EV_SCREENMODE_TYPE"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetScreenMode(I)V

    .line 641
    return-void
.end method

.method public ISetShapeObjectAttribute(IIIIIIIIIIZ)V
    .locals 12
    .parameter "aObjMastAtt"
    .parameter "aFillColor"
    .parameter "aGradient"
    .parameter "aBorderColor"
    .parameter "aBorderThick"
    .parameter "aBorderStyle"
    .parameter "aWidth"
    .parameter "aHeight"
    .parameter "aArrowType"
    .parameter "aRate"
    .parameter "a_bUndo"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/EvNative;->ISetShapeObjectAttribute(IIIIIIIIIIZ)V

    .line 1072
    return-void
.end method

.method public ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V
    .locals 9
    .parameter "a_pszFont"
    .parameter "a_nFSize"
    .parameter "a_nMaskAtt"
    .parameter "a_nFontAtt"
    .parameter "a_nFColor"
    .parameter "a_nBColor"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/EvNative;->ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 464
    return-void
.end method

.method public ISetSortRange(Lcom/infraware/evengine/EV$RANGE;)V
    .locals 1
    .parameter "a_pRange"

    .prologue
    .line 901
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetSortRange(Lcom/infraware/evengine/EV$RANGE;)V

    .line 902
    return-void
.end method

.method public ISetTemplateShape(II)V
    .locals 1
    .parameter "a_nShapeType"
    .parameter "a_nShapeColor"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISetTemplateShape(II)V

    .line 620
    return-void
.end method

.method public ISetThumbnailBackground(Z)V
    .locals 1
    .parameter "a_bBackgroundVisible"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetThumbnailBackground(Z)V

    .line 1051
    return-void
.end method

.method public ISetViewMode(I)V
    .locals 1
    .parameter "EEV_VIEWMODE_TYPE"

    .prologue
    .line 215
    iput p1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->m_nViewMode:I

    .line 216
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetViewMode(I)V

    .line 217
    return-void
.end method

.method public ISetWebMode()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISetWebMode()V

    .line 605
    return-void
.end method

.method public ISetZoom(IIIIIIIIIII)V
    .locals 12
    .parameter "EEV_ZOOM_TYPE"
    .parameter "a_nScale"
    .parameter "a_nSx"
    .parameter "a_nSy"
    .parameter "a_nEx"
    .parameter "a_nEy"
    .parameter "EEV_KEY_TYPE"
    .parameter "a_bStep"
    .parameter "a_bHaveZoomCenter"
    .parameter "a_nZoomCenterX"
    .parameter "a_nZoomCenterY"

    .prologue
    .line 175
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->m_nViewMode:I

    .line 176
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/evengine/EvNative;->ISetZoom(IIIIIIIIIII)V

    .line 182
    return-void
.end method

.method public ISheetBorder(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V
    .locals 1
    .parameter "a_pInfo"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISheetBorder(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 882
    return-void
.end method

.method public ISheetClear(I)V
    .locals 1
    .parameter "EEV_SHEET_CLEAR"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISheetClear(I)V

    .line 838
    return-void
.end method

.method public ISheetEdit(ILjava/lang/String;IIII)V
    .locals 7
    .parameter "EEV_SHEET_EDIT"
    .parameter "a_szSheetName"
    .parameter "a_nSheetIndex"
    .parameter "a_nSheets"
    .parameter "a_nMoveIndex"
    .parameter "a_bCopy"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/EvNative;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 808
    return-void
.end method

.method public ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "a_pszFindText"
    .parameter "a_pszReplaceText"
    .parameter "a_nFlag"

    .prologue
    .line 859
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    .line 860
    return-void
.end method

.method public ISheetFixFrame()V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetFixFrame()V

    .line 811
    return-void
.end method

.method public ISheetFocus()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetFocus()V

    .line 863
    return-void
.end method

.method public ISheetFormat(IIIIIIII)V
    .locals 9
    .parameter "a_nFormat"
    .parameter "a_nDecimalPlaces"
    .parameter "a_bSeparate"
    .parameter "a_nCurrency"
    .parameter "a_nNegative"
    .parameter "a_nDate"
    .parameter "a_nTime"
    .parameter "a_nFraction"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/EvNative;->ISheetFormat(IIIIIIII)V

    .line 792
    return-void
.end method

.method public ISheetFunction(I)V
    .locals 1
    .parameter "a_nFunctionIndex"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISheetFunction(I)V

    .line 795
    return-void
.end method

.method public ISheetInputField(I)V
    .locals 1
    .parameter "a_bCancel"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISheetInputField(I)V

    .line 866
    return-void
.end method

.method public ISheetInsertCell(II)V
    .locals 1
    .parameter "a_bInsert"
    .parameter "EEV_SHEET_ISERT_CELL"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISheetInsertCell(II)V

    .line 825
    return-void
.end method

.method public ISheetInsertChart(ILcom/infraware/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .parameter "a_nChartType"
    .parameter "a_tRange"
    .parameter "a_nSeriesIn"
    .parameter "a_szTitle"
    .parameter "a_szXAxis"
    .parameter "a_szYAxis"
    .parameter "a_nLegend"
    .parameter "a_nDimension"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/EvNative;->ISheetInsertChart(ILcom/infraware/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 879
    return-void
.end method

.method public ISheetInsertColumns(III)V
    .locals 1
    .parameter "a_bInsert"
    .parameter "a_nCount"
    .parameter "a_bAutoFit"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISheetInsertColumns(III)V

    .line 831
    return-void
.end method

.method public ISheetInsertRows(III)V
    .locals 1
    .parameter "a_bInsert"
    .parameter "a_nCount"
    .parameter "a_bAutoFit"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISheetInsertRows(III)V

    .line 828
    return-void
.end method

.method public ISheetMerge()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetMerge()V

    .line 869
    return-void
.end method

.method public ISheetPageBreak()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetPageBreak()V

    .line 814
    return-void
.end method

.method public ISheetProtection()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetProtection()V

    .line 817
    return-void
.end method

.method public ISheetRecalculate()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetRecalculate()V

    .line 798
    return-void
.end method

.method public ISheetSetAlignment(II)V
    .locals 1
    .parameter "a_nHAlignment"
    .parameter "a_nVAlignment"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISheetSetAlignment(II)V

    .line 788
    return-void
.end method

.method public ISheetSetColor(I)V
    .locals 1
    .parameter "a_lColor"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISheetSetColor(I)V

    .line 785
    return-void
.end method

.method public ISheetSetRowColSize(III)V
    .locals 1
    .parameter "EV_GUI_EVENT"
    .parameter "a_nValue"
    .parameter "a_bAutoFit"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISheetSetRowColSize(III)V

    .line 854
    return-void
.end method

.method public ISheetShowHideRowCol(III)V
    .locals 1
    .parameter "EEV_SHEET_SHOW_ROWCOL"
    .parameter "a_nValue"
    .parameter "a_bAutoFit"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISheetShowHideRowCol(III)V

    .line 846
    return-void
.end method

.method public ISheetSort(IIII)V
    .locals 1
    .parameter "a_bSortByRow"
    .parameter "a_nKey1"
    .parameter "a_nKey2"
    .parameter "a_nKey3"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->ISheetSort(IIII)V

    .line 857
    return-void
.end method

.method public IShowHideImage(I)V
    .locals 1
    .parameter "EEV_WORD_SHOW_HIDE"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IShowHideImage(I)V

    .line 538
    return-void
.end method

.method public ISlideAddMove(III)V
    .locals 1
    .parameter "EV_SLIDE_ADD_TYPE"
    .parameter "a_nCurrentPageNumber"
    .parameter "EEV_SLIDE_TEMPLATE_TYPE"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideAddMove(III)V

    .line 635
    return-void
.end method

.method public ISlideNote(III)V
    .locals 1
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageNum"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideNote(III)V

    .line 650
    return-void
.end method

.method public ISlideNoteInput(ILjava/lang/String;I)V
    .locals 1
    .parameter "a_nSlidePage"
    .parameter "a_pszSlideNote"
    .parameter "a_nLen"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideNoteInput(ILjava/lang/String;I)V

    .line 653
    return-void
.end method

.method public ISlideObjInsert(III)V
    .locals 1
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageCnt"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideObjInsert(III)V

    .line 662
    return-void
.end method

.method public ISlideObjStart(III)V
    .locals 1
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageCnt"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideObjStart(III)V

    .line 656
    return-void
.end method

.method public ISlideObjStartEx(III)V
    .locals 1
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageNum"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideObjStartEx(III)V

    .line 659
    return-void
.end method

.method public ISlideShow(III)V
    .locals 1
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_StartPage"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideShow(III)V

    .line 647
    return-void
.end method

.method public ITextPlay(IIII)V
    .locals 0
    .parameter "EEV_TEXTPLAY_TYPE"
    .parameter "a_bAction"
    .parameter "a_nSYPos"
    .parameter "a_nEYPos"

    .prologue
    .line 362
    return-void
.end method

.method public IThreadSuspend(I)V
    .locals 1
    .parameter "a_bSuspend"

    .prologue
    .line 375
    iput p1, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->mbSuspend:I

    .line 376
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IThreadSuspend(I)V

    .line 377
    return-void
.end method

.method public IThumbnail(IIIII)V
    .locals 6
    .parameter "EEV_THUMBNAIL_MODE_TYPE"
    .parameter "a_nPages"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nStartPage"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IThumbnail(IIIII)V

    .line 283
    return-void
.end method

.method public IToggleSheetLineBreak()V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IToggleSheetLineBreak()V

    .line 1043
    return-void
.end method

.method public IZoomInOut(II)V
    .locals 1
    .parameter "a_bI"
    .parameter "EEV_KEY_TYPE"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IZoomInOut(II)V

    .line 152
    return-void
.end method

.method public IsStartOfSentence_Editor()I
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IIsStartOfSentence_Editor()I

    move-result v0

    return v0
.end method

.method protected OnInitComplete(I)V
    .locals 0
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->OnInitComplete(I)V

    .line 77
    return-void
.end method

.method OnTimerStart()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->mHandler:Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;->setOperationTimer(Z)V

    .line 51
    return-void
.end method

.method OnTimerStop()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterfaceMsg;->mHandler:Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvCompInterfaceMsg$HandlerTask;->setOperationTimer(Z)V

    .line 55
    return-void
.end method
