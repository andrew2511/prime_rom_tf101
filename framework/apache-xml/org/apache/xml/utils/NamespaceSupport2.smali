.class public Lorg/apache/xml/utils/NamespaceSupport2;
.super Lorg/xml/sax/helpers/NamespaceSupport;
.source "NamespaceSupport2.java"


# static fields
.field public static final XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private currentContext:Lorg/apache/xml/utils/Context2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    .line 79
    invoke-virtual {p0}, Lorg/apache/xml/utils/NamespaceSupport2;->reset()V

    .line 80
    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 197
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 198
    :cond_10
    const/4 v0, 0x0

    .line 201
    :goto_11
    return v0

    .line 200
    :cond_12
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/utils/Context2;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public getDeclaredPrefixes()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/Context2;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 4
    .parameter "uri"

    .prologue
    .line 351
    new-instance v0, Lorg/apache/xml/utils/PrefixForUriEnumerator;

    invoke-virtual {p0}, Lorg/apache/xml/utils/NamespaceSupport2;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xml/utils/PrefixForUriEnumerator;-><init>(Lorg/apache/xml/utils/NamespaceSupport2;Ljava/lang/String;Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prefix"

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/Context2;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public popContext()V
    .registers 3

    .prologue
    .line 153
    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v1}, Lorg/apache/xml/utils/Context2;->getParent()Lorg/apache/xml/utils/Context2;

    move-result-object v0

    .line 154
    .local v0, parentContext:Lorg/apache/xml/utils/Context2;
    if-nez v0, :cond_e

    .line 155
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1

    .line 157
    :cond_e
    iput-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    .line 158
    return-void
.end method

.method public processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 7
    .parameter "qName"
    .parameter "parts"
    .parameter "isAttribute"

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v1, p1, p3}, Lorg/apache/xml/utils/Context2;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, name:[Ljava/lang/String;
    if-nez v0, :cond_b

    .line 249
    const/4 v1, 0x0

    .line 254
    :goto_a
    return-object v1

    .line 253
    :cond_b
    const/4 v1, 0x3

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p2

    .line 254
    goto :goto_a
.end method

.method public pushContext()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    .line 126
    .local v0, parentContext:Lorg/apache/xml/utils/Context2;
    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getChild()Lorg/apache/xml/utils/Context2;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    .line 127
    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    if-nez v1, :cond_14

    .line 128
    new-instance v1, Lorg/apache/xml/utils/Context2;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/Context2;-><init>(Lorg/apache/xml/utils/Context2;)V

    iput-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    .line 135
    :goto_13
    return-void

    .line 133
    :cond_14
    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/Context2;->setParent(Lorg/apache/xml/utils/Context2;)V

    goto :goto_13
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 99
    new-instance v0, Lorg/apache/xml/utils/Context2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/Context2;-><init>(Lorg/apache/xml/utils/Context2;)V

    iput-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    .line 100
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/Context2;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
