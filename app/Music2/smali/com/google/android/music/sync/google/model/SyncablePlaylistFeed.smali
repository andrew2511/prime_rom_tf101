.class public Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;
.super Lcom/google/api/client/json/GenericJson;
.source "SyncablePlaylistFeed.java"

# interfaces
.implements Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed$PlaylistListData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/client/json/GenericJson;",
        "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed",
        "<",
        "Lcom/google/android/music/sync/google/model/SyncablePlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field public apiVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "apiVersion"
    .end annotation
.end field

.field public nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "nextPageToken"
    .end annotation
.end field

.field public playlistListData:Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed$PlaylistListData;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 35
    return-void
.end method

.method public static parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    sget-object v2, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 56
    .local v1, parser:Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 57
    const-class v2, Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 58
    .end local v1           #parser:Lorg/codehaus/jackson/JsonParser;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 59
    .local v0, je:Lorg/codehaus/jackson/JsonParseException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse playlist feed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/SyncablePlaylist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;->playlistListData:Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed$PlaylistListData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;->playlistListData:Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed$PlaylistListData;

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed$PlaylistListData;->items:Ljava/util/List;

    goto :goto_0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylistsFeed()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method
