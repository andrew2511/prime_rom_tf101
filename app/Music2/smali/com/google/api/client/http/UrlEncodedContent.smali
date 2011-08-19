.class public final Lcom/google/api/client/http/UrlEncodedContent;
.super Ljava/lang/Object;
.source "UrlEncodedContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private content:[B

.field public contentType:Ljava/lang/String;

.field public data:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/UrlEncodedContent;->contentType:Ljava/lang/String;

    return-void
.end method

.method private static appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .parameter "first"
    .parameter "buf"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 101
    if-eqz p0, :cond_1

    .line 102
    const/4 p0, 0x0

    .line 106
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/escape/CharEscapers;->escapeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, stringValue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    return p0

    .line 104
    .end local v0           #stringValue:Ljava/lang/String;
    :cond_1
    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private computeContent()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v10, p0, Lcom/google/api/client/http/UrlEncodedContent;->content:[B

    if-nez v10, :cond_3

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v1, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 79
    .local v3, first:Z
    iget-object v10, p0, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    invoke-static {v10}, Lcom/google/api/client/util/DataUtil;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 81
    .local v7, nameValueEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 82
    .local v9, value:Ljava/lang/Object;
    if-eqz v9, :cond_0

    .line 83
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/google/api/client/escape/CharEscapers;->escapeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, name:Ljava/lang/String;
    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_1

    .line 85
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    .line 86
    .local v2, collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 87
    .local v8, repeatedValue:Ljava/lang/Object;
    invoke-static {v3, v1, v6, v8}, Lcom/google/api/client/http/UrlEncodedContent;->appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 90
    .end local v2           #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #repeatedValue:Ljava/lang/Object;
    :cond_1
    invoke-static {v3, v1, v6, v9}, Lcom/google/api/client/http/UrlEncodedContent;->appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 94
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #nameValueEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9           #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/google/api/client/http/UrlEncodedContent;->content:[B

    .line 96
    .end local v1           #buf:Ljava/lang/StringBuilder;
    .end local v3           #first:Z
    :cond_3
    iget-object v10, p0, Lcom/google/api/client/http/UrlEncodedContent;->content:[B

    return-object v10
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/api/client/http/UrlEncodedContent;->computeContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/api/client/http/UrlEncodedContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/api/client/http/UrlEncodedContent;->computeContent()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 73
    return-void
.end method
