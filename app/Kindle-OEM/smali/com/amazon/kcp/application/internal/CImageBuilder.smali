.class public Lcom/amazon/kcp/application/internal/CImageBuilder;
.super Ljava/lang/Object;
.source "CImageBuilder.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;


# instance fields
.field private imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private imageStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/amazon/system/drawing/ImageFactory;)V
    .locals 0
    .parameter "imageFactory"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 28
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageStream:Ljava/io/ByteArrayOutputStream;

    .line 53
    return-void
.end method

.method public close()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public getImage(Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
    .locals 3
    .parameter "dimensionMax"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/system/drawing/ImageFactory;->getImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageData()[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageStream:Ljava/io/ByteArrayOutputStream;

    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageStream:Ljava/io/ByteArrayOutputStream;

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageStream:Ljava/io/ByteArrayOutputStream;

    .line 83
    return-void
.end method

.method public write([B)I
    .locals 2
    .parameter "buf"

    .prologue
    .line 69
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kcp/application/internal/CImageBuilder;->write([BII)I

    move-result v0

    return v0
.end method

.method public write([BII)I
    .locals 1
    .parameter "buf"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CImageBuilder;->imageStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 77
    return p3
.end method
