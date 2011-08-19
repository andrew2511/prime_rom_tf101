.class public Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;
.super Ljava/lang/Object;
.source "MaxFreeSpaceDeletionStrategy.java"

# interfaces
.implements Lcom/google/android/music/dl/cache/DeletionStrategy;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "MusicCache"


# instance fields
.field private mFileSys:Lcom/google/android/music/dl/FileSystem;

.field private mStore:Lcom/google/android/music/store/Store;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "MusicCache"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/FileSystem;Lcom/google/android/music/store/Store;)V
    .locals 0
    .parameter "mFileSys"
    .parameter "mStore"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    .line 30
    iput-object p2, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mStore:Lcom/google/android/music/store/Store;

    .line 31
    return-void
.end method


# virtual methods
.method public createSpace(JLjava/io/File;Ljava/util/HashSet;)Z
    .locals 8
    .parameter "space"
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
    .local p4, dontDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    iget-object v3, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, p3}, Lcom/google/android/music/store/Store;->getDeletableFiles(Ljava/io/File;)Landroid/database/Cursor;

    move-result-object v0

    .line 37
    .local v0, deletable:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 39
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    iget-object v3, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    new-instance v4, Ljava/io/File;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/google/android/music/dl/FileSystem;->delete(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 41
    const-string v3, "MusicCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error trying to delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    iget-object v3, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/music/store/Store;->removeFileLocation(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    .end local v1           #id:J
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3

    :cond_2
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 50
    iget-object v3, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v3, p3}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_3

    move v3, v6

    :goto_1
    return v3

    :cond_3
    move v3, v7

    goto :goto_1
.end method
