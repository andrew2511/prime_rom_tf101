.class public Lcom/google/android/music/store/CurrentDownloadsCursor;
.super Lcom/google/android/music/store/MutableMatrixCursor;
.source "CurrentDownloadsCursor.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "DownloadQueueCursor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

.field private mMusicIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "DownloadQueueCursor"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/CurrentDownloadsCursor;->LOGV:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/content/Context;Lcom/google/android/music/dl/IDownloadManager;)V
    .locals 1
    .parameter "columns"
    .parameter "context"
    .parameter "downloadManager"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MutableMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mMusicIds:Ljava/util/Collection;

    .line 33
    iput-object p2, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    .line 36
    invoke-direct {p0}, Lcom/google/android/music/store/CurrentDownloadsCursor;->update()V

    .line 37
    return-void
.end method

.method private declared-synchronized update()V
    .locals 11

    .prologue
    .line 47
    monitor-enter p0

    const/4 v7, 0x0

    .line 48
    .local v7, success:Z
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0, v8}, Lcom/google/android/music/store/CurrentDownloadsCursor;->beginTransaction(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v8, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mMusicIds:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->clear()V

    .line 51
    iget-object v8, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    invoke-interface {v8}, Lcom/google/android/music/dl/IDownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v2

    .line 52
    .local v2, downloadOrders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    if-eqz v2, :cond_8

    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/dl/DownloadOrder;

    .line 54
    .local v6, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v8, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mMusicIds:Ljava/util/Collection;

    iget-wide v9, v6, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/google/android/music/store/CurrentDownloadsCursor;->newRow()Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    move-result-object v0

    .line 56
    .local v0, builder:Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v8, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mColumnCount:I

    if-ge v4, v8, :cond_7

    .line 57
    iget-object v8, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v1, v8, v4

    .line 61
    .local v1, currentColumn:Ljava/lang/String;
    const-string v8, "AlbumArtist"

    if-ne v1, v8, :cond_0

    .line 62
    iget-object v8, v6, Lcom/google/android/music/dl/DownloadOrder;->albumArtistName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    .line 56
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    :cond_0
    const-string v8, "Album"

    if-ne v1, v8, :cond_1

    .line 64
    iget-object v8, v6, Lcom/google/android/music/dl/DownloadOrder;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 83
    .end local v0           #builder:Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .end local v1           #currentColumn:Ljava/lang/String;
    .end local v2           #downloadOrders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 84
    .local v3, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "DownloadQueueCursor"

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    invoke-virtual {p0, v7}, Lcom/google/android/music/store/CurrentDownloadsCursor;->endTrancation(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    .end local v3           #e:Landroid/os/RemoteException;
    :goto_3
    monitor-exit p0

    return-void

    .line 65
    .restart local v0       #builder:Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .restart local v1       #currentColumn:Ljava/lang/String;
    .restart local v2       #downloadOrders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    .restart local v4       #i:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_1
    :try_start_4
    const-string v8, "Artist"

    if-ne v1, v8, :cond_2

    .line 66
    iget-object v8, v6, Lcom/google/android/music/dl/DownloadOrder;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 86
    .end local v0           #builder:Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .end local v1           #currentColumn:Ljava/lang/String;
    .end local v2           #downloadOrders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_0
    move-exception v8

    :try_start_5
    invoke-virtual {p0, v7}, Lcom/google/android/music/store/CurrentDownloadsCursor;->endTrancation(Z)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 47
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 67
    .restart local v0       #builder:Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .restart local v1       #currentColumn:Ljava/lang/String;
    .restart local v2       #downloadOrders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    .restart local v4       #i:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_2
    :try_start_6
    const-string v8, "reason"

    if-ne v1, v8, :cond_3

    .line 68
    iget-object v8, v6, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    goto :goto_2

    .line 69
    :cond_3
    const-string v8, "_id"

    if-ne v1, v8, :cond_4

    .line 70
    iget-wide v8, v6, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    goto :goto_2

    .line 71
    :cond_4
    const-string v8, "Title"

    if-ne v1, v8, :cond_5

    .line 72
    iget-object v8, v6, Lcom/google/android/music/dl/DownloadOrder;->trackName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    goto :goto_2

    .line 73
    :cond_5
    const-string v8, "DownloadStatus"

    if-ne v1, v8, :cond_6

    .line 74
    invoke-virtual {v6}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    goto :goto_2

    .line 76
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown column: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 79
    .end local v1           #currentColumn:Ljava/lang/String;
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 82
    .end local v0           #builder:Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_8
    const/4 v7, 0x1

    .line 86
    :try_start_7
    invoke-virtual {p0, v7}, Lcom/google/android/music/store/CurrentDownloadsCursor;->endTrancation(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3
.end method


# virtual methods
.method public getMusicIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/music/store/CurrentDownloadsCursor;->mMusicIds:Ljava/util/Collection;

    return-object v0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/music/store/CurrentDownloadsCursor;->update()V

    .line 43
    invoke-super {p0}, Lcom/google/android/music/store/MutableMatrixCursor;->requery()Z

    move-result v0

    return v0
.end method
