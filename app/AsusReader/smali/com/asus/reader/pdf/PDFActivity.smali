.class public Lcom/asus/reader/pdf/PDFActivity;
.super Landroid/app/Activity;
.source "PDFActivity.java"

# interfaces
.implements Lcom/asus/reader/book/ReaderDatabase$unMountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;
    }
.end annotation


# instance fields
.field private final SELECT:Ljava/lang/String;

.field private detector:Landroid/view/GestureDetector;

.field private filePath:Ljava/lang/String;

.field private isLandscape:Z

.field private isLookupState:Z

.field private isScale:Z

.field private mBookId:I

.field private mBookLang:Ljava/lang/String;

.field private mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

.field private mContext:Landroid/content/Context;

.field private mControlHandler:Landroid/os/Handler;

.field private mControlPanel:Landroid/widget/RelativeLayout;

.field private mDictionary:Lcom/asus/dictionary/Dictionary;

.field private mDuringLookup:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mLastViewPage:D

.field private mLibraryButton:Landroid/widget/ImageButton;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoadFailed:Z

.field private mLookupWord:Ljava/lang/String;

.field private mPageChange:Z

.field private mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

.field private mScaleToHeightButton:Landroid/widget/ImageButton;

.field private mScaleToWidthButton:Landroid/widget/ImageButton;

.field private mScrollChangePage:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoomInButton:Landroid/widget/ImageButton;

.field private mZoomOutButton:Landroid/widget/ImageButton;

.field private pageNo:I

.field private pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

.field private pdfview:Lcom/asus/reader/pdf/PDFReaderView;

.field private root:Landroid/widget/LinearLayout;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/asus/reader/pdf/PDFActivity;->isScale:Z

    .line 79
    const/16 v0, 0xa

    iput v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pageNo:I

    .line 80
    iput v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mBookId:I

    .line 88
    const-string v0, "select"

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->SELECT:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lcom/asus/reader/pdf/PDFActivity;->isLookupState:Z

    .line 95
    iput-boolean v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mDuringLookup:Z

    .line 595
    new-instance v0, Lcom/asus/reader/pdf/PDFActivity$9;

    invoke-direct {v0, p0}, Lcom/asus/reader/pdf/PDFActivity$9;-><init>(Lcom/asus/reader/pdf/PDFActivity;)V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlHandler:Landroid/os/Handler;

    .line 691
    new-instance v0, Lcom/asus/reader/pdf/PDFActivity$10;

    invoke-direct {v0, p0}, Lcom/asus/reader/pdf/PDFActivity$10;-><init>(Lcom/asus/reader/pdf/PDFActivity;)V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 754
    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/asus/reader/pdf/PDFActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->isScale:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/asus/reader/pdf/PDFActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/asus/reader/pdf/PDFActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity;->mList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/asus/reader/pdf/PDFActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pageNo:I

    return v0
.end method

.method static synthetic access$1300(Lcom/asus/reader/pdf/PDFActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mLookupWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/asus/reader/pdf/PDFActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity;->mLookupWord:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/asus/reader/pdf/PDFActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBookLang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/asus/reader/pdf/PDFActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mDuringLookup:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/asus/reader/pdf/PDFActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/asus/reader/pdf/PDFActivity;->mDuringLookup:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/asus/reader/pdf/PDFActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/reader/pdf/PDFActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->isLookupState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/asus/reader/pdf/PDFActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/asus/reader/pdf/PDFActivity;->isLookupState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/dictionary/Dictionary;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/reader/pdf/PDFActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mLastViewPage:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/asus/reader/pdf/PDFActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBookId:I

    return v0
.end method

.method static synthetic access$700(Lcom/asus/reader/pdf/PDFActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/reader/pdf/PDFActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFActivity;->dictionaryFinish()V

    return-void
.end method

.method static synthetic access$900(Lcom/asus/reader/pdf/PDFActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFActivity;->dictionaryFailed()V

    return-void
.end method

.method private dictionaryFailed()V
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x50

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 679
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    const-string v3, "select"

    invoke-virtual {v2, v3}, Lcom/asus/reader/book/BoundingBoxView;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 680
    .local v0, boxList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    const-string v3, "select"

    invoke-static {v7, v8, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/asus/reader/book/BoundingBoxView;->put(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    .line 681
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    invoke-virtual {v2}, Lcom/asus/reader/book/BoundingBoxView;->invalidate()V

    .line 682
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 684
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v7, v8, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 685
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 687
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x226

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 688
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 689
    return-void
.end method

.method private dictionaryFinish()V
    .locals 0

    .prologue
    .line 675
    return-void
.end method


# virtual methods
.method public finishReadBook()V
    .locals 2

    .prologue
    .line 669
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    .line 670
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->finish()V

    .line 671
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 433
    const-string v1, "PDFActivity"

    const-string v2, "==================================onConfigurationChanged===================================="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 436
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move v0, v6

    .line 437
    .local v0, newIsLandscape:Z
    :goto_0
    iget-boolean v1, p0, Lcom/asus/reader/pdf/PDFActivity;->isLandscape:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 438
    const-string v1, "PDFActivity"

    const-string v2, "==================================ORIENTATION===================================="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iput v6, v1, Lcom/asus/reader/pdf/PDFReaderView;->mFitScale:I

    .line 440
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iput v5, v1, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 441
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->version:Ljava/lang/String;

    const-string v2, "3.2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    .line 443
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    .line 449
    :goto_1
    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->isLandscape:Z

    .line 450
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFActivity;->isLandscape:Z

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget v3, v3, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget v4, v4, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/asus/reader/pdf/PDFRenderer;->orientation(ZFF)V

    .line 451
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFCache;->resetParPage()V

    .line 452
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFRenderer;->resetPartialPage()V

    .line 453
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    const-wide/high16 v2, 0x3ff0

    iput-wide v2, v1, Lcom/asus/reader/pdf/PDFReaderView;->mPartialScale:D

    .line 454
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFReaderView;->reset()V

    .line 455
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iput-boolean v6, v1, Lcom/asus/reader/pdf/PDFReaderView;->mControl:Z

    .line 456
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v2, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/PageSeekBar2;->setProgress(I)V

    .line 457
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 458
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v1, v5}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 461
    iput-boolean v5, p0, Lcom/asus/reader/pdf/PDFActivity;->isLookupState:Z

    .line 462
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    invoke-virtual {v1}, Lcom/asus/dictionary/Dictionary;->cancelLookupAndInvisible()V

    .line 463
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    const-string v2, "select"

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/BoundingBoxView;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 464
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/BoundingBoxView;->setVisibility(I)V

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mLastViewPage:D

    .line 468
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mLibraryButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 469
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asus/reader/pdf/PDFActivity$8;

    invoke-direct {v2, p0}, Lcom/asus/reader/pdf/PDFActivity$8;-><init>(Lcom/asus/reader/pdf/PDFActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 478
    return-void

    .end local v0           #newIsLandscape:Z
    :cond_1
    move v0, v5

    .line 436
    goto/16 :goto_0

    .line 445
    .restart local v0       #newIsLandscape:Z
    :cond_2
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    .line 446
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4240

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->requestWindowFeature(I)Z

    .line 104
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 105
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 106
    .local v8, config:Landroid/content/res/Configuration;
    iget v0, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->isLandscape:Z

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mScrollChangePage:Z

    .line 109
    iput-object p0, p0, Lcom/asus/reader/pdf/PDFActivity;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->filePath:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pos"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pageNo:I

    .line 112
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bookid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBookId:I

    .line 115
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    .line 116
    new-instance v0, Lcom/asus/reader/pdf/PDFReaderView;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->filePath:Ljava/lang/String;

    iget v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pageNo:I

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFReaderView;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    .line 118
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mInitSuccess:Z

    if-nez v0, :cond_1

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mLoadFailed:Z

    .line 120
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->finish()V

    .line 284
    .end local p1
    :goto_1
    return-void

    .line 106
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mLoadFailed:Z

    .line 126
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->version:Ljava/lang/String;

    .line 127
    const-string v0, "PDFActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->version:Ljava/lang/String;

    const-string v1, "3.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    .line 130
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    .line 136
    :goto_2
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget v1, v1, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget v2, v2, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/pdf/PDFCache;->setScreenSize(FF)V

    .line 137
    new-instance v0, Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget v2, v1, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget v3, v1, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v5, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget v6, p0, Lcom/asus/reader/pdf/PDFActivity;->pageNo:I

    iget-boolean v7, p0, Lcom/asus/reader/pdf/PDFActivity;->isLandscape:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/asus/reader/pdf/PDFRenderer;-><init>(Landroid/content/Context;FFILcom/asus/reader/pdf/PDFCache;IZ)V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    .line 138
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    invoke-virtual {v0, v1}, Lcom/asus/reader/pdf/PDFReaderView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 140
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->setContentView(I)V

    .line 141
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->detector:Landroid/view/GestureDetector;

    .line 142
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 144
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlPanel:Landroid/widget/RelativeLayout;

    .line 145
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity;->root:Landroid/widget/LinearLayout;

    .line 146
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v12, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0, v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v0, Lcom/asus/reader/book/BoundingBoxView;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/BoundingBoxView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    .line 151
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v10, fillParentParams:Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 153
    .local v11, mainScreen:Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    invoke-virtual {v11, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 156
    .local v9, dictionaryLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 158
    new-instance v0, Lcom/asus/dictionary/Dictionary;

    invoke-direct {v0, p0, v9}, Lcom/asus/dictionary/Dictionary;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    .line 159
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary;->setBackground(I)V

    .line 160
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/dictionary/Dictionary;->setStatusCallback(Landroid/os/Handler;II)V

    .line 161
    iget v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBookId:I

    invoke-static {p0, v0}, Lcom/asus/reader/book/BookmarkUtility;->getBookLang(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBookLang:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlPanel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity;->mLibraryButton:Landroid/widget/ImageButton;

    .line 166
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mLibraryButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/asus/reader/pdf/PDFActivity$1;

    invoke-direct {v1, p0}, Lcom/asus/reader/pdf/PDFActivity$1;-><init>(Lcom/asus/reader/pdf/PDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity;->mZoomInButton:Landroid/widget/ImageButton;

    .line 174
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mZoomInButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/asus/reader/pdf/PDFActivity$2;

    invoke-direct {v1, p0}, Lcom/asus/reader/pdf/PDFActivity$2;-><init>(Lcom/asus/reader/pdf/PDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity;->mZoomOutButton:Landroid/widget/ImageButton;

    .line 189
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mZoomOutButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/asus/reader/pdf/PDFActivity$3;

    invoke-direct {v1, p0}, Lcom/asus/reader/pdf/PDFActivity$3;-><init>(Lcom/asus/reader/pdf/PDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity;->mScaleToWidthButton:Landroid/widget/ImageButton;

    .line 204
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mScaleToWidthButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/asus/reader/pdf/PDFActivity$4;

    invoke-direct {v1, p0}, Lcom/asus/reader/pdf/PDFActivity$4;-><init>(Lcom/asus/reader/pdf/PDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity;->mScaleToHeightButton:Landroid/widget/ImageButton;

    .line 224
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mScaleToHeightButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/asus/reader/pdf/PDFActivity$5;

    invoke-direct {v1, p0}, Lcom/asus/reader/pdf/PDFActivity$5;-><init>(Lcom/asus/reader/pdf/PDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/asus/reader/pdf/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/asus/reader/ui/PageSeekBar2;

    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    .line 259
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v1, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setMax(I)V

    .line 261
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    new-instance v1, Lcom/asus/reader/pdf/PDFActivity$6;

    invoke-direct {v1, p0}, Lcom/asus/reader/pdf/PDFActivity$6;-><init>(Lcom/asus/reader/pdf/PDFActivity;)V

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setOnProgressChangedListener(Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    iget v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pageNo:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setProgress(I)V

    .line 282
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlPanel:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/pdf/PDFReaderView;->getPanels(Landroid/widget/RelativeLayout;Lcom/asus/reader/ui/PageSeekBar2;)V

    .line 283
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/asus/reader/book/ReaderDatabase;->setUnMountListener(Lcom/asus/reader/book/ReaderDatabase$unMountListener;)V

    goto/16 :goto_1

    .line 132
    .end local v9           #dictionaryLayout:Landroid/widget/RelativeLayout;
    .end local v10           #fillParentParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #mainScreen:Landroid/view/ViewGroup;
    .end local v12           #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local p1
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    .line 133
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4240

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 309
    const-string v0, "PDFActivity"

    const-string v1, "==================================ondestroy===================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->isfinish:Z

    if-eqz v0, :cond_2

    .line 311
    const-string v0, "PDFActivity"

    const-string v1, "PTHREAD NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mLoadFailed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mInitSuccess:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFThread;->cleanUp()V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    const/4 v0, 0x0

    sput-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    .line 317
    :cond_2
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mLoadFailed:Z

    if-nez v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/asus/reader/pdf/PDFRenderer;->isfinished:Z

    .line 319
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFReaderView;->requestRender()V

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BoundingBoxView;->destroy()V

    .line 324
    :cond_3
    const-string v0, "PDFActivity"

    const-string v1, "==========onDestroy_FINISHED=========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 321
    :cond_4
    const-string v0, "PDFActivity"

    const-string v1, "Load Document Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 565
    packed-switch p1, :pswitch_data_0

    .line 581
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasSetPages:Z

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iput-boolean v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasSetPages:Z

    .line 569
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFReaderView;->setNeighberPages()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    const/high16 v1, 0x42c8

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/asus/reader/pdf/PDFReaderView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move v0, v4

    .line 572
    goto :goto_0

    .line 574
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasSetPages:Z

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iput-boolean v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasSetPages:Z

    .line 576
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFReaderView;->setNeighberPages()V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    const/high16 v1, -0x3d38

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/asus/reader/pdf/PDFReaderView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move v0, v4

    .line 579
    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 330
    const-string v2, "PDFActivity"

    const-string v3, "==================================onPause===================================="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v2}, Lcom/asus/reader/pdf/PDFReaderView;->onPause()V

    .line 334
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    .line 335
    const/4 v1, 0x1

    .line 336
    .local v1, mflag:Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v2, Lcom/asus/reader/pdf/PDFThread;->isfinish:Z

    if-nez v2, :cond_2

    .line 337
    if-eqz v1, :cond_1

    .line 338
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v2}, Lcom/asus/reader/pdf/PDFThread;->setInterrupt()V

    .line 339
    const/4 v1, 0x0

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v2, Lcom/asus/reader/pdf/PDFThread;->isSleep:Z

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    monitor-enter v2

    .line 344
    :try_start_0
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v3, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 345
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 348
    :cond_2
    const-string v2, "PDFActivity"

    const-string v3, "==========PThread_FINISHED=========="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v2

    iput-boolean v4, v2, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    .line 352
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/ReaderDatabase;->callSyncDB()V

    .line 354
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v2}, Lcom/asus/reader/pdf/PDFReaderView;->finish()V

    .line 355
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/asus/reader/pdf/PDFReaderView;->mControl:Z

    .line 356
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mControlPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 357
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v2, v4}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x9

    if-ge v0, v2, :cond_3

    .line 359
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->PageID:[I

    aput v5, v2, v0

    .line 360
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    aput v4, v2, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 362
    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_4

    .line 363
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aput v5, v2, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 366
    :cond_4
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_6

    .line 367
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 368
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 370
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 373
    :cond_6
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    iput v3, v2, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    .line 374
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/asus/reader/pdf/PDFActivity;->mLastViewPage:D

    .line 376
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/asus/reader/pdf/PDFActivity$7;

    invoke-direct {v3, p0}, Lcom/asus/reader/pdf/PDFActivity$7;-><init>(Lcom/asus/reader/pdf/PDFActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 385
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 390
    const-string v1, "PDFActivity"

    const-string v2, "==================================onResume===================================="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 392
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFReaderView;->onResume()V

    .line 394
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v1

    iput-boolean v3, v1, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    .line 396
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFReaderView;->thread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFReaderView;->startTexHandler()V

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sput-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    .line 401
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->mExeInterrupt:Z

    .line 402
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->isSleep:Z

    if-eqz v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v2, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFCache;->resetParPage()V

    .line 417
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFRenderer;->resetPartialPage()V

    .line 418
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFReaderView;->startPartialPage()V

    .line 420
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    .line 421
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 425
    :cond_2
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/asus/reader/pdf/PDFActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 426
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "PDFActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 427
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 428
    return-void

    .line 405
    .end local v0           #pm:Landroid/os/PowerManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 406
    :cond_3
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->isfinish:Z

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v1, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFReaderView;->rHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFCache;->threadCreate(Lcom/asus/reader/pdf/PDFReaderView$TexHandler;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 408
    iput-boolean v3, p0, Lcom/asus/reader/pdf/PDFActivity;->mLoadFailed:Z

    .line 409
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFActivity;->finish()V

    goto :goto_0

    .line 411
    :cond_4
    iput-boolean v4, p0, Lcom/asus/reader/pdf/PDFActivity;->mLoadFailed:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 489
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-boolean v0, Lcom/asus/reader/pdf/PDFCache;->mEventEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasScale:Z

    if-eqz v0, :cond_2

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->isOnDoubleTap:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 491
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iput-boolean v3, v0, Lcom/asus/reader/pdf/PDFReaderView;->isOnDoubleTap:Z

    .line 492
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 493
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    move v0, v3

    .line 559
    :goto_0
    return v0

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasSetPages:Z

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iput-boolean v3, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasSetPages:Z

    .line 500
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFReaderView;->setNeighberPages()V

    .line 503
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 504
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageChange:Z

    .line 505
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 512
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_4
    :goto_2
    move v0, v4

    .line 559
    goto :goto_0

    .line 507
    :cond_5
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFRenderer;->notShowPartialPage()V

    .line 508
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0, p1}, Lcom/asus/reader/pdf/PDFReaderView;->onScale(Landroid/view/MotionEvent;)V

    .line 509
    iput-boolean v3, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageChange:Z

    goto :goto_1

    .line 514
    :sswitch_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    invoke-virtual {v0}, Lcom/asus/dictionary/Dictionary;->cancelLookupAndInvisible()V

    .line 515
    iput-boolean v3, p0, Lcom/asus/reader/pdf/PDFActivity;->isLookupState:Z

    .line 516
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    const-string v1, "select"

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BoundingBoxView;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 517
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BoundingBoxView;->setVisibility(I)V

    goto :goto_2

    .line 520
    :sswitch_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasScale:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageChange:Z

    if-nez v0, :cond_8

    .line 521
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 522
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    const/high16 v1, -0x3d38

    invoke-virtual {v0, p1, p1, v1, v2}, Lcom/asus/reader/pdf/PDFReaderView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mScrollChangePage:Z

    .line 526
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mScrollChangePage:Z

    if-nez v0, :cond_7

    .line 527
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0, p1}, Lcom/asus/reader/pdf/PDFReaderView;->screenBound(Landroid/view/MotionEvent;)Z

    .line 529
    :cond_7
    iput-boolean v3, p0, Lcom/asus/reader/pdf/PDFActivity;->mScrollChangePage:Z

    .line 531
    :cond_8
    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mPageChange:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mScrollChangePage:Z

    if-nez v0, :cond_4

    .line 532
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFReaderView;->startPartialPage()V

    goto :goto_2

    .line 523
    :cond_9
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-eqz v0, :cond_6

    .line 524
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    const/high16 v1, 0x42c8

    invoke-virtual {v0, p1, p1, v1, v2}, Lcom/asus/reader/pdf/PDFReaderView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mScrollChangePage:Z

    goto :goto_3

    .line 537
    :sswitch_2
    iput-boolean v4, p0, Lcom/asus/reader/pdf/PDFActivity;->isScale:Z

    .line 538
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    invoke-virtual {v0}, Lcom/asus/dictionary/Dictionary;->cancelLookupAndInvisible()V

    .line 539
    iput-boolean v3, p0, Lcom/asus/reader/pdf/PDFActivity;->isLookupState:Z

    .line 540
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    const-string v1, "select"

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BoundingBoxView;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 541
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BoundingBoxView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/pdf/PDFReaderView;->getCenterPoint(FF)V

    goto/16 :goto_2

    .line 546
    :sswitch_3
    iput-boolean v3, p0, Lcom/asus/reader/pdf/PDFActivity;->isScale:Z

    .line 547
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_a

    .line 548
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    const/high16 v1, 0x43c8

    invoke-virtual {v0, v5, v1}, Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FF)V

    .line 554
    :goto_4
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFReaderView;->onScaleReset()V

    goto/16 :goto_2

    .line 549
    :cond_a
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfRenderer:Lcom/asus/reader/pdf/PDFRenderer;

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    const/high16 v1, 0x4180

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 550
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    const/high16 v1, 0x4180

    const/high16 v2, 0x43c8

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FF)V

    goto :goto_4

    .line 552
    :cond_b
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity;->pdfview:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0, p1}, Lcom/asus/reader/pdf/PDFReaderView;->screenBound(Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 512
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x105 -> :sswitch_2
        0x106 -> :sswitch_3
    .end sparse-switch
.end method
