.class public Lcom/android/gallery3d/app/AlbumDataAdapter;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumView$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;,
        Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveLoad:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/data/MediaItem;

.field private final mDataHandler:Landroid/os/Handler;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mModelListener:Lcom/android/gallery3d/ui/AlbumView$ModelListener;

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/data/MediaSet;

.field private mSourceListener:Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 6
    .parameter "context"
    .parameter "mediaSet"

    .prologue
    const-wide/16 v4, -0x1

    const/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveStart:I

    .line 55
    iput v2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveEnd:I

    .line 57
    iput v2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentStart:I

    .line 58
    iput v2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentEnd:I

    .line 61
    iput-wide v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSourceVersion:J

    .line 65
    iput v2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSize:I

    .line 68
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;-><init>(Lcom/android/gallery3d/app/AlbumDataAdapter;Lcom/android/gallery3d/app/AlbumDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;

    .line 70
    iput v2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveLoad:I

    .line 73
    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 75
    new-array v0, v3, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    .line 76
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mItemVersion:[J

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mItemVersion:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 79
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataAdapter$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/DataManager;->getDataLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumDataAdapter$1;-><init>(Lcom/android/gallery3d/app/AlbumDataAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mDataHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataAdapter$2;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumDataAdapter$2;-><init>(Lcom/android/gallery3d/app/AlbumDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/ui/AlbumView$ModelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mModelListener:Lcom/android/gallery3d/ui/AlbumView$ModelListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumDataAdapter;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumDataAdapter;IIIJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/app/AlbumDataAdapter;->reloadData(IIIJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/app/AlbumDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveLoad:I

    return v0
.end method

.method static synthetic access$504(Lcom/android/gallery3d/app/AlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveLoad:I

    return v0
.end method

.method static synthetic access$506(Lcom/android/gallery3d/app/AlbumDataAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveLoad:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveLoad:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/AlbumDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method private reloadData(IIIJ)V
    .locals 1
    .parameter "loadBits"
    .parameter "start"
    .parameter "end"
    .parameter "delay"

    .prologue
    .line 189
    if-lt p2, p3, :cond_0

    and-int/lit8 p1, p1, -0x3

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    .line 191
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumDataAdapter;III)V

    invoke-virtual {v0, p4, p5}, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->execute(J)V

    .line 193
    :cond_1
    return-void
.end method

.method private setContentWindow(II)V
    .locals 17
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentStart:I

    move v2, v0

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentEnd:I

    move v2, v0

    move/from16 v0, p2

    move v1, v2

    if-ne v0, v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 131
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentEnd:I

    move v8, v0

    .line 132
    .local v8, end:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentStart:I

    move v5, v0

    .line 135
    .local v5, start:I
    monitor-enter p0

    .line 136
    :try_start_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentStart:I

    .line 137
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentEnd:I

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    move-object v12, v0

    .line 141
    .local v12, data:[Lcom/android/gallery3d/data/MediaItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mItemVersion:[J

    move-object/from16 v16, v0

    .line 142
    .local v16, version:[J
    array-length v14, v12

    .line 143
    .local v14, length:I
    move/from16 v0, p1

    move v1, v8

    if-ge v0, v1, :cond_1

    move v0, v5

    move/from16 v1, p2

    if-lt v0, v1, :cond_3

    .line 144
    :cond_1
    move v13, v5

    .local v13, i:I
    move v15, v8

    .local v15, n:I
    :goto_1
    if-ge v13, v15, :cond_2

    .line 145
    rem-int v2, v13, v14

    const/4 v3, 0x0

    aput-object v3, v12, v2

    .line 146
    rem-int v2, v13, v14

    const-wide/16 v3, -0x1

    aput-wide v3, v16, v2

    .line 144
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 138
    .end local v12           #data:[Lcom/android/gallery3d/data/MediaItem;
    .end local v13           #i:I
    .end local v14           #length:I
    .end local v15           #n:I
    .end local v16           #version:[J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 148
    .restart local v12       #data:[Lcom/android/gallery3d/data/MediaItem;
    .restart local v13       #i:I
    .restart local v14       #length:I
    .restart local v15       #n:I
    .restart local v16       #version:[J
    :cond_2
    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->reloadData(IIIJ)V

    goto :goto_0

    .line 150
    .end local v13           #i:I
    .end local v15           #n:I
    :cond_3
    move v13, v5

    .restart local v13       #i:I
    :goto_2
    move v0, v13

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    .line 151
    rem-int v2, v13, v14

    const/4 v3, 0x0

    aput-object v3, v12, v2

    .line 152
    rem-int v2, v13, v14

    const-wide/16 v3, -0x1

    aput-wide v3, v16, v2

    .line 150
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 154
    :cond_4
    move/from16 v13, p2

    move v15, v8

    .restart local v15       #n:I
    :goto_3
    if-ge v13, v15, :cond_5

    .line 155
    rem-int v2, v13, v14

    const/4 v3, 0x0

    aput-object v3, v12, v2

    .line 156
    rem-int v2, v13, v14

    const-wide/16 v3, -0x1

    aput-wide v3, v16, v2

    .line 154
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 158
    :cond_5
    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->reloadData(IIIJ)V

    .line 159
    const/4 v7, 0x2

    const-wide/16 v10, 0x0

    move-object/from16 v6, p0

    move/from16 v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/gallery3d/app/AlbumDataAdapter;->reloadData(IIIJ)V

    goto/16 :goto_0
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 5
    .parameter "index"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumDataAdapter;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getActiveStart()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveStart:I

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveEnd:I

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
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 103
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 98
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentStart:I

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentEnd:I

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/AlbumDataAdapter;->reloadData(IIIJ)V

    .line 99
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    .line 164
    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveStart:I

    .line 167
    iput p2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveEnd:I

    .line 169
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v4, v4

    if-gt v3, v4, :cond_3

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 172
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v2, v3

    .line 173
    .local v2, length:I
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveStart:I

    .line 174
    iput p2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mActiveEnd:I

    .line 177
    if-eq p1, p2, :cond_0

    .line 179
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSize:I

    sub-int/2addr v4, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v1

    .line 181
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 182
    .local v0, contentEnd:I
    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    .line 184
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/app/AlbumDataAdapter;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v5

    .line 169
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    .line 207
    return-void
.end method

.method public setModelListener(Lcom/android/gallery3d/ui/AlbumView$ModelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mModelListener:Lcom/android/gallery3d/ui/AlbumView$ModelListener;

    .line 203
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter;->mSize:I

    return v0
.end method
