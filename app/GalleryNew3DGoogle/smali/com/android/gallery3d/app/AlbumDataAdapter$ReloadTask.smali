.class Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private mEnd:I

.field private mLoadBits:I

.field private mStart:I

.field private mUpdateItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateSize:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumDataAdapter;III)V
    .locals 1
    .parameter
    .parameter "loadBits"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p3, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    .line 220
    iput p4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mEnd:I

    .line 221
    iput p2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mLoadBits:I

    .line 222
    invoke-static {p1}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$400(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mUpdateSize:I

    .line 223
    return-void
.end method


# virtual methods
.method public execute(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$504(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$600(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$500(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$600(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/LoadingListener;->onLoadingStarted()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$700(Lcom/android/gallery3d/app/AlbumDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$700(Lcom/android/gallery3d/app/AlbumDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 232
    return-void
.end method

.method public loadFromDatabase()V
    .locals 7

    .prologue
    .line 235
    iget v1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mLoadBits:I

    .line 237
    .local v1, loadBits:I
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 238
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$800(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v2

    .line 239
    .local v2, v:J
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$900(Lcom/android/gallery3d/app/AlbumDataAdapter;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 240
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v4, v2, v3}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$902(Lcom/android/gallery3d/app/AlbumDataAdapter;J)J

    .line 241
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$800(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mUpdateSize:I

    .line 242
    or-int/lit8 v1, v1, 0x2

    .line 248
    .end local v2           #v:J
    :cond_0
    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    .line 249
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    monitor-enter v4

    .line 250
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$100(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    .line 251
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$200(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mEnd:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mEnd:I

    .line 252
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    const/16 v4, 0x40

    iget v5, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mEnd:I

    iget v6, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 255
    .local v0, count:I
    if-lez v0, :cond_3

    .line 256
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$800(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    .line 262
    .end local v0           #count:I
    :cond_1
    :goto_1
    iput v1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mLoadBits:I

    .line 263
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1000(Lcom/android/gallery3d/app/AlbumDataAdapter;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1000(Lcom/android/gallery3d/app/AlbumDataAdapter;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    return-void

    .line 244
    .restart local v2       #v:J
    :cond_2
    and-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 252
    .end local v2           #v:J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 258
    .restart local v0       #count:I
    :cond_3
    and-int/lit8 v1, v1, -0x3

    goto :goto_1
.end method

.method public updateContent()V
    .locals 11

    .prologue
    .line 268
    iget v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mLoadBits:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 269
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$400(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mUpdateSize:I

    if-eq v7, v8, :cond_0

    .line 270
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    iget v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mUpdateSize:I

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$402(Lcom/android/gallery3d/app/AlbumDataAdapter;I)I

    .line 271
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1100(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/ui/AlbumView$ModelListener;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1100(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/ui/AlbumView$ModelListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$400(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/gallery3d/ui/AlbumView$ModelListener;->onSizeChanged(I)V

    .line 273
    :cond_0
    iget v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mLoadBits:I

    and-int/lit8 v7, v7, -0x2

    iput v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mLoadBits:I

    .line 276
    :cond_1
    iget v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mLoadBits:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_8

    .line 277
    iget v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$100(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 278
    .local v5, start:I
    iget v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$200(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 280
    .local v2, end:I
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1200(Lcom/android/gallery3d/app/AlbumDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 281
    .local v0, data:[Lcom/android/gallery3d/data/MediaItem;
    array-length v4, v0

    .line 282
    .local v4, size:I
    rem-int v1, v5, v4

    .line 283
    .local v1, dataIndex:I
    move v3, v5

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 284
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    sub-int v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/MediaItem;

    .line 285
    .local v6, updateItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1300(Lcom/android/gallery3d/app/AlbumDataAdapter;)[J

    move-result-object v9

    aget-wide v9, v9, v1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    .line 287
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1300(Lcom/android/gallery3d/app/AlbumDataAdapter;)[J

    move-result-object v7

    if-nez v6, :cond_5

    const-wide/16 v8, -0x1

    :goto_1
    aput-wide v8, v7, v1

    .line 290
    aput-object v6, v0, v1

    .line 291
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1100(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/ui/AlbumView$ModelListener;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1400(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v7

    if-lt v3, v7, :cond_3

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1500(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 292
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$1100(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/ui/AlbumView$ModelListener;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/android/gallery3d/ui/AlbumView$ModelListener;->onWindowContentChanged(I)V

    .line 295
    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_4

    const/4 v1, 0x0

    .line 283
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    :cond_5
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v8

    goto :goto_1

    .line 297
    .end local v6           #updateItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_6
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$100(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    .line 298
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$200(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mEnd:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mEnd:I

    .line 299
    iget v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mStart:I

    iget v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mEnd:I

    if-ge v7, v8, :cond_8

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->mUpdateItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x40

    if-ne v7, v8, :cond_8

    .line 300
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$700(Lcom/android/gallery3d/app/AlbumDataAdapter;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$700(Lcom/android/gallery3d/app/AlbumDataAdapter;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    .end local v0           #data:[Lcom/android/gallery3d/data/MediaItem;
    .end local v1           #dataIndex:I
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v4           #size:I
    .end local v5           #start:I
    :cond_7
    :goto_2
    return-void

    .line 306
    :cond_8
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$506(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    .line 307
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$600(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$500(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v7

    if-nez v7, :cond_7

    .line 308
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$600(Lcom/android/gallery3d/app/AlbumDataAdapter;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/gallery3d/app/LoadingListener;->onLoadingFinished()V

    goto :goto_2
.end method
