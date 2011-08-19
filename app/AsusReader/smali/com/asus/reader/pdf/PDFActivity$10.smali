.class Lcom/asus/reader/pdf/PDFActivity$10;
.super Ljava/lang/Object;
.source "PDFActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/pdf/PDFActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/pdf/PDFActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/pdf/PDFActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private coordinateTransfer(DDDDD)Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;
    .locals 20
    .parameter "viewX"
    .parameter "viewY"
    .parameter "transX"
    .parameter "transY"
    .parameter "currScale"

    .prologue
    .line 722
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v2, v0

    invoke-static {v2}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v2

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget-wide v6, v1, v2

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->dpi:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v2, v0

    invoke-static {v2}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v2

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget-wide v8, v1, v2

    mul-double v14, v6, v8

    .line 723
    .local v14, mPagePixelX:D
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v2, v0

    invoke-static {v2}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v2

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget-wide v6, v1, v2

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->dpi:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v2, v0

    invoke-static {v2}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v2

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget-wide v8, v1, v2

    mul-double v16, v6, v8

    .line 724
    .local v16, mPagePixelY:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v1, v0

    invoke-static {v1}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v2, v0

    invoke-static {v2}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v2

    iget v2, v2, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v3

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v3

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v10, v1

    .line 725
    .local v10, mPageBoundX:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v1, v0

    invoke-static {v1}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v2, v0

    invoke-static {v2}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v2

    iget v2, v2, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v3

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v3

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v12, v1

    .line 730
    .local v12, mPageBoundY:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v1, v0

    invoke-static {v1}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mBaseNum:I

    if-nez v1, :cond_0

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v1, v0

    invoke-static {v1}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    float-to-double v6, v1

    mul-double v6, v6, p9

    div-double v2, v14, v6

    .line 732
    .local v2, mPixelPerUnit:D
    const-wide/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v1, v0

    invoke-static {v1}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double v18, v14, v6

    .line 738
    .local v18, mPixelPerGLUnit:D
    :goto_0
    sub-double v6, v10, p5

    mul-double v6, v6, v18

    div-double v4, v6, v2

    .line 739
    .local v4, adjustX:D
    add-double v6, v12, p7

    mul-double v6, v6, v18

    div-double v8, v6, v2

    .line 741
    .local v8, adjustY:D
    new-instance v1, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    move-wide v6, v2

    invoke-direct/range {v1 .. v9}, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;-><init>(DDDD)V

    return-object v1

    .line 734
    .end local v2           #mPixelPerUnit:D
    .end local v4           #adjustX:D
    .end local v8           #adjustY:D
    .end local v18           #mPixelPerGLUnit:D
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v1, v0

    invoke-static {v1}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    float-to-double v6, v1

    mul-double v6, v6, p9

    div-double v2, v16, v6

    .line 735
    .restart local v2       #mPixelPerUnit:D
    const-wide/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    move-object v1, v0

    invoke-static {v1}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    div-double v18, v16, v6

    .restart local v18       #mPixelPerGLUnit:D
    goto :goto_0
.end method

.method private lookupDictionary(Landroid/view/MotionEvent;Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;)V
    .locals 3
    .parameter "event"
    .parameter "param"

    .prologue
    .line 746
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/asus/reader/pdf/PDFActivity;->access$202(Lcom/asus/reader/pdf/PDFActivity;Z)Z

    .line 747
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v1}, Lcom/asus/reader/pdf/PDFActivity;->access$1500(Lcom/asus/reader/pdf/PDFActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    new-instance v0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-direct {v0, v1, p1, p2}, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;-><init>(Lcom/asus/reader/pdf/PDFActivity;Landroid/view/MotionEvent;Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;)V

    .line 749
    .local v0, lookupDictionary:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 751
    .end local v0           #lookupDictionary:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "e"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$1000(Lcom/asus/reader/pdf/PDFActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v3, v0

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    float-to-double v5, v0

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    float-to-double v7, v0

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$10;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    float-to-double v9, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/asus/reader/pdf/PDFActivity$10;->coordinateTransfer(DDDDD)Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    move-result-object v11

    .line 703
    .local v11, param:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;
    invoke-direct {p0, p1, v11}, Lcom/asus/reader/pdf/PDFActivity$10;->lookupDictionary(Landroid/view/MotionEvent;Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 709
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method
