.class public Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SyncMLMsgFormatHandler.java"


# instance fields
.field private isEmptyTag:Z

.field private mFomatedMsg:Ljava/lang/StringBuilder;

.field private mIndentLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->isEmptyTag:Z

    return-void
.end method

.method private fillIndent(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)Ljava/lang/String;
    .locals 6
    .parameter "content"
    .parameter "attrs"
    .parameter "isStartTag"

    .prologue
    .line 82
    const-string v2, ""

    .line 84
    .local v2, retVal:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mIndentLevel:I

    if-ge v1, v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    if-eqz p3, :cond_3

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 93
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, attrQName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    .end local v0           #attrQName:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    :goto_2
    return-object v3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private getCData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pCDataCont"

    .prologue
    const/4 v1, -0x1

    .line 74
    const-string v0, "<![CDATA["

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 75
    const-string v0, "<![CDATA["

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "]]>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 60
    .local v0, textBetween:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->getCData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->isEmptyTag:Z

    .line 65
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 23
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 48
    iget v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mIndentLevel:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mIndentLevel:I

    .line 50
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->isEmptyTag:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iput-boolean v3, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->isEmptyTag:Z

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v3}, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->fillIndent(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getFormatedMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 18
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 28
    new-instance v1, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;

    invoke-direct {v1, p3}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, dmMsgElement:Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 31
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, attrQName:Ljava/lang/String;
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/asus/dmlib/syncml/message/SyncMLMsgElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v0           #attrQName:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mFomatedMsg:Ljava/lang/StringBuilder;

    invoke-direct {p0, p3, p4, v5}, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->fillIndent(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v3, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mIndentLevel:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->mIndentLevel:I

    .line 39
    iput-boolean v5, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->isEmptyTag:Z

    .line 40
    return-void
.end method
