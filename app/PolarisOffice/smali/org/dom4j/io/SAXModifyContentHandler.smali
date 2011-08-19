.class Lorg/dom4j/io/SAXModifyContentHandler;
.super Lorg/dom4j/io/SAXContentHandler;
.source "SAXModifyContentHandler.java"


# instance fields
.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/dom4j/io/SAXContentHandler;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "documentFactory"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V
    .locals 0
    .parameter "documentFactory"
    .parameter "elementHandler"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;Lorg/dom4j/io/ElementStack;)V
    .locals 0
    .parameter "documentFactory"
    .parameter "elementHandler"
    .parameter "elementStack"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;Lorg/dom4j/io/ElementStack;)V

    .line 47
    return-void
.end method

.method private activeHandlers()Z
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->getElementStack()Lorg/dom4j/io/ElementStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/io/ElementStack;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    .line 248
    .local v0, handler:Lorg/dom4j/io/DispatchHandler;
    invoke-virtual {v0}, Lorg/dom4j/io/DispatchHandler;->getActiveHandlerCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "parm1"
    .parameter "parm2"
    .parameter "parm3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->characters([CII)V

    .line 236
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->characters([CII)V

    .line 239
    :cond_0
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .parameter "characters"
    .parameter "parm2"
    .parameter "parm3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->comment([CII)V

    .line 82
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->comment([CII)V

    .line 85
    :cond_0
    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0}, Lorg/dom4j/io/SAXContentHandler;->endCDATA()V

    .line 98
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->endCDATA()V

    .line 101
    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0}, Lorg/dom4j/io/SAXContentHandler;->endDTD()V

    .line 73
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->endDTD()V

    .line 76
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-super {p0}, Lorg/dom4j/io/SAXContentHandler;->endDocument()V

    .line 183
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->endDocument()V

    .line 186
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->getElementStack()Lorg/dom4j/io/ElementStack;

    move-result-object v5

    invoke-virtual {v5}, Lorg/dom4j/io/ElementStack;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v5

    .line 200
    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->getElementStack()Lorg/dom4j/io/ElementStack;

    move-result-object v6

    invoke-virtual {v6}, Lorg/dom4j/io/ElementStack;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/dom4j/io/DispatchHandler;->getHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    move-result-object v1

    .line 202
    .local v1, currentHandler:Lorg/dom4j/ElementHandler;
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    iget-object v5, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v5, :cond_0

    .line 206
    if-nez v1, :cond_1

    .line 207
    iget-object v5, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v5, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    instance-of v5, v1, Lorg/dom4j/io/SAXModifyElementHandler;

    if-eqz v5, :cond_0

    .line 210
    move-object v0, v1

    check-cast v0, Lorg/dom4j/io/SAXModifyElementHandler;

    move-object v4, v0

    .line 212
    .local v4, modifyHandler:Lorg/dom4j/io/SAXModifyElementHandler;
    invoke-virtual {v4}, Lorg/dom4j/io/SAXModifyElementHandler;->getModifiedElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 215
    .local v3, modifiedElement:Lorg/dom4j/Element;
    :try_start_0
    iget-object v5, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v5, v3}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 217
    .local v2, ex:Ljava/io/IOException;
    new-instance v5, Lorg/dom4j/io/SAXModifyException;

    invoke-direct {v5, v2}, Lorg/dom4j/io/SAXModifyException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->endEntity(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->endEntity(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-super {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->endPrefixMapping(Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method protected getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .parameter "parm1"
    .parameter "parm2"
    .parameter "parm3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->ignorableWhitespace([CII)V

    .line 150
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->ignorableWhitespace([CII)V

    .line 153
    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Lorg/dom4j/io/SAXContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/XMLWriter;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .parameter "locator"

    .prologue
    .line 165
    invoke-super {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 167
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 170
    :cond_0
    return-void
.end method

.method public setXMLWriter(Lorg/dom4j/io/XMLWriter;)V
    .locals 0
    .parameter "writer"

    .prologue
    .line 50
    iput-object p1, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    .line 51
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-super {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->skippedEntity(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0}, Lorg/dom4j/io/SAXContentHandler;->startCDATA()V

    .line 56
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->startCDATA()V

    .line 59
    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/io/SAXContentHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-super {p0}, Lorg/dom4j/io/SAXContentHandler;->startDocument()V

    .line 141
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->startDocument()V

    .line 144
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Lorg/dom4j/io/SAXContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 133
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/dom4j/io/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 136
    :cond_0
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->startEntity(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->startEntity(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lorg/dom4j/io/SAXContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/XMLWriter;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .parameter "notation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Lorg/dom4j/io/SAXContentHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifyContentHandler;->activeHandlers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyContentHandler;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/dom4j/io/XMLWriter;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method
