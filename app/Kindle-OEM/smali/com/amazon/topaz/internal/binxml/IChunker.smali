.class public final Lcom/amazon/topaz/internal/binxml/IChunker;
.super Ljava/lang/Object;
.source "IChunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;
    }
.end annotation


# static fields
.field private static volatile raw_buffer:[B


# instance fields
.field private final chunks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private final headerSize:I

.field private final inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

.field private final input:Lcom/amazon/system/io/IFileInputStream;

.field private volatile masterKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/amazon/topaz/internal/binxml/IChunker;->raw_buffer:[B

    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/io/IFileInputStream;Lcom/amazon/system/io/InflaterFactory;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->input:Lcom/amazon/system/io/IFileInputStream;

    .line 56
    new-instance v0, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;

    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->input:Lcom/amazon/system/io/IFileInputStream;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;-><init>(Ljava/io/InputStream;)V

    .line 57
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->skipSentinel(I)V

    .line 58
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->skipSentinel(I)V

    .line 59
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->skipSentinel(I)V

    .line 60
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->skipSentinel(I)V

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->readInt()I

    move-result v2

    move v3, v11

    .line 64
    :goto_0
    if-ge v3, v2, :cond_1

    .line 65
    const/16 v4, 0x63

    invoke-virtual {v0, v4}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->skipSentinel(I)V

    .line 66
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readString()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->readInt()I

    move-result v5

    .line 68
    new-array v6, v5, [Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;

    .line 69
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v11

    .line 70
    :goto_1
    if-ge v4, v5, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->readInt()I

    move-result v7

    .line 72
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->readInt()I

    move-result v8

    .line 73
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->readInt()I

    move-result v9

    .line 74
    new-instance v10, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;

    invoke-direct {v10, v7, v8, v9}, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;-><init>(III)V

    .line 75
    aput-object v10, v6, v4

    .line 70
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 64
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->chunks:Ljava/util/Map;

    .line 80
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->skipSentinel(I)V

    .line 81
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->input:Lcom/amazon/system/io/IFileInputStream;

    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->position()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->headerSize:I

    .line 83
    iput-object p2, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    .line 84
    return-void
.end method

.method private decrypt([BI)V
    .locals 3
    .parameter "raw_buffer"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/DRMException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->masterKey:[B

    if-nez v1, :cond_0

    .line 366
    new-instance v1, Lcom/amazon/topaz/exception/DRMException;

    const-string v2, "No key"

    invoke-direct {v1, v2}, Lcom/amazon/topaz/exception/DRMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_0
    new-instance v0, Lcom/amazon/topaz/internal/binxml/Crypto;

    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->masterKey:[B

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/binxml/Crypto;-><init>([B)V

    .line 368
    .local v0, crypto:Lcom/amazon/topaz/internal/binxml/Crypto;
    invoke-virtual {v0, p1, p2}, Lcom/amazon/topaz/internal/binxml/Crypto;->decrypt([BI)V

    .line 369
    return-void
.end method

.method private static getStaticRawBuffer(I)[B
    .locals 2
    .parameter "size"

    .prologue
    .line 264
    sget-object v0, Lcom/amazon/topaz/internal/binxml/IChunker;->raw_buffer:[B

    monitor-enter v0

    .line 269
    :try_start_0
    sget-object v1, Lcom/amazon/topaz/internal/binxml/IChunker;->raw_buffer:[B

    array-length v1, v1

    if-le p0, v1, :cond_0

    .line 271
    new-array v1, p0, [B

    sput-object v1, Lcom/amazon/topaz/internal/binxml/IChunker;->raw_buffer:[B

    .line 274
    :cond_0
    sget-object v1, Lcom/amazon/topaz/internal/binxml/IChunker;->raw_buffer:[B

    monitor-exit v0

    return-object v1

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized flush(Ljava/lang/String;I)V
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->chunks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;

    aget-object v0, v1, p2

    .line 287
    .local v0, chunk:Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 286
    .end local v0           #chunk:Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flushAll()V
    .locals 5

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->chunks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 292
    .local v1, chunksIt:Ljava/util/Iterator;,"Ljava/util/Iterator<[Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;

    .line 294
    .local v0, chunks:[Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 295
    aget-object v3, v0, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v0           #chunks:[Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;
    .end local v2           #i:I
    :cond_1
    monitor-exit p0

    return-void

    .line 291
    .end local v1           #chunksIt:Ljava/util/Iterator;,"Ljava/util/Iterator<[Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getChunkData(Ljava/lang/String;I)[B
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->chunks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;

    aget-object v0, v0, p2

    .line 149
    iget-object v1, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->data:[B

    if-nez v1, :cond_8

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->input:Lcom/amazon/system/io/IFileInputStream;

    iget v2, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->headerSize:I

    iget v3, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->position:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/system/io/IFileInputStream;->resetAndSkip(J)V

    .line 157
    new-instance v1, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;

    iget-object v2, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->input:Lcom/amazon/system/io/IFileInputStream;

    invoke-direct {v1, v2}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;-><init>(Ljava/io/InputStream;)V

    .line 158
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->readInt()I

    move-result v1

    .line 161
    if-gez v1, :cond_9

    .line 163
    neg-int v1, v1

    sub-int/2addr v1, v5

    move v3, v1

    move v1, v5

    .line 165
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eq v3, p2, :cond_1

    .line 166
    :cond_0
    new-instance v0, Lcom/amazon/topaz/exception/MismatchedChunkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; read: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/topaz/exception/MismatchedChunkException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 170
    :cond_1
    :try_start_3
    iget v2, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->zsize:I

    if-lez v2, :cond_2

    move v2, v5

    .line 171
    :goto_1
    if-eqz v2, :cond_3

    iget v3, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->zsize:I

    .line 174
    :goto_2
    if-nez v2, :cond_4

    .line 182
    iget v3, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->size:I

    .line 183
    iget v4, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->size:I

    new-array v4, v4, [B

    iput-object v4, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->data:[B

    .line 195
    :goto_3
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    :try_start_4
    iget-object v5, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->input:Lcom/amazon/system/io/IFileInputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v3}, Lcom/amazon/system/io/IFileInputStream;->read([BII)I

    move-result v5

    .line 198
    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 201
    new-instance v0, Lcom/amazon/topaz/exception/EndOfFileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/topaz/exception/EndOfFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0

    :cond_2
    move v2, v7

    .line 170
    goto :goto_1

    .line 171
    :cond_3
    iget v3, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->size:I

    goto :goto_2

    .line 190
    :cond_4
    invoke-static {v3}, Lcom/amazon/topaz/internal/binxml/IChunker;->getStaticRawBuffer(I)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    goto :goto_3

    .line 205
    :cond_5
    if-eqz v1, :cond_6

    .line 207
    :try_start_6
    invoke-direct {p0, v4, v3}, Lcom/amazon/topaz/internal/binxml/IChunker;->decrypt([BI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 219
    :cond_6
    if-eqz v2, :cond_7

    .line 221
    :try_start_7
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    invoke-interface {v1}, Lcom/amazon/system/io/InflaterFactory;->newInflater()Lcom/amazon/system/io/Inflater;

    move-result-object v1

    .line 227
    const/4 v2, 0x0

    invoke-interface {v1, v4, v2, v3}, Lcom/amazon/system/io/Inflater;->setInput([BII)V

    .line 231
    iget v2, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->size:I

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->data:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 233
    :try_start_8
    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->data:[B

    const/4 v3, 0x0

    iget v5, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->size:I

    invoke-interface {v1, v2, v3, v5}, Lcom/amazon/system/io/Inflater;->inflate([BII)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v1

    .line 240
    :goto_4
    :try_start_9
    iget v2, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->size:I

    if-ge v1, v2, :cond_7

    .line 241
    new-instance v0, Lcom/amazon/topaz/exception/DecompressionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decompressing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/topaz/exception/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 247
    :catchall_3
    move-exception v0

    :try_start_a
    throw v0

    .line 215
    :catchall_4
    move-exception v0

    throw v0

    :catch_0
    move-exception v1

    move v1, v7

    goto :goto_4

    .line 251
    :cond_7
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 259
    :cond_8
    :try_start_b
    iget-object v0, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->data:[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_9
    move v3, v1

    move v1, v7

    goto/16 :goto_0
.end method

.method public getChunkNames()[Lcom/amazon/topaz/internal/binxml/ChunkName;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 89
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->chunks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 93
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->chunks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;

    move v4, v7

    .line 96
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 97
    new-instance v5, Lcom/amazon/topaz/internal/binxml/ChunkName;

    aget-object v6, v1, v4

    iget v6, v6, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->position:I

    invoke-direct {v5, v0, v4, v6}, Lcom/amazon/topaz/internal/binxml/ChunkName;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/topaz/internal/binxml/ChunkName;

    .line 106
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    .line 108
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/internal/binxml/ChunkName;

    aput-object p0, v0, v2

    move v2, v3

    goto :goto_1

    .line 114
    :cond_2
    return-object v0
.end method

.method public getFileSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->input:Lcom/amazon/system/io/IFileInputStream;

    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->size()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method isChunkCompressed(Ljava/lang/String;I)Z
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->chunks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;

    aget-object v0, p0, p2

    .line 129
    .local v0, chunk:Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;
    iget v1, v0, Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;->zsize:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPIDEncrypted()Z
    .locals 1

    .prologue
    .line 359
    const-string v0, "dkey"

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/binxml/IChunker;->numChunks(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public masterKey()[B
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->masterKey:[B

    return-object v0
.end method

.method public numChunks(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->chunks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->chunks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/amazon/topaz/internal/binxml/IChunker$Chunk;

    array-length v0, p0

    goto :goto_0
.end method

.method public setPID([B)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 303
    new-instance v0, Lcom/amazon/topaz/internal/binxml/Crypto;

    invoke-direct {v0, p1}, Lcom/amazon/topaz/internal/binxml/Crypto;-><init>([B)V

    .line 304
    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CHUNKNAME_DKEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/binxml/IChunker;->numChunks(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move v0, v10

    .line 346
    :goto_0
    return v0

    .line 307
    :cond_0
    new-instance v1, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;

    const-string v2, "dkey"

    invoke-virtual {p0, v2, v9}, Lcom/amazon/topaz/internal/binxml/IChunker;->getChunkData(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;-><init>([B)V

    .line 308
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readInt()I

    move-result v2

    .line 309
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_4

    .line 310
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readBytes()[B

    move-result-object v2

    .line 311
    array-length v4, v2

    invoke-virtual {v0, v2, v4}, Lcom/amazon/topaz/internal/binxml/Crypto;->decrypt([BI)V

    .line 312
    new-instance v4, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;

    invoke-direct {v4, v2}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;-><init>([B)V

    .line 315
    const/16 v2, 0x50

    :try_start_0
    invoke-virtual {v4, v2}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->skipSentinel(I)V

    .line 316
    const/16 v2, 0x49

    invoke-virtual {v4, v2}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->skipSentinel(I)V

    .line 317
    const/16 v2, 0x44

    invoke-virtual {v4, v2}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->skipSentinel(I)V

    .line 318
    invoke-virtual {v4}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readBytes()[B

    move-result-object v2

    .line 319
    invoke-virtual {v4}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->readBytes()[B

    move-result-object v5

    .line 320
    const/16 v6, 0x70

    invoke-virtual {v4, v6}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->skipSentinel(I)V

    .line 321
    const/16 v6, 0x69

    invoke-virtual {v4, v6}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->skipSentinel(I)V

    .line 322
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/amazon/topaz/internal/binxml/ByteArrayDeserializer;->skipSentinel(I)V

    .line 324
    array-length v4, p1

    array-length v6, v2

    if-ne v4, v6, :cond_3

    move v4, v9

    move v6, v10

    .line 327
    :goto_2
    array-length v7, p1

    if-ge v4, v7, :cond_2

    .line 329
    aget-byte v7, p1, v4

    aget-byte v8, v2, v4

    if-eq v7, v8, :cond_1

    move v6, v9

    .line 327
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 335
    :cond_2
    if-eqz v6, :cond_3

    .line 337
    iput-object v5, p0, Lcom/amazon/topaz/internal/binxml/IChunker;->masterKey:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v10

    .line 338
    goto :goto_0

    :catch_0
    move-exception v2

    :cond_3
    move v2, v3

    .line 345
    goto :goto_1

    :cond_4
    move v0, v9

    .line 346
    goto :goto_0
.end method
