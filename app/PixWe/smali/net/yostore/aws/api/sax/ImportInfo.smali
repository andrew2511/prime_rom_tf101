.class public Lnet/yostore/aws/api/sax/ImportInfo;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "ImportInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportInfo"


# instance fields
.field private response:Lnet/yostore/aws/api/entity/ImportInfoResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 37
    new-instance v0, Lnet/yostore/aws/api/entity/ImportInfoResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ImportInfoResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/ImportInfo;->response:Lnet/yostore/aws/api/entity/ImportInfoResponse;

    .line 12
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "awsl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lnet/yostore/aws/api/sax/ImportInfo;->response:Lnet/yostore/aws/api/entity/ImportInfoResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/ImportInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/ImportInfoResponse;->setAwsl(J)V

    .line 50
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/ImportInfo;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 52
    return-void
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/api/sax/ImportInfo;->response:Lnet/yostore/aws/api/entity/ImportInfoResponse;

    return-object v0
.end method
