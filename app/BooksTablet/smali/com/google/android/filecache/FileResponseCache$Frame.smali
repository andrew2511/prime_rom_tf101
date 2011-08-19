.class Lcom/google/android/filecache/FileResponseCache$Frame;
.super Ljava/lang/Object;
.source "FileResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filecache/FileResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Frame"
.end annotation


# instance fields
.field private mCacheRequest:Ljava/net/CacheRequest;

.field private final mConnection:Ljava/net/URLConnection;

.field private final mCookie:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/net/URLConnection;Ljava/lang/Object;)V
    .locals 1
    .parameter "connection"
    .parameter "cookie"

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    if-nez p1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 516
    :cond_0
    iput-object p1, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mConnection:Ljava/net/URLConnection;

    .line 517
    iput-object p2, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCookie:Ljava/lang/Object;

    .line 518
    return-void
.end method


# virtual methods
.method public getCacheRequest()Ljava/net/CacheRequest;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCacheRequest:Ljava/net/CacheRequest;

    return-object v0
.end method

.method public getConnection()Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mConnection:Ljava/net/URLConnection;

    return-object v0
.end method

.method public getCookie()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method public setCacheRequest(Ljava/net/CacheRequest;)V
    .locals 0
    .parameter "cacheRequest"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCacheRequest:Ljava/net/CacheRequest;

    .line 526
    return-void
.end method
