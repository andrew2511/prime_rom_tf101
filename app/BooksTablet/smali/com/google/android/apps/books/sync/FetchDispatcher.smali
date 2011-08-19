.class public Lcom/google/android/apps/books/sync/FetchDispatcher;
.super Ljava/lang/Object;
.source "FetchDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;,
        Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;
    }
.end annotation


# static fields
.field private static final ENABLE_CACHING:Z = false

.field private static final TAG:Ljava/lang/String; = "FetchDispatcher"


# instance fields
.field private final mFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;

.field private final mUriFetched:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;)V
    .locals 1
    .parameter "fetcher"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mUriFetched:Ljava/util/HashMap;

    .line 47
    const-string v0, "missing fetcher"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;

    .line 48
    return-void
.end method


# virtual methods
.method public ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z
    .locals 7
    .parameter "uri"
    .parameter "account"
    .parameter "expectedMatch"
    .parameter "forceUpdate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "FetchDispatcher"

    .line 65
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v1

    .line 66
    .local v1, match:I
    if-ne v1, p3, :cond_2

    move v2, v5

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matches to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mUriFetched:Ljava/util/HashMap;

    monitor-enter v2

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mUriFetched:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;

    .line 73
    .local v0, cacheStatus:Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;

    .end local v0           #cacheStatus:Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;-><init>(Z)V

    .line 75
    .restart local v0       #cacheStatus:Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;
    iget-object v3, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mUriFetched:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-enter v0

    .line 82
    if-nez p4, :cond_3

    .line 87
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;

    invoke-interface {v2, p1}, Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;->isAlreadyFetched(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    const-string v2, "FetchDispatcher"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "FetchDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local hit for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;->setValue(Z)V

    .line 92
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v6

    .line 101
    :goto_1
    return v2

    .end local v0           #cacheStatus:Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;
    :cond_2
    move v2, v6

    .line 66
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 97
    .restart local v0       #cacheStatus:Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/books/sync/FetchDispatcher;->mFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;

    invoke-interface {v2, p1, p2}, Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;->fetch(Landroid/net/Uri;Landroid/accounts/Account;)V

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;->setValue(Z)V

    .line 99
    monitor-exit v0

    move v2, v5

    .line 101
    goto :goto_1

    .line 99
    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
