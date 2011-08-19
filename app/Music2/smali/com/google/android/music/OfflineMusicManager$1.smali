.class Lcom/google/android/music/OfflineMusicManager$1;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/OfflineMusicManager;->commitChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/OfflineMusicManager;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 478
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    .line 479
    .local v4, store:Lcom/google/android/music/store/Store;
    const/4 v2, 0x0

    .line 480
    .local v2, fileCleanupNeeded:Z
    const/4 v0, 0x0

    .line 482
    .local v0, changesMade:Z
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 483
    .local v3, newKeeponIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 487
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 489
    .local v5, totalChanges:I
    :try_start_0
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$1000(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/music/store/KeepOnUpdater;->deleteArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v6

    add-int/2addr v5, v6

    .line 491
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$1100(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/music/store/KeepOnUpdater;->deleteAlbums(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v6

    add-int/2addr v5, v6

    .line 492
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$1200(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/music/store/KeepOnUpdater;->deletePlaylists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v6

    add-int/2addr v5, v6

    .line 494
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$1300(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/music/store/KeepOnUpdater;->insertArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 495
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$1400(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/music/store/KeepOnUpdater;->insertAlbums(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 496
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$1500(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/music/store/KeepOnUpdater;->insertPlaylists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 498
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v5, v6

    .line 499
    if-lez v5, :cond_2

    const/4 v6, 0x1

    move v0, v6

    .line 501
    :goto_0
    if-eqz v0, :cond_0

    .line 502
    invoke-static {v1, v3}, Lcom/google/android/music/store/KeepOnUpdater;->updateNeedToKeepOn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 505
    :cond_0
    invoke-virtual {v4, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 507
    if-eqz v0, :cond_1

    .line 508
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 510
    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/google/android/music/store/KeepOnUpdater;->sendShouldKeeponUpdatedBroadcast(Landroid/content/Context;Z)V

    .line 512
    :cond_1
    return-void

    :cond_2
    move v0, v9

    .line 499
    goto :goto_0

    .line 505
    :catchall_0
    move-exception v6

    invoke-virtual {v4, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v6
.end method
