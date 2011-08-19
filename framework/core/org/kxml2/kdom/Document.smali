.class public Lorg/kxml2/kdom/Document;
.super Lorg/kxml2/kdom/Node;
.source "Document.java"


# instance fields
.field encoding:Ljava/lang/String;

.field protected rootIndex:I

.field standalone:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/kxml2/kdom/Node;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    return-void
.end method


# virtual methods
.method public addChild(IILjava/lang/Object;)V
    .registers 5
    .parameter "index"
    .parameter "type"
    .parameter "child"

    .prologue
    .line 64
    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    .line 68
    iput p1, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    .line 73
    :cond_5
    :goto_5
    invoke-super {p0, p1, p2, p3}, Lorg/kxml2/kdom/Node;->addChild(IILjava/lang/Object;)V

    .line 74
    return-void

    .line 70
    :cond_9
    iget v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    if-lt v0, p1, :cond_5

    .line 71
    iget v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    goto :goto_5
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/kxml2/kdom/Document;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const-string v0, "#document"

    return-object v0
.end method

.method public getRootElement()Lorg/kxml2/kdom/Element;
    .registers 3

    .prologue
    .line 109
    iget v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Document has no root element!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_d
    iget v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    invoke-virtual {p0, v0}, Lorg/kxml2/kdom/Document;->getChild(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/kxml2/kdom/Element;

    return-object p0
.end method

.method public getStandalone()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/kxml2/kdom/Document;->standalone:Ljava/lang/Boolean;

    return-object v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 87
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/kdom/Document;->encoding:Ljava/lang/String;

    .line 88
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/kxml2/kdom/Document;->standalone:Ljava/lang/Boolean;

    .line 90
    invoke-super {p0, p1}, Lorg/kxml2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Document end expected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2a
    return-void
.end method

.method public removeChild(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 98
    iget v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    if-ne p1, v0, :cond_b

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    .line 103
    :cond_7
    :goto_7
    invoke-super {p0, p1}, Lorg/kxml2/kdom/Node;->removeChild(I)V

    .line 104
    return-void

    .line 100
    :cond_b
    iget v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    if-ge p1, v0, :cond_7

    .line 101
    iget v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/kxml2/kdom/Document;->rootIndex:I

    goto :goto_7
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .parameter "enc"

    .prologue
    .line 44
    iput-object p1, p0, Lorg/kxml2/kdom/Document;->encoding:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setStandalone(Ljava/lang/Boolean;)V
    .registers 2
    .parameter "standalone"

    .prologue
    .line 48
    iput-object p1, p0, Lorg/kxml2/kdom/Document;->standalone:Ljava/lang/Boolean;

    .line 49
    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/kxml2/kdom/Document;->encoding:Ljava/lang/String;

    iget-object v1, p0, Lorg/kxml2/kdom/Document;->standalone:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 124
    invoke-virtual {p0, p1}, Lorg/kxml2/kdom/Document;->writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 126
    return-void
.end method
