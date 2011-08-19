.class public Lcom/splashtop/remote/bean/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1a31e12318536bfeL


# instance fields
.field private end:Ljava/util/Date;

.field private info:Ljava/lang/String;

.field private revision:Ljava/lang/String;

.field private start:Ljava/util/Date;

.field private type:Ljava/lang/String;

.field private upgrade_url:Ljava/lang/String;

.field private zone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/bean/Content;->start:Ljava/util/Date;

    .line 16
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/bean/Content;->end:Ljava/util/Date;

    .line 21
    invoke-direct {p0, p1}, Lcom/splashtop/remote/bean/Content;->init(Lorg/w3c/dom/Node;)V

    .line 22
    return-void
.end method

.method private init(Lorg/w3c/dom/Node;)V
    .locals 7
    .parameter "node"

    .prologue
    .line 25
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 26
    .local v3, nodeMap:Lorg/w3c/dom/NamedNodeMap;
    const-string v5, "type"

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/splashtop/remote/bean/Content;->type:Ljava/lang/String;

    .line 27
    const-string v5, "revision"

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/splashtop/remote/bean/Content;->revision:Ljava/lang/String;

    .line 28
    const-string v5, "zone"

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/splashtop/remote/bean/Content;->zone:Ljava/lang/String;

    .line 30
    :try_start_0
    new-instance v5, Ljava/util/Date;

    const-string v6, "start"

    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/splashtop/remote/bean/Content;->start:Ljava/util/Date;

    .line 31
    new-instance v5, Ljava/util/Date;

    const-string v6, "end"

    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/splashtop/remote/bean/Content;->end:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 35
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 36
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 37
    .local v0, childNode:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 38
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "info"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/splashtop/remote/bean/Content;->info:Ljava/lang/String;

    .line 35
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 42
    .local v4, urlNodeMap:Lorg/w3c/dom/NamedNodeMap;
    const-string v5, "type"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "upgrade"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 43
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/splashtop/remote/bean/Content;->upgrade_url:Ljava/lang/String;

    goto :goto_2

    .line 49
    .end local v0           #childNode:Lorg/w3c/dom/Node;
    .end local v4           #urlNodeMap:Lorg/w3c/dom/NamedNodeMap;
    :cond_2
    return-void

    .line 32
    .end local v1           #i:I
    .end local v2           #nodeList:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public getEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/splashtop/remote/bean/Content;->end:Ljava/util/Date;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/splashtop/remote/bean/Content;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/splashtop/remote/bean/Content;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/splashtop/remote/bean/Content;->start:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/splashtop/remote/bean/Content;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgrade_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/splashtop/remote/bean/Content;->upgrade_url:Ljava/lang/String;

    return-object v0
.end method

.method public getZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/splashtop/remote/bean/Content;->zone:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "attributes"

    .prologue
    .line 52
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/bean/Content;->type:Ljava/lang/String;

    .line 53
    const-string v0, "revision"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/bean/Content;->revision:Ljava/lang/String;

    .line 54
    const-string v0, "zone"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/bean/Content;->zone:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/Date;

    const-string v1, "start"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/splashtop/remote/bean/Content;->start:Ljava/util/Date;

    .line 56
    new-instance v0, Ljava/util/Date;

    const-string v1, "end"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/splashtop/remote/bean/Content;->end:Ljava/util/Date;

    .line 57
    return-void
.end method
