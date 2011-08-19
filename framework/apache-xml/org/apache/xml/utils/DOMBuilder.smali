.class public Lorg/apache/xml/utils/DOMBuilder;
.super Ljava/lang/Object;
.source "DOMBuilder.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# instance fields
.field protected m_currentNode:Lorg/w3c/dom/Node;

.field public m_doc:Lorg/w3c/dom/Document;

.field public m_docFrag:Lorg/w3c/dom/DocumentFragment;

.field protected m_elemStack:Ljava/util/Stack;

.field protected m_inCData:Z

.field protected m_nextSibling:Lorg/w3c/dom/Node;

.field protected m_prefixMappings:Ljava/util/Vector;

.field protected m_root:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3
    .parameter "doc"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 57
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    .line 60
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    .line 63
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    .line 108
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V
    .registers 4
    .parameter "doc"
    .parameter "docFrag"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 57
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    .line 60
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    .line 63
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    .line 96
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    .line 97
    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V
    .registers 4
    .parameter "doc"
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 57
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    .line 60
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    .line 63
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    .line 80
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    .line 81
    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 83
    instance-of v0, p2, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_2c

    .line 84
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2c
    return-void
.end method

.method private isOutsideDocElem()Z
    .registers 3

    .prologue
    .line 596
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method


# virtual methods
.method protected append(Lorg/w3c/dom/Node;)V
    .registers 9
    .parameter "newNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 178
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 180
    .local v0, currentNode:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_17

    .line 182
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    if-ne v0, v4, :cond_13

    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz v4, :cond_13

    .line 183
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1, v4}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 234
    :cond_12
    :goto_12
    return-void

    .line 185
    :cond_13
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_12

    .line 189
    :cond_17
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-eqz v4, :cond_2d

    .line 191
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz v4, :cond_27

    .line 192
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    iget-object v5, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    invoke-interface {v4, p1, v5}, Lorg/w3c/dom/DocumentFragment;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_12

    .line 194
    :cond_27
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    invoke-interface {v4, p1}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_12

    .line 198
    :cond_2d
    const/4 v2, 0x1

    .line 199
    .local v2, ok:Z
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    .line 201
    .local v3, type:S
    const/4 v4, 0x3

    if-ne v3, v4, :cond_60

    .line 203
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_51

    .line 207
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "ER_CANT_OUTPUT_TEXT_BEFORE_DOC"

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    :cond_51
    const/4 v2, 0x0

    .line 226
    .end local v1           #data:Ljava/lang/String;
    :cond_52
    if-eqz v2, :cond_12

    .line 228
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz v4, :cond_78

    .line 229
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    iget-object v5, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    invoke-interface {v4, p1, v5}, Lorg/w3c/dom/Document;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_12

    .line 214
    :cond_60
    const/4 v4, 0x1

    if-ne v3, v4, :cond_52

    .line 216
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 218
    const/4 v2, 0x0

    .line 220
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "ER_CANT_HAVE_MORE_THAN_ONE_ROOT"

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_78
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v4, p1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_12
.end method

.method public cdata([CII)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 693
    :goto_c
    return-void

    .line 689
    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 691
    .local v0, s:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/CDATASection;

    .line 692
    .local v1, section:Lorg/w3c/dom/CDATASection;
    invoke-interface {v1, v0}, Lorg/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public characters([CII)V
    .registers 9
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 490
    :goto_c
    return-void

    .line 473
    :cond_d
    iget-boolean v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    if-eqz v3, :cond_15

    .line 475
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/utils/DOMBuilder;->cdata([CII)V

    goto :goto_c

    .line 480
    :cond_15
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 482
    .local v1, s:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v0, v3

    .line 483
    .local v0, childNode:Lorg/w3c/dom/Node;
    :goto_25
    if-eqz v0, :cond_37

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_37

    .line 484
    check-cast v0, Lorg/w3c/dom/Text;

    .end local v0           #childNode:Lorg/w3c/dom/Node;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    goto :goto_c

    .line 482
    :cond_34
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_25

    .line 487
    .restart local v0       #childNode:Lorg/w3c/dom/Node;
    :cond_37
    iget-object v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v3, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    .line 488
    .local v2, text:Lorg/w3c/dom/Text;
    invoke-virtual {p0, v2}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    goto :goto_c
.end method

.method public charactersRaw([CII)V
    .registers 8
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 515
    :goto_c
    return-void

    .line 510
    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 512
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    const-string v2, "xslt-next-is-raw"

    const-string v3, "formatter-to-dom"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    .line 514
    iget-object v1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    goto :goto_c
.end method

.method public comment([CII)V
    .registers 6
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    .line 634
    return-void
.end method

.method public endCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    .line 658
    return-void
.end method

.method public endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 725
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 293
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "ns"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    .line 430
    return-void

    .line 429
    :cond_11
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_e
.end method

.method public endEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 544
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 777
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    .line 554
    return-void
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getRootDocument()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    goto :goto_6
.end method

.method public getRootNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 6
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 587
    :goto_6
    return-void

    .line 584
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 586
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    goto :goto_6
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    .line 618
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 265
    return-void
.end method

.method public setIDAttribute(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 3
    .parameter "id"
    .parameter "elem"

    .prologue
    .line 442
    return-void
.end method

.method public setNextSibling(Lorg/w3c/dom/Node;)V
    .registers 2
    .parameter "nextSibling"

    .prologue
    .line 147
    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    .line 148
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 794
    return-void
.end method

.method public startCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    .line 647
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    .line 648
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 714
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 278
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 16
    .parameter "ns"
    .parameter "localName"
    .parameter "name"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 327
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5b

    .line 328
    :cond_8
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    const/4 v10, 0x0

    invoke-interface {v9, v10, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 332
    .local v4, elem:Lorg/w3c/dom/Element;
    :goto_f
    invoke-virtual {p0, v4}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    .line 336
    :try_start_12
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    .line 338
    .local v6, nAtts:I
    if-eqz v6, :cond_62

    .line 340
    const/4 v5, 0x0

    .local v5, i:I
    :goto_19
    if-ge v5, v6, :cond_62

    .line 345
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ID"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 346
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v4}, Lorg/apache/xml/utils/DOMBuilder;->setIDAttribute(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 348
    :cond_2e
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, attrNS:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 351
    const/4 v0, 0x0

    .line 356
    :cond_3b
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, attrQName:Ljava/lang/String;
    const-string v9, "xmlns:"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4f

    const-string v9, "xmlns"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 361
    :cond_4f
    const-string v0, "http://www.w3.org/2000/xmlns/"

    .line 365
    :cond_51
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v0, v1, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_58} :catch_88

    .line 340
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 330
    .end local v0           #attrNS:Ljava/lang/String;
    .end local v1           #attrQName:Ljava/lang/String;
    .end local v4           #elem:Lorg/w3c/dom/Element;
    .end local v5           #i:I
    .end local v6           #nAtts:I
    :cond_5b
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v9, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .restart local v4       #elem:Lorg/w3c/dom/Element;
    goto :goto_f

    .line 372
    .restart local v6       #nAtts:I
    :cond_62
    :try_start_62
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v7

    .line 376
    .local v7, nDecls:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_69
    if-ge v5, v7, :cond_90

    .line 378
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 380
    .local v8, prefix:Ljava/lang/String;
    if-nez v8, :cond_78

    .line 376
    :goto_75
    add-int/lit8 v5, v5, 0x2

    goto :goto_69

    .line 383
    :cond_78
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 385
    .local v3, declURL:Ljava/lang/String;
    const-string v9, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v4, v9, v8, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_87} :catch_88

    goto :goto_75

    .line 398
    .end local v3           #declURL:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #nAtts:I
    .end local v7           #nDecls:I
    .end local v8           #prefix:Ljava/lang/String;
    :catch_88
    move-exception v9

    move-object v2, v9

    .line 401
    .local v2, de:Ljava/lang/Exception;
    new-instance v9, Lorg/xml/sax/SAXException;

    invoke-direct {v9, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 388
    .end local v2           #de:Ljava/lang/Exception;
    .restart local v5       #i:I
    .restart local v6       #nAtts:I
    .restart local v7       #nDecls:I
    :cond_90
    :try_start_90
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 392
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v9, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iput-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9c} :catch_88

    .line 404
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 536
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 758
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 759
    :cond_a
    const-string p1, "xmlns"

    .line 761
    :goto_c
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 762
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 763
    return-void

    .line 760
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c
.end method
