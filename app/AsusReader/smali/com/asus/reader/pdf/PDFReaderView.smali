.class public Lcom/asus/reader/pdf/PDFReaderView;
.super Landroid/opengl/GLSurfaceView;
.source "PDFReaderView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/pdf/PDFReaderView$TexHandler;
    }
.end annotation


# static fields
.field public static cache:Lcom/asus/reader/pdf/PDFCache;

.field private static mScaleAxisX:F

.field private static mScaleAxisY:F

.field private static mScaleCenterX:F

.field private static mScaleCenterY:F


# instance fields
.field private Panel:Landroid/widget/RelativeLayout;

.field private bar:Lcom/asus/reader/ui/PageSeekBar2;

.field private currcenterX:F

.field private currcenterY:F

.field private currlen:F

.field private cx0:F

.field private cx1:F

.field private cy0:F

.field private cy1:F

.field private hasBoundX:Z

.field private hasBoundY:Z

.field public hasScale:Z

.field public hasSetPages:Z

.field private isEnd:Z

.field public isFit:Z

.field public isOnDoubleTap:Z

.field public isQuit:Z

.field private isSetPages:Z

.field private isShowParPage:Z

.field private mBoundaryX:F

.field private mBoundaryY:F

.field public mControl:Z

.field private mControlHandler:Landroid/os/Handler;

.field public mFitScale:I

.field private mHandler:Landroid/os/Handler;

.field private mNeedLoadPage:Z

.field private mPageScale:F

.field public mPageStatus:I

.field private mParLocation:I

.field public mPartialScale:D

.field private mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

.field private mScaleFactor:F

.field private mlooper:Landroid/os/Looper;

.field private preMotionEvent:Landroid/view/MotionEvent;

.field private prelen:F

.field private px0:F

.field private px1:F

.field private py0:F

.field private py1:F

.field public rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

.field public thread:Landroid/os/HandlerThread;

.field public viewHeight:F

.field public viewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "file"
    .parameter "pageNo"
    .parameter "cHandler"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mHandler:Landroid/os/Handler;

    .line 36
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundX:Z

    .line 37
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundY:Z

    .line 86
    iput v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 87
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->startTexHandler()V

    .line 88
    new-instance v0, Lcom/asus/reader/pdf/PDFCache;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-direct {v0, p2, p3, v1}, Lcom/asus/reader/pdf/PDFCache;-><init>(Ljava/lang/String;ILcom/asus/reader/pdf/PDFReaderView$TexHandler;)V

    sput-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    .line 89
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isSetPages:Z

    .line 90
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasSetPages:Z

    .line 91
    iput-boolean v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControl:Z

    .line 92
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isFit:Z

    .line 94
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isOnDoubleTap:Z

    .line 95
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isQuit:Z

    .line 96
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isEnd:Z

    .line 97
    iput v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mFitScale:I

    .line 98
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isShowParPage:Z

    .line 99
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    .line 100
    iput-object p4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControlHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/pdf/PDFReaderView;FFFFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p6}, Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FFFFFF)V

    return-void
.end method

.method static synthetic access$100(Lcom/asus/reader/pdf/PDFReaderView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/reader/pdf/PDFReaderView;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/pdf/PDFReaderView;->scrollTo(FF)V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/reader/pdf/PDFReaderView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFReaderView;->reDraw()V

    return-void
.end method

.method private getScaleCoordinate(FF)V
    .locals 4
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    const/high16 v3, 0x4000

    .line 324
    sget v0, Lcom/asus/reader/pdf/PDFReaderView;->mScaleCenterX:F

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v1, v3

    div-float/2addr v0, v1

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    neg-float v0, v0

    mul-float v1, p1, v3

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sput v0, Lcom/asus/reader/pdf/PDFReaderView;->mScaleAxisX:F

    .line 325
    sget v0, Lcom/asus/reader/pdf/PDFReaderView;->mScaleCenterY:F

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v1, v3

    div-float/2addr v0, v1

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    mul-float v2, p2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sput v0, Lcom/asus/reader/pdf/PDFReaderView;->mScaleAxisY:F

    .line 326
    return-void
.end method

.method private pageChange(Lcom/asus/reader/pdf/PDFPage;)V
    .locals 12
    .parameter "Page"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v5, 0x4348

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 510
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageScale:F

    iput v2, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    .line 511
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v4

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    .line 513
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v4

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    .line 516
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->isLandscape:Z

    if-eqz v0, :cond_1

    .line 517
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 518
    iput v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 519
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    neg-float v4, v0

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/pdf/PDFReaderView;->scrollTo(ZZFFF)V

    .line 537
    :goto_0
    const/high16 v0, 0x3f80

    iput v0, p1, Lcom/asus/reader/pdf/PDFPage;->scale:F

    .line 538
    iput v3, p1, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 539
    return-void

    .line 521
    :cond_0
    iput v7, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 522
    iget v9, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    neg-float v10, v0

    move-object v6, p0

    move v7, v1

    move v8, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/asus/reader/pdf/PDFReaderView;->scrollTo(ZZFFF)V

    goto :goto_0

    .line 525
    :cond_1
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 526
    iput v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 530
    :goto_1
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    .line 531
    iget v9, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    move-object v6, p0

    move v7, v1

    move v8, v1

    move v10, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/asus/reader/pdf/PDFReaderView;->scrollTo(ZZFFF)V

    goto :goto_0

    .line 528
    :cond_2
    iput v7, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    goto :goto_1

    .line 533
    :cond_3
    iget v9, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    neg-float v10, v0

    move-object v6, p0

    move v7, v1

    move v8, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/asus/reader/pdf/PDFReaderView;->scrollTo(ZZFFF)V

    goto :goto_0
.end method

.method private reDraw()V
    .locals 0

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    .line 543
    return-void
.end method

.method private scrollTo(FF)V
    .locals 1
    .parameter "targetX"
    .parameter "targetY"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iput p1, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 453
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iput p2, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 454
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->isShowParPage:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialTranslateBase()V

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    .line 458
    return-void
.end method

.method private scrollTo(ZZFFF)V
    .locals 11
    .parameter "boundX"
    .parameter "boundY"
    .parameter "X"
    .parameter "Y"
    .parameter "duration"

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 414
    move v9, p3

    .line 419
    .local v9, scrollToX:F
    :goto_0
    if-eqz p2, :cond_1

    .line 420
    move v10, p4

    .line 424
    .local v10, scrollToY:F
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    sub-float v0, v9, v0

    div-float v6, v0, p5

    .line 425
    .local v6, increasePerMsX:F
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    sub-float v0, v10, v0

    div-float v8, v0, p5

    .line 426
    .local v8, increasePerMsY:F
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 427
    .local v5, baseX:F
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v7, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 428
    .local v7, baseY:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 430
    .local v3, startTime:J
    iget-object v9, p0, Lcom/asus/reader/pdf/PDFReaderView;->mHandler:Landroid/os/Handler;

    .end local v9           #scrollToX:F
    new-instance v0, Lcom/asus/reader/pdf/PDFReaderView$2;

    move-object v1, p0

    move/from16 v2, p5

    invoke-direct/range {v0 .. v8}, Lcom/asus/reader/pdf/PDFReaderView$2;-><init>(Lcom/asus/reader/pdf/PDFReaderView;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void

    .line 416
    .end local v3           #startTime:J
    .end local v5           #baseX:F
    .end local v6           #increasePerMsX:F
    .end local v7           #baseY:F
    .end local v8           #increasePerMsY:F
    .end local v10           #scrollToY:F
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .restart local v9       #scrollToX:F
    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v10, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .restart local v10       #scrollToY:F
    goto :goto_1
.end method

.method private setPartialPage(I)V
    .locals 10
    .parameter "ParLocation"

    .prologue
    .line 614
    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v4, v5

    .line 615
    .local v4, w:I
    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    double-to-int v0, v5

    .line 617
    .local v0, h:I
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 618
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 619
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 620
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 621
    const/4 v5, 0x4

    new-array v3, v5, [Z

    fill-array-data v3, :array_0

    .line 623
    .local v3, showLocation:[Z
    mul-int v5, v4, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 624
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    if-nez v5, :cond_1

    .line 625
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_0

    .line 626
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialTranslateBase()V

    .line 629
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    .line 952
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 633
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    const/4 v7, 0x0

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 634
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 635
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 636
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 637
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 947
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialTranslateBase()V

    .line 948
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->removeMessages(I)V

    .line 949
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 950
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v5, v2}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->sendMessage(Landroid/os/Message;)Z

    .line 951
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    goto :goto_0

    .line 638
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    mul-int v5, v4, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 639
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    if-nez v5, :cond_6

    .line 640
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v5, 0x2

    if-ge v1, v5, :cond_5

    .line 641
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_4

    .line 642
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 640
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 645
    :cond_5
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialTranslateBase()V

    .line 646
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    goto/16 :goto_0

    .line 649
    .end local v1           #i:I
    :cond_6
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 650
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 651
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    const/4 v7, 0x0

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 652
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    const/4 v7, 0x1

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 653
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 654
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 655
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 656
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    goto/16 :goto_1

    .line 657
    :cond_7
    mul-int v5, v4, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    .line 658
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    if-nez v5, :cond_a

    .line 659
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    const/4 v5, 0x4

    if-ge v1, v5, :cond_9

    .line 660
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_8

    .line 661
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 659
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 664
    :cond_9
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialTranslateBase()V

    .line 665
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    goto/16 :goto_0

    .line 668
    .end local v1           #i:I
    :cond_a
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 669
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 670
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 671
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 672
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    const/4 v7, 0x0

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 673
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    const/4 v7, 0x1

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 674
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    const/4 v7, 0x2

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 675
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    const/4 v7, 0x3

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 676
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 677
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 678
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 679
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    goto/16 :goto_1

    .line 681
    :cond_b
    mul-int v5, v4, v0

    if-ne p1, v5, :cond_18

    .line 682
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    const/4 v5, 0x4

    if-ge v1, v5, :cond_c

    .line 683
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    if-ne v5, p1, :cond_11

    .line 684
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 685
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 686
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_c

    .line 687
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 692
    :cond_c
    const/4 v1, 0x0

    :goto_5
    const/4 v5, 0x4

    if-ge v1, v5, :cond_d

    .line 693
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    const/4 v6, 0x1

    sub-int v6, p1, v6

    if-ne v5, v6, :cond_12

    .line 694
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 695
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 696
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_d

    .line 697
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 702
    :cond_d
    const/4 v1, 0x0

    :goto_6
    const/4 v5, 0x4

    if-ge v1, v5, :cond_e

    .line 703
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v6, v6

    sub-int v6, p1, v6

    if-ne v5, v6, :cond_13

    .line 704
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 705
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 706
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_e

    .line 707
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 712
    :cond_e
    const/4 v1, 0x0

    :goto_7
    const/4 v5, 0x4

    if-ge v1, v5, :cond_f

    .line 713
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v6, v6

    sub-int v6, p1, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_14

    .line 714
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 715
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 716
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_f

    .line 717
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 722
    :cond_f
    const/4 v1, 0x0

    :goto_8
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 723
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    if-eqz v5, :cond_10

    .line 724
    const/4 v5, 0x0

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_15

    .line 725
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 726
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, p1, v7, v8}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 727
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 722
    :cond_10
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 682
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 692
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 702
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 712
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 728
    :cond_15
    const/4 v5, 0x1

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_16

    .line 729
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 730
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    const/4 v7, 0x1

    sub-int v7, p1, v7

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 731
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto :goto_9

    .line 732
    :cond_16
    const/4 v5, 0x2

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_17

    .line 733
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 734
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    sub-int v7, p1, v7

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 735
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto :goto_9

    .line 736
    :cond_17
    const/4 v5, 0x3

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_10

    .line 737
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 738
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    sub-int v7, p1, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 739
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto/16 :goto_9

    .line 743
    .end local v1           #i:I
    :cond_18
    rem-int v5, p1, v4

    const/4 v6, 0x1

    sub-int v6, v4, v6

    if-ne v5, v6, :cond_25

    .line 744
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_a
    const/4 v5, 0x4

    if-ge v1, v5, :cond_19

    .line 745
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    if-ne v5, p1, :cond_1e

    .line 746
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 747
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 748
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_19

    .line 749
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 754
    :cond_19
    const/4 v1, 0x0

    :goto_b
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1a

    .line 755
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    const/4 v6, 0x1

    sub-int v6, p1, v6

    if-ne v5, v6, :cond_1f

    .line 756
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 757
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 758
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_1a

    .line 759
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 764
    :cond_1a
    const/4 v1, 0x0

    :goto_c
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1b

    .line 765
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v6, v6

    add-int/2addr v6, p1

    if-ne v5, v6, :cond_20

    .line 766
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 767
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 768
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_1b

    .line 769
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 774
    :cond_1b
    const/4 v1, 0x0

    :goto_d
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1c

    .line 775
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v6, v6

    add-int/2addr v6, p1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_21

    .line 776
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 777
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 778
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_1c

    .line 779
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 784
    :cond_1c
    const/4 v1, 0x0

    :goto_e
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 785
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    if-eqz v5, :cond_1d

    .line 786
    const/4 v5, 0x0

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_22

    .line 787
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 788
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, p1, v7, v8}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 789
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 784
    :cond_1d
    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 744
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 754
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 764
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 774
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 790
    :cond_22
    const/4 v5, 0x1

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_23

    .line 791
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 792
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    const/4 v7, 0x1

    sub-int v7, p1, v7

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 793
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto :goto_f

    .line 794
    :cond_23
    const/4 v5, 0x2

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_24

    .line 795
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 796
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    add-int/2addr v7, p1

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 797
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto :goto_f

    .line 798
    :cond_24
    const/4 v5, 0x3

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_1d

    .line 799
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 800
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    add-int/2addr v7, p1

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 801
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto/16 :goto_f

    .line 805
    .end local v1           #i:I
    :cond_25
    div-int v5, p1, v4

    const/4 v6, 0x1

    sub-int v6, v0, v6

    if-ne v5, v6, :cond_32

    .line 806
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10
    const/4 v5, 0x4

    if-ge v1, v5, :cond_26

    .line 807
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    if-ne v5, p1, :cond_2b

    .line 808
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 809
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 810
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_26

    .line 811
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 816
    :cond_26
    const/4 v1, 0x0

    :goto_11
    const/4 v5, 0x4

    if-ge v1, v5, :cond_27

    .line 817
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    add-int/lit8 v6, p1, 0x1

    if-ne v5, v6, :cond_2c

    .line 818
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 819
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 820
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_27

    .line 821
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 826
    :cond_27
    const/4 v1, 0x0

    :goto_12
    const/4 v5, 0x4

    if-ge v1, v5, :cond_28

    .line 827
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v6, v6

    sub-int v6, p1, v6

    if-ne v5, v6, :cond_2d

    .line 828
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 829
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 830
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_28

    .line 831
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 836
    :cond_28
    const/4 v1, 0x0

    :goto_13
    const/4 v5, 0x4

    if-ge v1, v5, :cond_29

    .line 837
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v6, v6

    sub-int v6, p1, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_2e

    .line 838
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 839
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 840
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_29

    .line 841
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 846
    :cond_29
    const/4 v1, 0x0

    :goto_14
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 847
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    if-eqz v5, :cond_2a

    .line 848
    const/4 v5, 0x0

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_2f

    .line 849
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 850
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, p1, v7, v8}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 851
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 846
    :cond_2a
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 806
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    .line 816
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    .line 826
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    .line 836
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 852
    :cond_2f
    const/4 v5, 0x1

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_30

    .line 853
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 854
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    add-int/lit8 v7, p1, 0x1

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 855
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto :goto_15

    .line 856
    :cond_30
    const/4 v5, 0x2

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_31

    .line 857
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 858
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    sub-int v7, p1, v7

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 859
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto :goto_15

    .line 860
    :cond_31
    const/4 v5, 0x3

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_2a

    .line 861
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 862
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    sub-int v7, p1, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 863
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto/16 :goto_15

    .line 868
    .end local v1           #i:I
    :cond_32
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_16
    const/4 v5, 0x4

    if-ge v1, v5, :cond_33

    .line 869
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    if-ne v5, p1, :cond_37

    .line 870
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 871
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 872
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_33

    .line 873
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 878
    :cond_33
    const/4 v1, 0x0

    :goto_17
    const/4 v5, 0x4

    if-ge v1, v5, :cond_34

    .line 879
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    add-int/lit8 v6, p1, 0x1

    if-ne v5, v6, :cond_38

    .line 880
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 881
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 882
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_34

    .line 883
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 888
    :cond_34
    const/4 v1, 0x0

    :goto_18
    const/4 v5, 0x4

    if-ge v1, v5, :cond_35

    .line 889
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v6, v6

    add-int/2addr v6, p1

    if-ne v5, v6, :cond_39

    .line 890
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 891
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 892
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_35

    .line 893
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 898
    :cond_35
    const/4 v1, 0x0

    :goto_19
    const/4 v5, 0x4

    if-ge v1, v5, :cond_36

    .line 899
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v6, v6

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_3a

    .line 900
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 901
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 902
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    if-eqz v5, :cond_36

    .line 903
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 908
    :cond_36
    const/4 v1, 0x0

    :goto_1a
    const/4 v5, 0x4

    if-ge v1, v5, :cond_3c

    .line 909
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    if-eqz v5, :cond_3b

    .line 910
    const-string v5, "PDFReaderView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showPage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = TRUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 868
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    .line 878
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    .line 888
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18

    .line 898
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 912
    :cond_3b
    const-string v5, "PDFReaderView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showPage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = FALSE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 915
    :cond_3c
    const/4 v1, 0x0

    :goto_1c
    const/4 v5, 0x4

    if-ge v1, v5, :cond_3e

    .line 916
    aget-boolean v5, v3, v1

    if-eqz v5, :cond_3d

    .line 917
    const-string v5, "PDFReaderView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showLocation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = TRUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 919
    :cond_3d
    const-string v5, "PDFReaderView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showLocation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = FALSE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 923
    :cond_3e
    const/4 v1, 0x0

    :goto_1e
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 924
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    if-eqz v5, :cond_3f

    .line 925
    const/4 v5, 0x0

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_40

    .line 926
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 927
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, p1, v7, v8}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 928
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    .line 923
    :cond_3f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 929
    :cond_40
    const/4 v5, 0x1

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_41

    .line 930
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 931
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    add-int/lit8 v7, p1, 0x1

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 932
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto :goto_1f

    .line 933
    :cond_41
    const/4 v5, 0x2

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_42

    .line 934
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 935
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    add-int/2addr v7, p1

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 936
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto :goto_1f

    .line 937
    :cond_42
    const/4 v5, 0x3

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_3f

    .line 938
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 939
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sget-object v7, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, 0x1

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageInfo(IID)V

    .line 940
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-boolean v6, v3, v5

    goto/16 :goto_1f

    .line 621
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private setPartialScale(I)D
    .locals 10
    .parameter "pageNo"

    .prologue
    .line 985
    iget-object v8, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v8, v8, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v8, v8, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    iget-object v9, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v9, v9, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v9, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v9, v9, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v9, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v8, v9

    float-to-double v6, v8

    .line 986
    .local v6, realWidth:D
    iget-object v8, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v8, v8, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v8, v8, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    iget-object v9, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v9, v9, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v9, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v9, v9, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v9, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v8, v9

    float-to-double v4, v8

    .line 987
    .local v4, realHeight:D
    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v8, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v2, v8, p1

    .line 988
    .local v2, bmWidth:D
    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v8, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v0, v8, p1

    .line 990
    .local v0, bmHeight:D
    const-wide/high16 v8, 0x4000

    mul-double/2addr v8, v2

    cmpg-double v8, v8, v6

    if-gtz v8, :cond_0

    const-wide/high16 v8, 0x4008

    mul-double/2addr v8, v2

    cmpl-double v8, v8, v6

    if-gtz v8, :cond_1

    :cond_0
    const-wide/high16 v8, 0x4000

    mul-double/2addr v8, v0

    cmpg-double v8, v8, v4

    if-gtz v8, :cond_2

    const-wide/high16 v8, 0x4008

    mul-double/2addr v8, v0

    cmpl-double v8, v8, v4

    if-lez v8, :cond_2

    .line 991
    :cond_1
    const-wide/high16 v8, 0x4000

    .line 1002
    :goto_0
    return-wide v8

    .line 992
    :cond_2
    const-wide/high16 v8, 0x4008

    mul-double/2addr v8, v2

    cmpg-double v8, v8, v6

    if-gtz v8, :cond_3

    const-wide/high16 v8, 0x4014

    mul-double/2addr v8, v2

    cmpl-double v8, v8, v6

    if-gtz v8, :cond_4

    :cond_3
    const-wide/high16 v8, 0x4008

    mul-double/2addr v8, v0

    cmpg-double v8, v8, v4

    if-gtz v8, :cond_5

    const-wide/high16 v8, 0x4014

    mul-double/2addr v8, v0

    cmpl-double v8, v8, v4

    if-lez v8, :cond_5

    .line 993
    :cond_4
    const-wide/high16 v8, 0x4008

    goto :goto_0

    .line 994
    :cond_5
    const-wide/high16 v8, 0x4014

    mul-double/2addr v8, v2

    cmpg-double v8, v8, v6

    if-gtz v8, :cond_6

    const-wide/high16 v8, 0x4020

    mul-double/2addr v8, v2

    cmpl-double v8, v8, v6

    if-gtz v8, :cond_7

    :cond_6
    const-wide/high16 v8, 0x4014

    mul-double/2addr v8, v0

    cmpg-double v8, v8, v4

    if-gtz v8, :cond_8

    const-wide/high16 v8, 0x4020

    mul-double/2addr v8, v0

    cmpl-double v8, v8, v4

    if-lez v8, :cond_8

    .line 995
    :cond_7
    const-wide/high16 v8, 0x4014

    goto :goto_0

    .line 996
    :cond_8
    const-wide/high16 v8, 0x4020

    mul-double/2addr v8, v2

    cmpg-double v8, v8, v6

    if-lez v8, :cond_9

    const-wide/high16 v8, 0x4020

    mul-double/2addr v8, v0

    cmpg-double v8, v8, v4

    if-gtz v8, :cond_a

    .line 997
    :cond_9
    const-wide/high16 v8, 0x4020

    goto :goto_0

    .line 998
    :cond_a
    iget-object v8, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v8, v8, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v8, v8, Lcom/asus/reader/pdf/PDFPage;->scale:F

    const v9, 0x3f8ccccd

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    const-wide/high16 v8, 0x4094

    cmpg-double v8, v2, v8

    if-gtz v8, :cond_b

    const-wide/high16 v8, 0x4094

    cmpg-double v8, v0, v8

    if-gtz v8, :cond_b

    .line 999
    const-wide/high16 v8, 0x4000

    goto :goto_0

    .line 1002
    :cond_b
    const-wide/high16 v8, 0x3ff0

    goto :goto_0
.end method

.method private setPartialTranslateBase()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1006
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v0, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v0, v0, v5

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v2, Lcom/asus/reader/pdf/PDFCache;->mScreenWidthPixel:D

    double-to-float v2, v2

    sget-object v3, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->mScaleBase:D

    double-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    double-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v1, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    double-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/asus/reader/pdf/PDFHPage;->mBaseTranslateX:F

    .line 1007
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v0, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v0, v0, v5

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v2, Lcom/asus/reader/pdf/PDFCache;->mScreenHeightPixel:D

    double-to-float v2, v2

    sget-object v3, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->mScaleBase:D

    double-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v3, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    double-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v1, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    double-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/asus/reader/pdf/PDFHPage;->mBaseTranslateY:F

    .line 1008
    return-void
.end method

.method private zoomTo(FFFFFF)V
    .locals 3
    .parameter "ScaleFactor"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "finalScale"
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iput p1, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    .line 390
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    .line 391
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    .line 392
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iput p2, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 394
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iput p3, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 402
    :goto_0
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->isShowParPage:Z

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialTranslateBase()V

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    .line 406
    return-void

    .line 396
    :cond_1
    invoke-virtual {p0, p5, p6}, Lcom/asus/reader/pdf/PDFReaderView;->getCenterPoint(FF)V

    .line 397
    invoke-direct {p0, p5, p6}, Lcom/asus/reader/pdf/PDFReaderView;->getScaleCoordinate(FF)V

    .line 398
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    sget v1, Lcom/asus/reader/pdf/PDFReaderView;->mScaleAxisX:F

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 399
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    sget v1, Lcom/asus/reader/pdf/PDFReaderView;->mScaleAxisY:F

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->removeMessages(I)V

    .line 1028
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->removeMessages(I)V

    .line 1029
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->removeMessages(I)V

    .line 1030
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->thread:Landroid/os/HandlerThread;

    .line 1032
    const-string v0, "PDFReaderView"

    const-string v1, "==========RHANDLER_FINISHED=========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return-void
.end method

.method public getCenterPoint(FF)V
    .locals 9
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x0

    const/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    .line 329
    const/high16 v0, 0x3f80

    .line 330
    .local v0, BoundaryFactorX:F
    const/high16 v1, 0x3f80

    .line 331
    .local v1, BoundaryFactorY:F
    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 332
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    .line 334
    :cond_0
    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 335
    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float v2, v7, v2

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    div-float/2addr v3, v0

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    sput v2, Lcom/asus/reader/pdf/PDFReaderView;->mScaleCenterX:F

    .line 338
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float v2, v7, v2

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sput v2, Lcom/asus/reader/pdf/PDFReaderView;->mScaleCenterY:F

    .line 339
    return-void
.end method

.method public getPanels(Landroid/widget/RelativeLayout;Lcom/asus/reader/ui/PageSeekBar2;)V
    .locals 0
    .parameter "mControlPanel"
    .parameter "mPageSeekBar"

    .prologue
    .line 607
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFReaderView;->Panel:Landroid/widget/RelativeLayout;

    .line 608
    iput-object p2, p0, Lcom/asus/reader/pdf/PDFReaderView;->bar:Lcom/asus/reader/ui/PageSeekBar2;

    .line 609
    return-void
.end method

.method public gotoPage(I)V
    .locals 9
    .parameter "n"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 546
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isSetPages:Z

    if-nez v2, :cond_2

    .line 547
    iput-boolean v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->isSetPages:Z

    .line 548
    iput-boolean v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasSetPages:Z

    .line 550
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v2, v6}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->removeMessages(I)V

    .line 551
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->scale:F

    invoke-virtual {v2, p1, v3}, Lcom/asus/reader/pdf/PDFRenderer;->gotoPage(IF)Z

    .line 553
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    .line 555
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    .line 558
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-boolean v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->isLandscape:Z

    if-eqz v2, :cond_4

    .line 559
    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_3

    .line 560
    iput v7, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 561
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iput v5, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 562
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    neg-float v3, v3

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 583
    :goto_0
    const-wide/high16 v2, 0x3ff0

    iput-wide v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    .line 584
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    const v3, 0x3f8ccccd

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->startPartialPage()V

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    .line 589
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x9

    if-ge v0, v2, :cond_1

    .line 590
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->PageID:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_7

    .line 597
    :cond_1
    iput-boolean v7, p0, Lcom/asus/reader/pdf/PDFReaderView;->isSetPages:Z

    .line 599
    .end local v0           #i:I
    :cond_2
    return-void

    .line 564
    :cond_3
    iput v8, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 565
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 566
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    neg-float v3, v3

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    goto :goto_0

    .line 569
    :cond_4
    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_5

    .line 570
    iput v7, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 574
    :goto_2
    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_6

    .line 575
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 576
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iput v5, v2, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    goto :goto_0

    .line 572
    :cond_5
    iput v8, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    goto :goto_2

    .line 578
    :cond_6
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 579
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    neg-float v3, v3

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    goto :goto_0

    .line 592
    .restart local v0       #i:I
    :cond_7
    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    .line 593
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v2, v6}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 594
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v2, v1}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->sendMessage(Landroid/os/Message;)Z

    .line 589
    .end local v1           #msg:Landroid/os/Message;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/high16 v4, 0x43c8

    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    .line 226
    const-string v0, "PDFReaderView"

    const-string v1, "onDoubleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iput-boolean v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControl:Z

    .line 228
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->Panel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->bar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v0, v6}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 231
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isOnDoubleTap:Z

    .line 233
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-eqz v0, :cond_0

    move v0, v5

    .line 250
    :goto_0
    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mBaseNum:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 238
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isFit:Z

    .line 239
    const/4 v0, 0x2

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mFitScale:I

    .line 240
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->screenWidth:F

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->screenHeight:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FF)V

    :goto_1
    move v0, v5

    .line 250
    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mBaseNum:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 242
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isFit:Z

    .line 243
    const/4 v0, 0x3

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mFitScale:I

    .line 244
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->screenHeight:F

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->screenWidth:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FF)V

    goto :goto_1

    .line 246
    :cond_2
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->isFit:Z

    .line 247
    iput v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mFitScale:I

    .line 248
    invoke-virtual {p0, v3, v4}, Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FF)V

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const-wide/high16 v5, 0x3ff0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 122
    const-string v1, "PDFReaderView"

    const-string v2, "onFling"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->Panel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->bar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v1, v8}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 125
    iput-boolean v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControl:Z

    .line 126
    iget-boolean v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->isSetPages:Z

    if-nez v1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    move v1, v4

    .line 172
    :goto_0
    return v1

    .line 129
    :cond_1
    cmpg-float v1, p3, v7

    if-gez v1, :cond_4

    .line 130
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_2

    move v1, v4

    .line 131
    goto :goto_0

    .line 133
    :cond_2
    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    if-nez v1, :cond_7

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->scale:F

    iput v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageScale:F

    .line 135
    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFCache;->resetParPage()V

    .line 136
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFRenderer;->resetPartialPage()V

    .line 137
    iput-wide v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    .line 138
    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v1, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    .line 139
    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v2, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v2, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFRenderer;->setNextPage(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mNeedLoadPage:Z

    .line 141
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v1, v3}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->removeMessages(I)V

    .line 142
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v1, v3}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v1, v0}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mNeedLoadPage:Z

    iput-boolean v2, v1, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPage:Z

    .line 145
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    .line 146
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    invoke-direct {p0, v1}, Lcom/asus/reader/pdf/PDFReaderView;->pageChange(Lcom/asus/reader/pdf/PDFPage;)V

    move v1, v3

    .line 147
    goto :goto_0

    .line 150
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    cmpl-float v1, p3, v7

    if-lez v1, :cond_7

    .line 151
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-nez v1, :cond_5

    move v1, v4

    .line 152
    goto :goto_0

    .line 154
    :cond_5
    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    if-nez v1, :cond_7

    .line 155
    :cond_6
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->scale:F

    iput v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageScale:F

    .line 156
    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFCache;->resetParPage()V

    .line 157
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFRenderer;->resetPartialPage()V

    .line 158
    iput-wide v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    .line 159
    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v1, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    sub-int/2addr v1, v3

    sput v1, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    .line 160
    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v2, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v2, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFRenderer;->setPrePage(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mNeedLoadPage:Z

    .line 162
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v1, v3}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->removeMessages(I)V

    .line 163
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v1, v3}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 164
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v1, v0}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mNeedLoadPage:Z

    iput-boolean v2, v1, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPage:Z

    .line 166
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    .line 167
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-direct {p0, v1}, Lcom/asus/reader/pdf/PDFReaderView;->pageChange(Lcom/asus/reader/pdf/PDFPage;)V

    move v1, v3

    .line 168
    goto/16 :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_7
    move v1, v4

    .line 172
    goto/16 :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 178
    return-void
.end method

.method public onScale(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/high16 v3, 0x4000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-eqz v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->Panel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->bar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 284
    iput-boolean v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControl:Z

    .line 285
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mScaleFactor:F

    .line 286
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->preMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->preMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->px0:F

    .line 288
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->preMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->py0:F

    .line 289
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->preMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->px1:F

    .line 290
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->preMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->py1:F

    .line 291
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->cx0:F

    .line 292
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->cy0:F

    .line 293
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->cx1:F

    .line 294
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->cy1:F

    .line 295
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->cx0:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->cx1:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->currcenterX:F

    .line 296
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->cy0:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->cy1:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->currcenterY:F

    .line 297
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->px1:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->px0:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->px1:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->px0:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->py1:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->py0:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->py1:F

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->py0:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->prelen:F

    .line 298
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->cx1:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->cx0:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->cx1:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->cx0:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->cy1:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->cy0:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->cy1:F

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->cy0:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->currlen:F

    .line 299
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->currlen:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->prelen:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mScaleFactor:F

    .line 300
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mScaleFactor:F

    const v1, 0x3f666666

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mScaleFactor:F

    const v1, 0x3f8ccccd

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    .line 304
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    .line 305
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    .line 308
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->currcenterX:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->currcenterY:F

    invoke-direct {p0, v0, v1}, Lcom/asus/reader/pdf/PDFReaderView;->getScaleCoordinate(FF)V

    .line 309
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    sget v1, Lcom/asus/reader/pdf/PDFReaderView;->mScaleAxisX:F

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 310
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    sget v1, Lcom/asus/reader/pdf/PDFReaderView;->mScaleAxisY:F

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 312
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->isShowParPage:Z

    if-eqz v0, :cond_1

    .line 313
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialTranslateBase()V

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    .line 319
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->preMotionEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0
.end method

.method public onScaleReset()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->preMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->preMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->preMotionEvent:Landroid/view/MotionEvent;

    .line 347
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x0

    const/high16 v2, 0x42f0

    const/high16 v6, 0x3f80

    .line 183
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->Panel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->bar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v1, v3}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 185
    iput-boolean v7, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControl:Z

    .line 186
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v7

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    neg-float v3, p3

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 190
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    div-float v3, p4, v3

    add-float/2addr v2, v3

    iput v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 191
    iget-boolean v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->isShowParPage:Z

    if-eqz v1, :cond_2

    .line 192
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialTranslateBase()V

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    .line 196
    const-wide/16 v1, 0x10

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_1
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    neg-float v3, p3

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 202
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    div-float v3, p4, v3

    add-float/2addr v2, v3

    iput v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 203
    iget-boolean v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->isShowParPage:Z

    if-eqz v1, :cond_3

    .line 204
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialTranslateBase()V

    .line 206
    :cond_3
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 213
    const-string v0, "PDFReaderView"

    const-string v1, "onShowPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    const-string v1, "PDFReaderView"

    const-string v2, "onSingleTapConfirmed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-boolean v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControl:Z

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControl:Z

    .line 264
    iget-boolean v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControl:Z

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->bar:Lcom/asus/reader/ui/PageSeekBar2;

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/PageSeekBar2;->setProgress(I)V

    .line 266
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->Panel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->bar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v1, v3}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 272
    :goto_1
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 273
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    return v3

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 263
    goto :goto_0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->Panel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->bar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v1, v5}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 219
    const-string v0, "PDFReaderView"

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1020
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    .line 1021
    iput v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    .line 1022
    iput v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    .line 1024
    return-void
.end method

.method public screenBound(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 461
    iput-boolean v7, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundX:Z

    .line 462
    iput-boolean v7, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundY:Z

    .line 463
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_6

    .line 464
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 465
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundX:Z

    .line 466
    const/4 v0, 0x2

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 482
    :goto_0
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_9

    .line 483
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 484
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundY:Z

    .line 496
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundX:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundY:Z

    if-eqz v0, :cond_3

    .line 497
    :cond_1
    iget-boolean v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundX:Z

    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundY:Z

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    iget v4, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    const/high16 v5, 0x4348

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/pdf/PDFReaderView;->scrollTo(ZZFFF)V

    .line 498
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    .line 499
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    neg-float v0, v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    .line 501
    :cond_2
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    .line 502
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    neg-float v0, v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    .line 506
    :cond_3
    return v7

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 468
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    neg-float v0, v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    .line 469
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundX:Z

    .line 470
    iput v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    goto :goto_0

    .line 472
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    goto :goto_0

    .line 475
    :cond_6
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_7

    .line 476
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundX:Z

    .line 478
    :cond_7
    iput v7, p0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 479
    iput v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    goto :goto_0

    .line 485
    :cond_8
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 486
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    neg-float v0, v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    .line 487
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundY:Z

    goto :goto_1

    .line 490
    :cond_9
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_a

    .line 491
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasBoundY:Z

    .line 493
    :cond_a
    iput v6, p0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    goto :goto_1
.end method

.method public setNeighberPages()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFRenderer;->setNPages()V

    .line 603
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    .line 108
    move-object v0, p1

    check-cast v0, Lcom/asus/reader/pdf/PDFRenderer;

    move-object v1, v0

    iput-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    .line 109
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/asus/reader/pdf/PDFReaderView;->setRenderMode(I)V

    .line 111
    return-void
.end method

.method public startPartialPage()V
    .locals 20

    .prologue
    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 956
    .local v18, time:J
    const/16 v17, 0x1

    .line 957
    .local v17, reload:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/reader/pdf/PDFRenderer;->notShowPartialPage()V

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v3, v0

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialScale(I)D

    move-result-wide v15

    .line 960
    .local v15, realScale:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v3, v0

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->scale:F

    const v4, 0x3f8ccccd

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, v15, v3

    if-nez v3, :cond_1

    .line 961
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/pdf/PDFReaderView;->isShowParPage:Z

    .line 982
    :goto_0
    return-void

    .line 965
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    move-wide v3, v0

    cmpl-double v3, v15, v3

    if-nez v3, :cond_2

    .line 966
    const/16 v17, 0x0

    .line 968
    :cond_2
    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    move-wide v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/asus/reader/pdf/PDFRenderer;->setPartialScale(D)V

    .line 970
    const-string v3, "PDFReaderView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==========mPartialScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " =========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/pdf/PDFReaderView;->isShowParPage:Z

    .line 972
    if-eqz v17, :cond_3

    .line 973
    sget-object v3, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v3}, Lcom/asus/reader/pdf/PDFCache;->resetParPage()V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/reader/pdf/PDFRenderer;->resetPartialPage()V

    .line 975
    sget-object v3, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v6, v0

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->mBaseNum:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v7, v0

    iget-object v7, v7, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v7, v7, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/asus/reader/pdf/PDFCache;->setPartialPageInit(DIF)D

    move-result-wide v13

    .line 976
    .local v13, mEdge:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v3, v0

    sget-object v3, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    double-to-float v4, v13

    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v5, Lcom/asus/reader/pdf/PDFCache;->mScaleBase:D

    double-to-float v5, v5

    div-float/2addr v4, v5

    double-to-float v5, v13

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->mScaleBase:D

    double-to-float v6, v6

    div-float/2addr v5, v6

    sget-object v6, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    sget-object v8, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    sget-object v10, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v10, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    double-to-float v10, v10

    sget-object v11, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v11, Lcom/asus/reader/pdf/PDFCache;->mModWidth:D

    double-to-float v11, v11

    sget-object v12, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v12, Lcom/asus/reader/pdf/PDFCache;->mModHeight:D

    double-to-float v12, v12

    invoke-virtual/range {v3 .. v12}, Lcom/asus/reader/pdf/PDFHPage;->setPartialPageSize(FFDDFFF)V

    .line 979
    .end local v13           #mEdge:D
    :cond_3
    sget-object v3, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryX:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mBoundaryY:F

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v6, v0

    iget-object v6, v6, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v6, v6, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v7, v0

    iget-object v7, v7, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v7, v7, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v8, v0

    sget-object v8, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget v8, Lcom/asus/reader/pdf/PDFHPage;->mXAxis:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    move-object v9, v0

    sget-object v9, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget v9, Lcom/asus/reader/pdf/PDFHPage;->mYAxis:F

    invoke-virtual/range {v3 .. v9}, Lcom/asus/reader/pdf/PDFCache;->setPageLocation(FFFFFF)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/pdf/PDFReaderView;->mParLocation:I

    .line 980
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->mParLocation:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/asus/reader/pdf/PDFReaderView;->setPartialPage(I)V

    .line 981
    const-string v3, "PDFReaderView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v18

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public startTexHandler()V
    .locals 2

    .prologue
    .line 1011
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PDFLoadTexture"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->thread:Landroid/os/HandlerThread;

    .line 1012
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1013
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mlooper:Landroid/os/Looper;

    .line 1014
    new-instance v0, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFReaderView;->mlooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;-><init>(Lcom/asus/reader/pdf/PDFReaderView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    .line 1016
    return-void
.end method

.method public zoomTo(FF)V
    .locals 13
    .parameter "ScaleFactor"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->hasScale:Z

    .line 352
    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFCache;->resetParPage()V

    .line 353
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFRenderer;->resetPartialPage()V

    .line 354
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    sub-float v0, p1, v0

    div-float v6, v0, p2

    .line 355
    .local v6, increasePerMs:F
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v7, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 356
    .local v7, centerX:F
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 357
    .local v9, centerY:F
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    sub-float v0, v1, v0

    div-float v8, v0, p2

    .line 358
    .local v8, increaseXMs:F
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    sub-float v0, v1, v0

    div-float v10, v0, p2

    .line 359
    .local v10, increaseYMs:F
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView;->mRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    .line 360
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 362
    .local v3, startTime:J
    iget-object v12, p0, Lcom/asus/reader/pdf/PDFReaderView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/asus/reader/pdf/PDFReaderView$1;

    move-object v1, p0

    move v2, p2

    move v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/asus/reader/pdf/PDFReaderView$1;-><init>(Lcom/asus/reader/pdf/PDFReaderView;FJFFFFFFF)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void
.end method
