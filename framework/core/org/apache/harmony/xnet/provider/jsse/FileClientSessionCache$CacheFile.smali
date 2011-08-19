.class Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;
.super Ljava/io/File;
.source "FileClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheFile"
.end annotation


# instance fields
.field lastModified:J

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 355
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->lastModified:J

    .line 352
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    .line 353
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/io/File;)I
    .registers 10
    .parameter "another"

    .prologue
    const-wide/16 v6, 0x0

    .line 369
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 370
    .local v0, result:J
    cmp-long v2, v0, v6

    if-nez v2, :cond_15

    .line 371
    invoke-super {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v2

    .line 373
    :goto_14
    return v2

    :cond_15
    cmp-long v2, v0, v6

    if-gez v2, :cond_1b

    const/4 v2, -0x1

    goto :goto_14

    :cond_1b
    const/4 v2, 0x1

    goto :goto_14
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 346
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public lastModified()J
    .registers 5

    .prologue
    .line 359
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->lastModified:J

    .line 360
    .local v0, lastModified:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 361
    invoke-super {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .end local v0           #lastModified:J
    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->lastModified:J

    .line 363
    .restart local v0       #lastModified:J
    :cond_e
    return-wide v0
.end method
