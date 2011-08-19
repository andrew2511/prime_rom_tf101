.class public Lcom/android/gallery3d/app/AlbumSetDataAdapter;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSetView$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;,
        Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;
    }
.end annotation


# static fields
.field private static final EMPTY_MEDIA_ITEMS:[Lcom/android/gallery3d/data/MediaItem;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mActiveTask:Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;

.field private mContentEnd:I

.field private mContentStart:I

.field private final mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

.field private mDataHandler:Landroid/os/Handler;

.field private mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mModelListener:Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;

.field private final mSetData:[Lcom/android/gallery3d/data/MediaSet;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/data/MediaSet;

.field private mSourceListener:Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;

.field private mSourceVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/gallery3d/data/MediaItem;

    sput-object v0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->EMPTY_MEDIA_ITEMS:[Lcom/android/gallery3d/data/MediaItem;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 4
    .parameter "activity"
    .parameter "albumSet"
    .parameter "cacheSize"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveStart:I

    .line 50
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveEnd:I

    .line 52
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentStart:I

    .line 53
    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentEnd:I

    .line 56
    iput-wide v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSourceVersion:J

    .line 66
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;-><init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;Lcom/android/gallery3d/app/AlbumSetDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;

    .line 69
    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 70
    new-array v0, p3, [[Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

    .line 71
    new-array v0, p3, [Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSetData:[Lcom/android/gallery3d/data/MediaSet;

    .line 72
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSetVersion:[J

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSetVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 75
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter$1;-><init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$2;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/DataManager;->getDataLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter$2;-><init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mDataHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/data/MediaSet;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->getRepresentativeItems(Lcom/android/gallery3d/data/MediaSet;ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mModelListener:Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)[[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)[Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSetData:[Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/AlbumSetDataAdapter;Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;)Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveTask:Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->reloadData()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/app/AlbumSetDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/AlbumSetDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method private static getRepresentativeItems(Lcom/android/gallery3d/data/MediaSet;ILjava/util/ArrayList;)V
    .locals 10
    .parameter "set"
    .parameter "wanted"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/MediaSet;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 213
    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    .line 217
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le p1, v6, :cond_1

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    .line 219
    .local v5, subset:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, p1, v6

    int-to-double v6, v6

    sub-int v8, v2, v0

    int-to-double v8, v8

    div-double v3, v6, v8

    .line 220
    .local v3, perSet:D
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 221
    .local v1, m:I
    invoke-static {v5, v1, p2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->getRepresentativeItems(Lcom/android/gallery3d/data/MediaSet;ILjava/util/ArrayList;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v1           #m:I
    .end local v3           #perSet:D
    .end local v5           #subset:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    return-void
.end method

.method private reloadData()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveTask:Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveTask:Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->restart()V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;Lcom/android/gallery3d/app/AlbumSetDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveTask:Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveTask:Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->execute()V

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 11
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    .line 137
    iget v6, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentStart:I

    if-ne p1, v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentEnd:I

    if-ne p2, v6, :cond_0

    .line 163
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

    .line 139
    .local v0, data:[[Lcom/android/gallery3d/data/MediaItem;
    array-length v3, v0

    .line 141
    .local v3, length:I
    iget v5, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentStart:I

    .line 142
    .local v5, start:I
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentEnd:I

    .line 144
    .local v1, end:I
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentStart:I

    .line 145
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentEnd:I

    .line 147
    if-ge p1, v1, :cond_1

    if-lt v5, p2, :cond_2

    .line 148
    :cond_1
    move v2, v5

    .local v2, i:I
    move v4, v1

    .local v4, n:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 149
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

    rem-int v7, v2, v3

    aput-object v8, v6, v7

    .line 150
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSetVersion:[J

    rem-int v7, v2, v3

    aput-wide v9, v6, v7

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_2
    move v2, v5

    .restart local v2       #i:I
    :goto_2
    if-ge v2, p1, :cond_3

    .line 154
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

    rem-int v7, v2, v3

    aput-object v8, v6, v7

    .line 155
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSetVersion:[J

    rem-int v7, v2, v3

    aput-wide v9, v6, v7

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 157
    :cond_3
    move v2, p2

    move v4, v1

    .restart local v4       #n:I
    :goto_3
    if-ge v2, v4, :cond_4

    .line 158
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

    rem-int v7, v2, v3

    aput-object v8, v6, v7

    .line 159
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSetVersion:[J

    rem-int v7, v2, v3

    aput-wide v9, v6, v7

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 162
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->reloadData()V

    goto :goto_0
.end method


# virtual methods
.method public getActiveStart()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveStart:I

    return v0
.end method

.method public getCoverItems(I)[Lcom/android/gallery3d/data/MediaItem;
    .locals 6
    .parameter "index"

    .prologue
    .line 110
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveStart:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveEnd:I

    if-lt p1, v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "%s not in (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 117
    .local v0, result:[Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    sget-object v1, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->EMPTY_MEDIA_ITEMS:[Lcom/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 5
    .parameter "index"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveStart:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveEnd:I

    if-lt p1, v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSetData:[Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSetData:[Lcom/android/gallery3d/data/MediaSet;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 94
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 98
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->reloadData()V

    .line 99
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    .line 175
    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

    array-length v4, v4

    if-gt v3, v4, :cond_3

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 180
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveStart:I

    .line 181
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mActiveEnd:I

    .line 183
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/android/gallery3d/data/MediaItem;

    array-length v2, v3

    .line 185
    .local v2, length:I
    if-eq p1, p2, :cond_0

    .line 187
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSize:I

    sub-int/2addr v4, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v1

    .line 189
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    .local v0, contentEnd:I
    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 192
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v5

    .line 177
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    .line 208
    return-void
.end method

.method public setModelListener(Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mModelListener:Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;

    .line 204
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->mSize:I

    return v0
.end method
