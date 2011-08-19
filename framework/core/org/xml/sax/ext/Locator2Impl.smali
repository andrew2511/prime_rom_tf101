.class public Lorg/xml/sax/ext/Locator2Impl;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "Locator2Impl.java"

# interfaces
.implements Lorg/xml/sax/ext/Locator2;


# instance fields
.field private encoding:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .registers 5
    .parameter "locator"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>(Lorg/xml/sax/Locator;)V

    .line 51
    instance-of v2, p1, Lorg/xml/sax/ext/Locator2;

    if-eqz v2, :cond_17

    .line 52
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/Locator2;

    move-object v1, v0

    .line 54
    .local v1, l2:Lorg/xml/sax/ext/Locator2;
    invoke-interface {v1}, Lorg/xml/sax/ext/Locator2;->getXMLVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xml/sax/ext/Locator2Impl;->version:Ljava/lang/String;

    .line 55
    invoke-interface {v1}, Lorg/xml/sax/ext/Locator2;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xml/sax/ext/Locator2Impl;->encoding:Ljava/lang/String;

    .line 57
    .end local v1           #l2:Lorg/xml/sax/ext/Locator2;
    :cond_17
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/xml/sax/ext/Locator2Impl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/xml/sax/ext/Locator2Impl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .parameter "encoding"

    .prologue
    .line 104
    iput-object p1, p0, Lorg/xml/sax/ext/Locator2Impl;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setXMLVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "version"

    .prologue
    .line 95
    iput-object p1, p0, Lorg/xml/sax/ext/Locator2Impl;->version:Ljava/lang/String;

    return-void
.end method
