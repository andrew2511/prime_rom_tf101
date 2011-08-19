.class public Lnet/yostore/utility/CustomFilePart;
.super Lorg/apache/commons/httpclient/methods/multipart/FilePart;
.source "CustomFilePart.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter "filename"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 21
    invoke-virtual {p0}, Lnet/yostore/utility/CustomFilePart;->getSource()Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/httpclient/methods/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 23
    const-string v1, "; filename="

    invoke-static {v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 24
    sget-object v1, Lnet/yostore/utility/CustomFilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 25
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 26
    sget-object v1, Lnet/yostore/utility/CustomFilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 28
    :cond_0
    return-void
.end method
