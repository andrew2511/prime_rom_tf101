.class Lcom/infraware/evengine/EvCompInterface;
.super Lcom/infraware/evengine/ICoEngineInterface;
.source "EvCompInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;
    }
.end annotation


# instance fields
.field private m_Timer:Ljava/util/Timer;

.field private m_TimerTask:Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/infraware/evengine/ICoEngineInterface;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    .line 15
    iput-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;

    .line 64
    return-void
.end method


# virtual methods
.method public IApplyBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V
    .locals 1
    .parameter "a_pClip"

    .prologue
    .line 1283
    monitor-enter p0

    .line 1284
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IApplyBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V

    .line 1283
    monitor-exit p0

    .line 1286
    return-void

    .line 1283
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IApplyBookMark()V
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IApplyBookMark()V

    .line 358
    monitor-exit p0

    .line 361
    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IBookMarkOnOff(I)V
    .locals 1
    .parameter "a_bOn"

    .prologue
    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IBookMarkOnOff(I)V

    .line 344
    monitor-exit p0

    .line 347
    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IBookmarkEditor(ILjava/lang/String;)V
    .locals 1
    .parameter "EEV_BOOKMARK_EDITOR_MODE"
    .parameter "a_pszBookmark"

    .prologue
    .line 724
    monitor-enter p0

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IBookmarkEditor(ILjava/lang/String;)V

    .line 724
    monitor-exit p0

    .line 727
    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IBulletNumbering(III)V
    .locals 1
    .parameter "EEV_BULLET_NUMBERIG"
    .parameter "EEV_BULLETNUMBER_TYPE"
    .parameter "bNumberReset"

    .prologue
    .line 652
    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->IBulletNumbering(III)V

    .line 652
    monitor-exit p0

    .line 655
    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ICanCellDelete_Editor()Z
    .locals 2

    .prologue
    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, nRet:Z
    monitor-enter p0

    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->ICanCellDelete()Z

    move-result v0

    .line 962
    monitor-exit p0

    .line 965
    return v0

    .line 962
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ICanExtendSortRange()V
    .locals 1

    .prologue
    .line 1199
    monitor-enter p0

    .line 1200
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ICanExtendSortRange()I

    .line 1199
    monitor-exit p0

    .line 1202
    return-void

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ICanInsertBookmark_Editor()I
    .locals 1

    .prologue
    .line 1411
    monitor-enter p0

    .line 1412
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ICanInsertBookmark_Editor()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1411
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ICancel()V
    .locals 1

    .prologue
    .line 482
    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ICancel()V

    .line 482
    monitor-exit p0

    .line 485
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ICancelFontAttribute()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ICancelFontAttribute()V

    .line 575
    return-void
.end method

.method public ICaretMark(II)V
    .locals 1
    .parameter "EEV_CARET_MARK"
    .parameter "nSelectMode"

    .prologue
    .line 647
    monitor-enter p0

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ICaretMark(II)V

    .line 647
    monitor-exit p0

    .line 650
    return-void

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ICaretMove(I)V
    .locals 1
    .parameter "EEV_CARET_MOVE"

    .prologue
    .line 626
    monitor-enter p0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ICaretMove(I)V

    .line 626
    monitor-exit p0

    .line 629
    return-void

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ICaretShow(I)V
    .locals 1
    .parameter "a_bCaret"

    .prologue
    .line 631
    monitor-enter p0

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ICaretShow(I)V

    .line 631
    monitor-exit p0

    .line 634
    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ICellInsertDelete(II)V
    .locals 1
    .parameter "EEV_CELL_ISERT_DELETE"
    .parameter "a_nCellType"

    .prologue
    .line 709
    monitor-enter p0

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ICellInsertDelete(II)V

    .line 709
    monitor-exit p0

    .line 712
    return-void

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ICellMergeSeparate(III)V
    .locals 1
    .parameter "EEV_WORD_CELL_MERGE_SEP"
    .parameter "a_nRow"
    .parameter "a_nCol"

    .prologue
    .line 714
    monitor-enter p0

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ICellMergeSeparate(III)V

    .line 714
    monitor-exit p0

    .line 717
    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IChangeDisplay(I)V
    .locals 0
    .parameter "EEV_DISPLAY_MODE_TYPE"

    .prologue
    .line 281
    return-void
.end method

.method public IChangeScreen(III)V
    .locals 6
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IChangeScreen(IIIII)V

    .line 272
    monitor-exit p0

    .line 276
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IChangeViewMode(IIII)V
    .locals 1
    .parameter "EEV_VIEW_MODE"
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "bDraw"

    .prologue
    .line 514
    monitor-enter p0

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IChangeViewMode(IIII)V

    .line 514
    monitor-exit p0

    .line 517
    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ICharInsert(II)V
    .locals 1
    .parameter "EEV_CHAR_IPUT"
    .parameter "a_wCode"

    .prologue
    .line 704
    monitor-enter p0

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ICharInsert(II)V

    .line 704
    monitor-exit p0

    .line 707
    return-void

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IClose()V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IClose()V

    .line 152
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/infraware/evengine/ICoEngineInterface;->IClose()V

    .line 149
    monitor-exit p0

    .line 160
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ICreateTable(III)V
    .locals 1
    .parameter "a_nRow"
    .parameter "a_nCol"
    .parameter "a_nColor"

    .prologue
    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ICreateTable(III)V

    .line 603
    monitor-exit p0

    .line 606
    return-void

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IDeleteBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V
    .locals 1
    .parameter "a_pClip"

    .prologue
    .line 1288
    monitor-enter p0

    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IDeleteBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)V

    .line 1288
    monitor-exit p0

    .line 1291
    return-void

    .line 1288
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IDocumentModified_Editor()Z
    .locals 2

    .prologue
    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, nRet:Z
    monitor-enter p0

    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->IDocumentModified()Z

    move-result v0

    .line 952
    monitor-exit p0

    .line 955
    return v0

    .line 952
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IEditDocument(IIILjava/lang/String;)V
    .locals 1
    .parameter "EEV_EDIT_DOCUMENT"
    .parameter "nNative"
    .parameter "nDataType"
    .parameter "data"

    .prologue
    .line 553
    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IEditDocument(IIILjava/lang/String;)V

    .line 553
    monitor-exit p0

    .line 556
    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IEditPageRedrawBitmap()V
    .locals 1

    .prologue
    .line 677
    monitor-enter p0

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IEditPageRedrawBitmap()V

    .line 677
    monitor-exit p0

    .line 680
    return-void

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IExitPreview()V
    .locals 1

    .prologue
    .line 892
    monitor-enter p0

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IExitPreview()V

    .line 892
    monitor-exit p0

    .line 895
    return-void

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IFinalize()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/infraware/evengine/EvCompInterface;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IFinalize()V

    .line 112
    monitor-exit p0

    .line 116
    :cond_0
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IFindWordNext(I)V
    .locals 1
    .parameter "a_bDirUp"

    .prologue
    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IFindWordNext(I)V

    .line 420
    monitor-exit p0

    .line 423
    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IFindWordNextByPos(II)V
    .locals 1
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 427
    monitor-enter p0

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IFindWordNextByPos(II)V

    .line 427
    monitor-exit p0

    .line 430
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IFindWordStart(II)V
    .locals 1
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IFindWordStart(II)V

    .line 413
    monitor-exit p0

    .line 416
    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IFindWordStop()V
    .locals 1

    .prologue
    .line 434
    monitor-enter p0

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IFindWordStop()V

    .line 434
    monitor-exit p0

    .line 437
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IFlick(II)V
    .locals 1
    .parameter "a_nVelocityX"
    .parameter "a_nVelocityY"

    .prologue
    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IFlick(II)V

    .line 188
    monitor-exit p0

    .line 191
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetBWPCellStatusInfo_Editor()J
    .locals 2

    .prologue
    .line 1391
    monitor-enter p0

    .line 1392
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetBWPCellStatusInfo_Editor()J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetBWPGrapAttrInfo_Editor()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;
    .locals 2

    .prologue
    .line 939
    monitor-enter p0

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBwpGrapAttrInfo()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetBWPGrapAttrInfo(Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;)V

    .line 939
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getBwpGrapAttrInfo()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v0

    return-object v0

    .line 939
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetBWPOpInfo_Editor()Lcom/infraware/evengine/EV$BWP_OP_INFO;
    .locals 2

    .prologue
    .line 927
    monitor-enter p0

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBwpOpInfo()Lcom/infraware/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetBWPOpInfo(Lcom/infraware/evengine/EV$BWP_OP_INFO;)V

    .line 927
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getBwpOpInfo()Lcom/infraware/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    return-object v0

    .line 927
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetBWPSplitCellMaxNum_Editor()Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;
    .locals 2

    .prologue
    .line 933
    monitor-enter p0

    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBwpSplitCellMaxNum()Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetBWPSplitCellMaxNum(Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;)V

    .line 933
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getBwpSplitCellMaxNum()Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

    move-result-object v0

    return-object v0

    .line 933
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetBookClipCount(Lcom/infraware/evengine/EV$BOOK_CLIP;)I
    .locals 1
    .parameter "a_pClip"

    .prologue
    .line 1278
    monitor-enter p0

    .line 1279
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IGetBookClipCount(Lcom/infraware/evengine/EV$BOOK_CLIP;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 1278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetBookClipName(ILcom/infraware/evengine/EV$BOOK_CLIP;)V
    .locals 1
    .parameter "a_nIndex"
    .parameter "a_pClip"

    .prologue
    .line 1273
    monitor-enter p0

    .line 1274
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IGetBookClipName(ILcom/infraware/evengine/EV$BOOK_CLIP;)V

    .line 1273
    monitor-exit p0

    .line 1276
    return-void

    .line 1273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetBookmarkCount_Editor()I
    .locals 2

    .prologue
    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, nCnt:I
    monitor-enter p0

    .line 1018
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->IGetBookmarkCount_Editor()I

    move-result v0

    .line 1017
    monitor-exit p0

    .line 1020
    return v0

    .line 1017
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IGetBookmarkInfo_Editor(I)Ljava/lang/String;
    .locals 2
    .parameter "a_nIndex"

    .prologue
    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1026
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/evengine/EvNative;->IGetBookmarkInfo_Editor(I)Ljava/lang/String;

    move-result-object v0

    .line 1025
    monitor-exit p0

    .line 1028
    return-object v0

    .line 1025
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IGetBookmarkLabel(I)Lcom/infraware/evengine/EV$BOOKMARK_LABEL;
    .locals 2
    .parameter "a_nIndex"

    .prologue
    .line 897
    monitor-enter p0

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBookmarkLabel()Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/infraware/evengine/EvNative;->IGetBookmarkLabel(ILcom/infraware/evengine/EV$BOOKMARK_LABEL;)V

    .line 897
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getBookmarkLabel()Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

    move-result-object v0

    return-object v0

    .line 897
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetBorderProperty()Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;
    .locals 2

    .prologue
    .line 1261
    monitor-enter p0

    .line 1262
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getGuiBorderEvent()Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetBorderProperty(Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;)V

    .line 1261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getGuiBorderEvent()Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v0

    return-object v0

    .line 1261
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetBulletType_Editor()Lcom/infraware/evengine/EV$BULLET_TYPE;
    .locals 2

    .prologue
    .line 995
    monitor-enter p0

    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getBulletType()Lcom/infraware/evengine/EV$BULLET_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetBulletType(Lcom/infraware/evengine/EV$BULLET_TYPE;)V

    .line 995
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getBulletType()Lcom/infraware/evengine/EV$BULLET_TYPE;

    move-result-object v0

    return-object v0

    .line 995
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetCaretAfterString(I)Ljava/lang/String;
    .locals 1
    .parameter "a_length"

    .prologue
    .line 1335
    monitor-enter p0

    .line 1336
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IGetCaretAfterString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1335
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetCaretBeforeString(I)Ljava/lang/String;
    .locals 1
    .parameter "a_length"

    .prologue
    .line 1329
    monitor-enter p0

    .line 1330
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IGetCaretBeforeString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1329
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetCaretInfo_Editor()Lcom/infraware/evengine/EV$CARET_INFO;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getCaretInfoEvent()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretPos()Lcom/infraware/evengine/EV$CARET_POS;
    .locals 2

    .prologue
    .line 636
    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getCaretPos()Lcom/infraware/evengine/EV$CARET_POS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetCaretPos(Lcom/infraware/evengine/EV$CARET_POS;)V

    .line 636
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getCaretPos()Lcom/infraware/evengine/EV$CARET_POS;

    move-result-object v0

    return-object v0

    .line 636
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;
    .locals 2

    .prologue
    .line 1216
    monitor-enter p0

    .line 1217
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getSheetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetCellInfo(Lcom/infraware/evengine/EV$SHEET_CELL_INFO;)V

    .line 1216
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getSheetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    move-result-object v0

    return-object v0

    .line 1216
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetCellProperty_Editor()Lcom/infraware/evengine/EV$CELL_PROPERTY;
    .locals 2

    .prologue
    .line 1001
    monitor-enter p0

    .line 1002
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getCellProperty()Lcom/infraware/evengine/EV$CELL_PROPERTY;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetCellProperty(Lcom/infraware/evengine/EV$CELL_PROPERTY;)V

    .line 1001
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getCellProperty()Lcom/infraware/evengine/EV$CELL_PROPERTY;

    move-result-object v0

    return-object v0

    .line 1001
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetCellType()I
    .locals 1

    .prologue
    .line 1383
    monitor-enter p0

    .line 1384
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetCellType()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1383
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetChartInfo()Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;
    .locals 2

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getGuiSheetChartEvent()Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;

    move-result-object v0

    .line 1234
    .local v0, chartInfo:Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;
    invoke-virtual {v0}, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->clear()V

    .line 1235
    monitor-enter p0

    .line 1236
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1, v0}, Lcom/infraware/evengine/EvNative;->IGetChartInfo(Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;)V

    .line 1235
    monitor-exit p0

    .line 1238
    return-object v0

    .line 1235
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IGetColumn()I
    .locals 1

    .prologue
    .line 1306
    monitor-enter p0

    .line 1307
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetColumn()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1306
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetConfig()Lcom/infraware/evengine/EV$CONFIG_INFO;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getConfigInfo()Lcom/infraware/evengine/EV$CONFIG_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCurrentSheetIndex()I
    .locals 1

    .prologue
    .line 1189
    monitor-enter p0

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetCurrentSheetIndex()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1189
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetEditStauts_Editor()J
    .locals 3

    .prologue
    .line 988
    const-wide/16 v0, 0x0

    .line 989
    .local v0, a_Status:J
    monitor-enter p0

    .line 990
    :try_start_0
    iget-object v2, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v2}, Lcom/infraware/evengine/EvNative;->IGetEditStauts()J

    move-result-wide v0

    .line 989
    monitor-exit p0

    .line 992
    return-wide v0

    .line 989
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public IGetEditorMode_Editor()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/infraware/evengine/EvCompInterface;->mEditorMode:I

    return v0
.end method

.method public IGetFontAttInfo_Editor()Lcom/infraware/evengine/EV$FONT_INFO;
    .locals 2

    .prologue
    .line 921
    monitor-enter p0

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getGuiFontEvent()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetFontAttInfo(Lcom/infraware/evengine/EV$FONT_INFO;)V

    .line 921
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getGuiFontEvent()Lcom/infraware/evengine/EV$FONT_INFO;

    move-result-object v0

    return-object v0

    .line 921
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    .locals 2

    .prologue
    .line 1222
    monitor-enter p0

    .line 1223
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getSheetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetFormatInfo(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 1222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getSheetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    return-object v0

    .line 1222
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetHyperLinkInfoEx(II)Lcom/infraware/evengine/EV$HYPERLINK_INFO;
    .locals 2
    .parameter "a_nX"
    .parameter "a_nY"

    .prologue
    .line 1318
    monitor-enter p0

    .line 1319
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/infraware/evengine/EvNative;->IGetHyperLinkInfoEx(IILcom/infraware/evengine/EV$HYPERLINK_INFO;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->bUse:I

    .line 1324
    :goto_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->bUse:I

    goto :goto_0

    .line 1318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetHyperLinkInfo_Editor()Lcom/infraware/evengine/EV$HYPERLINK_INFO;
    .locals 2

    .prologue
    .line 969
    monitor-enter p0

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetHyperLinkInfo(Lcom/infraware/evengine/EV$HYPERLINK_INFO;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    monitor-exit p0

    const/4 v0, 0x0

    .line 973
    :goto_0
    return-object v0

    .line 969
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetInvalidRect_Editor()Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;
    .locals 2

    .prologue
    .line 945
    monitor-enter p0

    .line 946
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getInvalidDrawInfo()Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetInvalidRect(Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;)V

    .line 945
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getInvalidDrawInfo()Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

    move-result-object v0

    return-object v0

    .line 945
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetMarkString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1361
    const/4 v0, 0x0

    .line 1362
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1363
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->IGetMarkString()Ljava/lang/String;

    move-result-object v0

    .line 1362
    monitor-exit p0

    .line 1365
    return-object v0

    .line 1362
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IGetParaAttInfo_Editor()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    .locals 2

    .prologue
    .line 977
    monitor-enter p0

    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getGuiSetParaAttEvent()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetParaAttInfo(Lcom/infraware/evengine/EV$SET_PARAATT_INFO;)Z

    .line 977
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getGuiSetParaAttEvent()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    move-result-object v0

    return-object v0

    .line 977
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetProperties()Lcom/infraware/evengine/EV$PROPERTIES;
    .locals 2

    .prologue
    .line 495
    monitor-enter p0

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/evengine/EV;->getProperties()Lcom/infraware/evengine/EV$PROPERTIES;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvNative;->IGetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V

    .line 495
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getProperties()Lcom/infraware/evengine/EV$PROPERTIES;

    move-result-object v0

    return-object v0

    .line 495
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IGetProtectStatus_Editor()I
    .locals 1

    .prologue
    .line 1405
    monitor-enter p0

    .line 1406
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetProtectStatus_Editor()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1405
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetScreenPos()Lcom/infraware/evengine/EV$SCREEN_INFO;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getScreenInfo()Lcom/infraware/evengine/EV$SCREEN_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetScrollInfo_Editor()Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Ev:Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV;->getScrollInfoEditor()Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v0

    return-object v0
.end method

.method public IGetSeparateMarkString_Editor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1353
    const/4 v0, 0x0

    .line 1354
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1355
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v0

    .line 1354
    monitor-exit p0

    .line 1357
    return-object v0

    .line 1354
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IGetSheetCount()I
    .locals 1

    .prologue
    .line 1184
    monitor-enter p0

    .line 1185
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetSheetCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1184
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetSheetInfo(Lcom/infraware/evengine/EV$SHEET_INFO;I)V
    .locals 1
    .parameter "a_pSheetInfo"
    .parameter "a_nIndex"

    .prologue
    .line 1228
    monitor-enter p0

    .line 1229
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IGetSheetInfo(Lcom/infraware/evengine/EV$SHEET_INFO;I)V

    .line 1228
    monitor-exit p0

    .line 1231
    return-void

    .line 1228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetSheetNameList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1194
    monitor-enter p0

    .line 1195
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetSheetNameList()[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1194
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetSlideNoteString_Editor(I)Ljava/lang/String;
    .locals 2
    .parameter "a_nPageNum"

    .prologue
    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/evengine/EvNative;->IGetSlideNoteString(I)Ljava/lang/String;

    move-result-object v0

    .line 1009
    monitor-exit p0

    .line 1012
    return-object v0

    .line 1009
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IGetSortRange(Lcom/infraware/evengine/EV$RANGE;I)I
    .locals 2
    .parameter "a_ppRange"
    .parameter "a_bExtendRange"

    .prologue
    .line 1205
    monitor-enter p0

    .line 1206
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/evengine/EvNative;->IGetSortRange(Lcom/infraware/evengine/EV$RANGE;I)I

    move-result v0

    .line 1205
    .local v0, nRet:I
    monitor-exit p0

    .line 1208
    return v0

    .line 1205
    .end local v0           #nRet:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IGetSystemFontCount()I
    .locals 1

    .prologue
    .line 1251
    monitor-enter p0

    .line 1252
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetSystemFontCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1251
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetSystemFontNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1256
    monitor-enter p0

    .line 1257
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetSystemFontNames()[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1256
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetTextToSpeachString(III)V
    .locals 1
    .parameter "nSize"
    .parameter "nDir"
    .parameter "nTextline"

    .prologue
    .line 1377
    monitor-enter p0

    .line 1378
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->IGetTextToSpeachString(III)V

    .line 1377
    monitor-exit p0

    .line 1380
    return-void

    .line 1377
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetTouchString(II)Ljava/lang/String;
    .locals 2
    .parameter "nSx"
    .parameter "nSy"

    .prologue
    .line 1369
    const/4 v0, 0x0

    .line 1370
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1371
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/evengine/EvNative;->IGetTouchString(II)Ljava/lang/String;

    move-result-object v0

    .line 1370
    monitor-exit p0

    .line 1373
    return-object v0

    .line 1370
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IGetUseFontCount()I
    .locals 1

    .prologue
    .line 1241
    monitor-enter p0

    .line 1242
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetUseFontCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IGetUseFontNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1246
    monitor-enter p0

    .line 1247
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IGetUseFontNames()[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IHIDAction(IIII)V
    .locals 1
    .parameter "EEV_HID_ACTION"
    .parameter "a_nXPos"
    .parameter "a_nYPos"
    .parameter "a_wModifiers"

    .prologue
    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IHIDAction(IIII)V

    .line 694
    monitor-exit p0

    .line 697
    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IHyperLink(III)V
    .locals 1
    .parameter "EEV_HYPERLIK_MODE"
    .parameter "a_nXPos"
    .parameter "a_nYPos"

    .prologue
    .line 385
    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->IHyperLink(III)V

    .line 385
    monitor-exit p0

    .line 388
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IHyperLinkEnd()V
    .locals 1

    .prologue
    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IHyperLinkEnd()V

    .line 392
    monitor-exit p0

    .line 395
    return-void

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "a_pszHyperText"
    .parameter "a_pszHyperLink"

    .prologue
    .line 729
    monitor-enter p0

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    monitor-exit p0

    .line 732
    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "a_pImgPath"
    .parameter "a_bitmap"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 657
    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 657
    monitor-exit p0

    .line 660
    return-void

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IIndentation(I)V
    .locals 1
    .parameter "EEV_IDENTATION"

    .prologue
    .line 719
    monitor-enter p0

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IIndentation(I)V

    .line 719
    monitor-exit p0

    .line 722
    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IInitialize(II)V
    .locals 8
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/infraware/evengine/ICoEngineInterface;->IInitialize(II)V

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/infraware/evengine/EvCompInterface;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    .line 99
    const/16 v3, 0x8

    .line 100
    const/4 v4, 0x1

    .line 101
    const/4 v5, 0x1

    .line 102
    const/16 v6, 0x10

    .line 103
    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    .line 95
    invoke-virtual/range {v0 .. v7}, Lcom/infraware/evengine/EvNative;->IInitialize(IIIIIII)V

    .line 92
    :cond_0
    monitor-exit p0

    .line 106
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IInputChar(I)V
    .locals 1
    .parameter "a_wCode"

    .prologue
    .line 617
    monitor-enter p0

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IInputChar(I)V

    .line 617
    monitor-exit p0

    .line 620
    return-void

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IInsertShape(I)V
    .locals 1
    .parameter "a_nShape"

    .prologue
    .line 834
    monitor-enter p0

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IInsertShape(I)V

    .line 834
    monitor-exit p0

    .line 837
    return-void

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IInsertString(Ljava/lang/String;III)V
    .locals 1
    .parameter "aszTemp"
    .parameter "nCompType"
    .parameter "nPos"
    .parameter "nStrLen"

    .prologue
    .line 662
    monitor-enter p0

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->IInsertString(Ljava/lang/String;III)V

    .line 662
    monitor-exit p0

    .line 665
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IInsertTextBox()V
    .locals 1

    .prologue
    .line 824
    monitor-enter p0

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IInsertTextBox()V

    .line 824
    monitor-exit p0

    .line 827
    return-void

    .line 824
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IIsComplexColumn()Z
    .locals 2

    .prologue
    .line 1397
    const/4 v0, 0x0

    .line 1398
    .local v0, nRet:Z
    monitor-enter p0

    .line 1399
    :try_start_0
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->IIsComplexColumn()Z

    move-result v0

    .line 1398
    monitor-exit p0

    .line 1401
    return v0

    .line 1398
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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
    .line 450
    return-void
.end method

.method public IMovePage(II)V
    .locals 1
    .parameter "EEV_MOVE_TYPE"
    .parameter "a_nPage"

    .prologue
    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IMovePage(II)V

    .line 169
    monitor-exit p0

    .line 172
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 528
    monitor-enter p0

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

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

    .line 528
    monitor-exit p0

    .line 539
    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, v0

    .line 136
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

    .line 132
    invoke-virtual/range {v1 .. v16}, Lcom/infraware/evengine/EvNative;->IOpen(Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit p0

    .line 138
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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
    .line 142
    monitor-enter p0

    monitor-exit p0

    .line 145
    return-void
.end method

.method public IParagraphAlign(I)V
    .locals 1
    .parameter "EEV_PARAGRAPH_ALIGN"

    .prologue
    .line 667
    monitor-enter p0

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IParagraphAlign(I)V

    .line 667
    monitor-exit p0

    .line 670
    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IPivotScreen(III)V
    .locals 1
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->IPivotScreen(III)V

    .line 285
    monitor-exit p0

    .line 288
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IPopupOffset(IIIII)V
    .locals 6
    .parameter "EEV_POPUP_ONOFF"
    .parameter "a_nLeft"
    .parameter "a_nRight"
    .parameter "a_nTop"
    .parameter "a_nBottom"

    .prologue
    .line 734
    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IPopupOffset(IIIII)V

    .line 734
    monitor-exit p0

    .line 737
    return-void

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IPrint(IIILjava/lang/String;)V
    .locals 0
    .parameter "EEV_PRIT_PAPER_TYPE"
    .parameter "a_nStartPage"
    .parameter "a_nEndPage"
    .parameter "a_sFilePath"

    .prologue
    .line 470
    return-void
.end method

.method public IReDraw()V
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IReDraw()V

    .line 248
    monitor-exit p0

    .line 251
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IRedoUndo(I)V
    .locals 1
    .parameter "EEV_REDO_UNDO"

    .prologue
    .line 612
    monitor-enter p0

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IRedoUndo(I)V

    .line 612
    monitor-exit p0

    .line 615
    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IRemoveAllBookMark()V
    .locals 1

    .prologue
    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IRemoveAllBookMark()V

    .line 372
    monitor-exit p0

    .line 375
    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IRemoveBookMark(Ljava/lang/String;)V
    .locals 1
    .parameter "a_sFilePath"

    .prologue
    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IRemoveBookMark(Ljava/lang/String;)V

    .line 365
    monitor-exit p0

    .line 368
    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IRotate(II)V
    .locals 1
    .parameter "EEV_ROTATE_TYPE"
    .parameter "a_nAngle"

    .prologue
    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IRotate(II)V

    .line 241
    monitor-exit p0

    .line 244
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISaveBookMark()V
    .locals 1

    .prologue
    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISaveBookMark()V

    .line 351
    monitor-exit p0

    .line 354
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISaveDocument(Ljava/lang/String;)V
    .locals 3
    .parameter "a_pszFilePath"

    .prologue
    .line 542
    monitor-enter p0

    .line 543
    :try_start_0
    const-string v0, "EvCompinterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ISaveDocument = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISaveDocument(Ljava/lang/String;)V

    .line 542
    monitor-exit p0

    .line 546
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISaveThumbnailAt(IIILjava/lang/String;I)V
    .locals 6
    .parameter "a_nPageIndex"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_szSavePath"
    .parameter "a_nSaveType"

    .prologue
    .line 1424
    monitor-enter p0

    .line 1425
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->ISaveThumbnailAt(IIILjava/lang/String;I)V

    .line 1424
    monitor-exit p0

    .line 1427
    return-void

    .line 1424
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IScreenCaptureModeOnOff(I)V
    .locals 0
    .parameter "a_bOn"

    .prologue
    .line 293
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
    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IScroll(IIIII)V

    .line 229
    monitor-exit p0

    .line 232
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISearchStart(Ljava/lang/String;IIII)V
    .locals 6
    .parameter "a_sFind"
    .parameter "a_bMatchWord"
    .parameter "a_bCase"
    .parameter "a_bDirUp"
    .parameter "a_bFixedZoom"

    .prologue
    .line 399
    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->ISearchStart(Ljava/lang/String;IIII)V

    .line 399
    monitor-exit p0

    .line 402
    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISearchStop()V
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISearchStop()V

    .line 406
    monitor-exit p0

    .line 409
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISelectAll()V
    .locals 1

    .prologue
    .line 781
    monitor-enter p0

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISelectAll()V

    .line 781
    monitor-exit p0

    .line 784
    return-void

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISellectAll()V
    .locals 1

    .prologue
    .line 1032
    monitor-enter p0

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISellectAll()V

    .line 1032
    monitor-exit p0

    .line 1035
    return-void

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)I
    .locals 1
    .parameter "a_pClip"

    .prologue
    .line 1268
    monitor-enter p0

    .line 1269
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetBookClip(Lcom/infraware/evengine/EV$BOOK_CLIP;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 1268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetBookmarkLabel(Lcom/infraware/evengine/EV$BOOKMARK_LABEL;I)V
    .locals 1
    .parameter "a_pLabel"
    .parameter "a_bSaveBookmarkInfo"

    .prologue
    .line 903
    monitor-enter p0

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISetBookmarkLabel(Lcom/infraware/evengine/EV$BOOKMARK_LABEL;I)V

    .line 903
    monitor-exit p0

    .line 906
    return-void

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 802
    monitor-enter p0

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

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

    .line 802
    monitor-exit p0

    .line 805
    return-void

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetColors(III)V
    .locals 1
    .parameter "nMask"
    .parameter "nForeColor"
    .parameter "nBackColor"

    .prologue
    .line 808
    monitor-enter p0

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISetColors(III)V

    .line 808
    monitor-exit p0

    .line 811
    return-void

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetColumn(II)V
    .locals 1
    .parameter "a_nColCnt"
    .parameter "a_bAllPage"

    .prologue
    .line 1300
    monitor-enter p0

    .line 1301
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISetColumn(II)V

    .line 1300
    monitor-exit p0

    .line 1303
    return-void

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1312
    monitor-enter p0

    .line 1313
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

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

    .line 1312
    monitor-exit p0

    .line 1315
    return-void

    .line 1312
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
    .parameter "a_bUnDo"

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

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

    .line 567
    monitor-exit p0

    .line 570
    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetHeapSize(I)V
    .locals 1
    .parameter "a_nHeapSize"

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-super {p0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->ISetHeapSize(I)V

    .line 70
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetHeapSize(I)V

    .line 68
    monitor-exit p0

    .line 72
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetLineShape(IIII)V
    .locals 1
    .parameter "EEV_BORDER_STYLE"
    .parameter "a_LineThickness"
    .parameter "EEV_LIE_ARROW_TYPE"
    .parameter "a_LineColor"

    .prologue
    .line 791
    monitor-enter p0

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->ISetLineShape(IIII)V

    .line 791
    monitor-exit p0

    .line 794
    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetLineSpace(I)V
    .locals 1
    .parameter "a_LineSpaceType"

    .prologue
    .line 786
    monitor-enter p0

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetLineSpace(I)V

    .line 786
    monitor-exit p0

    .line 789
    return-void

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V
    .locals 6
    .parameter "DvL"
    .parameter "EvL"
    .parameter "EvWL"
    .parameter "EvPL"
    .parameter "EvSL"

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->SetListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V

    .line 79
    monitor-exit p0

    .line 82
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetModeStatus(I)V
    .locals 1
    .parameter "EEV_VIEW_MODE"

    .prologue
    .line 672
    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetModeStatus(I)V

    .line 672
    monitor-exit p0

    .line 675
    return-void

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetObjDelete()V
    .locals 1

    .prologue
    .line 874
    monitor-enter p0

    .line 875
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISetObjDelete()V

    .line 874
    monitor-exit p0

    .line 877
    return-void

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetObjPos(I)V
    .locals 1
    .parameter "a_nSendToType"

    .prologue
    .line 913
    monitor-enter p0

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetObjPos(I)V

    .line 913
    monitor-exit p0

    .line 916
    return-void

    .line 913
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetObjResize(II)V
    .locals 1
    .parameter "a_nSizeX"
    .parameter "a_nSizeY"

    .prologue
    .line 908
    monitor-enter p0

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISetObjResize(II)V

    .line 908
    monitor-exit p0

    .line 911
    return-void

    .line 908
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetObjTextEdit()V
    .locals 1

    .prologue
    .line 869
    monitor-enter p0

    .line 870
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISetObjTextEdit()V

    .line 869
    monitor-exit p0

    .line 872
    return-void

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 598
    monitor-enter p0

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

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

    .line 598
    monitor-exit p0

    .line 601
    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/EvNative;->ISetPageMap(IIIIII)V

    .line 318
    monitor-exit p0

    .line 321
    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 750
    monitor-enter p0

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

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

    .line 750
    monitor-exit p0

    .line 763
    return-void

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetPreview(IILjava/lang/String;)V
    .locals 6
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_szFilePath"

    .prologue
    .line 882
    monitor-enter p0

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    const/16 v3, 0x10

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->ISetPreview(IIILjava/lang/String;I)V

    .line 882
    monitor-exit p0

    .line 885
    return-void

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetPreviewTimerCB()V
    .locals 1

    .prologue
    .line 887
    monitor-enter p0

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISetPreviewTimerCB()V

    .line 887
    monitor-exit p0

    .line 890
    return-void

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetPrint(IIILjava/lang/String;I)V
    .locals 6
    .parameter "a_PaperSize"
    .parameter "a_StartPage"
    .parameter "a_EndPage"
    .parameter "a_szFilePath"
    .parameter "a_ReturnType"

    .prologue
    .line 1341
    monitor-enter p0

    .line 1342
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->ISetPrint(IIILjava/lang/String;I)V

    .line 1341
    monitor-exit p0

    .line 1344
    return-void

    .line 1341
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1347
    monitor-enter p0

    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/EvNative;->ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1347
    monitor-exit p0

    .line 1350
    return-void

    .line 1347
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetPrintMode()V
    .locals 1

    .prologue
    .line 776
    monitor-enter p0

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISetPrintMode()V

    .line 776
    monitor-exit p0

    .line 779
    return-void

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V
    .locals 1
    .parameter "a_Properties"

    .prologue
    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetProperties(Lcom/infraware/evengine/EV$PROPERTIES;)V

    .line 502
    monitor-exit p0

    .line 505
    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 766
    monitor-enter p0

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/EvNative;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    .line 766
    monitor-exit p0

    .line 769
    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetScreenMode(I)V
    .locals 1
    .parameter "EV_SCREENMODE_TYPE"

    .prologue
    .line 829
    monitor-enter p0

    .line 830
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetScreenMode(I)V

    .line 829
    monitor-exit p0

    .line 832
    return-void

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1437
    monitor-enter p0

    .line 1438
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

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

    .line 1437
    monitor-exit p0

    .line 1441
    return-void

    .line 1437
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 585
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/EvNative;->ISetSheetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 586
    return-void
.end method

.method public ISetSortRange(Lcom/infraware/evengine/EV$RANGE;)V
    .locals 1
    .parameter "a_pRange"

    .prologue
    .line 1211
    monitor-enter p0

    .line 1212
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetSortRange(Lcom/infraware/evengine/EV$RANGE;)V

    .line 1211
    monitor-exit p0

    .line 1214
    return-void

    .line 1211
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetTemplateShape(II)V
    .locals 1
    .parameter "a_nShapeType"
    .parameter "a_nShapeColor"

    .prologue
    .line 796
    monitor-enter p0

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISetTemplateShape(II)V

    .line 796
    monitor-exit p0

    .line 799
    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetThumbnailBackground(Z)V
    .locals 1
    .parameter "a_bBackgroundVisible"

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetThumbnailBackground(Z)V

    .line 1430
    return-void
.end method

.method public ISetViewMode(I)V
    .locals 1
    .parameter "EEV_VIEWMODE_TYPE"

    .prologue
    .line 259
    iput p1, p0, Lcom/infraware/evengine/EvCompInterface;->m_nViewMode:I

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISetViewMode(I)V

    .line 260
    monitor-exit p0

    .line 263
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISetWebMode()V
    .locals 1

    .prologue
    .line 771
    monitor-enter p0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISetWebMode()V

    .line 771
    monitor-exit p0

    .line 774
    return-void

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

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

    .line 209
    monitor-exit p0

    .line 217
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetBorder(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V
    .locals 1
    .parameter "a_pInfo"

    .prologue
    .line 1179
    monitor-enter p0

    .line 1180
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISheetBorder(Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 1179
    monitor-exit p0

    .line 1182
    return-void

    .line 1179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetClear(I)V
    .locals 1
    .parameter "EEV_SHEET_CLEAR"

    .prologue
    .line 1116
    monitor-enter p0

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISheetClear(I)V

    .line 1116
    monitor-exit p0

    .line 1119
    return-void

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1072
    monitor-enter p0

    .line 1073
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/evengine/EvNative;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 1072
    monitor-exit p0

    .line 1075
    return-void

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "a_pszFindText"
    .parameter "a_pszReplaceText"
    .parameter "a_nFlag"

    .prologue
    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1147
    monitor-exit p0

    .line 1150
    return-void

    .line 1147
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetFixFrame()V
    .locals 1

    .prologue
    .line 1077
    monitor-enter p0

    .line 1078
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetFixFrame()V

    .line 1077
    monitor-exit p0

    .line 1080
    return-void

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetFocus()V
    .locals 1

    .prologue
    .line 1152
    monitor-enter p0

    .line 1153
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetFocus()V

    .line 1152
    monitor-exit p0

    .line 1155
    return-void

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1050
    monitor-enter p0

    .line 1051
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/EvNative;->ISheetFormat(IIIIIIII)V

    .line 1050
    monitor-exit p0

    .line 1053
    return-void

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetFunction(I)V
    .locals 1
    .parameter "a_nFunctionIndex"

    .prologue
    .line 1055
    monitor-enter p0

    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISheetFunction(I)V

    .line 1055
    monitor-exit p0

    .line 1058
    return-void

    .line 1055
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetInputField(I)V
    .locals 1
    .parameter "a_bCancel"

    .prologue
    .line 1157
    monitor-enter p0

    .line 1158
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISheetInputField(I)V

    .line 1157
    monitor-exit p0

    .line 1160
    return-void

    .line 1157
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetInsertCell(II)V
    .locals 1
    .parameter "a_bInsert"
    .parameter "EEV_SHEET_ISERT_CELL"

    .prologue
    .line 1097
    monitor-enter p0

    .line 1098
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISheetInsertCell(II)V

    .line 1097
    monitor-exit p0

    .line 1100
    return-void

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1174
    monitor-enter p0

    .line 1175
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/evengine/EvNative;->ISheetInsertChart(ILcom/infraware/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1174
    monitor-exit p0

    .line 1177
    return-void

    .line 1174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetInsertColumns(III)V
    .locals 1
    .parameter "a_bInsert"
    .parameter "a_nCount"
    .parameter "a_bAutoFit"

    .prologue
    .line 1107
    monitor-enter p0

    .line 1108
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISheetInsertColumns(III)V

    .line 1107
    monitor-exit p0

    .line 1110
    return-void

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetInsertRows(III)V
    .locals 1
    .parameter "a_bInsert"
    .parameter "a_nCount"
    .parameter "a_bAutoFit"

    .prologue
    .line 1102
    monitor-enter p0

    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISheetInsertRows(III)V

    .line 1102
    monitor-exit p0

    .line 1105
    return-void

    .line 1102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetMerge()V
    .locals 1

    .prologue
    .line 1162
    monitor-enter p0

    .line 1163
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetMerge()V

    .line 1162
    monitor-exit p0

    .line 1165
    return-void

    .line 1162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetPageBreak()V
    .locals 1

    .prologue
    .line 1082
    monitor-enter p0

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetPageBreak()V

    .line 1082
    monitor-exit p0

    .line 1085
    return-void

    .line 1082
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetProtection()V
    .locals 1

    .prologue
    .line 1087
    monitor-enter p0

    .line 1088
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetProtection()V

    .line 1087
    monitor-exit p0

    .line 1090
    return-void

    .line 1087
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetRecalculate()V
    .locals 1

    .prologue
    .line 1060
    monitor-enter p0

    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->ISheetRecalculate()V

    .line 1060
    monitor-exit p0

    .line 1063
    return-void

    .line 1060
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetSetAlignment(II)V
    .locals 1
    .parameter "a_nHAlignment"
    .parameter "a_nVAlignment"

    .prologue
    .line 1044
    monitor-enter p0

    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->ISheetSetAlignment(II)V

    .line 1044
    monitor-exit p0

    .line 1047
    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetSetColor(I)V
    .locals 1
    .parameter "a_lColor"

    .prologue
    .line 1039
    monitor-enter p0

    .line 1040
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->ISheetSetColor(I)V

    .line 1039
    monitor-exit p0

    .line 1042
    return-void

    .line 1039
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetSetRowColSize(III)V
    .locals 1
    .parameter "EV_GUI_EVENT"
    .parameter "a_nValue"
    .parameter "a_bAutoFit"

    .prologue
    .line 1137
    monitor-enter p0

    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISheetSetRowColSize(III)V

    .line 1137
    monitor-exit p0

    .line 1140
    return-void

    .line 1137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetShowHideRowCol(III)V
    .locals 1
    .parameter "EEV_SHEET_SHOW_ROWCOL"
    .parameter "a_nValue"
    .parameter "a_bAutoFit"

    .prologue
    .line 1126
    monitor-enter p0

    .line 1127
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISheetShowHideRowCol(III)V

    .line 1126
    monitor-exit p0

    .line 1129
    return-void

    .line 1126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISheetSort(IIII)V
    .locals 1
    .parameter "a_bSortByRow"
    .parameter "a_nKey1"
    .parameter "a_nKey2"
    .parameter "a_nKey3"

    .prologue
    .line 1142
    monitor-enter p0

    .line 1143
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/evengine/EvNative;->ISheetSort(IIII)V

    .line 1142
    monitor-exit p0

    .line 1145
    return-void

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IShowHideImage(I)V
    .locals 1
    .parameter "EEV_WORD_SHOW_HIDE"

    .prologue
    .line 682
    monitor-enter p0

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IShowHideImage(I)V

    .line 682
    monitor-exit p0

    .line 685
    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISlideAddMove(III)V
    .locals 1
    .parameter "EV_SLIDE_ADD_TYPE"
    .parameter "a_nCurrentPageNumber"
    .parameter "EEV_SLIDE_TEMPLATE_TYPE"

    .prologue
    .line 819
    monitor-enter p0

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideAddMove(III)V

    .line 819
    monitor-exit p0

    .line 822
    return-void

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISlideNote(III)V
    .locals 1
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageNum"

    .prologue
    .line 844
    monitor-enter p0

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideNote(III)V

    .line 844
    monitor-exit p0

    .line 847
    return-void

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISlideNoteInput(ILjava/lang/String;I)V
    .locals 1
    .parameter "a_nSlidePage"
    .parameter "a_pszSlideNote"
    .parameter "a_nLen"

    .prologue
    .line 849
    monitor-enter p0

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideNoteInput(ILjava/lang/String;I)V

    .line 849
    monitor-exit p0

    .line 852
    return-void

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISlideObjInsert(III)V
    .locals 1
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageCnt"

    .prologue
    .line 864
    monitor-enter p0

    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideObjInsert(III)V

    .line 864
    monitor-exit p0

    .line 867
    return-void

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISlideObjStart(III)V
    .locals 1
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageCnt"

    .prologue
    .line 854
    monitor-enter p0

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideObjStart(III)V

    .line 854
    monitor-exit p0

    .line 857
    return-void

    .line 854
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISlideObjStartEx(III)V
    .locals 1
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageNum"

    .prologue
    .line 859
    monitor-enter p0

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideObjStartEx(III)V

    .line 859
    monitor-exit p0

    .line 862
    return-void

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ISlideShow(III)V
    .locals 1
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_StartPage"

    .prologue
    .line 839
    monitor-enter p0

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/evengine/EvNative;->ISlideShow(III)V

    .line 839
    monitor-exit p0

    .line 842
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ITextPlay(IIII)V
    .locals 0
    .parameter "EEV_TEXTPLAY_TYPE"
    .parameter "a_bAction"
    .parameter "a_nSYPos"
    .parameter "a_nEYPos"

    .prologue
    .line 460
    return-void
.end method

.method public IThreadSuspend(I)V
    .locals 1
    .parameter "a_bSuspend"

    .prologue
    .line 474
    monitor-enter p0

    .line 475
    :try_start_0
    iput p1, p0, Lcom/infraware/evengine/EvCompInterface;->mbSuspend:I

    .line 476
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/evengine/EvNative;->IThreadSuspend(I)V

    .line 474
    monitor-exit p0

    .line 478
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IThumbnail(IIIII)V
    .locals 6
    .parameter "EEV_THUMBNAIL_MODE_TYPE"
    .parameter "a_nPages"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nStartPage"

    .prologue
    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/EvNative;->IThumbnail(IIIII)V

    .line 337
    monitor-exit p0

    .line 340
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IToggleSheetLineBreak()V
    .locals 1

    .prologue
    .line 1418
    monitor-enter p0

    .line 1419
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IToggleSheetLineBreak()V

    .line 1418
    monitor-exit p0

    .line 1421
    return-void

    .line 1418
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IZoomInOut(II)V
    .locals 1
    .parameter "a_bI"
    .parameter "EEV_KEY_TYPE"

    .prologue
    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/evengine/EvNative;->IZoomInOut(II)V

    .line 181
    monitor-exit p0

    .line 184
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IsStartOfSentence_Editor()I
    .locals 1

    .prologue
    .line 1294
    monitor-enter p0

    .line 1295
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/evengine/EvNative;->IIsStartOfSentence_Editor()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1294
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected OnInitComplete(I)V
    .locals 0
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->OnInitComplete(I)V

    .line 86
    return-void
.end method

.method OnTimerStart()V
    .locals 6

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    .line 42
    new-instance v0, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;-><init>(Lcom/infraware/evengine/EvCompInterface;Z)V

    iput-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;

    .line 44
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 39
    :goto_0
    monitor-exit p0

    .line 50
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;->setOperationTimer(Z)V

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method OnTimerStop()V
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;->setOperationTimer(Z)V

    .line 54
    :cond_0
    monitor-exit p0

    .line 59
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
