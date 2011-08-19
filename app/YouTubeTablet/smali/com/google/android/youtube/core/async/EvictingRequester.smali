.class public Lcom/google/android/youtube/core/async/EvictingRequester;
.super Ljava/lang/Object;
.source "EvictingRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPrefixEvicter;,
        Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;,
        Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;*>;"
        }
    .end annotation
.end field

.field private final filter:Lcom/google/android/youtube/core/utils/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final target:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;*>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<TR;TE;TK;>;"
    .local p1, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TK;*>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "cache may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/Cache;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester;->cache:Lcom/google/android/youtube/core/cache/Cache;

    .line 35
    const-string v0, "target may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester;->filter:Lcom/google/android/youtube/core/utils/Predicate;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<TK;>;",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;*>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<TR;TE;TK;>;"
    .local p1, filter:Lcom/google/android/youtube/core/utils/Predicate;,"Lcom/google/android/youtube/core/utils/Predicate<TK;>;"
    .local p2, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TK;*>;"
    .local p3, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "filter may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/Predicate;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester;->filter:Lcom/google/android/youtube/core/utils/Predicate;

    .line 29
    const-string v0, "cache may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/Cache;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester;->cache:Lcom/google/android/youtube/core/cache/Cache;

    .line 30
    const-string v0, "target may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/async/EvictingRequester;)Lcom/google/android/youtube/core/cache/Cache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester;->cache:Lcom/google/android/youtube/core/cache/Cache;

    return-object v0
.end method


# virtual methods
.method protected getFilter(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/Predicate;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)",
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<TR;TE;TK;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester;->filter:Lcom/google/android/youtube/core/utils/Predicate;

    return-object v0
.end method

.method public request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<TR;TE;TK;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;-><init>(Lcom/google/android/youtube/core/async/EvictingRequester;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 41
    return-void
.end method
