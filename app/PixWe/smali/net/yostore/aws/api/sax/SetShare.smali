.class public Lnet/yostore/aws/api/sax/SetShare;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "SetShare.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetShare"


# instance fields
.field private er:Ljava/lang/String;

.field private response:Lnet/yostore/aws/api/entity/SetShareResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 27
    new-instance v0, Lnet/yostore/aws/api/entity/SetShareResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/SetShareResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/SetShare;->response:Lnet/yostore/aws/api/entity/SetShareResponse;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/sax/SetShare;->er:Ljava/lang/String;

    .line 18
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
    .line 34
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "er"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lnet/yostore/aws/api/sax/SetShare;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/sax/SetShare;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lnet/yostore/aws/api/sax/SetShare;->response:Lnet/yostore/aws/api/entity/SetShareResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/SetShare;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/SetShareResponse;->setEr(Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/SetShare;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 42
    return-void
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lnet/yostore/aws/api/sax/SetShare;->response:Lnet/yostore/aws/api/entity/SetShareResponse;

    return-object v0
.end method
