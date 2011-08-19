.class public Lcom/asus/reader/pdf/PDFCache;
.super Ljava/lang/Object;
.source "PDFCache.java"


# static fields
.field public static PDFPage:[I

.field private static cacheIsFull:Z

.field public static final cachePage:[Ljava/lang/String;

.field public static cachePageNumber:[I

.field public static cacheParPageNumber:[I

.field public static currentPage:I

.field public static dpi:[D

.field public static glScale:D

.field public static hPar:D

.field public static isOrient:Z

.field public static mEventEnable:Z

.field public static mLoadParPage:Z

.field public static mModHeight:D

.field public static mModWidth:D

.field public static mPageCount:I

.field private static mPageNo:I

.field public static mParPageLocation:I

.field public static mScale:D

.field public static mScaleBase:D

.field public static mScreenHeightPixel:D

.field public static mScreenWidthPixel:D

.field private static mTexHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

.field public static mThreadCheck:Z

.field private static mTryInterrupt:Z

.field private static mfilePath:Ljava/lang/String;

.field public static pageHeight:[D

.field public static pageWidth:[D

.field public static pthread:Lcom/asus/reader/pdf/PDFThread;

.field public static screenHeight:F

.field public static screenWidth:F

.field public static wPar:D


# instance fields
.field public isOnCreate:Z

.field private mParPageIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/data/com.asus.reader/cache/npage0.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/data/data/com.asus.reader/cache/npage1.png"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/data/data/com.asus.reader/cache/npage2.png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/data/data/com.asus.reader/cache/npage3.png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/pdf/PDFCache;->cachePage:[Ljava/lang/String;

    .line 51
    new-array v0, v3, [I

    sput-object v0, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    .line 52
    const/16 v0, 0x54

    new-array v0, v0, [I

    sput-object v0, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/asus/reader/pdf/PDFReaderView$TexHandler;)V
    .locals 10
    .parameter "file"
    .parameter "pageNo"
    .parameter "mHandler"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const-wide/high16 v6, 0x3ff0

    const/4 v5, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sput p2, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    .line 56
    invoke-direct {p0}, Lcom/asus/reader/pdf/PDFCache;->checkThread()V

    .line 57
    sput-object p1, Lcom/asus/reader/pdf/PDFCache;->mfilePath:Ljava/lang/String;

    .line 58
    sput p2, Lcom/asus/reader/pdf/PDFCache;->mPageNo:I

    .line 59
    sput-object p3, Lcom/asus/reader/pdf/PDFCache;->mTexHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    .line 60
    iput-boolean v9, p0, Lcom/asus/reader/pdf/PDFCache;->isOnCreate:Z

    .line 61
    new-instance v1, Lcom/asus/reader/pdf/PDFThread;

    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->mfilePath:Ljava/lang/String;

    sget v3, Lcom/asus/reader/pdf/PDFCache;->mPageNo:I

    sget-object v4, Lcom/asus/reader/pdf/PDFCache;->mTexHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/asus/reader/pdf/PDFThread;-><init>(Lcom/asus/reader/pdf/PDFCache;Ljava/lang/String;ILcom/asus/reader/pdf/PDFReaderView$TexHandler;)V

    sput-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    .line 62
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    const-string v2, "PDFThread"

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFThread;->setName(Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->mInitSuccess:Z

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFThread;->getTotalPageCount()I

    move-result v1

    sput v1, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    .line 68
    sget v1, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    new-array v1, v1, [I

    sput-object v1, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    .line 69
    sget v1, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    new-array v1, v1, [D

    sput-object v1, Lcom/asus/reader/pdf/PDFCache;->dpi:[D

    .line 70
    sget v1, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    new-array v1, v1, [D

    sput-object v1, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    .line 71
    sget v1, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    new-array v1, v1, [D

    sput-object v1, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    .line 72
    sput-boolean v9, Lcom/asus/reader/pdf/PDFCache;->mEventEnable:Z

    .line 73
    sput-boolean v9, Lcom/asus/reader/pdf/PDFCache;->mTryInterrupt:Z

    .line 74
    sput-boolean v5, Lcom/asus/reader/pdf/PDFCache;->mLoadParPage:Z

    .line 75
    sput-boolean v5, Lcom/asus/reader/pdf/PDFCache;->isOrient:Z

    .line 76
    sput-boolean v5, Lcom/asus/reader/pdf/PDFCache;->cacheIsFull:Z

    .line 77
    iput v8, p0, Lcom/asus/reader/pdf/PDFCache;->mParPageIndex:I

    .line 79
    sput v5, Lcom/asus/reader/pdf/PDFCache;->mParPageLocation:I

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 81
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aput v8, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x54

    if-ge v0, v1, :cond_3

    .line 85
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    aput v8, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    :cond_3
    const/4 v0, 0x0

    :goto_3
    sget v1, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    if-ge v0, v1, :cond_4

    .line 90
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    aput v5, v1, v0

    .line 91
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->dpi:[D

    aput-wide v6, v1, v0

    .line 92
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    aput-wide v6, v1, v0

    .line 93
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    aput-wide v6, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 96
    :cond_4
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->mInitSuccess:Z

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFThread;->start()V

    goto :goto_0
.end method

.method private checkLocation(III)Z
    .locals 2
    .parameter "sLoc"
    .parameter "cLoc"
    .parameter "par"

    .prologue
    const/4 v1, 0x1

    .line 268
    sub-int v0, p1, p3

    sub-int/2addr v0, v1

    if-eq v0, p2, :cond_0

    sub-int v0, p1, p3

    if-eq v0, p2, :cond_0

    sub-int v0, p1, p3

    add-int/lit8 v0, v0, 0x1

    if-eq v0, p2, :cond_0

    sub-int v0, p1, v1

    if-eq v0, p2, :cond_0

    if-eq p1, p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    if-eq v0, p2, :cond_0

    add-int v0, p1, p3

    sub-int/2addr v0, v1

    if-eq v0, p2, :cond_0

    add-int v0, p1, p3

    if-eq v0, p2, :cond_0

    add-int v0, p1, p3

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_1

    :cond_0
    move v0, v1

    .line 272
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    const/4 v1, 0x1

    sput-boolean v1, Lcom/asus/reader/pdf/PDFCache;->mThreadCheck:Z

    .line 104
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    if-eqz v1, :cond_3

    .line 105
    const-string v1, "PDFCache"

    const-string v2, "==========THREAD_ALIVE=========="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sput-boolean v3, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    .line 107
    const/4 v0, 0x1

    .line 108
    .local v0, mflag:Z
    :cond_0
    :goto_0
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->isfinish:Z

    if-nez v1, :cond_2

    .line 109
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 110
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFThread;->setInterrupt()V

    .line 111
    const/4 v0, 0x0

    .line 113
    :cond_1
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->isSleep:Z

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 119
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    .line 120
    const-string v1, "PDFCache"

    const-string v2, "==========THREAD_DEAD=========="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v0           #mflag:Z
    :goto_1
    return-void

    .line 122
    :cond_3
    sput-boolean v3, Lcom/asus/reader/pdf/PDFCache;->mThreadCheck:Z

    goto :goto_1
.end method


# virtual methods
.method public getPDFPage(I)Ljava/lang/String;
    .locals 4
    .parameter "n"

    .prologue
    const/4 v3, 0x1

    .line 127
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->isSleep:Z

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    aget v1, v1, p1

    if-nez v1, :cond_3

    .line 134
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->isLoadingNormalPage:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/asus/reader/pdf/PDFCache;->mTryInterrupt:Z

    if-eqz v1, :cond_1

    .line 135
    const/4 v1, 0x0

    sput-boolean v1, Lcom/asus/reader/pdf/PDFCache;->mTryInterrupt:Z

    .line 136
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    if-nez v1, :cond_1

    .line 137
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sput-boolean v3, Lcom/asus/reader/pdf/PDFThread;->needInterrupt:Z

    .line 138
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v1}, Lcom/asus/reader/pdf/PDFThread;->setInterrupt()V

    .line 141
    :cond_1
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->isSleep:Z

    if-eqz v1, :cond_2

    .line 142
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    monitor-enter v1

    .line 143
    :try_start_1
    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 144
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    :cond_2
    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    .line 130
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 144
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 149
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 150
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->cachePageNumber:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_4

    .line 151
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    const/4 v2, 0x2

    aput v2, v1, p1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_5
    sput-boolean v3, Lcom/asus/reader/pdf/PDFCache;->mTryInterrupt:Z

    .line 157
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->PDFPage:[I

    aput v3, v1, p1

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.asus.reader/cache/lpage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public partialPageCacheLoc(III)I
    .locals 2
    .parameter "page"
    .parameter "loc"
    .parameter "scale"

    .prologue
    .line 241
    mul-int/lit16 v0, p1, 0x2710

    mul-int/lit8 v1, p2, 0xa

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    return v0
.end method

.method public reLoadCurrPage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 277
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->mTexHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->removeMessages(I)V

    .line 278
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->mTexHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v1, v2}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->mTexHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-virtual {v1, v0}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method public resetParPage()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/reader/pdf/PDFCache;->mLoadParPage:Z

    .line 227
    return-void
.end method

.method public selectCacheNo(I)I
    .locals 10
    .parameter "cacheNo"

    .prologue
    const/16 v9, 0x54

    .line 245
    div-int/lit16 v5, p1, 0x2710

    .line 246
    .local v5, page:I
    rem-int/lit16 v7, p1, 0x2710

    div-int/lit8 v4, v7, 0xa

    .line 247
    .local v4, location:I
    rem-int/lit8 v6, p1, 0xa

    .line 249
    .local v6, scale:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_1

    .line 250
    iget v7, p0, Lcom/asus/reader/pdf/PDFCache;->mParPageIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/asus/reader/pdf/PDFCache;->mParPageIndex:I

    .line 251
    iget v7, p0, Lcom/asus/reader/pdf/PDFCache;->mParPageIndex:I

    if-ne v7, v9, :cond_0

    .line 252
    const/4 v7, 0x0

    iput v7, p0, Lcom/asus/reader/pdf/PDFCache;->mParPageIndex:I

    .line 254
    :cond_0
    sget-object v7, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    iget v8, p0, Lcom/asus/reader/pdf/PDFCache;->mParPageIndex:I

    aget v7, v7, v8

    div-int/lit16 v1, v7, 0x2710

    .line 255
    .local v1, cPage:I
    sget-object v7, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    iget v8, p0, Lcom/asus/reader/pdf/PDFCache;->mParPageIndex:I

    aget v7, v7, v8

    rem-int/lit16 v7, v7, 0x2710

    div-int/lit8 v0, v7, 0xa

    .line 256
    .local v0, cLocation:I
    sget-object v7, Lcom/asus/reader/pdf/PDFCache;->cacheParPageNumber:[I

    iget v8, p0, Lcom/asus/reader/pdf/PDFCache;->mParPageIndex:I

    aget v7, v7, v8

    rem-int/lit8 v2, v7, 0xa

    .line 257
    .local v2, cScale:I
    if-ne v5, v1, :cond_1

    if-ne v6, v2, :cond_1

    sget-wide v7, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v7, v7

    invoke-direct {p0, v4, v0, v7}, Lcom/asus/reader/pdf/PDFCache;->checkLocation(III)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v0           #cLocation:I
    .end local v1           #cPage:I
    .end local v2           #cScale:I
    :cond_1
    iget v7, p0, Lcom/asus/reader/pdf/PDFCache;->mParPageIndex:I

    return v7
.end method

.method public setPageLocation(FFFFFF)I
    .locals 6
    .parameter "boundX"
    .parameter "boundY"
    .parameter "translateX"
    .parameter "translateY"
    .parameter "mXAxis"
    .parameter "mYAxis"

    .prologue
    const/4 v5, 0x1

    .line 195
    sub-float v2, p1, p3

    div-float/2addr v2, p5

    float-to-int v0, v2

    .line 196
    .local v0, x:I
    add-float v2, p2, p4

    div-float/2addr v2, p6

    float-to-int v1, v2

    .line 198
    .local v1, y:I
    if-gez v0, :cond_3

    .line 199
    const/4 v0, 0x0

    .line 204
    :cond_0
    :goto_0
    if-gez v1, :cond_4

    .line 205
    const/4 v1, 0x0

    .line 210
    :cond_1
    :goto_1
    sget-wide v2, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v2, v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    sput v2, Lcom/asus/reader/pdf/PDFCache;->mParPageLocation:I

    .line 211
    const-string v2, "PDFCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===================================LOCATION = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/asus/reader/pdf/PDFCache;->mParPageLocation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v2}, Lcom/asus/reader/pdf/PDFThread;->resetParPageStatus()V

    .line 215
    sput-boolean v5, Lcom/asus/reader/pdf/PDFCache;->mLoadParPage:Z

    .line 216
    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v2, Lcom/asus/reader/pdf/PDFThread;->isSleep:Z

    if-eqz v2, :cond_2

    .line 217
    sget-object v2, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    monitor-enter v2

    .line 218
    :try_start_0
    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 219
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_2
    sget v2, Lcom/asus/reader/pdf/PDFCache;->mParPageLocation:I

    return v2

    .line 200
    :cond_3
    sget-wide v2, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v2, v2

    sub-int/2addr v2, v5

    if-le v0, v2, :cond_0

    .line 201
    sget-wide v2, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    double-to-int v2, v2

    sub-int v0, v2, v5

    goto :goto_0

    .line 206
    :cond_4
    sget-wide v2, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    double-to-int v2, v2

    sub-int/2addr v2, v5

    if-le v1, v2, :cond_1

    .line 207
    sget-wide v2, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    double-to-int v2, v2

    sub-int v1, v2, v5

    goto :goto_1

    .line 219
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setPartialPageInit(DIF)D
    .locals 14
    .parameter "tScale"
    .parameter "pageBase"
    .parameter "initScale"

    .prologue
    .line 163
    sput-wide p1, Lcom/asus/reader/pdf/PDFCache;->mScale:D

    .line 164
    sput-wide p1, Lcom/asus/reader/pdf/PDFCache;->glScale:D

    .line 167
    sget-object v6, Lcom/asus/reader/pdf/PDFCache;->pageWidth:[D

    sget v7, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    aget-wide v4, v6, v7

    .line 168
    .local v4, mWidth:D
    sget-object v6, Lcom/asus/reader/pdf/PDFCache;->pageHeight:[D

    sget v7, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    aget-wide v2, v6, v7

    .line 169
    .local v2, mHeight:D
    const-wide/high16 v6, 0x4094

    sput-wide v6, Lcom/asus/reader/pdf/PDFCache;->mScreenWidthPixel:D

    .line 170
    const-wide/high16 v6, 0x4094

    sput-wide v6, Lcom/asus/reader/pdf/PDFCache;->mScreenHeightPixel:D

    .line 172
    const/4 v6, 0x1

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_0

    .line 173
    move/from16 v0, p4

    float-to-double v0, v0

    move-wide v6, v0

    div-double v6, v2, v6

    sput-wide v6, Lcom/asus/reader/pdf/PDFCache;->mScaleBase:D

    .line 178
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->mScale:D

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->mScreenWidthPixel:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    sput-wide v6, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    .line 179
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->mScale:D

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->mScreenHeightPixel:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    sput-wide v6, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    .line 180
    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->mScale:D

    mul-double/2addr v6, v4

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->mScreenWidthPixel:D

    sget-wide v10, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->mScreenWidthPixel:D

    div-double/2addr v6, v8

    sput-wide v6, Lcom/asus/reader/pdf/PDFCache;->mModWidth:D

    .line 181
    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->mScale:D

    mul-double/2addr v6, v2

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->mScreenHeightPixel:D

    sget-wide v10, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->mScreenHeightPixel:D

    div-double/2addr v6, v8

    sput-wide v6, Lcom/asus/reader/pdf/PDFCache;->mModHeight:D

    .line 182
    const-string v6, "PDFCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "====================(wPar,hPar)=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->wPar:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->hPar:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")===================="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v6, "PDFCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "====================(mWidth,mHeight)=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")===================="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v6, "PDFCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "====================(mScreenWidthPixel,mScreenHeightPixel)=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->mScreenWidthPixel:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/asus/reader/pdf/PDFCache;->mScreenHeightPixel:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")================"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-wide v6, Lcom/asus/reader/pdf/PDFCache;->mScreenWidthPixel:D

    return-wide v6

    .line 175
    :cond_0
    move/from16 v0, p4

    float-to-double v0, v0

    move-wide v6, v0

    div-double v6, v4, v6

    sput-wide v6, Lcom/asus/reader/pdf/PDFCache;->mScaleBase:D

    goto/16 :goto_0
.end method

.method public setScreenSize(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 189
    sput p1, Lcom/asus/reader/pdf/PDFCache;->screenWidth:F

    .line 190
    sput p2, Lcom/asus/reader/pdf/PDFCache;->screenHeight:F

    .line 191
    return-void
.end method

.method public threadCreate(Lcom/asus/reader/pdf/PDFReaderView$TexHandler;)Z
    .locals 4
    .parameter "h"

    .prologue
    .line 230
    sput-object p1, Lcom/asus/reader/pdf/PDFCache;->mTexHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    .line 231
    new-instance v0, Lcom/asus/reader/pdf/PDFThread;

    sget-object v1, Lcom/asus/reader/pdf/PDFCache;->mfilePath:Ljava/lang/String;

    sget v2, Lcom/asus/reader/pdf/PDFCache;->mPageNo:I

    sget-object v3, Lcom/asus/reader/pdf/PDFCache;->mTexHandler:Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/asus/reader/pdf/PDFThread;-><init>(Lcom/asus/reader/pdf/PDFCache;Ljava/lang/String;ILcom/asus/reader/pdf/PDFReaderView$TexHandler;)V

    sput-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    .line 232
    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    const-string v1, "PDFThread"

    invoke-virtual {v0, v1}, Lcom/asus/reader/pdf/PDFThread;->setName(Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    sget-boolean v0, Lcom/asus/reader/pdf/PDFThread;->mInitSuccess:Z

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/asus/reader/pdf/PDFCache;->pthread:Lcom/asus/reader/pdf/PDFThread;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFThread;->start()V

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
