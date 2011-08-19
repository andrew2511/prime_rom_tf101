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
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/apache/http/entity/AbstractHttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "streaming entity does not implement consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_e
    return-void
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->chunked:Z

    return v0
.end method

.method public setChunked(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 187
    iput-boolean p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->chunked:Z

    .line 188
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .registers 4
    .parameter "ceString"

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, h:Lorg/apache/http/Header;
    if-eqz p1, :cond_a

    .line 173
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .end local v0           #h:Lorg/apache/http/Header;
    const-string v1, "Content-Encoding"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .restart local v0       #h:Lorg/apache/http/Header;
    :cond_a
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 176
    return-void
.end method

.method public setContentEncoding(Lorg/apache/http/Header;)V
    .registers 2
    .parameter "contentEncoding"

    .prologue
    .line 159
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/apache/http/Header;

    .line 160
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 4
    .parameter "ctString"

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, h:Lorg/apache/http/Header;
    if-eqz p1, :cond_a

    .line 144
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .end local v0           #h:Lorg/apache/http/Header;
    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .restart local v0       #h:Lorg/apache/http/Header;
    :cond_a
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 147
    return-void
.end method

.method public setContentType(Lorg/apache/http/Header;)V
    .registers 2
    .parameter "contentType"

    .prologue
    .line 130
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/apache/http/Header;

    .line 131
    return-void
.end method
