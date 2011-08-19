.class Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;
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
    name = "CheckAllArtistAlbumSelectedTask"
.end annotation


# instance fields
.field private mAllSelected:Z

.field private final mArtistId:J

.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/OfflineMusicManager;J)V
    .locals 1
    .parameter
    .parameter "artistId"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->mAllSelected:Z

    .line 132
    iput-wide p2, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->mArtistId:J

    .line 133
    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 136
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v5

    .line 137
    .local v5, store:Lcom/google/android/music/store/Store;
    iget-wide v6, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->mArtistId:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/store/Store;->getAlbumIdsAndAlbumKeepOnIdsForArtist(J)Landroid/database/Cursor;

    move-result-object v2

    .line 139
    .local v2, albums:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->mAllSelected:Z

    if-eqz v6, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 140
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 144
    .local v0, albumId:J
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-wide v7, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->mArtistId:J

    invoke-virtual {v6, v0, v1, v7, v8}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v3

    .line 147
    .local v3, isSelected:Ljava/lang/Boolean;
    if-nez v3, :cond_2

    .line 148
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v10

    .line 149
    .local v4, keepon:Z
    :goto_1
    if-nez v4, :cond_0

    .line 150
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->mAllSelected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    .end local v0           #albumId:J
    .end local v3           #isSelected:Ljava/lang/Boolean;
    .end local v4           #keepon:Z
    :catchall_0
    move-exception v6

    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v6

    .restart local v0       #albumId:J
    .restart local v3       #isSelected:Ljava/lang/Boolean;
    :cond_1
    move v4, v9

    .line 148
    goto :goto_1

    .line 152
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 153
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->mAllSelected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    .end local v0           #albumId:J
    .end local v3           #isSelected:Ljava/lang/Boolean;
    :cond_3
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 159
    return-void
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->mAllSelected:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->mArtistId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->access$100(Lcom/google/android/music/OfflineMusicManager;J)Z

    .line 170
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$200(Lcom/google/android/music/OfflineMusicManager;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;->mArtistId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->access$300(Lcom/google/android/music/OfflineMusicManager;J)Z

    goto :goto_0
.end method
