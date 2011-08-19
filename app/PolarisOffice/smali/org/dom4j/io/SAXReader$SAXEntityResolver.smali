.class public Lorg/dom4j/io/SAXReader$SAXEntityResolver;
.super Ljava/lang/Object;
.source "SAXReader.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/io/SAXReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SAXEntityResolver"
.end annotation


# instance fields
.field protected uriPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "uriPrefix"

    .prologue
    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput-object p1, p0, Lorg/dom4j/io/SAXReader$SAXEntityResolver;->uriPrefix:Ljava/lang/String;

    .line 992
    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    .line 996
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 997
    iget-object v0, p0, Lorg/dom4j/io/SAXReader$SAXEntityResolver;->uriPrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 998
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/io/SAXReader$SAXEntityResolver;->uriPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1002
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
