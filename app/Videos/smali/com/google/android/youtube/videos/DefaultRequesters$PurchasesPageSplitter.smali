.class Lcom/google/android/youtube/videos/DefaultRequesters$PurchasesPageSplitter;
.super Ljava/lang/Object;
.source "DefaultRequesters.java"

# interfaces
.implements Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/DefaultRequesters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PurchasesPageSplitter"
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
        "Lcom/google/android/youtube/core/model/Purchase;",
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
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/DefaultRequesters$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters$PurchasesPageSplitter;-><init>()V

    return-void
.end method


# virtual methods
.method public split(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/Cache;)V
    .locals 7
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
            "Lcom/google/android/youtube/core/model/Purchase;",
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
    .line 550
    .local p2, compoundValue:Lcom/google/android/youtube/core/async/Timestamped;,"Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    .local p3, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Video;>;>;"
    iget-object p0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Page;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    .line 551
    .local v1, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v3, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 552
    .local v3, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v3, :cond_0

    .line 553
    iget-object v4, v3, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    .line 554
    .local v2, singleRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    new-instance v4, Lcom/google/android/youtube/core/async/Timestamped;

    iget-wide v5, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    invoke-direct {v4, v3, v5, v6}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v2, v4}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 557
    .end local v1           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    .end local v2           #singleRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    .end local v3           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_1
    return-void
.end method

.method public bridge synthetic split(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/Cache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 544
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/youtube/videos/DefaultRequesters$PurchasesPageSplitter;->split(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/Cache;)V

    return-void
.end method
