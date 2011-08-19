.class public Lcom/google/android/apps/books/model/CollectionVolumesEditor;
.super Ljava/lang/Object;
.source "CollectionVolumesEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/CollectionVolumesEditor$1;,
        Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;,
        Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;
    }
.end annotation


# static fields
.field private static final AUTO_SET_TIME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CollectionVolumesEditor"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field private final mTime:J


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    .line 46
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;-><init>(Landroid/content/ContentResolver;J)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;J)V
    .locals 1
    .parameter "resolver"
    .parameter "time"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->mResolver:Landroid/content/ContentResolver;

    .line 42
    iput-wide p2, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->mTime:J

    .line 43
    return-void
.end method

.method private syncRow(Ljava/lang/String;JLjava/lang/String;I)V
    .locals 9
    .parameter "account"
    .parameter "collectionId"
    .parameter "volumeId"
    .parameter "dirty"

    .prologue
    .line 50
    iget-wide v5, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->mTime:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v2, v5

    .line 51
    .local v2, time:J
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "account_name"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v5, "volume_id"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v5, "collection_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    const-string v5, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    const-string v5, "dirty"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    new-instance v0, Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;

    iget-object v5, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v5, p1, p2, p3}, Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 60
    .local v0, syncable:Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;
    new-instance v1, Lcom/google/android/apps/books/sync/TableSynchronizer;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    .line 62
    .local v1, syncher:Lcom/google/android/apps/books/sync/TableSynchronizer;
    invoke-virtual {v1, v4}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRow(Landroid/content/ContentValues;)V

    .line 63
    return-void

    .line 50
    .end local v0           #syncable:Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;
    .end local v1           #syncher:Lcom/google/android/apps/books/sync/TableSynchronizer;
    .end local v2           #time:J
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    iget-wide v5, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->mTime:J

    move-wide v2, v5

    goto :goto_0
.end method


# virtual methods
.method public backgroundAdd(Landroid/accounts/Account;JLjava/lang/String;Lcom/google/android/apps/books/service/FetchService;)Landroid/os/AsyncTask;
    .locals 8
    .parameter "account"
    .parameter "collectionId"
    .parameter "volumeId"
    .parameter "fetchService"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "J",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/books/service/FetchService;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "missing fetch service"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;-><init>(Lcom/google/android/apps/books/model/CollectionVolumesEditor;Landroid/accounts/Account;JLjava/lang/String;Lcom/google/android/apps/books/service/FetchService;Lcom/google/android/apps/books/model/CollectionVolumesEditor$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/model/CollectionVolumesEditor$AddTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public backgroundRemove(Landroid/accounts/Account;JLjava/lang/String;)Landroid/os/AsyncTask;
    .locals 7
    .parameter "account"
    .parameter "collectionId"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;-><init>(Lcom/google/android/apps/books/model/CollectionVolumesEditor;Landroid/accounts/Account;JLjava/lang/String;Lcom/google/android/apps/books/model/CollectionVolumesEditor$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public synchronousAdd(Landroid/accounts/Account;JLjava/lang/String;Lcom/google/android/apps/books/service/FetchService;)V
    .locals 6
    .parameter "account"
    .parameter "collectionId"
    .parameter "volumeId"
    .parameter "fetchService"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "missing fetch service"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    invoke-interface {p5, p4, p1, v0}, Lcom/google/android/apps/books/service/FetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 74
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->syncRow(Ljava/lang/String;JLjava/lang/String;I)V

    .line 75
    return-void
.end method

.method public synchronousRemove(Landroid/accounts/Account;JLjava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter "collectionId"
    .parameter "volumeId"

    .prologue
    .line 78
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, -0x1

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->syncRow(Ljava/lang/String;JLjava/lang/String;I)V

    .line 79
    return-void
.end method
