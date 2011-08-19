.class public Lcom/ecareme/pixwe/cache/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, action:Ljava/lang/String;
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got intent with action "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40
    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 42
    .local v3, fileUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/ecareme/pixwe/media/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v1

    .line 43
    .local v1, bucketId:J
    invoke-static {v1, v2}, Lcom/ecareme/pixwe/cache/CacheService;->isPresentInCache(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    invoke-static {}, Lcom/ecareme/pixwe/cache/CacheService;->markDirty()V

    goto :goto_0

    .line 46
    .end local v1           #bucketId:J
    .end local v3           #fileUri:Landroid/net/Uri;
    :cond_2
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    sget-object v4, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/DiskCache;->close()V

    .line 48
    sget-object v4, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/DiskCache;->close()V

    .line 49
    sget-object v4, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/DiskCache;->close()V

    .line 50
    sget-object v4, Lcom/ecareme/pixwe/cache/CacheService;->sMetaAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/DiskCache;->close()V

    .line 51
    sget-object v4, Lcom/ecareme/pixwe/cache/CacheService;->sSkipThumbnailIds:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    goto :goto_0
.end method
