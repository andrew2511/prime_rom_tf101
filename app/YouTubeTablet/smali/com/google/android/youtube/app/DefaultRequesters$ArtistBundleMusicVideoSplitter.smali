.class Lcom/google/android/youtube/app/DefaultRequesters$ArtistBundleMusicVideoSplitter;
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
    name = "ArtistBundleMusicVideoSplitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/cache/SplittingCache$Splitter",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/youtube/core/async/Timestamped",
        "<",
        "Lcom/google/android/youtube/core/model/ArtistBundle;",
        ">;",
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
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/DefaultRequesters$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1290
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters$ArtistBundleMusicVideoSplitter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic split(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/Cache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1290
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/youtube/app/DefaultRequesters$ArtistBundleMusicVideoSplitter;->split(Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/Cache;)V

    return-void
.end method

.method public split(Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/Cache;)V
    .locals 6
    .parameter "compoundKey"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/ArtistBundle;",
            ">;",
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
    .line 1295
    .local p2, compoundValue:Lcom/google/android/youtube/core/async/Timestamped;,"Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/ArtistBundle;>;"
    .local p3, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/async/Optional<Lcom/google/android/youtube/core/model/MusicVideo;>;>;>;"
    iget-wide v1, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    .line 1296
    .local v1, timestamp:J
    iget-object p0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/ArtistBundle;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/ArtistBundle;->artistTape:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/MusicVideo;

    .line 1297
    .local v3, video:Lcom/google/android/youtube/core/model/MusicVideo;
    iget-object v4, v3, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    new-instance v5, Lcom/google/android/youtube/core/async/Timestamped;

    invoke-direct {v5, v3, v1, v2}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v4, v5}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1299
    .end local v3           #video:Lcom/google/android/youtube/core/model/MusicVideo;
    :cond_0
    iget-object p0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/youtube/core/model/ArtistBundle;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/ArtistBundle;->mixTape:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/MusicVideo;

    .line 1300
    .restart local v3       #video:Lcom/google/android/youtube/core/model/MusicVideo;
    iget-object v4, v3, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    new-instance v5, Lcom/google/android/youtube/core/async/Timestamped;

    invoke-direct {v5, v3, v1, v2}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v4, v5}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1302
    .end local v3           #video:Lcom/google/android/youtube/core/model/MusicVideo;
    :cond_1
    return-void
.end method
