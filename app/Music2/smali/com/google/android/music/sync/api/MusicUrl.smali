.class public Lcom/google/android/music/sync/api/MusicUrl;
.super Lcom/google/api/client/googleapis/GoogleUrl;
.source "MusicUrl.java"


# static fields
.field private static final DEFAULT_URL_ROOT:Ljava/lang/String; = "https://www.googleapis.com/sj/v1beta1"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encodedPath"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static forMagicPlaylist()Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/music/sync/api/MusicUrl;

    const-string v1, "https://www.googleapis.com/sj/v1beta1"

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicUrl;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    const-string v1, "json"

    iput-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->alt:Ljava/lang/String;

    .line 89
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "playlists"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "magic"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v0
.end method

.method public static forPlaylist(Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 2
    .parameter "id"

    .prologue
    .line 61
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylistsFeed()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    .line 62
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v0
.end method

.method public static forPlaylistEntriesBatchMutation()Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/music/sync/api/MusicUrl;

    const-string v1, "https://www.googleapis.com/sj/v1beta1"

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicUrl;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    const-string v1, "json"

    iput-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->alt:Ljava/lang/String;

    .line 104
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "plentriesbatch"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v0
.end method

.method public static forPlaylistEntriesFeed()Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/music/sync/api/MusicUrl;

    const-string v1, "https://www.googleapis.com/sj/v1beta1"

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicUrl;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    const-string v1, "json"

    iput-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->alt:Ljava/lang/String;

    .line 69
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "plentries"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-object v0
.end method

.method public static forPlaylistEntriesFeedAsPost()Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/music/sync/api/MusicUrl;

    const-string v1, "https://www.googleapis.com/sj/v1beta1"

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicUrl;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    const-string v1, "json"

    iput-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->alt:Ljava/lang/String;

    .line 76
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "plentryfeed"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method public static forPlaylistEntry(Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 2
    .parameter "id"

    .prologue
    .line 81
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylistEntriesFeed()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    .line 82
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v0
.end method

.method public static forPlaylistsBatchMutation()Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/music/sync/api/MusicUrl;

    const-string v1, "https://www.googleapis.com/sj/v1beta1"

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicUrl;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    const-string v1, "json"

    iput-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->alt:Ljava/lang/String;

    .line 97
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "playlistbatch"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object v0
.end method

.method public static forPlaylistsFeed()Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/music/sync/api/MusicUrl;

    const-string v1, "https://www.googleapis.com/sj/v1beta1"

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicUrl;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    const-string v1, "json"

    iput-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->alt:Ljava/lang/String;

    .line 49
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "playlists"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-object v0
.end method

.method public static forPlaylistsFeedAsPost()Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/music/sync/api/MusicUrl;

    const-string v1, "https://www.googleapis.com/sj/v1beta1"

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicUrl;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    const-string v1, "json"

    iput-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->alt:Ljava/lang/String;

    .line 56
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "playlistfeed"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method

.method public static forTrack(Ljava/lang/String;I)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 2
    .parameter "id"
    .parameter "dimension"

    .prologue
    .line 34
    invoke-static {p1}, Lcom/google/android/music/sync/api/MusicUrl;->forTracksFeed(I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    .line 35
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-object v0
.end method

.method public static forTrackStatsBatchReport()Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/music/sync/api/MusicUrl;

    const-string v1, "https://www.googleapis.com/sj/v1beta1"

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicUrl;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    const-string v1, "json"

    iput-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->alt:Ljava/lang/String;

    .line 42
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "trackstats"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-object v0
.end method

.method public static forTracksFeed(I)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3
    .parameter "dimension"

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/music/sync/api/MusicUrl;

    const-string v1, "https://www.googleapis.com/sj/v1beta1"

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicUrl;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    const-string v1, "json"

    iput-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->alt:Ljava/lang/String;

    .line 20
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "tracks"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "art-dimension"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object v0
.end method

.method public static forTracksFeedAsPost(I)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3
    .parameter "dimension"

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/music/sync/api/MusicUrl;

    const-string v1, "https://www.googleapis.com/sj/v1beta1"

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicUrl;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, url:Lcom/google/android/music/sync/api/MusicUrl;
    const-string v1, "json"

    iput-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->alt:Ljava/lang/String;

    .line 28
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicUrl;->pathParts:Ljava/util/List;

    const-string v2, "trackfeed"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    const-string v1, "art-dimension"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-object v0
.end method
