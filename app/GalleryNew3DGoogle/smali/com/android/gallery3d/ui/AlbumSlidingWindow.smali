.class public Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumView$ModelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

.field private mFocusIndex:I

.field private mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mImageCache:Lcom/android/gallery3d/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/LruCache",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

.field private mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

.field private mSize:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private final mSource:Lcom/android/gallery3d/ui/AlbumView$Model;

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private mTinyImageSize:I

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/AlbumView$Model;IIII)V
    .locals 4
    .parameter "activity"
    .parameter "source"
    .parameter "cacheSize"
    .parameter "slotWidth"
    .parameter "slotHeight"
    .parameter "tinyImageSize"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 53
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 55
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 56
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mFocusIndex:I

    .line 69
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 70
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 73
    new-instance v0, Lcom/android/gallery3d/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mImageCache:Lcom/android/gallery3d/util/LruCache;

    .line 78
    invoke-interface {p2, p0}, Lcom/android/gallery3d/ui/AlbumView$Model;->setModelListener(Lcom/android/gallery3d/ui/AlbumView$ModelListener;)V

    .line 79
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumView$Model;

    .line 80
    new-array v0, p3, [Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    .line 81
    invoke-interface {p2}, Lcom/android/gallery3d/ui/AlbumView$Model;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 82
    iput p4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSlotWidth:I

    .line 83
    iput p5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSlotHeight:I

    .line 84
    iput p6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTinyImageSize:I

    .line 86
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v3, v3}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 89
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 106
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 107
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateSlotContent(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTinyImageSize:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mImageCache:Lcom/android/gallery3d/util/LruCache;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/ColorTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$306(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSlotWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSlotHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SelectionDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mFocusIndex:I

    return v0
.end method

.method private cancelNonactiveImages()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 218
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 220
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 221
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2, v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(IZ)V

    .line 222
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-direct {p0, v2, v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(IZ)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method private cancelSlotImage(IZ)V
    .locals 3
    .parameter "slotIndex"
    .parameter "isActive"

    .prologue
    .line 227
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 229
    .local v0, item:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->cancelImageRequest()V

    goto :goto_0
.end method

.method private freeSlotContent(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    .line 234
    .local v0, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
    array-length v3, v0

    rem-int v1, p1, v3

    .line 235
    .local v1, index:I
    aget-object v2, v0, v1

    .line 236
    .local v2, original:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->recycle()V

    .line 238
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 240
    :cond_0
    return-void
.end method

.method private prepareSlotContent(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v1, v1

    rem-int v1, p1, v1

    new-instance v2, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumView$Model;

    invoke-interface {v3, p1}, Lcom/android/gallery3d/ui/AlbumView$Model;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V

    aput-object v2, v0, v1

    .line 245
    return-void
.end method

.method private requestNonactiveImages()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 203
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 205
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 206
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2, v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(IZ)V

    .line 207
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-direct {p0, v2, v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(IZ)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method

.method private requestSlotImage(IZ)V
    .locals 3
    .parameter "slotIndex"
    .parameter "isActive"

    .prologue
    .line 212
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 214
    .local v0, item:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->requestImage()V

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 140
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 175
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v2, :cond_1

    .line 143
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 144
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 145
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumView$Model;

    invoke-interface {v2, p1, p2}, Lcom/android/gallery3d/ui/AlbumView$Model;->setActiveWindow(II)V

    goto :goto_0

    .line 149
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_4

    .line 150
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 151
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumView$Model;

    invoke-interface {v2, p1, p2}, Lcom/android/gallery3d/ui/AlbumView$Model;->setActiveWindow(II)V

    .line 154
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_8

    .line 155
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_5

    .line 159
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 161
    :cond_5
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_6

    .line 162
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 164
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumView$Model;

    invoke-interface {v2, p1, p2}, Lcom/android/gallery3d/ui/AlbumView$Model;->setActiveWindow(II)V

    .line 165
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_7

    .line 166
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 168
    :cond_7
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_8

    .line 169
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 173
    :cond_8
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 174
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 5

    .prologue
    .line 274
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    .line 276
    .local v0, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 277
    array-length v4, v0

    rem-int v4, v1, v4

    aget-object v2, v0, v4

    .line 278
    .local v2, item:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->requestImage()V

    .line 279
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->isRequestInProgress()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 276
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v2           #item:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v4, :cond_2

    .line 282
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    .line 286
    :goto_1
    return-void

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateSlotContent(I)V
    .locals 8
    .parameter "slotIndex"

    .prologue
    .line 248
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/ui/AlbumView$Model;

    invoke-interface {v6, p1}, Lcom/android/gallery3d/ui/AlbumView$Model;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 249
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    .line 250
    .local v0, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
    array-length v6, v0

    rem-int v1, p1, v6

    .line 251
    .local v1, index:I
    aget-object v4, v0, v1

    .line 252
    .local v4, original:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
    new-instance v5, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V

    .line 253
    .local v5, update:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
    aput-object v5, v0, v1

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v2

    .line 255
    .local v2, isActive:Z
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 256
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    invoke-interface {v6, p1, v4, v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onWindowContentChanged(ILcom/android/gallery3d/ui/DisplayItem;Lcom/android/gallery3d/ui/DisplayItem;)V

    .line 258
    :cond_0
    if-eqz v4, :cond_2

    .line 259
    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->isRequestInProgress()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 260
    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 262
    :cond_1
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->recycle()V

    .line 264
    :cond_2
    if-eqz v2, :cond_5

    .line 265
    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    .line 266
    :cond_3
    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 267
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->requestImage()V

    .line 271
    :cond_4
    :goto_0
    return-void

    .line 269
    :cond_5
    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->requestImage()V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/ui/DisplayItem;
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid slot: %s outsides (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

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
    .line 411
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_0

    .line 412
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 413
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onSizeChanged(I)V

    .line 415
    :cond_0
    return-void
.end method

.method public onWindowContentChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 418
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateSlotContent(I)V

    .line 421
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 432
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 433
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 434
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mImageCache:Lcom/android/gallery3d/util/LruCache;

    invoke-virtual {v2}, Lcom/android/gallery3d/util/LruCache;->clear()V

    .line 437
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 424
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 425
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 426
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 429
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 179
    if-gt p1, p2, :cond_1

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v4, v4

    if-gt v3, v4, :cond_1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-gt p2, v3, :cond_1

    move v3, v7

    :goto_0
    const-string v4, "%s, %s, %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Utils;->Assert(ZLjava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;

    .line 184
    .local v2, data:[Lcom/android/gallery3d/ui/DisplayItem;
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 185
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 188
    if-ne p1, p2, :cond_2

    .line 195
    :cond_0
    :goto_1
    return-void

    .end local v2           #data:[Lcom/android/gallery3d/ui/DisplayItem;
    :cond_1
    move v3, v8

    .line 179
    goto :goto_0

    .line 190
    .restart local v2       #data:[Lcom/android/gallery3d/ui/DisplayItem;
    :cond_2
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v8, v4}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v1

    .line 192
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 193
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setContentWindow(II)V

    .line 194
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    goto :goto_1
.end method

.method public setFocusIndex(I)V
    .locals 0
    .parameter "slotIndex"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mFocusIndex:I

    .line 119
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    .line 115
    return-void
.end method

.method public setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    .line 111
    return-void
.end method
