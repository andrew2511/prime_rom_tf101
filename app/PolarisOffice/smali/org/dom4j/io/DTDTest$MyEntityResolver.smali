.class public Lorg/dom4j/io/DTDTest$MyEntityResolver;
.super Ljava/lang/Object;
.source "DTDTest.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/io/DTDTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MyEntityResolver"
.end annotation


# instance fields
.field private pubId:Ljava/lang/String;

.field private resourceName:Ljava/lang/String;

.field private sysId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "localResourceName"
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lorg/dom4j/io/DTDTest$MyEntityResolver;->resourceName:Ljava/lang/String;

    .line 498
    iput-object p3, p0, Lorg/dom4j/io/DTDTest$MyEntityResolver;->sysId:Ljava/lang/String;

    .line 499
    return-void
.end method


# virtual methods
.method protected getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "localResourceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, is:Ljava/io/InputStream;
    return-object v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lorg/dom4j/io/DTDTest$MyEntityResolver;->pubId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lorg/dom4j/io/DTDTest$MyEntityResolver;->pubId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Lorg/xml/sax/InputSource;

    iget-object v1, p0, Lorg/dom4j/io/DTDTest$MyEntityResolver;->resourceName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/dom4j/io/DTDTest$MyEntityResolver;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 512
    :goto_0
    return-object v0

    .line 509
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/DTDTest$MyEntityResolver;->sysId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    new-instance v0, Lorg/xml/sax/InputSource;

    iget-object v1, p0, Lorg/dom4j/io/DTDTest$MyEntityResolver;->resourceName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/dom4j/io/DTDTest$MyEntityResolver;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
