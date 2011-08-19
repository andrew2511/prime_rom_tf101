.class public final Lorg/apache/xml/serializer/ToTextSAXHandler;
.super Lorg/apache/xml/serializer/ToSAXHandler;
.source "ToTextSAXHandler.java"


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .registers 3
    .parameter "handler"
    .parameter "encoding"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .registers 4
    .parameter "hdlr"
    .parameter "lex"
    .parameter "encoding"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 384
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "type"
    .parameter "value"
    .parameter "XSLAttribute"

    .prologue
    .line 193
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
    .line 206
    return-void
.end method

.method public characters(Ljava/lang/String;)V
    .registers 6
    .parameter "characters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 355
    .local v0, length:I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_12

    .line 357
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    .line 359
    :cond_12
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 361
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    invoke-interface {v1, v2, v3, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 363
    return-void
.end method

.method public characters([CII)V
    .registers 5
    .parameter "characters"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 374
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_c

    .line 375
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireCharEvent([CII)V

    .line 376
    :cond_c
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .registers 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    .local v0, length:I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_12

    .line 92
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    .line 94
    :cond_12
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 95
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToTextSAXHandler;->comment([CII)V

    .line 96
    return-void
.end method

.method public comment([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 84
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireCommentEvent([CII)V

    .line 85
    :cond_7
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
    .line 213
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
    .line 290
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
    .line 297
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
    .line 340
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextSAXHandler;->flushPending()V

    .line 341
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 343
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_f

    .line 344
    invoke-super {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndDoc()V

    .line 345
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
    .line 53
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 54
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndElem(Ljava/lang/String;)V

    .line 55
    :cond_7
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 63
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 64
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEndElem(Ljava/lang/String;)V

    .line 65
    :cond_7
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 236
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
    .line 221
    return-void
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
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
    .line 244
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
    .line 129
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
    .line 229
    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 411
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 254
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_7
    return-void
.end method

.method public reset()Z
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

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
    .line 144
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 262
    return-void
.end method

.method public setEscaping(Z)Z
    .registers 3
    .parameter "escape"

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public setIndent(Z)V
    .registers 2
    .parameter "indent"

    .prologue
    .line 159
    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .registers 2
    .parameter "format"

    .prologue
    .line 166
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "output"

    .prologue
    .line 173
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .registers 2
    .parameter "writer"

    .prologue
    .line 180
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 269
    return-void
.end method

.method public startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 304
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 2
    .parameter "elementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "elementNamespaceURI"
    .parameter "elementLocalName"
    .parameter "elementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextSAXHandler;->flushPending()V

    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 283
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 312
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 402
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .parameter "prefix"
    .parameter "uri"
    .parameter "shouldFlush"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method
