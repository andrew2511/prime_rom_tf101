.class public Lnet/yostore/aws/sqlite/helper/CacheQueueHelper;
.super Ljava/lang/Object;
.source "CacheQueueHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "CacheQueueHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/CacheQueueHelper;->TAG:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllCacheItem(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 21
    sget-object v1, Lnet/yostore/aws/sqlite/helper/CacheQueueHelper;->TAG:Ljava/lang/String;

    const-string v2, "removeUploadItem\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;

    .line 24
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->deleteAllCacheItem()Z

    .line 25
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->close()V

    .line 26
    return-void
.end method

.method public static deleteCacheItem(Landroid/content/Context;J)Z
    .locals 2
    .parameter "ctx"
    .parameter "fileId"

    .prologue
    .line 29
    new-instance v0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, rta:Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;

    .line 31
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->deleteCacheItem(J)Z

    move-result v1

    .line 32
    .local v1, rtn:Z
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->close()V

    .line 33
    return v1
.end method

.method public static getCacheItem(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/CacheItem;
    .locals 4
    .parameter "ctx"
    .parameter "fileId"

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, rtn:Lnet/yostore/aws/sqlite/entity/CacheItem;
    new-instance v1, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, rta:Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;

    .line 40
    invoke-virtual {v1, p1, p2}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->getCacheItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 41
    .local v0, cr:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    new-instance v2, Lnet/yostore/aws/sqlite/entity/CacheItem;

    .end local v2           #rtn:Lnet/yostore/aws/sqlite/entity/CacheItem;
    invoke-direct {v2, v0}, Lnet/yostore/aws/sqlite/entity/CacheItem;-><init>(Landroid/database/Cursor;)V

    .line 45
    .restart local v2       #rtn:Lnet/yostore/aws/sqlite/entity/CacheItem;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->close()V

    .line 47
    return-object v2
.end method

.method public static insertCache(Landroid/content/Context;JJJ)V
    .locals 7
    .parameter "ctx"
    .parameter "fileId"
    .parameter "size"
    .parameter "lastmodifytime"

    .prologue
    .line 14
    new-instance v0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 15
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 16
    invoke-virtual/range {v0 .. v6}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->insertCache(JJJ)J

    .line 17
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->close()V

    .line 18
    return-void
.end method
