.class public Lcom/android/gallery3d/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private final mData:[Lcom/android/gallery3d/data/MediaItem;

.field private final mDataHandler:Landroid/os/Handler;

.field private mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

.field private final mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

.field private mIsActive:Z

.field private mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mResumeLoadBits:I

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private final mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, k:I
    const/16 v3, 0xc

    new-array v3, v3, [Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    sput-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    .line 79
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .local v2, k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 81
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 82
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v0, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 83
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    neg-int v5, v0

    invoke-direct {v4, v5, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 87
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 88
    sget-object v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;I)V
    .locals 8
    .parameter "activity"
    .parameter "view"
    .parameter "mediaSet"
    .parameter "itemPath"
    .parameter "indexHint"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v2, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    .line 104
    const/16 v2, 0x20

    new-array v2, v2, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    .line 105
    iput v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 106
    iput v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 115
    new-array v2, v4, [Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 116
    iput v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 117
    iput v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 126
    const/4 v2, 0x3

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    .line 135
    iput-wide v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    .line 136
    iput v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    .line 140
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mResumeLoadBits:I

    .line 150
    new-instance v2, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-direct {v2, p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    .line 158
    invoke-static {p3}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaSet;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 159
    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 160
    invoke-static {p4}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/Path;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 162
    iput p5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 163
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    new-instance v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    invoke-direct {v3, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    aput-object v3, v2, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    array-length v1, v2

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    aput-wide v6, v2, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_1
    new-instance v2, Lcom/android/gallery3d/app/PhotoDataAdapter$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/DataManager;->getDataLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataHandler:Landroid/os/Handler;

    .line 181
    new-instance v2, Lcom/android/gallery3d/app/PhotoDataAdapter$2;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$2;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 204
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 205
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/PhotoDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageEntries()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireModelInvalidated()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;ILcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateScreenNail(ILcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/PhotoDataAdapter;ILcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateFullImage(ILcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoDataAdapter;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->reloadData(IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method private fireModelInvalidated()V
    .locals 7

    .prologue
    .line 216
    const/4 v4, -0x1

    .local v4, i:I
    :goto_0
    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 217
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v5, v4

    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v2

    .line 218
    .local v2, current:J
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v6, v4, 0x1

    aget-wide v0, v5, v6

    .line 219
    .local v0, change:J
    cmp-long v5, v2, v0

    if-eqz v5, :cond_0

    .line 220
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageInvalidated(I)V

    .line 222
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v6, v4, 0x1

    aput-wide v2, v5, v6

    .line 216
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    .end local v0           #change:J
    .end local v2           #current:J
    :cond_1
    return-void
.end method

.method private getImage(I)Lcom/android/gallery3d/ui/PhotoView$ImageData;
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 308
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v5

    .line 316
    :goto_0
    return-object v2

    .line 309
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 310
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    rem-int/lit8 v3, p1, 0x5

    aget-object v0, v2, v3

    .line 312
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNail:Landroid/graphics/Bitmap;

    .line 313
    .local v1, screennail:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 314
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$ImageData;

    iget v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRotation:I

    invoke-direct {v2, v1, v3}, Lcom/android/gallery3d/ui/PhotoView$ImageData;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v1           #screennail:Landroid/graphics/Bitmap;
    :cond_2
    move v2, v4

    .line 309
    goto :goto_1

    .line 316
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .restart local v1       #screennail:Landroid/graphics/Bitmap;
    :cond_3
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$ImageData;

    invoke-direct {v2, v5, v4}, Lcom/android/gallery3d/ui/PhotoView$ImageData;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private getVersion(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 208
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v0, :cond_1

    .line 209
    :cond_0
    const-wide/16 v0, -0x1

    .line 211
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    rem-int/lit8 v1, p1, 0x5

    aget-object v0, v0, v1

    iget-wide v0, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mVersion:J

    goto :goto_0
.end method

.method private reloadData(IJ)V
    .locals 5
    .parameter "loadBits"
    .parameter "delay"

    .prologue
    .line 292
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v2, :cond_0

    .line 293
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mResumeLoadBits:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mResumeLoadBits:I

    .line 305
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v3, v3, 0x20

    aget-object v0, v2, v3

    .line 297
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 299
    :cond_1
    or-int/lit8 p1, p1, 0x4

    .line 302
    :cond_2
    new-instance v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;I)V

    .line 303
    .local v1, r:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;
    .locals 7
    .parameter "index"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 507
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v2, :cond_1

    :cond_0
    move-object v2, v5

    .line 539
    :goto_0
    return-object v2

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    rem-int/lit8 v3, p1, 0x5

    aget-object v0, v2, v3

    .line 510
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-ne p2, v4, :cond_2

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_2

    .line 511
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 512
    :cond_2
    if-ne p2, v6, :cond_3

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_3

    .line 513
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 516
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v3, p1, 0x20

    aget-object v1, v2, v3

    .line 517
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v1, :cond_4

    move-object v2, v5

    goto :goto_0

    .line 519
    :cond_4
    if-ne p2, v4, :cond_5

    iget v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    .line 521
    iget v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    .line 522
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v4, p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;I)V

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 526
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 528
    :cond_5
    if-ne p2, v6, :cond_6

    iget v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 532
    iget v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    .line 533
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;

    invoke-direct {v4, p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;I)V

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    .line 537
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    :cond_6
    move-object v2, v5

    .line 539
    goto :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 329
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 330
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 332
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v2, p1, 0x20

    aget-object v0, v1, v2

    .line 333
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 335
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageEntries()V

    .line 336
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 337
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 338
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    .line 340
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v1, p1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/android/gallery3d/data/Path;)V

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireModelInvalidated()V

    .line 345
    return-void

    .line 333
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private updateFullImage(ILcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v2, :cond_2

    .line 253
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 254
    .local v1, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 271
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    rem-int/lit8 v3, p1, 0x5

    aget-object v0, v2, v3

    .line 260
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    .line 261
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapRegionDecoder;

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 262
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImage:Landroid/graphics/BitmapRegionDecoder;

    if-nez v2, :cond_3

    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    iget v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    goto :goto_0

    .line 266
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne p1, v2, :cond_4

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 267
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 268
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageInvalidated(I)V

    .line 270
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updateImageEntries()V
    .locals 7

    .prologue
    .line 543
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v5, :cond_3

    .line 544
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v6, v1, 0x20

    aget-object v2, v5, v6

    .line 545
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v2, :cond_1

    const-wide/16 v5, -0x1

    move-wide v3, v5

    .line 548
    .local v3, version:J
    :goto_1
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    rem-int/lit8 v6, v1, 0x5

    aget-object v0, v5, v6

    .line 549
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->setVersion(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->resetImages()V

    .line 551
    if-nez v2, :cond_2

    const/4 v5, 0x0

    :goto_2
    iput v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRotation:I

    .line 552
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 543
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v3           #version:J
    :cond_1
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v5

    move-wide v3, v5

    goto :goto_1

    .line 551
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .restart local v3       #version:J
    :cond_2
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v5

    goto :goto_2

    .line 555
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #version:J
    :cond_3
    return-void
.end method

.method private updateImageRequests()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 467
    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v8, :cond_1

    .line 503
    :cond_0
    return-void

    .line 469
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 470
    .local v2, currentIndex:I
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    rem-int/lit8 v9, v2, 0x5

    aget-object v1, v8, v9

    .line 471
    .local v1, current:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v9, v2, 0x20

    aget-object v5, v8, v9

    .line 473
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v8, v9, :cond_0

    .line 479
    const/4 v7, 0x0

    .line 480
    .local v7, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 481
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v4

    iget v6, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 482
    .local v6, offset:I
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v4

    iget v0, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 483
    .local v0, bit:I
    add-int v8, v2, v6

    invoke-direct {p0, v8, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    .line 484
    if-eqz v7, :cond_5

    .line 490
    .end local v0           #bit:I
    .end local v6           #offset:I
    :cond_2
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    :goto_1
    iget v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v4, v8, :cond_0

    .line 491
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    rem-int/lit8 v9, v4, 0x5

    aget-object v3, v8, v9

    .line 492
    .local v3, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_3

    iget-object v8, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_3

    .line 493
    iget-object v8, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 494
    iput-object v10, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 495
    iget v8, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    .line 497
    :cond_3
    iget-object v8, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_4

    iget-object v8, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_4

    .line 498
    iget-object v8, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 499
    iput-object v10, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    .line 500
    iget v8, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    and-int/lit8 v8, v8, -0x3

    iput v8, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    .line 490
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 480
    .end local v3           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .restart local v0       #bit:I
    .restart local v6       #offset:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private updateScreenNail(ILcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v2, :cond_2

    .line 232
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 233
    .local v1, screenNail:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    .end local v1           #screenNail:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    rem-int/lit8 v3, p1, 0x5

    aget-object v0, v2, v3

    .line 238
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 239
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNail:Landroid/graphics/Bitmap;

    .line 240
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNail:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    iget v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    goto :goto_0

    .line 244
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_5

    .line 245
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v2, p1, :cond_4

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 246
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageInvalidated(I)V

    .line 248
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updateSlidingWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 433
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v3, v7

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    const/4 v5, 0x5

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v6, v4}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v2

    .line 435
    .local v2, start:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 437
    .local v0, end:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v3, :cond_4

    .line 441
    if-lt v1, v2, :cond_2

    if-lt v1, v0, :cond_3

    .line 442
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    rem-int/lit8 v4, v1, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->resetImages()V

    .line 440
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 446
    :cond_4
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 447
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 450
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    const/16 v4, 0x10

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    const/16 v5, 0x20

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v6, v4}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v2

    .line 452
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 453
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_5

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_5

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 455
    :cond_5
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    :goto_2
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_8

    .line 456
    if-lt v1, v2, :cond_6

    if-lt v1, v0, :cond_7

    .line 457
    :cond_6
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v4, v1, 0x20

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 455
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 460
    :cond_8
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 461
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 462
    const-wide/16 v3, 0x0

    invoke-direct {p0, v7, v3, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->reloadData(IJ)V

    goto :goto_0
.end method

.method private updateTileProvider()V
    .locals 9

    .prologue
    .line 405
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v7, v7, 0x5

    aget-object v0, v6, v7

    .line 407
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNail:Landroid/graphics/Bitmap;

    .line 408
    .local v4, screenNail:Landroid/graphics/Bitmap;
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 410
    .local v1, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v4, :cond_2

    .line 411
    if-eqz v1, :cond_1

    .line 412
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    .line 414
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 417
    .local v5, width:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 418
    .local v2, height:I
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v6, v4, v5, v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 421
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 422
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-nez v6, :cond_0

    .line 423
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v7, v7, 0x20

    aget-object v3, v6, v7

    .line 424
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v3, :cond_0

    .line 425
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setFailedToLoad()V

    goto :goto_0
.end method


# virtual methods
.method public getBackupImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v1, v1, 0x20

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation()I
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v1, v1, 0x5

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRotation:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getNextImage()Lcom/android/gallery3d/ui/PhotoView$ImageData;
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getImage(I)Lcom/android/gallery3d/ui/PhotoView$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousImage()Lcom/android/gallery3d/ui/PhotoView$ImageData;
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getImage(I)Lcom/android/gallery3d/ui/PhotoView$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isFailedToLoad()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->isFailedToLoad()Z

    move-result v0

    return v0
.end method

.method public jumpTo(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 356
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v0, p1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    goto :goto_0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 349
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 282
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 283
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mResumeLoadBits:I

    .line 284
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 285
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mEntries:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    rem-int/lit8 v3, v0, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->resetImages()V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 289
    return-void
.end method

.method public previous()V
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 353
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 276
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 277
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mResumeLoadBits:I

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->reloadData(IJ)V

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->notifyModelInvalidated()V

    .line 279
    return-void
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 1
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 402
    :goto_0
    return-void

    .line 398
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 399
    iput p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 400
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 401
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireModelInvalidated()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    .line 228
    return-void
.end method
