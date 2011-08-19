.class public Lorg/dom4j/io/STAXEventReader;
.super Ljava/lang/Object;
.source "STAXEventReader.java"


# instance fields
.field private factory:Lorg/dom4j/DocumentFactory;

.field private inputFactory:Ljavax/xml/stream/XMLInputFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventReader;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    .line 55
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventReader;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    iput-object p1, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    goto :goto_0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Ljavax/xml/stream/events/Attribute;)Lorg/dom4j/Attribute;
    .locals 3
    .parameter "elem"
    .parameter "attr"

    .prologue
    .line 547
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-interface {p2}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/STAXEventReader;->createQName(Ljavax/xml/namespace/QName;)Lorg/dom4j/QName;

    move-result-object v1

    .line 548
    invoke-interface {p2}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-virtual {v0, p1, v1, v2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public createCharacterData(Ljavax/xml/stream/events/Characters;)Lorg/dom4j/CharacterData;
    .locals 2
    .parameter "characters"

    .prologue
    .line 576
    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, data:Ljava/lang/String;
    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->isCData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v1

    .line 581
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v1

    goto :goto_0
.end method

.method public createComment(Ljavax/xml/stream/events/Comment;)Lorg/dom4j/Comment;
    .locals 2
    .parameter "comment"

    .prologue
    .line 595
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-interface {p1}, Ljavax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Ljavax/xml/stream/events/StartElement;)Lorg/dom4j/Element;
    .locals 8
    .parameter "startEvent"

    .prologue
    .line 515
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    .line 516
    .local v5, qname:Ljavax/xml/namespace/QName;
    invoke-virtual {p0, v5}, Lorg/dom4j/io/STAXEventReader;->createQName(Ljavax/xml/namespace/QName;)Lorg/dom4j/QName;

    move-result-object v2

    .line 518
    .local v2, elemName:Lorg/dom4j/QName;
    iget-object v6, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v6, v2}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v1

    .line 521
    .local v1, elem:Lorg/dom4j/Element;
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 527
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 532
    return-object v1

    .line 522
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    .line 523
    .local v0, attr:Ljavax/xml/stream/events/Attribute;
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/io/STAXEventReader;->createQName(Ljavax/xml/namespace/QName;)Lorg/dom4j/QName;

    move-result-object v6

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0

    .line 528
    .end local v0           #attr:Ljavax/xml/stream/events/Attribute;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/xml/stream/events/Namespace;

    .line 529
    .local v4, ns:Ljavax/xml/stream/events/Namespace;
    invoke-interface {v4}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1
.end method

.method public createEntity(Ljavax/xml/stream/events/EntityReference;)Lorg/dom4j/Entity;
    .locals 3
    .parameter "entityRef"

    .prologue
    .line 609
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-interface {p1}, Ljavax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-interface {p1}, Ljavax/xml/stream/events/EntityReference;->getDeclaration()Ljavax/xml/stream/events/EntityDeclaration;

    move-result-object v2

    invoke-interface {v2}, Ljavax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-virtual {v0, v1, v2}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createNamespace(Ljavax/xml/stream/events/Namespace;)Lorg/dom4j/Namespace;
    .locals 3
    .parameter "ns"

    .prologue
    .line 561
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-interface {p1}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public createProcessingInstruction(Ljavax/xml/stream/events/ProcessingInstruction;)Lorg/dom4j/ProcessingInstruction;
    .locals 3
    .parameter "pi"

    .prologue
    .line 626
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 627
    invoke-interface {p1}, Ljavax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 626
    return-object v0
.end method

.method public createQName(Ljavax/xml/namespace/QName;)Lorg/dom4j/QName;
    .locals 4
    .parameter "qname"

    .prologue
    .line 639
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 639
    invoke-virtual {v0, v1, v2, v3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public readAttribute(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Attribute;
    .locals 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 357
    .local v1, event:Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    .line 360
    .local v0, attr:Ljavax/xml/stream/events/Attribute;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lorg/dom4j/io/STAXEventReader;->createAttribute(Lorg/dom4j/Element;Ljavax/xml/stream/events/Attribute;)Lorg/dom4j/Attribute;

    move-result-object v2

    return-object v2

    .line 362
    .end local v0           #attr:Ljavax/xml/stream/events/Attribute;
    :cond_0
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Expected Attribute event, found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-direct {v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readCharacters(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/CharacterData;
    .locals 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 411
    .local v1, event:Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    invoke-interface {v2}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v0

    .line 414
    .local v0, characters:Ljavax/xml/stream/events/Characters;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->createCharacterData(Ljavax/xml/stream/events/Characters;)Lorg/dom4j/CharacterData;

    move-result-object v2

    return-object v2

    .line 416
    .end local v0           #characters:Ljavax/xml/stream/events/Characters;
    :cond_0
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Expected Characters event, found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-direct {v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readComment(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Comment;
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 438
    .local v0, event:Ljavax/xml/stream/events/XMLEvent;
    instance-of v1, v0, Ljavax/xml/stream/events/Comment;

    if-eqz v1, :cond_0

    .line 439
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Comment;

    invoke-virtual {p0, v1}, Lorg/dom4j/io/STAXEventReader;->createComment(Ljavax/xml/stream/events/Comment;)Lorg/dom4j/Comment;

    move-result-object v1

    return-object v1

    .line 441
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Expected Comment event, found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-direct {v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readDocument(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public readDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2
    .parameter "is"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lorg/dom4j/io/STAXEventReader;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v1, p2, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    .line 141
    .local v0, eventReader:Ljavax/xml/stream/XMLEventReader;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 143
    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->close()V

    .line 141
    return-object v1

    .line 142
    :catchall_0
    move-exception v1

    .line 143
    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->close()V

    .line 144
    throw v1
.end method

.method public readDocument(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public readDocument(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2
    .parameter "reader"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Lorg/dom4j/io/STAXEventReader;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v1, p2, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    .line 167
    .local v0, eventReader:Ljavax/xml/stream/XMLEventReader;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 169
    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->close()V

    .line 167
    return-object v1

    .line 168
    :catchall_0
    move-exception v1

    .line 169
    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->close()V

    .line 170
    throw v1
.end method

.method public readDocument(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Document;
    .locals 9
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, doc:Lorg/dom4j/Document;
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 280
    return-object v0

    .line 234
    :cond_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v5

    .line 235
    .local v5, nextEvent:Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v5}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v6

    .line 237
    .local v6, type:I
    packed-switch v6, :pswitch_data_0

    .line 270
    :pswitch_0
    if-nez v0, :cond_1

    .line 272
    iget-object v7, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v7}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 275
    :cond_1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readNode(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Node;

    move-result-object v4

    .line 276
    .local v4, n:Lorg/dom4j/Node;
    invoke-interface {v0, v4}, Lorg/dom4j/Document;->add(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 240
    .end local v4           #n:Lorg/dom4j/Node;
    :pswitch_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/events/StartDocument;

    .line 242
    .local v2, event:Ljavax/xml/stream/events/StartDocument;
    if-nez v0, :cond_3

    .line 244
    invoke-interface {v2}, Ljavax/xml/stream/events/StartDocument;->encodingSet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    invoke-interface {v2}, Ljavax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, encodingScheme:Ljava/lang/String;
    iget-object v7, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v7, v1}, Lorg/dom4j/DocumentFactory;->createDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_0

    .line 249
    .end local v1           #encodingScheme:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v7}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_3
    const-string v3, "Unexpected StartDocument event"

    .line 254
    .local v3, msg:Ljava/lang/String;
    new-instance v7, Ljavax/xml/stream/XMLStreamException;

    invoke-interface {v2}, Ljavax/xml/stream/events/StartDocument;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v7

    .line 264
    .end local v2           #event:Ljavax/xml/stream/events/StartDocument;
    .end local v3           #msg:Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public readElement(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Element;
    .locals 10
    .parameter "eventReader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v3

    .line 302
    .local v3, event:Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v3}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 304
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    invoke-interface {v7}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v6

    .line 305
    .local v6, startTag:Ljavax/xml/stream/events/StartElement;
    invoke-virtual {p0, v6}, Lorg/dom4j/io/STAXEventReader;->createElement(Ljavax/xml/stream/events/StartElement;)Lorg/dom4j/Element;

    move-result-object v1

    .line 309
    .local v1, elem:Lorg/dom4j/Element;
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 310
    const-string v4, "Unexpected end of stream while reading element content"

    .line 312
    .local v4, msg:Ljava/lang/String;
    new-instance v7, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v7, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 315
    .end local v4           #msg:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v5

    .line 317
    .local v5, nextEvent:Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v5}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 318
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    invoke-interface {v7}, Ljavax/xml/stream/events/XMLEvent;->asEndElement()Ljavax/xml/stream/events/EndElement;

    move-result-object v2

    .line 320
    .local v2, endElem:Ljavax/xml/stream/events/EndElement;
    invoke-interface {v2}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v7

    invoke-interface {v6}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 321
    new-instance v7, Ljavax/xml/stream/XMLStreamException;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Expected "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-interface {v6}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " end-tag, but found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 323
    invoke-interface {v2}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 321
    invoke-direct {v7, v8}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 329
    .end local v2           #endElem:Ljavax/xml/stream/events/EndElement;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readNode(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Node;

    move-result-object v0

    .line 330
    .local v0, child:Lorg/dom4j/Node;
    invoke-interface {v1, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 335
    .end local v0           #child:Lorg/dom4j/Node;
    .end local v1           #elem:Lorg/dom4j/Element;
    .end local v5           #nextEvent:Ljavax/xml/stream/events/XMLEvent;
    .end local v6           #startTag:Ljavax/xml/stream/events/StartElement;
    :cond_2
    new-instance v7, Ljavax/xml/stream/XMLStreamException;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Expected Element event, found: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 335
    invoke-direct {v7, v8}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 333
    .restart local v1       #elem:Lorg/dom4j/Element;
    .restart local v2       #endElem:Ljavax/xml/stream/events/EndElement;
    .restart local v5       #nextEvent:Ljavax/xml/stream/events/XMLEvent;
    .restart local v6       #startTag:Ljavax/xml/stream/events/StartElement;
    :cond_3
    return-object v1
.end method

.method public readEntityReference(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Entity;
    .locals 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 465
    .local v1, event:Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isEntityReference()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/EntityReference;

    .line 468
    .local v0, entityRef:Ljavax/xml/stream/events/EntityReference;
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->createEntity(Ljavax/xml/stream/events/EntityReference;)Lorg/dom4j/Entity;

    move-result-object v2

    return-object v2

    .line 470
    .end local v0           #entityRef:Ljavax/xml/stream/events/EntityReference;
    :cond_0
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Expected EntityRef event, found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-direct {v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readNamespace(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Namespace;
    .locals 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 384
    .local v0, event:Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isNamespace()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Namespace;

    .line 387
    .local v1, ns:Ljavax/xml/stream/events/Namespace;
    invoke-virtual {p0, v1}, Lorg/dom4j/io/STAXEventReader;->createNamespace(Ljavax/xml/stream/events/Namespace;)Lorg/dom4j/Namespace;

    move-result-object v2

    return-object v2

    .line 389
    .end local v1           #ns:Ljavax/xml/stream/events/Namespace;
    :cond_0
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Expected Namespace event, found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-direct {v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readNode(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Node;
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 197
    .local v0, event:Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readElement(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Element;

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    .line 199
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readCharacters(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/CharacterData;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_1
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Document;

    move-result-object v1

    goto :goto_0

    .line 203
    :cond_2
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isProcessingInstruction()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readProcessingInstruction(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v1

    goto :goto_0

    .line 205
    :cond_3
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEntityReference()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readEntityReference(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Entity;

    move-result-object v1

    goto :goto_0

    .line 207
    :cond_4
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readAttribute(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Attribute;

    move-result-object v1

    goto :goto_0

    .line 209
    :cond_5
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isNamespace()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 210
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readNamespace(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Namespace;

    move-result-object v1

    goto :goto_0

    .line 212
    :cond_6
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unsupported event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readProcessingInstruction(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/ProcessingInstruction;
    .locals 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 494
    .local v0, event:Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isProcessingInstruction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 495
    check-cast v1, Ljavax/xml/stream/events/ProcessingInstruction;

    .line 498
    .local v1, pi:Ljavax/xml/stream/events/ProcessingInstruction;
    invoke-virtual {p0, v1}, Lorg/dom4j/io/STAXEventReader;->createProcessingInstruction(Ljavax/xml/stream/events/ProcessingInstruction;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v2

    return-object v2

    .line 500
    .end local v1           #pi:Ljavax/xml/stream/events/ProcessingInstruction;
    :cond_0
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Expected PI event, found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 1
    .parameter "documentFactory"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    goto :goto_0
.end method
