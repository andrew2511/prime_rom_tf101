.class public Lcom/asus/reader/pdf/PDFRenderer;
.super Ljava/lang/Object;
.source "PDFRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static mHPage:[Lcom/asus/reader/pdf/PDFHPage;

.field public static mLoadParPage:[Z

.field public static mPartialScale:D

.field public static mShowParPage:[Z


# instance fields
.field public PageID:[I

.field public TextureID:[I

.field private cache:Lcom/asus/reader/pdf/PDFCache;

.field public currPage:Lcom/asus/reader/pdf/PDFPage;

.field private currentTime:J

.field public isLandscape:Z

.field public isfinished:Z

.field public mCacheIndex:I

.field public mChange:Z

.field public mChangeWhitePage:Z

.field private mContext:Landroid/content/Context;

.field public mCurrentPageReload:Z

.field private mHeight:F

.field public mInitPageNo:I

.field public mLoadBitmap:Z

.field public mLoadPage:Z

.field private mLoadPageId:I

.field public mLowPageReload:Z

.field public mNChanges:Z

.field public mNextPageReload:Z

.field public mPage:[Lcom/asus/reader/pdf/PDFPage;

.field public mPageIndex:I

.field public mPagePath:Ljava/lang/String;

.field public mPrePageReload:Z

.field public mReloadPage:Z

.field public mReloadPageNumber:I

.field private mTemp:I

.field private mTryInterrupt:Z

.field private mWidth:F

.field public nextPage:Lcom/asus/reader/pdf/PDFPage;

.field public pageCount:I

.field public prePage:Lcom/asus/reader/pdf/PDFPage;

.field private projectZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 29
    new-array v0, v1, [Lcom/asus/reader/pdf/PDFHPage;

    sput-object v0, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    .line 55
    new-array v0, v1, [Z

    sput-object v0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadParPage:[Z

    .line 56
    new-array v0, v1, [Z

    sput-object v0, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFILcom/asus/reader/pdf/PDFCache;IZ)V
    .locals 12
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "count"
    .parameter "c"
    .parameter "pageNo"
    .parameter "orientation"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currentTime:J

    .line 28
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/asus/reader/pdf/PDFPage;

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    .line 50
    const/16 v2, 0x9

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->PageID:[I

    .line 51
    const/16 v2, 0x9

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    .line 60
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFRenderer;->mContext:Landroid/content/Context;

    .line 61
    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    .line 62
    iput p2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    .line 63
    iput p3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    .line 64
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPage:Z

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mReloadPage:Z

    .line 66
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadBitmap:Z

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mChange:Z

    .line 68
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mNChanges:Z

    .line 69
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLowPageReload:Z

    .line 70
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCurrentPageReload:Z

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mNextPageReload:Z

    .line 72
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPrePageReload:Z

    .line 73
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mTryInterrupt:Z

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mChangeWhitePage:Z

    .line 75
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    .line 76
    const/4 v2, 0x2

    iput v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCacheIndex:I

    .line 77
    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    .line 78
    move/from16 v0, p7

    move-object v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/pdf/PDFRenderer;->isLandscape:Z

    .line 79
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->isfinished:Z

    .line 80
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v8, v2, :cond_0

    .line 81
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mLoadParPage:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v8

    .line 82
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v8

    .line 80
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const-wide/high16 v2, 0x3ff0

    sput-wide v2, Lcom/asus/reader/pdf/PDFRenderer;->mPartialScale:D

    .line 86
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->isLandscape:Z

    if-eqz v2, :cond_1

    .line 87
    const v2, -0x3fa51eb8

    iput v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->projectZ:F

    .line 92
    :goto_1
    const/4 v8, 0x0

    :goto_2
    const/16 v2, 0x9

    if-ge v8, v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->PageID:[I

    const/4 v3, -0x1

    aput v3, v2, v8

    .line 94
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    const/4 v3, -0x1

    aput v3, v2, v8

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 89
    :cond_1
    const v2, -0x3f68f5c3

    iput v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->projectZ:F

    goto :goto_1

    .line 97
    :cond_2
    iget-object v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    .end local v8           #i:I
    const/4 v9, 0x0

    new-instance v2, Lcom/asus/reader/pdf/PDFPage;

    const/4 v3, 0x0

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v6, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    double-to-float v6, v6

    iget-object v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v7, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    const/4 v10, 0x0

    aget-wide v10, v7, v10

    double-to-float v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/asus/reader/pdf/PDFPage;-><init>(IFFFF)V

    aput-object v2, v8, v9

    .line 98
    iget-object v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v9, 0x1

    new-instance v2, Lcom/asus/reader/pdf/PDFPage;

    const/4 v3, 0x0

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v6, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    double-to-float v6, v6

    iget-object v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v7, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    const/4 v10, 0x0

    aget-wide v10, v7, v10

    double-to-float v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/asus/reader/pdf/PDFPage;-><init>(IFFFF)V

    aput-object v2, v8, v9

    .line 99
    iget-object v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v9, 0x2

    new-instance v2, Lcom/asus/reader/pdf/PDFPage;

    const/4 v3, 0x0

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v6, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    double-to-float v6, v6

    iget-object v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v7, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    const/4 v10, 0x0

    aget-wide v10, v7, v10

    double-to-float v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/asus/reader/pdf/PDFPage;-><init>(IFFFF)V

    aput-object v2, v8, v9

    .line 100
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    .line 101
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x1

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    .line 102
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    .line 103
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    .line 104
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    .line 105
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    .line 107
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v3, 0x0

    new-instance v4, Lcom/asus/reader/pdf/PDFHPage;

    const/4 v5, 0x0

    iget v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-direct {v4, v5, v6, v7}, Lcom/asus/reader/pdf/PDFHPage;-><init>(IFF)V

    aput-object v4, v2, v3

    .line 108
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v3, 0x1

    new-instance v4, Lcom/asus/reader/pdf/PDFHPage;

    const/4 v5, 0x0

    iget v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-direct {v4, v5, v6, v7}, Lcom/asus/reader/pdf/PDFHPage;-><init>(IFF)V

    aput-object v4, v2, v3

    .line 109
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v3, 0x2

    new-instance v4, Lcom/asus/reader/pdf/PDFHPage;

    const/4 v5, 0x0

    iget v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-direct {v4, v5, v6, v7}, Lcom/asus/reader/pdf/PDFHPage;-><init>(IFF)V

    aput-object v4, v2, v3

    .line 110
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v3, 0x3

    new-instance v4, Lcom/asus/reader/pdf/PDFHPage;

    const/4 v5, 0x0

    iget v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-direct {v4, v5, v6, v7}, Lcom/asus/reader/pdf/PDFHPage;-><init>(IFF)V

    aput-object v4, v2, v3

    .line 111
    return-void
.end method


# virtual methods
.method public checkHpageTexture(I)V
    .locals 3
    .parameter "TextureId"

    .prologue
    const/4 v2, -0x1

    .line 495
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->PageID:[I

    aput v2, v1, v0

    .line 498
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    aput v2, v1, v0

    .line 499
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFCache;->reLoadCurrPage()V

    .line 495
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_1
    return-void
.end method

.method public gotoPage(IF)Z
    .locals 5
    .parameter "n"
    .parameter "scale"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v0, p1}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFCache;->resetParPage()V

    .line 391
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFRenderer;->resetPartialPage()V

    .line 392
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    .line 393
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    .line 394
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iput p2, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    .line 395
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iput v2, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 396
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iput v2, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 397
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v1, v1, p1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v2, v2, p1

    double-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 398
    iput-boolean v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mChange:Z

    .line 399
    return v4
.end method

.method public notShowPartialPage()V
    .locals 3

    .prologue
    .line 442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 443
    sget-object v1, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "gl"

    .prologue
    const/high16 v10, 0x4000

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 116
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->isfinished:Z

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->finish(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 119
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->finish(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 120
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->finish(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 121
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v8

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFHPage;->finish(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 122
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v9

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFHPage;->finish(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 123
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v4

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFHPage;->finish(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 124
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFHPage;->finish(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 125
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    .line 127
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    .line 128
    const/4 v2, 0x0

    sput-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    .line 129
    iput-boolean v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->isfinished:Z

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mChangeWhitePage:Z

    if-eqz v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v2, v2, v8

    iget-boolean v2, v2, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget v2, v2, v3

    if-ne v2, v9, :cond_2

    .line 136
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFPage;->mLowPagePath:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v2, v2, v9

    iget-boolean v2, v2, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v3, v3, v9

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget v2, v2, v3

    if-ne v2, v9, :cond_3

    .line 139
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v3, v3, v9

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFPage;->mLowPagePath:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v2, v2, v4

    iget-boolean v2, v2, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    aget v2, v2, v3

    if-ne v2, v9, :cond_4

    .line 142
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFPage;->mLowPagePath:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 144
    :cond_4
    iput-boolean v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mChangeWhitePage:Z

    .line 147
    :cond_5
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mChange:Z

    if-eqz v2, :cond_9

    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x9

    if-ge v0, v2, :cond_6

    .line 149
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->PageID:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-ne v2, v3, :cond_8

    .line 150
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/asus/reader/pdf/PDFPage;->setID(I)V

    .line 151
    iput-boolean v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCurrentPageReload:Z

    .line 155
    :cond_6
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCurrentPageReload:Z

    if-eqz v2, :cond_7

    .line 156
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    invoke-virtual {v2, v3}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPagePath:Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPagePath:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 159
    :cond_7
    const/16 v2, 0x4100

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 160
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 161
    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->projectZ:F

    invoke-interface {p1, v6, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 162
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->setTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 163
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 165
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 166
    iput-boolean v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mChange:Z

    .line 167
    iput-boolean v9, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCurrentPageReload:Z

    goto/16 :goto_0

    .line 148
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    .end local v0           #i:I
    :cond_9
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPage:Z

    if-eqz v2, :cond_d

    .line 170
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    const/16 v2, 0x9

    if-ge v0, v2, :cond_a

    .line 171
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->PageID:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPageId:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-ne v2, v3, :cond_c

    .line 172
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPageId:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/asus/reader/pdf/PDFPage;->setID(I)V

    .line 173
    iput-boolean v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLowPageReload:Z

    .line 178
    :cond_a
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLowPageReload:Z

    if-eqz v2, :cond_b

    .line 179
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPageId:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    invoke-virtual {v2, v3}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPagePath:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPageId:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPagePath:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 181
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 183
    :cond_b
    iput-boolean v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPage:Z

    .line 184
    iput-boolean v9, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLowPageReload:Z

    goto/16 :goto_0

    .line 170
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 188
    .end local v0           #i:I
    :cond_d
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mNChanges:Z

    if-eqz v2, :cond_e

    .line 189
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v3, v3, v9

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    invoke-virtual {v2, v3}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPagePath:Ljava/lang/String;

    .line 190
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPagePath:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    invoke-virtual {v2, v3}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPagePath:Ljava/lang/String;

    .line 192
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPagePath:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 193
    iput-boolean v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mNChanges:Z

    goto/16 :goto_0

    .line 197
    :cond_e
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadBitmap:Z

    if-eqz v2, :cond_10

    .line 198
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPageIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v8}, Lcom/asus/reader/pdf/PDFPage;->getIDs(I)I

    move-result v2

    iput v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mTemp:I

    .line 199
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPageIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v1

    .line 200
    .local v1, loadsuccessful:Z
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPageIndex:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mTemp:I

    invoke-virtual {v2, v3}, Lcom/asus/reader/pdf/PDFPage;->setID(I)V

    .line 202
    if-eqz v1, :cond_10

    .line 203
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 204
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->PageID:[I

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCacheIndex:I

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPageIndex:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->bPage:I

    aput v4, v2, v3

    .line 205
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCacheIndex:I

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPageIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v9}, Lcom/asus/reader/pdf/PDFPage;->getIDs(I)I

    move-result v4

    aput v4, v2, v3

    .line 206
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->PageID:[I

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCacheIndex:I

    aget v3, v3, v4

    if-ne v2, v3, :cond_f

    .line 207
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCacheIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/asus/reader/pdf/PDFPage;->setID(I)V

    .line 209
    :cond_f
    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCacheIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mCacheIndex:I

    .line 210
    iput-boolean v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadBitmap:Z

    .line 215
    .end local v1           #loadsuccessful:Z
    :cond_10
    iget-boolean v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mReloadPage:Z

    if-eqz v2, :cond_11

    .line 216
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->TextureID:[I

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mReloadPageNumber:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/asus/reader/pdf/PDFPage;->setID(I)V

    .line 217
    iput-boolean v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mReloadPage:Z

    .line 221
    :cond_11
    const/16 v2, 0x4100

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 225
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 227
    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->projectZ:F

    invoke-interface {p1, v6, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 228
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->setTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 229
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 230
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_15

    .line 231
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    sub-int/2addr v3, v9

    if-ge v2, v3, :cond_12

    .line 232
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const v4, 0x3e4ccccd

    add-float/2addr v3, v4

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 233
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->setTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 234
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 244
    :cond_12
    :goto_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 245
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/asus/reader/pdf/PDFHPage;->bmPageNo:I

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-ne v2, v3, :cond_14

    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/asus/reader/pdf/PDFHPage;->bmPageLoc:I

    sget-object v3, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    if-ne v2, v3, :cond_14

    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/asus/reader/pdf/PDFHPage;->bmPageScale:I

    int-to-double v2, v2

    sget-wide v4, Lcom/asus/reader/pdf/PDFRenderer;->mPartialScale:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_14

    .line 246
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mLoadParPage:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_13

    .line 247
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFHPage;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 248
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFHPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 249
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFHPage;->textureIDs:[I

    aget v2, v2, v8

    invoke-virtual {p0, v2}, Lcom/asus/reader/pdf/PDFRenderer;->checkHpageTexture(I)V

    .line 250
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    aput-boolean v9, v2, v0

    .line 251
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    iput-boolean v9, v2, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 252
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mLoadParPage:[Z

    aput-boolean v8, v2, v0

    .line 255
    :cond_13
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mShowParPage:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_14

    .line 256
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->scale:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v4, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    double-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lcom/asus/reader/pdf/PDFHPage;->scale:F

    .line 257
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    sget-object v3, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v3, v3, v0

    sget v3, Lcom/asus/reader/pdf/PDFHPage;->mBaseTranslateX:F

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v8

    sget v4, Lcom/asus/reader/pdf/PDFHPage;->mParPageWidth:F

    mul-float/2addr v4, v10

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v6, v6

    rem-int/2addr v5, v6

    sub-int/2addr v5, v9

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageWidth:F

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v0

    sget v4, Lcom/asus/reader/pdf/PDFHPage;->mParPageWidth:F

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageWidth:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/asus/reader/pdf/PDFHPage;->translateX:F

    .line 258
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    sget-object v3, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v3, v3, v0

    sget v3, Lcom/asus/reader/pdf/PDFHPage;->mBaseTranslateY:F

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v8

    sget v4, Lcom/asus/reader/pdf/PDFHPage;->mParPageHeight:F

    mul-float/2addr v4, v10

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v6, v6

    div-int/2addr v5, v6

    sub-int/2addr v5, v9

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/asus/reader/pdf/PDFHPage;->mPageHeight:F

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget-object v4, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/asus/reader/pdf/PDFHPage;->mPageHeight:F

    sget-object v5, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v5, v5, v0

    sget v5, Lcom/asus/reader/pdf/PDFHPage;->mParPageHeight:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/asus/reader/pdf/PDFHPage;->translateY:F

    .line 259
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFHPage;->setTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 260
    sget-object v2, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFHPage;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 244
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 236
    .end local v0           #i:I
    :cond_15
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_12

    .line 237
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-lez v2, :cond_12

    .line 238
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x3e4ccccd

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 239
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->setTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 240
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v2, p1}, Lcom/asus/reader/pdf/PDFPage;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_3
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 278
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 280
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 282
    const/high16 v0, 0x4234

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    const v2, 0x3dcccccd

    const/high16 v3, 0x42c8

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 284
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 286
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 287
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8
    .parameter "gl"
    .parameter "config"

    .prologue
    const v3, 0x3f19999a

    const v7, 0x3e4ccccd

    const/4 v6, 0x1

    .line 291
    const-string v1, "PDFRenderer"

    const-string v2, "==========onSurfaceCreated=========="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/high16 v1, 0x3f00

    invoke-interface {p1, v3, v3, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 295
    const/16 v1, 0x1d01

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 297
    const/high16 v1, 0x3f80

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 299
    const/16 v1, 0xb71

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 301
    const/16 v1, 0x203

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 303
    const/16 v1, 0xc50

    const/16 v2, 0x1102

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 307
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, initPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    aget-wide v3, v3, v4

    double-to-float v3, v3

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    iget v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    aget-wide v4, v4, v5

    double-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 309
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v1, p1, v0}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 310
    iget v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    if-le v1, v6, :cond_0

    .line 311
    iget v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    if-nez v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    invoke-virtual {v1, v6}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v2, v2, v6

    double-to-float v2, v2

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v3, v3, v6

    double-to-float v3, v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 314
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v1, p1, v0}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v2, v7

    iput v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 333
    :cond_0
    :goto_0
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 334
    return-void

    .line 316
    :cond_1
    iget v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    sub-int/2addr v2, v6

    if-ne v1, v2, :cond_2

    .line 317
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    sub-int/2addr v2, v6

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    sub-int/2addr v4, v6

    aget-wide v3, v3, v4

    double-to-float v3, v3

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    iget v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    sub-int/2addr v5, v6

    aget-wide v4, v4, v5

    double-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 319
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v1, p1, v0}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-float/2addr v2, v7

    iput v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    goto :goto_0

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    add-int/lit8 v4, v4, 0x1

    aget-wide v3, v3, v4

    double-to-float v3, v3

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    iget v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    double-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 324
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v1, p1, v0}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v2, v7

    iput v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 326
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFCache;->getPDFPage(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    sub-int/2addr v2, v6

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    sub-int/2addr v4, v6

    aget-wide v3, v3, v4

    double-to-float v3, v3

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    iget v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->mInitPageNo:I

    sub-int/2addr v5, v6

    aget-wide v4, v4, v5

    double-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 328
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v1, p1, v0}, Lcom/asus/reader/pdf/PDFPage;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-float/2addr v2, v7

    iput v2, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    goto/16 :goto_0
.end method

.method public orientation(ZFF)V
    .locals 10
    .parameter "b"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/asus/reader/pdf/PDFRenderer;->isLandscape:Z

    .line 449
    iget-boolean v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->isLandscape:Z

    if-eqz v6, :cond_0

    .line 450
    const v6, -0x3fa51eb8

    iput v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->projectZ:F

    .line 454
    :goto_0
    iput p2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    .line 455
    iput p3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    .line 456
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-virtual {v6, v7, v8}, Lcom/asus/reader/pdf/PDFCache;->setScreenSize(FF)V

    .line 457
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    .line 458
    .local v1, currPageNo:I
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    .line 459
    .local v3, nextPageNo:I
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v6, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    .line 460
    .local v5, prePageNo:I
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/asus/reader/pdf/PDFPage;->getIDs(I)I

    move-result v0

    .line 461
    .local v0, currPageID:I
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/asus/reader/pdf/PDFPage;->getIDs(I)I

    move-result v2

    .line 462
    .local v2, nextPageID:I
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/asus/reader/pdf/PDFPage;->getIDs(I)I

    move-result v4

    .line 463
    .local v4, prePageID:I
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-virtual {v6, v7, v8}, Lcom/asus/reader/pdf/PDFPage;->setScreenBase(FF)V

    .line 464
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-virtual {v6, v7, v8}, Lcom/asus/reader/pdf/PDFPage;->setScreenBase(FF)V

    .line 465
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-virtual {v6, v7, v8}, Lcom/asus/reader/pdf/PDFPage;->setScreenBase(FF)V

    .line 466
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v7, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v7, v7, v1

    double-to-float v7, v7

    iget-object v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v8, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v8, v8, v1

    double-to-float v8, v8

    invoke-virtual {v6, v1, v7, v8}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 467
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v7, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v7, v7, v3

    double-to-float v7, v7

    iget-object v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v8, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v8, v8, v3

    double-to-float v8, v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 468
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v7, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v7, v7, v5

    double-to-float v7, v7

    iget-object v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v8, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v8, v8, v5

    double-to-float v8, v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 469
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    .line 470
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    .line 471
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    .line 472
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    iput v7, v6, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    .line 473
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    .line 474
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x2

    iput v7, v6, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    .line 475
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v6, v0}, Lcom/asus/reader/pdf/PDFPage;->setID(I)V

    .line 476
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v6, v2}, Lcom/asus/reader/pdf/PDFPage;->setID(I)V

    .line 477
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v6, v4}, Lcom/asus/reader/pdf/PDFPage;->setID(I)V

    .line 478
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v6}, Lcom/asus/reader/pdf/PDFPage;->setDefault()V

    .line 479
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v6}, Lcom/asus/reader/pdf/PDFPage;->setDefault()V

    .line 480
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    invoke-virtual {v6}, Lcom/asus/reader/pdf/PDFPage;->setDefault()V

    .line 481
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v7, v7, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v9, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v9, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v8, v8, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v9, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v9, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const v8, 0x3e4ccccd

    add-float/2addr v7, v8

    iput v7, v6, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 482
    iget-object v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v7, v7, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v9, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v9, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v8, v8, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v9, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v9, v9, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    const v8, 0x3e4ccccd

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 483
    sget-object v6, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-virtual {v6, v7, v8}, Lcom/asus/reader/pdf/PDFHPage;->screenRotate(FF)V

    .line 484
    sget-object v6, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-virtual {v6, v7, v8}, Lcom/asus/reader/pdf/PDFHPage;->screenRotate(FF)V

    .line 485
    sget-object v6, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-virtual {v6, v7, v8}, Lcom/asus/reader/pdf/PDFHPage;->screenRotate(FF)V

    .line 486
    sget-object v6, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    iget v7, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget v8, p0, Lcom/asus/reader/pdf/PDFRenderer;->mHeight:F

    invoke-virtual {v6, v7, v8}, Lcom/asus/reader/pdf/PDFHPage;->screenRotate(FF)V

    .line 487
    return-void

    .line 452
    .end local v0           #currPageID:I
    .end local v1           #currPageNo:I
    .end local v2           #nextPageID:I
    .end local v3           #nextPageNo:I
    .end local v4           #prePageID:I
    .end local v5           #prePageNo:I
    :cond_0
    const v6, -0x3f68f5c3

    iput v6, p0, Lcom/asus/reader/pdf/PDFRenderer;->projectZ:F

    goto/16 :goto_0
.end method

.method public resetPartialPage()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 431
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 432
    sget-object v1, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    .line 433
    sget-object v1, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/asus/reader/pdf/PDFHPage;->bmPageNo:I

    .line 434
    sget-object v1, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/asus/reader/pdf/PDFHPage;->bmPageLoc:I

    .line 435
    sget-object v1, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lcom/asus/reader/pdf/PDFHPage;->bmPageScale:I

    .line 436
    sget-object v1, Lcom/asus/reader/pdf/PDFRenderer;->mHPage:[Lcom/asus/reader/pdf/PDFHPage;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/pdf/PDFRenderer;->notShowPartialPage()V

    .line 439
    return-void
.end method

.method public setNPages()V
    .locals 8

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    const v7, 0x3e4ccccd

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 403
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    .line 404
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v5

    iput v5, v0, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    .line 405
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iput v2, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    .line 406
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 407
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    .line 408
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v6

    iput v6, v0, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    .line 409
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iput v2, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    .line 410
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 411
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v1, v1, v5

    double-to-float v1, v1

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v2, v2, v5

    double-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 413
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v1, v7

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 423
    :goto_0
    iput-boolean v5, p0, Lcom/asus/reader/pdf/PDFRenderer;->mNChanges:Z

    .line 424
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    iget v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v6

    iget v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    sub-int/2addr v1, v6

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    iget v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    sub-int/2addr v3, v6

    aget-wide v2, v2, v3

    double-to-float v2, v2

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    iget v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    sub-int/2addr v4, v6

    aget-wide v3, v3, v4

    double-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 416
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr v1, v7

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    double-to-float v2, v2

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    add-int/lit8 v4, v4, 0x1

    aget-wide v3, v3, v4

    double-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 419
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sub-int/2addr v1, v5

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sub-int/2addr v3, v5

    aget-wide v2, v2, v3

    double-to-float v2, v2

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sub-int/2addr v4, v5

    aget-wide v3, v3, v4

    double-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 420
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v1, v7

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 421
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr v1, v7

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    goto/16 :goto_0
.end method

.method public setNextPage(I)Z
    .locals 5
    .parameter "LoadNo"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 337
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPageId:I

    .line 338
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    .line 339
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    .line 340
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    iget v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->pageCount:I

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 358
    :goto_0
    return v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->isLoadingNormalPage:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mTryInterrupt:Z

    if-eqz v0, :cond_1

    .line 345
    iput-boolean v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mTryInterrupt:Z

    .line 346
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    if-nez v0, :cond_1

    .line 347
    const-string v0, "PDFRenderer"

    const-string v1, "^^^^^^^^^^^Has done^^^^^^^^^^^^^^^^^"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    .line 349
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFThread;->setInterrupt()V

    .line 353
    :cond_1
    iput-boolean v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mTryInterrupt:Z

    .line 355
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPageId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v1, v1, p1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v2, v2, p1

    double-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 356
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPageId:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    .line 357
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x3e4ccccd

    add-float/2addr v1, v2

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    move v0, v4

    .line 358
    goto :goto_0
.end method

.method public setPartialScale(D)V
    .locals 0
    .parameter "Scale"

    .prologue
    .line 491
    sput-wide p1, Lcom/asus/reader/pdf/PDFRenderer;->mPartialScale:D

    .line 492
    return-void
.end method

.method public setPrePage(I)Z
    .locals 5
    .parameter "LoadNo"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 363
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPageId:I

    .line 364
    const-string v0, "PDFRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->nextPage:Lcom/asus/reader/pdf/PDFPage;

    .line 366
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->mPageID:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    .line 367
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-nez v0, :cond_0

    move v0, v3

    .line 384
    :goto_0
    return v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->isLoadingNormalPage:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mTryInterrupt:Z

    if-eqz v0, :cond_1

    .line 372
    iput-boolean v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->mTryInterrupt:Z

    .line 373
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sput-boolean v4, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    .line 375
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFThread;->setInterrupt()V

    .line 379
    :cond_1
    iput-boolean v4, p0, Lcom/asus/reader/pdf/PDFRenderer;->mTryInterrupt:Z

    .line 381
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPageId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aget-wide v1, v1, p1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aget-wide v2, v2, p1

    double-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 382
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->mPage:[Lcom/asus/reader/pdf/PDFPage;

    iget v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->mLoadPageId:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    .line 383
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFRenderer;->prePage:Lcom/asus/reader/pdf/PDFPage;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/asus/reader/pdf/PDFRenderer;->mWidth:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const v2, 0x3e4ccccd

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    move v0, v4

    .line 384
    goto :goto_0
.end method
