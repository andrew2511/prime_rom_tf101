.class public Lcom/ecareme/http/api/client/ByteArrayHttpClienletReuqest;
.super Ljava/lang/Object;
.source "ByteArrayHttpClienletReuqest.java"

# interfaces
.implements Lcom/ecareme/http/api/client/HttpClienletRequest;


# instance fields
.field bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ecareme/http/api/client/ByteArrayHttpClienletReuqest;->bytes:[B

    .line 20
    return-void
.end method


# virtual methods
.method public sendToOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/http/api/APIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ecareme/http/api/client/ByteArrayHttpClienletReuqest;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 25
    return-void
.end method
