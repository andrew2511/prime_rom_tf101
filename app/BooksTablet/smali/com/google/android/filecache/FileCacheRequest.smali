.class Lcom/google/android/filecache/FileCacheRequest;
.super Ljava/net/CacheRequest;
.source "FileCacheRequest.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mHeaders:Ljava/util/Map;
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

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseCode:I

.field private final mResponseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "file"
    .parameter "responseCode"
    .parameter "responseMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52
    :cond_0
    if-nez p4, :cond_1

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55
    :cond_1
    iput-object p1, p0, Lcom/google/android/filecache/FileCacheRequest;->mFile:Ljava/io/File;

    .line 56
    iput p2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseCode:I

    .line 57
    iput-object p3, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseMessage:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/google/android/filecache/FileCacheRequest;->mHeaders:Ljava/util/Map;

    .line 59
    return-void
.end method

.method private getStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    iget v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseCode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 76
    const/4 v1, 0x3

    .line 77
    .local v1, capactity:I
    iget-object v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    iget-object v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x4

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    .local v0, builder:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    iget-object v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseMessage:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 84
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    iget-object v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #capactity:I
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeHeaders(Ljava/io/DataOutput;)V
    .locals 10
    .parameter "dout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 94
    iget-object v8, p0, Lcom/google/android/filecache/FileCacheRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    .line 95
    .local v1, headerCount:I
    iget v8, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseCode:I

    if-eq v8, v9, :cond_0

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 98
    :cond_0
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 99
    iget v8, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseCode:I

    if-eq v8, v9, :cond_1

    .line 100
    const-string v8, "status"

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 103
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    .line 106
    invoke-direct {p0}, Lcom/google/android/filecache/FileCacheRequest;->getStatus()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, status:Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 109
    .end local v5           #status:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/google/android/filecache/FileCacheRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 111
    .local v4, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 112
    .local v7, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 113
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    .line 114
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 115
    .local v6, value:Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v3, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Ljava/io/OutputStream;

    .line 140
    :cond_0
    :goto_0
    return-object v3

    .line 126
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/google/android/filecache/FileCacheRequest;->mFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 128
    .local v1, output:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v1           #output:Ljava/io/OutputStream;
    .local v2, output:Ljava/io/OutputStream;
    :try_start_1
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 132
    .local v0, dout:Ljava/io/DataOutputStream;
    invoke-direct {p0, v0}, Lcom/google/android/filecache/FileCacheRequest;->writeHeaders(Ljava/io/DataOutput;)V

    .line 134
    iput-object v0, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Ljava/io/OutputStream;

    .line 135
    iget-object v3, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    iget-object v4, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Ljava/io/OutputStream;

    if-nez v4, :cond_0

    .line 139
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 140
    iget-object v4, p0, Lcom/google/android/filecache/FileCacheRequest;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 137
    .end local v0           #dout:Ljava/io/DataOutputStream;
    .end local v2           #output:Ljava/io/OutputStream;
    .restart local v1       #output:Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    iget-object v4, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Ljava/io/OutputStream;

    if-nez v4, :cond_2

    .line 139
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 140
    iget-object v4, p0, Lcom/google/android/filecache/FileCacheRequest;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    throw v3

    .line 137
    .end local v1           #output:Ljava/io/OutputStream;
    .restart local v2       #output:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #output:Ljava/io/OutputStream;
    .restart local v1       #output:Ljava/io/OutputStream;
    goto :goto_1
.end method
