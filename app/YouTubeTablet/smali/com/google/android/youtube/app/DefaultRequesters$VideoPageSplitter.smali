.class Lcom/google/android/youtube/app/DefaultRequesters$VideoPageSplitter;
.super Ljava/lang/Object;
.source "DefaultRequesters.java"

# interfaces
.implements Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/DefaultRequesters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPageSplitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/cache/SplittingCache$Splitter",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/async/Timestamped",
        "<",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;>;",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/async/Timestamped",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/DefaultRequesters$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1169
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters$VideoPageSplitter;-><init>()V

    return-void
.end method


# virtual methods
.method public split(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/Cache;)V
    .locals 6
    .parameter "compoundKey"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1173
    .local p2, compoundValue:Lcom/google/android/youtube/core/async/Timestamped;,"Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p3, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Video;>;>;"
    iget-object p0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Page;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Video;

    .line 1174
    .local v2, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v3, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    .line 1175
    .local v1, singleRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    new-instance v3, Lcom/google/android/youtube/core/async/Timestamped;

    iget-wide v4, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v1, v3}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1177
    .end local v1           #singleRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    .end local v2           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_0
    return-void
.end method

.method public bridge synthetic split(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/Cache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1169
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/youtube/app/DefaultRequesters$VideoPageSplitter;->split(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/Cache;)V

    return-void
.end method
