.class public final Lcom/google/api/client/http/MultipartRelatedContent;
.super Ljava/lang/Object;
.source "MultipartRelatedContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# static fields
.field private static final CONTENT_TRANSFER_ENCODING:[B

.field private static final CONTENT_TYPE:[B

.field private static final CR_LF:[B

.field private static final TWO_DASHES:[B


# instance fields
.field public boundary:Ljava/lang/String;

.field public parts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/client/http/HttpContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    .line 44
    const-string v0, "Content-Type: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TYPE:[B

    .line 45
    const-string v0, "Content-Transfer-Encoding: binary"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TRANSFER_ENCODING:[B

    .line 47
    const-string v0, "--"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "END_OF_PART"

    iput-object v0, p0, Lcom/google/api/client/http/MultipartRelatedContent;->boundary:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    return-void
.end method

.method public static forRequest(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/MultipartRelatedContent;
    .locals 3
    .parameter "request"

    .prologue
    .line 62
    new-instance v0, Lcom/google/api/client/http/MultipartRelatedContent;

    invoke-direct {v0}, Lcom/google/api/client/http/MultipartRelatedContent;-><init>()V

    .line 63
    .local v0, result:Lcom/google/api/client/http/MultipartRelatedContent;
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v2, "1.0"

    iput-object v2, v1, Lcom/google/api/client/http/HttpHeaders;->mimeVersion:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 65
    return-object v0
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "multipart/related; boundary=\"END_OF_PART\""

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v5, p0, Lcom/google/api/client/http/MultipartRelatedContent;->boundary:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 70
    .local v0, END_OF_PART:[B
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 71
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 72
    iget-object v5, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/http/HttpContent;

    .line 73
    .local v3, part:Lcom/google/api/client/http/HttpContent;
    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 75
    .local v4, typeBytes:[B
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 76
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TYPE:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 77
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 78
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 79
    invoke-static {v1}, Lcom/google/api/client/http/LogContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TRANSFER_ENCODING:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 81
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 83
    :cond_0
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 84
    invoke-interface {v3, p1}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V

    .line 85
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 86
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 87
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 89
    .end local v1           #contentType:Ljava/lang/String;
    .end local v3           #part:Lcom/google/api/client/http/HttpContent;
    .end local v4           #typeBytes:[B
    :cond_1
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 90
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 91
    return-void
.end method
