.class public Lnet/yostore/aws/api/sax/VideoEnc;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "VideoEnc.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEnc"


# instance fields
.field private puri:Ljava/lang/String;

.field private response:Lnet/yostore/aws/api/entity/VideoEncResponse;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 30
    new-instance v0, Lnet/yostore/aws/api/entity/VideoEncResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/VideoEncResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->response:Lnet/yostore/aws/api/entity/VideoEncResponse;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->s:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->puri:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "s"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->response:Lnet/yostore/aws/api/entity/VideoEncResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/VideoEnc;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/VideoEncResponse;->setS(I)V

    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 49
    return-void

    .line 43
    :cond_1
    const-string v0, "puri"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->response:Lnet/yostore/aws/api/entity/VideoEncResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/VideoEnc;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/VideoEncResponse;->setPuri(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/api/sax/VideoEnc;->response:Lnet/yostore/aws/api/entity/VideoEncResponse;

    return-object v0
.end method
