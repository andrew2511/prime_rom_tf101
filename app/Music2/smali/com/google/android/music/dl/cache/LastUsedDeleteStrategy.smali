.class public Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;
.super Ljava/lang/Object;
.source "LastUsedDeleteStrategy.java"

# interfaces
.implements Lcom/google/android/music/dl/cache/DeletionStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCache"


# instance fields
.field private final LOGV:Z

.field protected final mFileSys:Lcom/google/android/music/dl/FileSystem;

.field protected final mStore:Lcom/google/android/music/store/Store;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/FileSystem;Lcom/google/android/music/store/Store;)V
    .locals 1
    .parameter "fileSystem"
    .parameter "store"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "MusicCache"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->LOGV:Z

    .line 27
    iput-object p2, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mStore:Lcom/google/android/music/store/Store;

    .line 28
    iput-object p1, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    .line 29
    return-void
.end method


# virtual methods
.method public createSpace(JLjava/io/File;Ljava/util/HashSet;)Z
    .locals 11
    .parameter "requiredSpace"
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/io/File;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 33
    .local p4, dontDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/music/store/Store;->getLastUsedCacheFiles(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 34
    .local v3, possibleDeletes:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 35
    const/4 v8, 0x0

    .line 72
    :goto_0
    return v8

    .line 37
    :cond_0
    const-wide/16 v6, 0x0

    .line 39
    .local v6, recoveredSize:J
    :cond_1
    :goto_1
    cmp-long v8, v6, p1

    if-gez v8, :cond_5

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 40
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 41
    .local v1, deleteId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 42
    new-instance v0, Ljava/io/File;

    const/4 v8, 0x1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, deleteFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 44
    iget-object v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v8, v0}, Lcom/google/android/music/dl/FileSystem;->getLength(Ljava/io/File;)J

    move-result-wide v4

    .line 45
    .local v4, possibleRecoverSize:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    .line 46
    iget-boolean v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->LOGV:Z

    if-eqz v8, :cond_2

    .line 47
    const-string v8, "MusicCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "About to delete local file for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_2
    iget-object v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v8, v0}, Lcom/google/android/music/dl/FileSystem;->delete(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 52
    iget-object v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v8, v1, v2}, Lcom/google/android/music/store/Store;->removeFileLocation(J)V

    .line 53
    add-long/2addr v6, v4

    goto :goto_1

    .line 55
    :cond_3
    const-string v8, "MusicCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not delete: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 72
    .end local v0           #deleteFile:Ljava/io/File;
    .end local v1           #deleteId:J
    .end local v4           #possibleRecoverSize:J
    :catchall_0
    move-exception v8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v8

    .line 59
    .restart local v0       #deleteFile:Ljava/io/File;
    .restart local v1       #deleteId:J
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v8, v1, v2}, Lcom/google/android/music/store/Store;->removeFileLocation(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 64
    .end local v0           #deleteFile:Ljava/io/File;
    .end local v1           #deleteId:J
    :cond_5
    cmp-long v8, v6, p1

    if-ltz v8, :cond_6

    .line 65
    const/4 v8, 0x1

    .line 72
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 68
    :cond_6
    :try_start_2
    const-string v8, "MusicCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not create enough space("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    const/4 v8, 0x0

    .line 72
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
