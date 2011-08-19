.class public Lcom/google/android/music/dl/cache/DeleteAllCacheStrategy;
.super Lcom/google/android/music/dl/cache/CacheStrategy;
.source "DeleteAllCacheStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public findSpaceForCacheFile(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;)J
    .locals 2
    .parameter "order"
    .parameter "location"

    .prologue
    .line 17
    iget-wide v0, p1, Lcom/google/android/music/dl/DownloadOrder;->length:J

    return-wide v0
.end method
