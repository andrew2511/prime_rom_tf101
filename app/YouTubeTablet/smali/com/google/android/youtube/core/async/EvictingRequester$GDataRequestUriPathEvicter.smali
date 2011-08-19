.class public Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;
.super Lcom/google/android/youtube/core/async/EvictingRequester;
.source "EvictingRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/EvictingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GDataRequestUriPathEvicter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/youtube/core/async/EvictingRequester",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "TE;",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "*>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "TE;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;,"Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter<TE;>;"
    .local p1, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/async/GDataRequest;*>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/EvictingRequester;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected getFilter(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/Predicate;
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "TE;)",
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;,"Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter<TE;>;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter$1;-><init>(Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;Lcom/google/android/youtube/core/async/GDataRequest;)V

    return-object v0
.end method

.method protected bridge synthetic getFilter(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/Predicate;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;,"Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter<TE;>;"
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;->getFilter(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/Predicate;

    move-result-object v0

    return-object v0
.end method
