.class public Lorg/dom4j/SAXContentHandlerTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SAXContentHandlerTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field protected testDocuments:[Ljava/lang/String;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/xml/test/test_schema.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 25
    const-string v2, "/xml/test/encode.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/xml/fibo.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 26
    const-string v2, "/xml/test/schema/personal-prefix.xsd"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/xml/test/soap2.xml"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/dom4j/SAXContentHandlerTest;->testDocuments:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 29
    sget-object v0, Lorg/dom4j/SAXContentHandlerTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.SAXContentHandlerTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/SAXContentHandlerTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 30
    return-void

    .line 29
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 35
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 36
    .local v1, spf:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 38
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 39
    .local v0, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/SAXContentHandlerTest;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 40
    return-void
.end method

.method public testBug926713()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 65
    const-string v4, "/xml/test/cdata.xml"

    invoke-virtual {p0, v4}, Lorg/dom4j/SAXContentHandlerTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v2

    .line 66
    .local v2, doc:Lorg/dom4j/Document;
    invoke-interface {v2}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 67
    .local v3, foo:Lorg/dom4j/Element;
    const-string v4, "bar"

    invoke-interface {v3, v4}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 68
    .local v0, bar:Lorg/dom4j/Element;
    invoke-interface {v0}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, content:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v6, v4}, Lorg/dom4j/SAXContentHandlerTest;->assertEquals(II)V

    .line 70
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/Node;

    invoke-interface {p0}, Lorg/dom4j/Node;->getNodeType()S

    move-result v4

    invoke-static {v6, v4}, Lorg/dom4j/SAXContentHandlerTest;->assertEquals(SS)V

    .line 71
    const/4 v4, 0x4

    .line 72
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/dom4j/Node;

    invoke-interface {p0}, Lorg/dom4j/Node;->getNodeType()S

    move-result v5

    .line 71
    invoke-static {v4, v5}, Lorg/dom4j/SAXContentHandlerTest;->assertEquals(SS)V

    .line 73
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/dom4j/Node;

    invoke-interface {p0}, Lorg/dom4j/Node;->getNodeType()S

    move-result v4

    invoke-static {v6, v4}, Lorg/dom4j/SAXContentHandlerTest;->assertEquals(SS)V

    .line 74
    return-void
.end method

.method public testSAXContentHandler()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lorg/dom4j/io/SAXContentHandler;

    invoke-direct {v0}, Lorg/dom4j/io/SAXContentHandler;-><init>()V

    .line 44
    .local v0, contentHandler:Lorg/dom4j/io/SAXContentHandler;
    iget-object v5, p0, Lorg/dom4j/SAXContentHandlerTest;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v5, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 45
    iget-object v5, p0, Lorg/dom4j/SAXContentHandlerTest;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v5, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 46
    iget-object v5, p0, Lorg/dom4j/SAXContentHandlerTest;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v6, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v5, v6, v0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v5, p0, Lorg/dom4j/SAXContentHandlerTest;->testDocuments:[Ljava/lang/String;

    array-length v4, v5

    .local v4, size:I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 62
    return-void

    .line 50
    :cond_0
    iget-object v5, p0, Lorg/dom4j/SAXContentHandlerTest;->testDocuments:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {p0, v5}, Lorg/dom4j/SAXContentHandlerTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v2

    .line 52
    .local v2, docFromSAXReader:Lorg/dom4j/Document;
    iget-object v5, p0, Lorg/dom4j/SAXContentHandlerTest;->xmlReader:Lorg/xml/sax/XMLReader;

    iget-object v6, p0, Lorg/dom4j/SAXContentHandlerTest;->testDocuments:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {p0, v6}, Lorg/dom4j/SAXContentHandlerTest;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 56
    .local v1, docFromSAXContentHandler:Lorg/dom4j/Document;
    invoke-interface {v2}, Lorg/dom4j/Document;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v2, v1}, Lorg/dom4j/SAXContentHandlerTest;->assertDocumentsEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 59
    invoke-interface {v2}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-interface {v1}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-static {v5, v6}, Lorg/dom4j/SAXContentHandlerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
