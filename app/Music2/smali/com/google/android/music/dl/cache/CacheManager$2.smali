.class Lcom/google/android/music/dl/cache/CacheManager$2;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/cache/CacheManager;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager$2;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 160
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "LocalCopyType"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v6, "LocalCopyPath"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v5, where:Ljava/lang/StringBuilder;
    const-string v6, "LocalCopyType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    iget-object v6, p0, Lcom/google/android/music/dl/cache/CacheManager$2;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v6}, Lcom/google/android/music/dl/cache/CacheManager;->access$800(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;->getDoNotDeletes()Ljava/util/HashSet;

    move-result-object v1

    .line 169
    .local v1, doNotDeletes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NOT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {v5, v1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 174
    :cond_0
    iget-object v6, p0, Lcom/google/android/music/dl/cache/CacheManager$2;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v6}, Lcom/google/android/music/dl/cache/CacheManager;->access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 175
    .local v2, store:Lcom/google/android/music/store/Store;
    const/4 v3, 0x0

    .line 176
    .local v3, success:Z
    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 178
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v6, "MUSIC"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    const/4 v3, 0x1

    .line 181
    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 183
    if-eqz v3, :cond_1

    .line 184
    iget-object v6, p0, Lcom/google/android/music/dl/cache/CacheManager$2;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v6}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    .line 186
    :cond_1
    return-void

    .line 181
    :catchall_0
    move-exception v6

    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v6
.end method
