.class public Lcom/google/android/youtube/core/cache/MusicVideosSplitter;
.super Ljava/lang/Object;
.source "MusicVideosSplitter.java"

# interfaces
.implements Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/cache/SplittingCache$Splitter",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/youtube/core/async/Timestamped",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/MusicVideo;",
        ">;>;",
        "Ljava/lang/String;",
        "Lcom/google/android/youtube/core/async/Timestamped",
        "<",
        "Lcom/google/android/youtube/core/async/Optional",
        "<",
        "Lcom/google/android/youtube/core/model/MusicVideo;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static nextOrNull(Ljava/util/Iterator;)Lcom/google/android/youtube/core/model/MusicVideo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;)",
            "Lcom/google/android/youtube/core/model/MusicVideo;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    check-cast p0, Lcom/google/android/youtube/core/model/MusicVideo;

    move-object v0, p0

    .line 50
    :goto_0
    return-object v0

    .restart local p0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic split(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/Cache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    check-cast p1, Ljava/util/List;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/youtube/core/cache/MusicVideosSplitter;->split(Ljava/util/List;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/Cache;)V

    return-void
.end method

.method public split(Ljava/util/List;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/Cache;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/async/Optional",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, compoundKey:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, compoundValue:Lcom/google/android/youtube/core/async/Timestamped;,"Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    .local p3, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/async/Optional<Lcom/google/android/youtube/core/model/MusicVideo;>;>;>;"
    iget-object p0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 29
    .local v4, responseIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    iget-wide v6, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    .line 31
    .local v6, timestamp:J
    invoke-static {}, Lcom/google/android/youtube/core/async/Optional$Null;->instance()Lcom/google/android/youtube/core/async/Optional;

    move-result-object v1

    .line 32
    .local v1, nullMusicVideo:Lcom/google/android/youtube/core/async/Optional;,"Lcom/google/android/youtube/core/async/Optional<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    new-instance v2, Lcom/google/android/youtube/core/async/Timestamped;

    invoke-direct {v2, v1, v6, v7}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    .line 35
    .local v2, nullTimestampedMusicVideo:Lcom/google/android/youtube/core/async/Timestamped;,"Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/async/Optional<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    invoke-static {v4}, Lcom/google/android/youtube/core/cache/MusicVideosSplitter;->nextOrNull(Ljava/util/Iterator;)Lcom/google/android/youtube/core/model/MusicVideo;

    move-result-object v5

    .line 36
    .local v5, responseVideo:Lcom/google/android/youtube/core/model/MusicVideo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    .local v3, requestVideoId:Ljava/lang/String;
    if-eqz v5, :cond_0

    iget-object v8, v5, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 38
    new-instance v8, Lcom/google/android/youtube/core/async/Timestamped;

    invoke-direct {v8, v5, v6, v7}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v3, v8}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-static {v4}, Lcom/google/android/youtube/core/cache/MusicVideosSplitter;->nextOrNull(Ljava/util/Iterator;)Lcom/google/android/youtube/core/model/MusicVideo;

    move-result-object v5

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p3, v3, v2}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    .end local v3           #requestVideoId:Ljava/lang/String;
    :cond_1
    return-void
.end method
