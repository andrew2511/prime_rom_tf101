.class public abstract Lorg/apache/http/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field protected chunked:Z

.field protected contentEncoding:Lorg/apache/http/Header;

.field protected contentType:Lorg/apache/http/Header;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/apache/http/entity/AbstractHttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "streaming entity does not implement consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    return-void
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->chunked:Z

    return v0
.end method

.method public setChunked(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 168
    iput-boolean p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->chunked:Z

    .line 169
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .parameter "ceString"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, h:Lorg/apache/http/Header;
    if-eqz p1, :cond_0

    .line 154
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .end local v0           #h:Lorg/apache/http/Header;
    const-string v1, "Content-Encoding"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .restart local v0       #h:Lorg/apache/http/Header;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 157
    return-void
.end method

.method public setContentEncoding(Lorg/apache/http/Header;)V
    .locals 0
    .parameter "contentEncoding"

    .prologue
    .line 140
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/apache/http/Header;

    .line 141
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .parameter "ctString"

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, h:Lorg/apache/http/Header;
    if-eqz p1, :cond_0

    .line 125
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .end local v0           #h:Lorg/apache/http/Header;
    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .restart local v0       #h:Lorg/apache/http/Header;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 128
    return-void
.end method

.method public setContentType(Lorg/apache/http/Header;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/apache/http/Header;

    .line 112
    return-void
.end method
