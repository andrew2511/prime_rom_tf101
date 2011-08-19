.class Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/OfflineMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForEachAlbumFromArtistTask"
.end annotation


# instance fields
.field private final mAlbumIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mArtistId:J

.field private final mOp:Z

.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/OfflineMusicManager;JZ)V
    .locals 1
    .parameter
    .parameter "artistId"
    .parameter "op"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mAlbumIds:Ljava/util/LinkedList;

    .line 227
    iput-wide p2, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mArtistId:J

    .line 228
    iput-boolean p4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mOp:Z

    .line 229
    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 7

    .prologue
    .line 232
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v4}, Lcom/google/android/music/OfflineMusicManager;->access$000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    .line 233
    .local v3, store:Lcom/google/android/music/store/Store;
    iget-wide v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mArtistId:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/store/Store;->getAlbumIdsAndAlbumKeepOnIdsForArtist(J)Landroid/database/Cursor;

    move-result-object v2

    .line 235
    .local v2, albums:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 244
    .local v0, albumId:J
    iget-boolean v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mOp:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 245
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v4, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->access$500(Lcom/google/android/music/OfflineMusicManager;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mAlbumIds:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    .end local v0           #albumId:J
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v4

    .line 249
    .restart local v0       #albumId:J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v4, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->access$600(Lcom/google/android/music/OfflineMusicManager;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 250
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mAlbumIds:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_2
    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-wide v5, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mArtistId:J

    invoke-static {v4, v0, v1, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->access$400(Lcom/google/android/music/OfflineMusicManager;JJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    .end local v0           #albumId:J
    :cond_3
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 261
    return-void
.end method

.method public taskCompleted()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$700(Lcom/google/android/music/OfflineMusicManager;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mAlbumIds:Ljava/util/LinkedList;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;->mOp:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->access$800(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;IZ)V

    .line 272
    return-void
.end method
