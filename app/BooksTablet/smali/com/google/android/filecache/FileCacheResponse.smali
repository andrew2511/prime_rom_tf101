.class Lcom/google/android/filecache/FileCacheResponse;
.super Ljava/net/CacheResponse;
.source "FileCacheResponse.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final mFile:Ljava/io/File;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/google/android/filecache/FileCacheResponse;->mFile:Ljava/io/File;

    .line 77
    return-void
.end method

.method private static readHeaders(Ljava/io/DataInput;)Ljava/util/Map;
    .locals 9
    .parameter "din"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 41
    .local v4, keyCount:I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 43
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, key:Ljava/lang/String;
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 45
    .local v6, valueCount:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .local v7, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 47
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, value:Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 56
    const-string v8, "transfer-encoding"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 42
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 63
    .end local v2           #j:I
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #valueCount:I
    .end local v7           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    .line 120
    :goto_0
    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/filecache/FileCacheResponse;->getHeaders()Ljava/util/Map;

    .line 115
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 82
    iget-object v3, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    if-nez v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 86
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 88
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/google/android/filecache/FileCacheResponse;->mFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 90
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v1           #input:Ljava/io/InputStream;
    .local v2, input:Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v0, din:Ljava/io/DataInputStream;
    invoke-static {v0}, Lcom/google/android/filecache/FileCacheResponse;->readHeaders(Ljava/io/DataInput;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    .line 95
    iput-object v0, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    .line 96
    iget-object v3, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    iget-object v4, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    if-nez v4, :cond_1

    .line 99
    iput-object v5, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    .line 100
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 104
    .end local v0           #din:Ljava/io/DataInputStream;
    .end local v2           #input:Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v3

    .line 98
    .restart local v1       #input:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    :goto_1
    iget-object v4, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    if-nez v4, :cond_2

    .line 99
    iput-object v5, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    .line 100
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v3

    .line 104
    .end local v1           #input:Ljava/io/InputStream;
    :cond_3
    iget-object v3, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    goto :goto_0

    .line 98
    .restart local v2       #input:Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    goto :goto_1
.end method
