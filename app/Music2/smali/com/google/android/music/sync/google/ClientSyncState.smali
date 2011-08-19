.class public Lcom/google/android/music/sync/google/ClientSyncState;
.super Ljava/lang/Object;
.source "ClientSyncState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/ClientSyncState$1;,
        Lcom/google/android/music/sync/google/ClientSyncState$Helpers;,
        Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    }
.end annotation


# static fields
.field private static final ETAG_PLAYLIST:I = 0x6

.field private static final ETAG_PLAYLIST_ENTRY:I = 0x7

.field private static final ETAG_TRACK:I = 0x5

.field private static final REMOTE_ACCOUNT:I = 0x1

.field private static final REMOTE_PLAYLIST_VERSION:I = 0x3

.field private static final REMOTE_PLENTRY_VERSION:I = 0x4

.field private static final REMOTE_TRACK_VERSION:I = 0x2

.field private static final type:Lcom/google/common/io/protocol/ProtoBufType;


# instance fields
.field final mEtagPlaylist:Ljava/lang/String;

.field final mEtagPlaylistEntry:Ljava/lang/String;

.field final mEtagTrack:Ljava/lang/String;

.field final mRemoteAccount:Ljava/lang/Integer;

.field final mRemotePlaylistVersion:Ljava/lang/Long;

.field final mRemotePlentryVersion:Ljava/lang/Long;

.field final mRemoteTrackVersion:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x224

    const/16 v4, 0x213

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v1, "MusicMetadataSyncState"

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    .line 37
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x215

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 38
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 40
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 42
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 44
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x5

    invoke-virtual {v0, v5, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 46
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x6

    invoke-virtual {v0, v5, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 48
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x7

    invoke-virtual {v0, v5, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 50
    return-void
.end method

.method private constructor <init>(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "remoteAccount"
    .parameter "remoteTrackVersion"
    .parameter "remotePlaylistVersion"
    .parameter "remotePlentryVersion"
    .parameter "etagTrack"
    .parameter "etagPlaylist"
    .parameter "etagPlaylistEntry"

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    .line 224
    iput-object p2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    .line 225
    iput-object p3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    .line 226
    iput-object p4, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    .line 227
    iput-object p5, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    .line 228
    iput-object p6, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    .line 229
    iput-object p7, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    .line 230
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/sync/google/ClientSyncState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/google/android/music/sync/google/ClientSyncState;-><init>(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;-><init>(Lcom/google/android/music/sync/google/ClientSyncState$1;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/music/sync/google/ClientSyncState;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .locals 2
    .parameter "clone"

    .prologue
    .line 237
    new-instance v0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;-><init>(Lcom/google/android/music/sync/google/ClientSyncState;Lcom/google/android/music/sync/google/ClientSyncState$1;)V

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/music/sync/google/ClientSyncState;
    .locals 15
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/ProviderException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 241
    new-instance v9, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 243
    .local v9, item:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_0
    invoke-virtual {v9, p0}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    invoke-virtual {v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v10, v0

    .line 249
    .local v10, remoteAccount:Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v9, v12}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, v0

    .line 251
    .local v2, remoteTrackVersion:Ljava/lang/Long;
    :goto_1
    invoke-virtual {v9, v13}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    .line 253
    .local v3, remotePlaylistVersion:Ljava/lang/Long;
    :goto_2
    invoke-virtual {v9, v14}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9, v14}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v4, v0

    .line 255
    .local v4, remotePlentryVersion:Ljava/lang/Long;
    :goto_3
    const/4 v0, 0x5

    invoke-virtual {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 257
    .local v5, etagTrack:Ljava/lang/String;
    :goto_4
    const/4 v0, 0x6

    invoke-virtual {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 259
    .local v6, etagPlaylist:Ljava/lang/String;
    :goto_5
    const/4 v0, 0x7

    invoke-virtual {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 261
    .local v7, etagPlaylistEntry:Ljava/lang/String;
    :goto_6
    new-instance v0, Lcom/google/android/music/sync/google/ClientSyncState;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/sync/google/ClientSyncState;-><init>(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 244
    .end local v2           #remoteTrackVersion:Ljava/lang/Long;
    .end local v3           #remotePlaylistVersion:Ljava/lang/Long;
    .end local v4           #remotePlentryVersion:Ljava/lang/Long;
    .end local v5           #etagTrack:Ljava/lang/String;
    .end local v6           #etagPlaylist:Ljava/lang/String;
    .end local v7           #etagPlaylistEntry:Ljava/lang/String;
    .end local v10           #remoteAccount:Ljava/lang/Integer;
    :catch_0
    move-exception v8

    .line 245
    .local v8, e:Ljava/io/IOException;
    new-instance v0, Lcom/google/android/music/sync/common/ProviderException;

    invoke-direct {v0, v8}, Lcom/google/android/music/sync/common/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .end local v8           #e:Ljava/io/IOException;
    :cond_0
    move-object v10, v11

    .line 247
    goto :goto_0

    .restart local v10       #remoteAccount:Ljava/lang/Integer;
    :cond_1
    move-object v2, v11

    .line 249
    goto :goto_1

    .restart local v2       #remoteTrackVersion:Ljava/lang/Long;
    :cond_2
    move-object v3, v11

    .line 251
    goto :goto_2

    .restart local v3       #remotePlaylistVersion:Ljava/lang/Long;
    :cond_3
    move-object v4, v11

    .line 253
    goto :goto_3

    .restart local v4       #remotePlentryVersion:Ljava/lang/Long;
    :cond_4
    move-object v5, v11

    .line 255
    goto :goto_4

    .restart local v5       #etagTrack:Ljava/lang/String;
    :cond_5
    move-object v6, v11

    .line 257
    goto :goto_5

    .restart local v6       #etagPlaylist:Ljava/lang/String;
    :cond_6
    move-object v7, v11

    .line 259
    goto :goto_6
.end method


# virtual methods
.method public getRemoteAccount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRemotePlaylistVersion()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    return-object v0
.end method

.method public getRemotePlentryVersion()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    return-object v0
.end method

.method public getRemoteTrackVersion()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    return-object v0
.end method

.method public toBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/ProviderException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 267
    .local v1, item:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 268
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 272
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 276
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 280
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 283
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 284
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 287
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 288
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 291
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 292
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 296
    :cond_6
    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/android/music/sync/common/ProviderException;

    invoke-direct {v2, v0}, Lcom/google/android/music/sync/common/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remoteAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; remoteTrackVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; remotePlaylistVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; remotePlaylistEntryVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; etagTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; etagPlaylist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; etagPlaylistEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
