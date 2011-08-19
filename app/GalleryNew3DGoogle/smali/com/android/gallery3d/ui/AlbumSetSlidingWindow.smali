.class public Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

.field private mDisplayItemSize:I

.field private mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private mLabelFontSize:I

.field private mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

.field private mLoadingLabel:Ljava/lang/String;

.field private mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcom/android/gallery3d/ui/AlbumSetView$Model;

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;IIILcom/android/gallery3d/ui/SelectionDrawer;Lcom/android/gallery3d/ui/AlbumSetView$Model;I)V
    .locals 4
    .parameter "activity"
    .parameter "slotWidth"
    .parameter "displayItemSize"
    .parameter "labelFontSize"
    .parameter "drawer"
    .parameter "source"
    .parameter "cacheSize"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 53
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 55
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 56
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 67
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 69
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 81
    invoke-interface {p6, p0}, Lcom/android/gallery3d/ui/AlbumSetView$Model;->setModelListener(Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;)V

    .line 82
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    .line 83
    iput p3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mDisplayItemSize:I

    .line 84
    iput p4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelFontSize:I

    .line 85
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSetView$Model;

    .line 87
    iput-object p5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    .line 88
    new-array v0, p7, [Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    .line 89
    invoke-interface {p6}, Lcom/android/gallery3d/ui/AlbumSetView$Model;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 91
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v3, v3}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 94
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 102
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 103
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSetView$Model;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelFontSize:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/ColorTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$406(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mDisplayItemSize:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SelectionDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    return-object v0
.end method

.method private cancelImagesInSlot(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    .line 215
    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v5, :cond_0

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v5, :cond_1

    .line 220
    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v6, v6

    rem-int v6, p1, v6

    aget-object v3, v5, v6

    .line 217
    .local v3, items:Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;
    iget-object v0, v3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    .local v0, arr$:[Lcom/android/gallery3d/ui/DisplayItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 218
    .local v2, item:Lcom/android/gallery3d/ui/DisplayItem;
    check-cast v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .end local v2           #item:Lcom/android/gallery3d/ui/DisplayItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->cancelImageRequest()V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 198
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 200
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 201
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 202
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 8
    .parameter "slotIndex"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    .line 224
    .local v1, data:[Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;
    array-length v7, v1

    rem-int v3, p1, v7

    .line 225
    .local v3, index:I
    aget-object v6, v1, v3

    .line 226
    .local v6, original:Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;
    if-eqz v6, :cond_0

    .line 227
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 228
    iget-object v0, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    .local v0, arr$:[Lcom/android/gallery3d/ui/DisplayItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v4, v0, v2

    .line 229
    .local v4, item:Lcom/android/gallery3d/ui/DisplayItem;
    check-cast v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .end local v4           #item:Lcom/android/gallery3d/ui/DisplayItem;
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->recycle()V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v0           #arr$:[Lcom/android/gallery3d/ui/DisplayItem;
    .end local v2           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-void
.end method

.method private getMediaSetDataVersion(Lcom/android/gallery3d/data/MediaSet;)J
    .locals 2
    .parameter "set"

    .prologue
    .line 235
    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getDataVersion()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 459
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 461
    :cond_0
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getCacheFlag()I

    move-result v0

    goto :goto_0
.end method

.method private static identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 468
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 470
    :cond_0
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getCacheStatus()I

    move-result v0

    goto :goto_0
.end method

.method private static identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 4
    .parameter "set"

    .prologue
    .line 435
    if-nez p0, :cond_0

    .line 436
    const/4 v3, 0x0

    .line 455
    :goto_0
    return v3

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 440
    .local v0, path:Lcom/android/gallery3d/data/Path;
    invoke-static {v0}, Lcom/android/gallery3d/util/MediaSetUtils;->isCameraSource(Lcom/android/gallery3d/data/Path;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    const/4 v3, 0x4

    goto :goto_0

    .line 444
    :cond_1
    const/4 v2, 0x0

    .line 445
    .local v2, type:I
    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, prefix:Ljava/lang/String;
    const-string v3, "picasa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 448
    const/4 v2, 0x2

    :cond_2
    :goto_1
    move v3, v2

    .line 455
    goto :goto_0

    .line 449
    :cond_3
    const-string v3, "local"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "merge"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 450
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 451
    :cond_5
    const-string v3, "mtp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 452
    const/4 v2, 0x3

    goto :goto_1
.end method

.method private isCoverItemsChanged(I)Z
    .locals 10
    .parameter "slotIndex"

    .prologue
    const/4 v9, 0x1

    .line 260
    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v6, v6

    rem-int v6, p1, v6

    aget-object v4, v5, v6

    .line 261
    .local v4, original:Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;
    if-nez v4, :cond_0

    move v5, v9

    .line 269
    :goto_0
    return v5

    .line 262
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSetView$Model;

    invoke-interface {v5, p1}, Lcom/android/gallery3d/ui/AlbumSetView$Model;->getCoverItems(I)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 264
    .local v0, coverItems:[Lcom/android/gallery3d/data/MediaItem;
    iget-object v5, v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    array-length v5, v5

    array-length v6, v0

    if-eq v5, v6, :cond_1

    move v5, v9

    goto :goto_0

    .line 265
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v0

    .local v3, n:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 266
    iget-object v5, v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    aget-object v1, v5, v2

    check-cast v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .line 267
    .local v1, g:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;)J

    move-result-wide v5

    aget-object v7, v0, v2

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_0

    .line 265
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    .end local v1           #g:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private notifySlotChanged(I)V
    .locals 12
    .parameter "slotIndex"

    .prologue
    .line 304
    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v7, :cond_0

    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v7, :cond_2

    .line 305
    :cond_0
    const-string v7, "GallerySlidingWindow"

    const-string v8, "invalid update: %s is outside (%s, %s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1
    return-void

    .line 310
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateSlotContent(I)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v4

    .line 312
    .local v4, isActiveSlot:Z
    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-eqz v7, :cond_3

    if-eqz v4, :cond_1

    .line 313
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v8, v8

    rem-int v8, p1, v8

    aget-object v7, v7, v8

    iget-object v1, v7, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    .local v1, arr$:[Lcom/android/gallery3d/ui/DisplayItem;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v5, v1, v3

    .line 314
    .local v5, item:Lcom/android/gallery3d/ui/DisplayItem;
    move-object v0, v5

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    move-object v2, v0

    .line 315
    .local v2, galleryItem:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->requestImage()V

    .line 316
    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->isRequestInProgress()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 317
    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 313
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private prepareSlotContent(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    const/4 v5, 0x0

    .line 241
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSetView$Model;

    invoke-interface {v4, p1}, Lcom/android/gallery3d/ui/AlbumSetView$Model;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 243
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    new-instance v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    invoke-direct {v2, v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;)V

    .line 244
    .local v2, item:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSetView$Model;

    invoke-interface {v4, p1}, Lcom/android/gallery3d/ui/AlbumSetView$Model;->getCoverItems(I)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 245
    .local v0, coverItems:[Lcom/android/gallery3d/data/MediaItem;
    array-length v4, v0

    new-array v4, v4, [Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    iput-object v4, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    .line 246
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v4

    iput v4, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->sourceType:I

    .line 247
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v4

    iput v4, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheFlag:I

    .line 248
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v4

    iput v4, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheStatus:I

    .line 249
    if-nez v3, :cond_0

    move-object v4, v5

    :goto_0
    iput-object v4, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->setPath:Lcom/android/gallery3d/data/Path;

    .line 251
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 252
    iget-object v4, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    new-instance v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    aget-object v6, v0, v1

    invoke-direct {v5, p0, p1, v1, v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;IILcom/android/gallery3d/data/MediaItem;)V

    aput-object v5, v4, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    .end local v1           #i:I
    :cond_0
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 254
    .restart local v1       #i:I
    :cond_1
    new-instance v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;

    invoke-direct {v4, p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;I)V

    iput-object v4, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->labelItem:Lcom/android/gallery3d/ui/DisplayItem;

    .line 255
    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getMediaSetDataVersion(Lcom/android/gallery3d/data/MediaSet;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->setDataVersion:J

    .line 256
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v5, v5

    rem-int v5, p1, v5

    aput-object v2, v4, v5

    .line 257
    return-void
.end method

.method private requestImagesInSlot(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    .line 207
    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v5, :cond_0

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v5, :cond_1

    .line 212
    :cond_0
    return-void

    .line 208
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v6, v6

    rem-int v6, p1, v6

    aget-object v3, v5, v6

    .line 209
    .local v3, items:Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;
    iget-object v0, v3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    .local v0, arr$:[Lcom/android/gallery3d/ui/DisplayItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 210
    .local v2, item:Lcom/android/gallery3d/ui/DisplayItem;
    check-cast v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .end local v2           #item:Lcom/android/gallery3d/ui/DisplayItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->requestImage()V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 189
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 191
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 192
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 193
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 131
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 159
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_3

    .line 134
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 135
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSetView$Model;

    invoke-interface {v2, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetView$Model;->setActiveWindow(II)V

    .line 138
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 139
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 142
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 143
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 145
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 146
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 148
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSetView$Model;

    invoke-interface {v2, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetView$Model;->setActiveWindow(II)V

    .line 149
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 150
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 152
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 153
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 157
    :cond_7
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 158
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 10

    .prologue
    .line 324
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 325
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v3, i:I
    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v7, n:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 326
    iget-object v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v9, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v9, v9

    rem-int v9, v3, v9

    aget-object v8, v8, v9

    iget-object v1, v8, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    .local v1, arr$:[Lcom/android/gallery3d/ui/DisplayItem;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v5, v1, v4

    .line 327
    .local v5, item:Lcom/android/gallery3d/ui/DisplayItem;
    move-object v0, v5

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    move-object v2, v0

    .line 328
    .local v2, coverItem:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->requestImage()V

    .line 329
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->isRequestInProgress()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 326
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 325
    .end local v2           #coverItem:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
    .end local v5           #item:Lcom/android/gallery3d/ui/DisplayItem;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .end local v1           #arr$:[Lcom/android/gallery3d/ui/DisplayItem;
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_2
    iget v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v8, :cond_3

    .line 333
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    .line 337
    :goto_2
    return-void

    .line 335
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelNonactiveImages()V

    goto :goto_2
.end method

.method private updateSlotContent(I)V
    .locals 10
    .parameter "slotIndex"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    .line 275
    .local v1, data:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    array-length v9, v1

    rem-int v6, p1, v9

    .line 276
    .local v6, pos:I
    aget-object v5, v1, v6

    .line 278
    .local v5, original:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isCoverItemsChanged(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 279
    iget-object v9, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumSetView$Model;

    invoke-interface {v9, p1}, Lcom/android/gallery3d/ui/AlbumSetView$Model;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    .line 280
    .local v7, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v9

    iput v9, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->sourceType:I

    .line 281
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v9

    iput v9, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheFlag:I

    .line 282
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v9

    iput v9, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheStatus:I

    .line 283
    if-nez v7, :cond_1

    const/4 v9, 0x0

    :goto_0
    iput-object v9, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->setPath:Lcom/android/gallery3d/data/Path;

    .line 284
    iget-object v9, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->labelItem:Lcom/android/gallery3d/ui/DisplayItem;

    check-cast v9, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->updateContent()Z

    .line 285
    iget-object v9, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentInvalidated()V

    .line 300
    .end local v7           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void

    .line 283
    .restart local v7       #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    goto :goto_0

    .line 289
    .end local v7           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 290
    aget-object v8, v1, v6

    .line 292
    .local v8, update:Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;
    iget-object v9, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v9, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 293
    iget-object v9, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {v9, p1, v5, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onWindowContentChanged(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 295
    :cond_3
    if-eqz v5, :cond_0

    .line 296
    iget-object v0, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    .local v0, arr$:[Lcom/android/gallery3d/ui/DisplayItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 297
    .local v3, item:Lcom/android/gallery3d/ui/DisplayItem;
    check-cast v3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .end local v3           #item:Lcom/android/gallery3d/ui/DisplayItem;
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->recycle()V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid slot: %s outsides (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 518
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_0

    .line 519
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onSizeChanged(I)V

    .line 522
    :cond_0
    return-void
.end method

.method public onWindowContentChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->notifySlotChanged(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 533
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 534
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 535
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 540
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 541
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 542
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 545
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, 0x0

    .line 162
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 163
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "start = %s, end = %s, length = %s, size = %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    .line 170
    .local v2, data:[Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 171
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 174
    if-ne p1, p2, :cond_3

    .line 181
    :cond_2
    :goto_0
    return-void

    .line 176
    :cond_3
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v1

    .line 178
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    .line 180
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    .line 111
    return-void
.end method

.method public setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    .line 107
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    return v0
.end method
