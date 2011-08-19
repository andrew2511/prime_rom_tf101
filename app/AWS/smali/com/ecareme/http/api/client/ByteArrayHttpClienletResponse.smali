.class public Lcom/ecareme/http/api/client/ByteArrayHttpClienletResponse;
.super Ljava/lang/Object;
.source "ByteArrayHttpClienletResponse.java"

# interfaces
.implements Lcom/ecareme/http/api/client/HttpClienletResponse;


# instance fields
.field baos:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/ecareme/http/api/client/ByteArrayHttpClienletResponse;->baos:Ljava/io/ByteArrayOutputStream;

    .line 15
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ecareme/http/api/client/ByteArrayHttpClienletResponse;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readFromInputStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/http/api/APIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ecareme/http/api/client/ByteArrayHttpClienletResponse;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, v0}, Lcom/ecareme/utils/IOUtils;->copyIO(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 22
    return-void
.end method
