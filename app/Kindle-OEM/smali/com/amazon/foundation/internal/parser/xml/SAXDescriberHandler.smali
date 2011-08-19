.class public Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.super Ljava/lang/Object;
.source "SAXDescriberHandler.java"

# interfaces
.implements Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;


# instance fields
.field private currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

.field private rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    .line 22
    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;)Z
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    if-nez v0, :cond_0

    move v0, v2

    .line 138
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    if-ne v0, v1, :cond_1

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    .line 131
    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addContentValue(Ljava/lang/String;)V

    .line 138
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public endDocument(Z)Z
    .locals 2
    .parameter "error"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    if-eq v0, v1, :cond_0

    .line 44
    const/4 p1, 0x1

    .line 46
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    .line 47
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    if-nez v0, :cond_0

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->releaseContentValue()V

    .line 64
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->callTagCallback(I)V

    .line 67
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getParent()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    return-object v0
.end method

.method public startDocument()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public startElement(Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    if-nez v0, :cond_0

    move v0, v1

    .line 118
    :goto_0
    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getChild(Ljava/lang/String;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 84
    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    .line 96
    :cond_1
    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    .line 98
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    if-nez v0, :cond_2

    move v0, v1

    .line 99
    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->callTagCallback(I)V

    .line 107
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->callTagNameMapping()V

    move v0, v1

    .line 110
    :goto_1
    invoke-virtual {p2}, Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;->get_length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {p2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;->get_name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;->get_value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setAttributeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->callTagCallback(I)V

    move v0, v4

    .line 118
    goto :goto_0
.end method
