.class public Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;
.super Lcom/google/api/client/json/GenericJson;
.source "MagicPlaylistRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;,
        Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mIncludeAllEntries:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "includeAllEntries"
    .end annotation
.end field

.field public mName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name"
    .end annotation
.end field

.field public mNumEntries:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "numRecommendations"
    .end annotation
.end field

.field public mSeeds:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "seed"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 168
    const/16 v0, 0x19

    iput v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mNumEntries:I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mIncludeAllEntries:Z

    .line 180
    return-void
.end method

.method public static newBuilder()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 205
    :goto_0
    return v2

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mSeeds:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mSeeds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v3

    .line 197
    goto :goto_0

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mSeeds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    .line 200
    .local v1, seed:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;
    iget v2, v1, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;->mSeedType:I

    invoke-static {v2}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->isValidOrdinal(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;->mSeedValue:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;->mSeedValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_5
    move v2, v3

    .line 202
    goto :goto_0

    .line 205
    .end local v1           #seed:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public serializeAsJson()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 219
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v5, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v4, v0, v5}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 222
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_1
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 232
    .local v3, serialization:[B
    sget-object v4, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    sget-object v4, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    return-object v3

    .line 224
    .end local v3           #serialization:[B
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 226
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 227
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to serialize a magic playlist request as JSON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    new-instance v4, Lcom/google/android/music/store/InvalidDataException;

    const-string v5, "Unable to serialize a magic playlist request."

    invoke-direct {v4, v5, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; numRecommendations:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mNumEntries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; includeAllEntries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mIncludeAllEntries:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; seeds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->mSeeds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
