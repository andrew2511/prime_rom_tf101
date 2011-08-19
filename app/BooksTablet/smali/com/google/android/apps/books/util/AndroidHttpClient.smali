.class public Lcom/google/android/apps/books/util/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 8
    .parameter "request"
    .parameter "logAuthToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v2, builder:Ljava/lang/StringBuilder;
    const-string v1, "curl "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .local v1, arr$:[Lorg/apache/http/Header;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 48
    .local v3, header:Lorg/apache/http/Header;
    if-nez p1, :cond_1

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Authorization"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cookie"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 47
    .end local v3           #header:Lorg/apache/http/Header;
    :cond_0
    :goto_1
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i$:I
    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 53
    .local v3, header:Lorg/apache/http/Header;
    :cond_1
    const-string v6, "--header \""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3           #header:Lorg/apache/http/Header;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 63
    .local v1, uri:Ljava/net/URI;
    instance-of p1, p0, Lorg/apache/http/impl/client/RequestWrapper;

    .end local p1
    if-eqz p1, :cond_5

    .line 64
    move-object v0, p0

    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;

    move-object p1, v0

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object p1

    .line 65
    .local p1, original:Lorg/apache/http/HttpRequest;
    instance-of v3, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v3, :cond_5

    .line 66
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1           #original:Lorg/apache/http/HttpRequest;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p1

    .line 70
    .end local v1           #uri:Ljava/net/URI;
    .local p1, uri:Ljava/net/URI;
    :goto_2
    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string p1, "\""

    .end local p1           #uri:Ljava/net/URI;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    instance-of p1, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz p1, :cond_3

    .line 75
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 77
    .local p0, entityRequest:Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 78
    .local p0, entity:Lorg/apache/http/HttpEntity;
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    .line 80
    .end local v5           #len$:I
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local p1, stream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 82
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    .local p0, entityString:Ljava/lang/String;
    const-string p1, " --data-ascii \""

    .end local p1           #stream:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #entityString:Ljava/lang/String;
    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_3
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    .local p0, entity:Lorg/apache/http/HttpEntity;
    :cond_4
    const-string p0, " [TOO MUCH DATA TO INCLUDE]"

    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .restart local v1       #uri:Ljava/net/URI;
    .restart local v5       #len$:I
    .local p0, request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_5
    move-object p1, v1

    .end local v1           #uri:Ljava/net/URI;
    .local p1, uri:Ljava/net/URI;
    goto :goto_2
.end method
