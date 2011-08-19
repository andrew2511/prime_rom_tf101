.class public Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;
.super Ljava/lang/Object;
.source "PageCellsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;,
        Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;,
        Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;,
        Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field public static final PAGE_CELL_HEIGHT:I = 0xc8

.field public static final PAGE_CELL_WIDTH:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "PageCellsManager"


# instance fields
.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBackgroundThreadHandler:Landroid/os/Handler;

.field private mBitmapsType:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

.field private mCacheDir:Ljava/io/File;

.field private mCells:[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

.field private mColumns:I

.field private mOnBitmapLoadedListener:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;

.field private mPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

.field private mRows:I

.field private mUIThreadHandler:Landroid/os/Handler;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 10
    .parameter "context"
    .parameter "page"

    .prologue
    const/high16 v9, 0x4348

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mCacheDir:Ljava/io/File;

    .line 67
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getZoomsFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    sget-object v6, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->UNKNOWN:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    iput-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBitmapsType:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    .line 73
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v5, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    .line 74
    .local v5, w:I
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v1, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    .line 75
    .local v1, h:I
    int-to-float v6, v1

    div-float/2addr v6, v9

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mRows:I

    .line 76
    int-to-float v6, v5

    div-float/2addr v6, v9

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mColumns:I

    .line 77
    iget v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mRows:I

    iget v7, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mColumns:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    iput-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mCells:[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    .line 78
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mRows:I

    if-lt v2, v6, :cond_1

    .line 90
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mUIThreadHandler:Landroid/os/Handler;

    .line 91
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "PageCellsManager.HandlerThread"

    const/16 v8, 0xa

    invoke-direct {v6, v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 92
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 93
    :cond_0
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    new-instance v6, Landroid/os/Handler;

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBackgroundThreadHandler:Landroid/os/Handler;

    .line 95
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->putBitmapsIntoCache()V

    .line 96
    return-void

    .line 68
    .end local v1           #h:I
    .end local v2           #i:I
    .end local v5           #w:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "PageCellsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 79
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #h:I
    .restart local v2       #i:I
    .restart local v5       #w:I
    :cond_1
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    iget v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mColumns:I

    if-lt v3, v6, :cond_2

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v4, rect:Landroid/graphics/Rect;
    mul-int/lit16 v6, v3, 0xc8

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 82
    mul-int/lit16 v6, v2, 0xc8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 83
    add-int/lit8 v6, v3, 0x1

    mul-int/lit16 v6, v6, 0xc8

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 84
    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-le v6, v5, :cond_3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 85
    :cond_3
    add-int/lit8 v6, v2, 0x1

    mul-int/lit16 v6, v6, 0xc8

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 86
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-le v6, v1, :cond_4

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 87
    :cond_4
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mCells:[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    aget-object v6, v6, v2

    new-instance v7, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    invoke-direct {v7, p0, v4}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;-><init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;Landroid/graphics/Rect;)V

    aput-object v7, v6, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBackgroundThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mCells:[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mUIThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mOnBitmapLoadedListener:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/util/zip/ZipFile;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mZipFile:Ljava/util/zip/ZipFile;

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBitmapsType:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    return-object v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBitmapsType:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    return-void
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mRows:I

    return v0
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mColumns:I

    return v0
.end method

.method private putBitmapsIntoCache()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)V

    .line 170
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$1;->start()V

    .line 171
    return-void
.end method


# virtual methods
.method public getVisiblePageCells(Landroid/graphics/RectF;F)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;
    .locals 1
    .parameter "screen"
    .parameter "scale"

    .prologue
    .line 140
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-direct {v0, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;-><init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;Landroid/graphics/RectF;F)V

    return-object v0
.end method

.method public recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 104
    :cond_0
    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mOnBitmapLoadedListener:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mRows:I

    if-lt v0, v2, :cond_3

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 112
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_2

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mZipFile:Ljava/util/zip/ZipFile;

    .line 116
    :cond_2
    return-void

    .line 106
    :cond_3
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    iget v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mColumns:I

    if-lt v1, v2, :cond_4

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_4
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mCells:[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$5(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 113
    .end local v1           #j:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public recycleBitmaps()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mRows:I

    if-lt v0, v2, :cond_0

    .line 124
    return-void

    .line 120
    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mColumns:I

    if-lt v1, v2, :cond_1

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mCells:[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$6(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setOnBitmapLoadedListener(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mOnBitmapLoadedListener:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;

    .line 100
    return-void
.end method

.method public updateBitmaps(Landroid/graphics/RectF;F)V
    .locals 9
    .parameter "screen"
    .parameter "scale"

    .prologue
    const/high16 v8, 0x4348

    .line 127
    iget v6, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v6, v8

    div-float/2addr v6, p2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 128
    .local v4, row0:I
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v6, v8

    div-float/2addr v6, p2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 129
    .local v5, row1:I
    iget v6, p1, Landroid/graphics/RectF;->left:F

    div-float/2addr v6, v8

    div-float/2addr v6, p2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 130
    .local v0, col0:I
    iget v6, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v6, v8

    div-float/2addr v6, p2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 131
    .local v1, col1:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mRows:I

    if-lt v2, v6, :cond_0

    .line 137
    return-void

    .line 132
    :cond_0
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mColumns:I

    if-lt v3, v6, :cond_1

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    if-lt v2, v4, :cond_2

    if-ge v2, v5, :cond_2

    if-lt v3, v0, :cond_2

    if-ge v3, v1, :cond_2

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mCells:[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$7(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)V

    .line 132
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    :cond_2
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->mCells:[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$6(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)V

    goto :goto_2
.end method
