.class public Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
.super Lcom/google/api/client/json/GenericJson;
.source "SyncablePlaylistEntry.java"

# interfaces
.implements Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAbsolutePosition:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "absolutePosition"
    .end annotation
.end field

.field public mClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "clientId"
    .end annotation
.end field

.field public mCreationTimestamp:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "creationTimestamp"
    .end annotation
.end field

.field public mFollowingEntryClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "followingEntryId"
    .end annotation
.end field

.field public mIsDeleted:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "deleted"
    .end annotation
.end field

.field public mItem:Lcom/google/android/music/store/PlayList$Item;

.field public mLastModifiedTimestamp:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "lastModifiedTimestamp"
    .end annotation
.end field

.field public mLocalId:J

.field public mLocalPlaylistId:J

.field public mPrecedingEntryClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "precedingEntryId"
    .end annotation
.end field

.field public mRemoteId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public mRemotePlaylistId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "playlistId"
    .end annotation
.end field

.field public mTrackId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "trackId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 28
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 52
    iput-wide v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mCreationTimestamp:J

    .line 55
    iput-wide v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    .line 61
    iput-wide v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalId:J

    .line 63
    iput-wide v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalPlaylistId:J

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mItem:Lcom/google/android/music/store/PlayList$Item;

    return-void
.end method

.method public static parse(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    .locals 4
    .parameter "item"

    .prologue
    .line 140
    new-instance v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-direct {v1}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;-><init>()V

    .line 141
    .local v1, entry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    iput-object p0, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mItem:Lcom/google/android/music/store/PlayList$Item;

    .line 142
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList$Item;->getFileSourceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mTrackId:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList$Item;->getSourceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList$Item;->getId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalId:J

    .line 145
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList$Item;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList$Item;->getClientId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mClientId:Ljava/lang/String;

    .line 149
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList$Item;->getSourceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList$Item;->getFileSourceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mTrackId:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList$Item;->getListId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalPlaylistId:J

    .line 156
    return-object v1

    .line 150
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 151
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    goto :goto_0
.end method

.method public static parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    sget-object v2, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 89
    .local v1, parser:Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 90
    const-class v2, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 91
    .end local v1           #parser:Lorg/codehaus/jackson/JsonParser;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 92
    .local v0, je:Lorg/codehaus/jackson/JsonParseException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public formatAsPlayListItem(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;
    .locals 4
    .parameter "item"

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance p1, Lcom/google/android/music/store/PlayList$Item;

    .end local p1
    invoke-direct {p1}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 114
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mTrackId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceId(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/PlayList$Item;->setSourceId(Ljava/lang/String;)V

    .line 116
    const-string v0, ""

    .line 117
    .local v0, position:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mAbsolutePosition:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mAbsolutePosition:Ljava/lang/String;

    .line 123
    invoke-virtual {p1, v0}, Lcom/google/android/music/store/PlayList$Item;->setServerPosition(Ljava/lang/String;)V

    .line 124
    iget-wide v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/PlayList$Item;->setSourceVersion(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/google/android/music/store/PlayList$Item;->getClientId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/google/android/music/store/PlayList$Item;->getClientId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mClientId:Ljava/lang/String;

    .line 129
    :cond_1
    return-object p1

    .line 120
    :cond_2
    new-instance v1, Lcom/google/android/music/store/InvalidDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server provided no position for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in playlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 1
    .parameter "context"

    .prologue
    .line 212
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylistEntriesBatchMutation()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mCreationTimestamp:J

    return-wide v0
.end method

.method public getEncapsulatedItem()Lcom/google/android/music/store/PlayList$Item;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mItem:Lcom/google/android/music/store/PlayList$Item;

    return-object v0
.end method

.method public getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 1
    .parameter "context"

    .prologue
    .line 204
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylistEntriesFeed()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 1
    .parameter "context"

    .prologue
    .line 208
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylistEntriesFeedAsPost()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedTimestamp()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    return-wide v0
.end method

.method public getLocalId()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalId:J

    return-wide v0
.end method

.method public getRemoteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 200
    invoke-static {p2}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylistEntry(Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    return v0
.end method

.method public serializeAsJson()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 73
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_1
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 75
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 77
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 78
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize a playlist entry as JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    new-instance v3, Lcom/google/android/music/store/InvalidDataException;

    const-string v4, "Unable to serialize playlist entry for upstream sync."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setCreationTimestamp(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 236
    iput-wide p1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mCreationTimestamp:J

    .line 237
    return-void
.end method

.method public setIsDeleted(Z)V
    .locals 0
    .parameter "isDeleted"

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    .line 249
    return-void
.end method

.method public setLastModifiedTimestamp(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    .line 229
    return-void
.end method

.method public setRemoteId(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteId"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v0, s:Ljava/lang/StringBuffer;
    const-string v1, "; remoteid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; ctime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mCreationTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; mtime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; isDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; remote entry id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; remote playlist id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; local playlist id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalPlaylistId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; absolute position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mAbsolutePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; preceding id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mPrecedingEntryClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; following id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mFollowingEntryClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; remote track id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mTrackId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; source id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; client id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validateForUpstreamDelete()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Invalid playlist entry for upstream delete."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    return-void
.end method

.method public validateForUpstreamInsert()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mTrackId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Invalid playlist entry for upstream insert."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    return-void
.end method

.method public validateForUpstreamUpdate()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mTrackId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Invalid playlist entry for upstream update."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    return-void
.end method

.method public wipeAllFields()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mAbsolutePosition:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mTrackId:Ljava/lang/String;

    .line 101
    iput-wide v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mCreationTimestamp:J

    .line 102
    iput-wide v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    .line 104
    iput-wide v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalPlaylistId:J

    .line 105
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mItem:Lcom/google/android/music/store/PlayList$Item;

    .line 106
    iput-wide v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalId:J

    .line 107
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mClientId:Ljava/lang/String;

    .line 108
    return-void
.end method
