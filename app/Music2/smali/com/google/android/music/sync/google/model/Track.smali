.class public Lcom/google/android/music/sync/google/model/Track;
.super Lcom/google/api/client/json/GenericJson;
.source "Track.java"

# interfaces
.implements Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/Track$AlbumArtRef;
    }
.end annotation


# static fields
.field private static final MPLAY_BASE_URL:Ljava/lang/String; = "https://android.clients.google.com/music/mplay?songid="

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final PROJ_ALBUM:I = 0x6

.field public static final PROJ_ALBUM_ARTIST:I = 0x7

.field public static final PROJ_ARTIST:I = 0x4

.field public static final PROJ_COMPOSER:I = 0x5

.field public static final PROJ_DURATION:I = 0xb

.field public static final PROJ_GENRE:I = 0xa

.field public static final PROJ_LOCAL_ID:I = 0x0

.field public static final PROJ_SOURCE_ID:I = 0x1

.field public static final PROJ_SOURCE_VERSION:I = 0x2

.field public static final PROJ_TITLE:I = 0x3

.field public static final PROJ_TRACK_NUMBER:I = 0x9

.field public static final PROJ_YEAR:I = 0x8

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRACK_TYPE_PROMO:I = 0x6


# instance fields
.field public mAlbum:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "album"
    .end annotation
.end field

.field public mAlbumArtRef:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "albumArtRef"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/Track$AlbumArtRef;",
            ">;"
        }
    .end annotation
.end field

.field public mAlbumArtist:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "albumArtist"
    .end annotation
.end field

.field public mArtist:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "artist"
    .end annotation
.end field

.field public mBeatsPerMinute:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "beatsPerMinute"
    .end annotation
.end field

.field public mComment:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "comment"
    .end annotation
.end field

.field public mComposer:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "composer"
    .end annotation
.end field

.field public mCreationTimestamp:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "creationTimestamp"
    .end annotation
.end field

.field public mDiscNumber:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "discNumber"
    .end annotation
.end field

.field public mDurationMillis:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "durationMillis"
    .end annotation
.end field

.field public mEstimatedSize:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "estimatedSize"
    .end annotation
.end field

.field public mGenre:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "genre"
    .end annotation
.end field

.field public mIsDeleted:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "deleted"
    .end annotation
.end field

.field public mLastModifiedTimestamp:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "lastModifiedTimestamp"
    .end annotation
.end field

.field private mMusicFile:Lcom/google/android/music/store/MusicFile;

.field public mPlayCount:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "playCount"
    .end annotation
.end field

.field public mPlayUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "mPlayUrl"
    .end annotation
.end field

.field public mRemoteId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
    .end annotation
.end field

.field public mTotalDiscCount:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "totalDiscCount"
    .end annotation
.end field

.field public mTrackNumber:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "trackNumber"
    .end annotation
.end field

.field public mTrackType:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "trackType"
    .end annotation
.end field

.field public mYear:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "year"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/Track;->TAG:Ljava/lang/String;

    .line 51
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SourceId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_sync_version"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Artist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Composer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Album"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AlbumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Year"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TrackNumber"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Genre"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/sync/google/model/Track;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 32
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 90
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    .line 93
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 114
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    .line 120
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    .line 126
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    .line 129
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mBeatsPerMinute:I

    .line 138
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    .line 141
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    .line 144
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    .line 147
    iput v0, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    return-void
.end method

.method public static parse(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/sync/google/model/Track;
    .locals 3
    .parameter "file"

    .prologue
    .line 264
    new-instance v0, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/Track;-><init>()V

    .line 265
    .local v0, track:Lcom/google/android/music/sync/google/model/Track;
    iput-object p0, v0, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    .line 266
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getSourceVersion()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 268
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getComposer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getAlbumArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    .line 273
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getYear()S

    move-result v1

    iput v1, v0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    .line 274
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackPositionInAlbum()S

    move-result v1

    iput v1, v0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    .line 275
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getGenre()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getDurationInMilliSec()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    .line 277
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getSize()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    .line 278
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getDiscPosition()S

    move-result v1

    iput v1, v0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    .line 279
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getDiscCount()S

    move-result v1

    iput v1, v0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    .line 280
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 281
    const/4 v1, 0x6

    iput v1, v0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->getTrackType()I

    move-result v1

    iput v1, v0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    .line 284
    return-object v0
.end method

.method public static parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/Track;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    sget-object v2, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 327
    .local v1, parser:Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 328
    const-class v2, Lcom/google/android/music/sync/google/model/Track;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/Track;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 329
    .end local v1           #parser:Lorg/codehaus/jackson/JsonParser;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 330
    .local v0, je:Lorg/codehaus/jackson/JsonParseException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse track: "

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
.method public formatAsMusicFile(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;
    .locals 8
    .parameter "file"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance p1, Lcom/google/android/music/store/MusicFile;

    .end local p1
    invoke-direct {p1}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 156
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setSourceId(Ljava/lang/String;)V

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 160
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setTitle(Ljava/lang/String;)V

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;)V

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setComposer(Ljava/lang/String;)V

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumName(Ljava/lang/String;)V

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;)V

    .line 176
    :cond_5
    iget v1, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    if-eq v1, v5, :cond_6

    .line 177
    iget v1, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 178
    .local v0, n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setYear(S)V

    .line 180
    .end local v0           #n:Ljava/lang/Number;
    :cond_6
    iget v1, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    if-eq v1, v5, :cond_7

    .line 181
    iget v1, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 182
    .restart local v0       #n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setTrackPositionInAlbum(S)V

    .line 184
    .end local v0           #n:Ljava/lang/Number;
    :cond_7
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 185
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setGenre(Ljava/lang/String;)V

    .line 187
    :cond_8
    iget-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_9

    .line 188
    iget-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/music/store/MusicFile;->setDurationInMilliSec(J)V

    .line 190
    :cond_9
    iget-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_a

    .line 193
    iget-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/google/android/music/store/MusicFile;->setAddedTime(J)V

    .line 195
    :cond_a
    iget-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_b

    .line 196
    iget-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/music/store/MusicFile;->setSourceVersion(J)V

    .line 199
    :cond_b
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://android.clients.google.com/music/mplay?songid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setSourcePath(Ljava/lang/String;)V

    .line 206
    :goto_1
    iget-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_c

    .line 207
    iget-wide v1, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/music/store/MusicFile;->setSize(J)V

    .line 210
    :cond_c
    iget v1, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    if-eq v1, v5, :cond_d

    .line 211
    iget v1, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 212
    .restart local v0       #n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setDiscCount(S)V

    .line 215
    .end local v0           #n:Ljava/lang/Number;
    :cond_d
    iget v1, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    if-eq v1, v5, :cond_e

    .line 216
    iget v1, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 217
    .restart local v0       #n:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setDiscPosition(S)V

    .line 220
    .end local v0           #n:Ljava/lang/Number;
    :cond_e
    iget v1, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    if-eq v1, v5, :cond_f

    .line 221
    iget v1, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_f

    .line 222
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setTrackType(I)V

    .line 228
    :cond_f
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 229
    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/Track$AlbumArtRef;

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/Track$AlbumArtRef;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumArtLocation(Ljava/lang/String;)V

    .line 232
    :cond_10
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/google/android/music/store/MusicFile;->setFileType(I)V

    .line 234
    return-object p1

    .line 162
    .restart local p0
    :cond_11
    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 202
    :cond_12
    const-string v1, "MusicSyncAdapter"

    const-string v2, "Exporting a track to a music file, but no canonical id defined."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 2
    .parameter "context"

    .prologue
    .line 378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "There is no batch mutation url defined for tracks."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    return-wide v0
.end method

.method public getEncapsulatedMusicFile()Lcom/google/android/music/store/MusicFile;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    return-object v0
.end method

.method public getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3
    .parameter "context"

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 369
    .local v0, dimension:I
    invoke-static {v0}, Lcom/google/android/music/sync/api/MusicUrl;->forTracksFeed(I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    return-object v1
.end method

.method public getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3
    .parameter "context"

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 374
    .local v0, dimension:I
    invoke-static {v0}, Lcom/google/android/music/sync/api/MusicUrl;->forTracksFeedAsPost(I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    return-object v1
.end method

.method public getLastModifiedTimestamp()J
    .locals 2

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    return-wide v0
.end method

.method public getLocalId()J
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v0}, Lcom/google/android/music/store/MusicFile;->getLocalId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getRemoteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 364
    .local v0, dimension:I
    invoke-static {p2, v0}, Lcom/google/android/music/sync/api/MusicUrl;->forTrack(Ljava/lang/String;I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    return-object v1
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

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
    .line 308
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 310
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 313
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_1
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 321
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 315
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 317
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 318
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/android/music/sync/google/model/Track;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize a track as JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/Track;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    new-instance v3, Lcom/google/android/music/store/InvalidDataException;

    const-string v4, "Unable to serialize track for upstream sync."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setCreationTimestamp(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 407
    iput-wide p1, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    .line 408
    return-void
.end method

.method public setIsDeleted(Z)V
    .locals 0
    .parameter "isDeleted"

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

    .line 416
    return-void
.end method

.method public setLastModifiedTimestamp(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 399
    iput-wide p1, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 400
    return-void
.end method

.method public setRemoteId(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteId"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    .local v0, s:Ljava/lang/StringBuffer;
    const-string v1, "; remoteid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; ctime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; mtime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; isDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; artist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; composer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; albumartist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; comment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mComment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; track num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; genre: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; albumartref: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; bpm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mBeatsPerMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; playCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mPlayCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; estimatedSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; discNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; totalDiscCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; trackType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public validateForUpstreamDelete()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tracks not available for upstream sync."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateForUpstreamInsert()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tracks not available for upstream sync."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateForUpstreamUpdate()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tracks not available for upstream sync."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wipeAllFields()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 238
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    .line 239
    iput-wide v5, p0, Lcom/google/android/music/sync/google/model/Track;->mCreationTimestamp:J

    .line 240
    iput-wide v5, p0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

    .line 242
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mTitle:Ljava/lang/String;

    .line 243
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mArtist:Ljava/lang/String;

    .line 244
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mComposer:Ljava/lang/String;

    .line 245
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbum:Ljava/lang/String;

    .line 246
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtist:Ljava/lang/String;

    .line 247
    iput v2, p0, Lcom/google/android/music/sync/google/model/Track;->mYear:I

    .line 248
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mComment:Ljava/lang/String;

    .line 249
    iput v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackNumber:I

    .line 250
    iput-wide v3, p0, Lcom/google/android/music/sync/google/model/Track;->mDurationMillis:J

    .line 251
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mAlbumArtRef:Ljava/util/List;

    .line 252
    iput v2, p0, Lcom/google/android/music/sync/google/model/Track;->mBeatsPerMinute:I

    .line 253
    iput v2, p0, Lcom/google/android/music/sync/google/model/Track;->mPlayCount:I

    .line 254
    iput-wide v3, p0, Lcom/google/android/music/sync/google/model/Track;->mEstimatedSize:J

    .line 255
    iput-object v1, p0, Lcom/google/android/music/sync/google/model/Track;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    .line 256
    iput v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTotalDiscCount:I

    .line 257
    iput v2, p0, Lcom/google/android/music/sync/google/model/Track;->mDiscNumber:I

    .line 258
    iput v2, p0, Lcom/google/android/music/sync/google/model/Track;->mTrackType:I

    .line 259
    return-void
.end method
