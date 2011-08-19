.class Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private mEnd:I

.field private mLoadData:[Lcom/android/gallery3d/data/MediaItem;

.field private mLoadSet:Lcom/android/gallery3d/data/MediaSet;

.field private mNeedRestart:Z

.field private mStart:I

.field private mUpdateSize:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 227
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mLoadSet:Lcom/android/gallery3d/data/MediaSet;

    .line 234
    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mLoadData:[Lcom/android/gallery3d/data/MediaItem;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;Lcom/android/gallery3d/app/AlbumSetDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$300(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$300(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/LoadingListener;->onLoadingStarted()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$400(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$500(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mEnd:I

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$600(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mUpdateSize:I

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$700(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$700(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    return-void
.end method

.method public loadFromDatabase()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 252
    iput-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mLoadSet:Lcom/android/gallery3d/data/MediaSet;

    .line 253
    iput-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mLoadData:[Lcom/android/gallery3d/data/MediaItem;

    .line 255
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$800(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 256
    .local v3, v:J
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$900(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-eqz v7, :cond_0

    .line 257
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v7, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$902(Lcom/android/gallery3d/app/AlbumSetDataAdapter;J)J

    .line 258
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$800(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mUpdateSize:I

    .line 260
    :cond_0
    iget v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    iget v8, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mUpdateSize:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    .line 261
    iget v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mEnd:I

    iget v8, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mUpdateSize:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mEnd:I

    .line 262
    :goto_0
    iget v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    iget v8, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mEnd:I

    if-ge v7, v8, :cond_3

    .line 263
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$800(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    iget v8, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 264
    .local v2, subset:Lcom/android/gallery3d/data/MediaSet;
    if-nez v2, :cond_2

    .line 262
    :cond_1
    iget v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getDataVersion()J

    move-result-wide v5

    .line 267
    .local v5, version:J
    iget v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)[J

    move-result-object v8

    array-length v8, v8

    rem-int v1, v7, v8

    .line 268
    .local v1, pos:I
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)[J

    move-result-object v7

    aget-wide v7, v7, v1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    .line 270
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)[J

    move-result-object v7

    aput-wide v5, v7, v1

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v7, 0x4

    invoke-static {v2, v7, v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1100(Lcom/android/gallery3d/data/MediaSet;ILjava/util/ArrayList;)V

    .line 273
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mLoadSet:Lcom/android/gallery3d/data/MediaSet;

    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mLoadData:[Lcom/android/gallery3d/data/MediaItem;

    .line 278
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v1           #pos:I
    .end local v2           #subset:Lcom/android/gallery3d/data/MediaSet;
    .end local v5           #version:J
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1200(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1200(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mNeedRestart:Z

    .line 249
    return-void
.end method

.method public updateContent()V
    .locals 4

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$600(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mUpdateSize:I

    if-eq v1, v2, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mUpdateSize:I

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$602(Lcom/android/gallery3d/app/AlbumSetDataAdapter;I)I

    .line 285
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1300(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1300(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$600(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;->onSizeChanged(I)V

    .line 288
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mEnd:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$400(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v2

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$500(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 289
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1400(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)[[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    array-length v2, v2

    rem-int v0, v1, v2

    .line 290
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1500(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mLoadSet:Lcom/android/gallery3d/data/MediaSet;

    aput-object v2, v1, v0

    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1400(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)[[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mLoadData:[Lcom/android/gallery3d/data/MediaItem;

    aput-object v2, v1, v0

    .line 293
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1300(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1600(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v2

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1700(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1300(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;->onWindowContentChanged(I)V

    .line 299
    .end local v0           #pos:I
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mNeedRestart:Z

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$400(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$500(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mEnd:I

    .line 303
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$600(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mUpdateSize:I

    .line 304
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mNeedRestart:Z

    .line 310
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mEnd:I

    if-ge v1, v2, :cond_3

    .line 311
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$700(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$700(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    :goto_1
    return-void

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$400(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mStart:I

    .line 307
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$500(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mEnd:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->mEnd:I

    goto :goto_0

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$300(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 317
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$300(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/LoadingListener;->onLoadingFinished()V

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$1802(Lcom/android/gallery3d/app/AlbumSetDataAdapter;Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;)Lcom/android/gallery3d/app/AlbumSetDataAdapter$ReloadTask;

    goto :goto_1
.end method
