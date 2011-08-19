.class public final Lorg/apache/xml/serializer/ToXMLSAXHandler;
.super Lorg/apache/xml/serializer/ToSAXHandler;
.source "ToXMLSAXHandler.java"


# instance fields
.field protected m_escapeSetting:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 56
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    .line 57
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->initCDATA()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .registers 4
    .parameter "handler"
    .parameter "encoding"

    .prologue
    .line 473
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 475
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->initCDATA()V

    .line 477
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    .line 478
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .registers 5
    .parameter "handler"
    .parameter "lex"
    .parameter "encoding"

    .prologue
    .line 485
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 487
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->initCDATA()V

    .line 489
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    .line 490
    return-void
.end method

.method private ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "ns"
    .parameter "rawName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 685
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_44

    .line 688
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .local v8, index:I
    if-gez v8, :cond_45

    const/4 v0, 0x1

    move v9, v0

    .line 689
    .local v9, no_prefix:Z
    :goto_13
    if-eqz v9, :cond_47

    const-string v0, ""

    move-object v10, v0

    .line 692
    .local v10, prefix:Ljava/lang/String;
    :goto_18
    if-eqz v10, :cond_44

    .line 694
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 696
    .local v7, foundURI:Ljava/lang/String;
    if-eqz v7, :cond_28

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 698
    :cond_28
    invoke-virtual {p0, v10, p1, v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 700
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getShouldOutputNSAttr()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 703
    const-string v1, "http://www.w3.org/2000/xmlns/"

    if-eqz v9, :cond_4d

    const-string v0, "xmlns"

    move-object v2, v0

    :goto_38
    if-eqz v9, :cond_4f

    const-string v0, "xmlns"

    move-object v3, v0

    :goto_3d
    const-string v4, "CDATA"

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 715
    .end local v7           #foundURI:Ljava/lang/String;
    .end local v8           #index:I
    .end local v9           #no_prefix:Z
    .end local v10           #prefix:Ljava/lang/String;
    :cond_44
    return-void

    .restart local v8       #index:I
    :cond_45
    move v9, v6

    .line 688
    goto :goto_13

    .line 689
    .restart local v9       #no_prefix:Z
    :cond_47
    invoke-virtual {p2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_18

    .restart local v7       #foundURI:Ljava/lang/String;
    .restart local v10       #prefix:Ljava/lang/String;
    :cond_4d
    move-object v2, v10

    .line 703
    goto :goto_38

    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_3d
.end method

.method private resetToXMLSAXHandler()V
    .registers 2

    .prologue
    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 772
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "type"
    .parameter "value"
    .parameter "XSLAttribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_13

    .line 740
    invoke-direct {p0, p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 744
    :cond_13
    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 148
    return-void
.end method

.method public characters(Ljava/lang/String;)V
    .registers 5
    .parameter "chars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 463
    .local v0, length:I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_12

    .line 465
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_charsBuff:[C

    .line 467
    :cond_12
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 468
    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->characters([CII)V

    .line 469
    return-void
.end method

.method public characters([CII)V
    .registers 6
    .parameter "ch"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 516
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_a

    .line 518
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startDocumentInternal()V

    .line 519
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_needToCallStartDocument:Z

    .line 522
    :cond_a
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_17

    .line 524
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->closeStartTag()V

    .line 525
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 528
    :cond_17
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_2d

    .line 531
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    .line 542
    :cond_2d
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 545
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_39

    .line 546
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->fireCharEvent([CII)V

    .line 547
    :cond_39
    return-void
.end method

.method public closeCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    if-eqz v0, :cond_d

    .line 227
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 235
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    .line 236
    return-void
.end method

.method protected closeStartTag()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 198
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, localName:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, uri:Ljava/lang/String;
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_needToCallStartDocument:Z

    if-eqz v2, :cond_1d

    .line 204
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startDocumentInternal()V

    .line 206
    :cond_1d
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-interface {v2, v1, v0, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 209
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    .line 211
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz v2, :cond_37

    .line 212
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/xml/serializer/TransformStateSetter;->setCurrentNode(Lorg/w3c/dom/Node;)V

    .line 213
    :cond_37
    return-void
.end method

.method public comment([CII)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    .line 404
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_c

    .line 405
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 407
    :cond_c
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_13

    .line 408
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireCommentEvent([CII)V

    .line 409
    :cond_13
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 155
    return-void
.end method

.method public endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 437
    return-void
.end method

.method public endDTD()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_9

    .line 445
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 446
    :cond_9
    return-void
.end method

.method public endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    .line 183
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 185
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_f

    .line 186
    invoke-super {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndDoc()V

    .line 187
    :cond_f
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .registers 3
    .parameter "elemName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 555
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    .line 247
    if-nez p1, :cond_f

    .line 249
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 250
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object p1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    .line 255
    :cond_f
    :goto_f
    if-nez p2, :cond_1b

    .line 257
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 258
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object p2, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 263
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_27

    .line 266
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndElem(Ljava/lang/String;)V

    .line 271
    :cond_27
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    iget-object v1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespaces(ILorg/xml/sax/ContentHandler;)V

    .line 273
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 274
    return-void

    .line 252
    :cond_39
    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 260
    :cond_3f
    invoke-static {p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1b
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
    .line 284
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 163
    return-void
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 294
    return-void
.end method

.method public indent(I)V
    .registers 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 171
    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 570
    return-void
.end method

.method protected popNamespace(Ljava/lang/String;)Z
    .registers 3
    .parameter "prefix"

    .prologue
    .line 599
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 601
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_d} :catch_f

    .line 602
    const/4 v0, 0x1

    .line 609
    :goto_e
    return v0

    .line 605
    :catch_f
    move-exception v0

    .line 609
    :cond_10
    const/4 v0, 0x0

    goto :goto_e
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
    .line 580
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    .line 583
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_f

    .line 588
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_f
    return-void
.end method

.method public reset()Z
    .registers 3

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, wasReset:Z
    invoke-super {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->reset()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 759
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->resetToXMLSAXHandler()V

    .line 760
    const/4 v0, 0x1

    .line 762
    :cond_b
    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .registers 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 302
    return-void
.end method

.method public setEscaping(Z)Z
    .registers 5
    .parameter "escape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 105
    .local v0, oldEscapeSetting:Z
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_escapeSetting:Z

    .line 107
    if-eqz p1, :cond_e

    .line 108
    const-string v1, "javax.xml.transform.enable-output-escaping"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_d
    return v0

    .line 110
    :cond_e
    const-string v1, "javax.xml.transform.disable-output-escaping"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .registers 2
    .parameter "format"

    .prologue
    .line 121
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "output"

    .prologue
    .line 128
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .registers 2
    .parameter "writer"

    .prologue
    .line 135
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public startCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 622
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    if-nez v0, :cond_13

    .line 624
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    .line 625
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_13

    .line 626
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_cdataTagOpen:Z

    .line 634
    :cond_13
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3
    .parameter "elementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 509
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "elementNamespaceURI"
    .parameter "elementLocalName"
    .parameter "elementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 505
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "name"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    .line 647
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 650
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_needToOutputDocTypeDecl:Z

    if-eqz v2, :cond_22

    .line 652
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, doctypeSystem:Ljava/lang/String;
    if-eqz v1, :cond_1f

    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_1f

    .line 655
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, doctypePublic:Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 657
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v2, p3, v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .end local v0           #doctypePublic:Ljava/lang/String;
    :cond_1f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_needToOutputDocTypeDecl:Z

    .line 664
    .end local v1           #doctypeSystem:Ljava/lang/String;
    :cond_22
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 668
    if-eqz p1, :cond_2f

    .line 669
    invoke-direct {p0, p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_2f
    if-eqz p4, :cond_34

    .line 673
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributes(Lorg/xml/sax/Attributes;)V

    .line 677
    :cond_34
    iget-object v2, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->isCdataSection()Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    .line 679
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_9

    .line 454
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 455
    :cond_9
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 321
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 16
    .parameter "prefix"
    .parameter "uri"
    .parameter "shouldFlush"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 348
    if-eqz p3, :cond_34

    .line 350
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->flushPending()V

    .line 352
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v10, v0, 0x1

    .line 359
    .local v10, pushDepth:I
    :goto_b
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p1, p2, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    .line 361
    .local v11, pushed:Z
    if-eqz v11, :cond_33

    .line 363
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->getShouldOutputNSAttr()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 374
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 376
    const-string v2, "xmlns"

    .line 377
    .local v2, name:Ljava/lang/String;
    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v4, "CDATA"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 394
    .end local v2           #name:Ljava/lang/String;
    :cond_33
    :goto_33
    return v11

    .line 357
    .end local v10           #pushDepth:I
    .end local v11           #pushed:Z
    :cond_34
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v10, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    .restart local v10       #pushDepth:I
    goto :goto_b

    .line 381
    .restart local v11       #pushed:Z
    :cond_39
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .restart local v2       #name:Ljava/lang/String;
    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v7, "CDATA"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, v2

    move-object v8, p2

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_33
.end method
