.class public Lcom/google/android/apps/books/service/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/service/SyncService$StubSyncUi;,
        Lcom/google/android/apps/books/service/SyncService$SyncUi;
    }
.end annotation


# static fields
.field public static final DISPLAY_PROGRESS:Ljava/lang/String; = "SyncService.DISPLAY_PROGRESS"

.field static final DOWNLOAD_VOLUME_IDS:Ljava/lang/String; = "SyncService.VOLUME_IDS"

.field public static final EXTRA_DOWNLOAD:Ljava/lang/String; = "SyncService.DOWNLOAD"

.field public static final EXTRA_FETCH_BOOKS:Ljava/lang/String; = "SyncService.FETCH_BOOKS"

.field private static final TAG:Ljava/lang/String; = "SyncService"

.field public static final sSyncLock:Ljava/lang/Object;


# instance fields
.field private mSyncAdapter:Lcom/google/android/apps/books/service/SyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/service/SyncService;->sSyncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 234
    return-void
.end method

.method public static deleteStaleContent(Landroid/content/ContentResolver;J)V
    .locals 10
    .parameter "contentResolver"
    .parameter "keepAge"

    .prologue
    const/4 v8, 0x0

    const-string v9, "SyncService"

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, p1

    .line 172
    .local v1, cutoffTime:J
    invoke-static {p0, v1, v2}, Lcom/google/android/apps/books/provider/BooksProvider;->getVolumeIdsToDelete(Landroid/content/ContentResolver;J)Ljava/util/Set;

    move-result-object v5

    .line 175
    .local v5, volumesToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 176
    .local v4, volumeId:Ljava/lang/String;
    const-string v6, "SyncService"

    const/4 v6, 0x3

    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    const-string v6, "SyncService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ensuring stale volume deleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;->buildClearContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 180
    .local v0, clearUri:Landroid/net/Uri;
    invoke-virtual {p0, v0, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 182
    .end local v0           #clearUri:Landroid/net/Uri;
    .end local v4           #volumeId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static getVolumeIds(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 4
    .parameter "bundle"

    .prologue
    const-string v3, "SyncService"

    .line 222
    :try_start_0
    const-string v1, "SyncService.VOLUME_IDS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/service/SyncService;->jsonToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    .line 223
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 224
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "SyncService"

    const/4 v1, 0x5

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "SyncService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error decoding volume IDs extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static jsonToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 209
    .local v2, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 210
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-object v2
.end method

.method public static setVolumeIds(Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 2
    .parameter "bundle"
    .parameter "volumeIds"

    .prologue
    .line 199
    invoke-static {p1}, Lcom/google/android/apps/books/service/SyncService;->stringArrayToJson([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, encodedIds:Ljava/lang/String;
    const-string v1, "SyncService.VOLUME_IDS"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public static stringArrayToJson([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "strings"

    .prologue
    .line 188
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 189
    .local v1, array:Lorg/json/JSONArray;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 190
    .local v4, string:Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v4           #string:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncService;->mSyncAdapter:Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/books/service/SyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 156
    new-instance v0, Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/service/SyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/books/service/SyncService;->mSyncAdapter:Lcom/google/android/apps/books/service/SyncAdapter;

    .line 157
    return-void
.end method
