.class public final Lorg/apache/xml/serializer/utils/DOM2Helper;
.super Ljava/lang/Object;
.source "DOM2Helper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLocalNameOfNodeFallback(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 5
    .parameter "n"

    .prologue
    .line 91
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, qname:Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 94
    .local v0, index:I
    if-gez v0, :cond_e

    move-object v2, v1

    :goto_d
    return-object v2

    :cond_e
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method


# virtual methods
.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4
    .parameter "n"

    .prologue
    .line 72
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNodeFallback(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    move-object v1, v0

    goto :goto_a
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3
    .parameter "n"

    .prologue
    .line 114
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
