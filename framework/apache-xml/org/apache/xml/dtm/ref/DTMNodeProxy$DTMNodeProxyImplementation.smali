.class Lorg/apache/xml/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;
.super Ljava/lang/Object;
.source "DTMNodeProxy.java"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMNodeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DTMNodeProxyImplementation"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .registers 6
    .parameter "namespaceURI"
    .parameter "qualfiedName"
    .parameter "doctype"

    .prologue
    .line 1407
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .registers 6
    .parameter "qualifiedName"
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    .line 1402
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 1453
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 1420
    const-string v0, "CORE"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "XML"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_18
    const-string v0, "1.0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "2.0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1424
    :cond_28
    const/4 v0, 0x1

    .line 1425
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method
