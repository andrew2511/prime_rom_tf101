.class public Lorg/dom4j/NamespaceTest;
.super Lorg/dom4j/AbstractTestCase;
.source "NamespaceTest.java"


# static fields
.field private static final INPUT_XML_FILE:Ljava/lang/String; = "/xml/namespaces.xml"

.field private static final XSL_NAMESPACE:Lorg/dom4j/Namespace;

.field private static final XSL_TEMPLATE:Lorg/dom4j/QName;

.field static class$0:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "xsl"

    .line 31
    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    .line 30
    invoke-static {v0, v1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    sput-object v0, Lorg/dom4j/NamespaceTest;->XSL_NAMESPACE:Lorg/dom4j/Namespace;

    .line 33
    const-string v0, "template"

    .line 34
    sget-object v1, Lorg/dom4j/NamespaceTest;->XSL_NAMESPACE:Lorg/dom4j/Namespace;

    .line 33
    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/NamespaceTest;->XSL_TEMPLATE:Lorg/dom4j/QName;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 37
    sget-object v0, Lorg/dom4j/NamespaceTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.NamespaceTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/NamespaceTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 38
    return-void

    .line 37
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public debugShowNamespaces()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/dom4j/NamespaceTest;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 45
    .local v2, root:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->elementIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    return-void

    .line 46
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 48
    .local v0, element:Lorg/dom4j/Element;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Found element:    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/NamespaceTest;->log(Ljava/lang/String;)V

    .line 49
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Namespace:        "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/NamespaceTest;->log(Ljava/lang/String;)V

    .line 50
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Namespace prefix: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/NamespaceTest;->log(Ljava/lang/String;)V

    .line 51
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Namespace URI:    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/NamespaceTest;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getRootElement()Lorg/dom4j/Element;
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lorg/dom4j/NamespaceTest;->document:Lorg/dom4j/Document;

    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 134
    .local v0, root:Lorg/dom4j/Element;
    const-string v1, "Document has root element"

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Lorg/dom4j/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    .line 136
    return-object v0

    .line 134
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 124
    const-string v0, "/xml/namespaces.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespaceTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/NamespaceTest;->document:Lorg/dom4j/Document;

    .line 125
    return-void
.end method

.method public testElementIterator()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/dom4j/NamespaceTest;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 79
    .local v2, root:Lorg/dom4j/Element;
    sget-object v3, Lorg/dom4j/NamespaceTest;->XSL_TEMPLATE:Lorg/dom4j/QName;

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v1

    .line 81
    .local v1, iter:Ljava/util/Iterator;
    const-string v3, "Root element contains at least one <xsl:template/> element"

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 80
    invoke-static {v3, v4}, Lorg/dom4j/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    .line 85
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 86
    .local v0, element:Lorg/dom4j/Element;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Found element: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/NamespaceTest;->log(Ljava/lang/String;)V

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 84
    if-nez v3, :cond_0

    .line 88
    return-void
.end method

.method public testGetElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/dom4j/NamespaceTest;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 58
    .local v1, root:Lorg/dom4j/Element;
    sget-object v2, Lorg/dom4j/NamespaceTest;->XSL_TEMPLATE:Lorg/dom4j/QName;

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 60
    .local v0, firstTemplate:Lorg/dom4j/Element;
    const-string v2, "Root element contains at least one <xsl:template/> element"

    .line 61
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 59
    :goto_0
    invoke-static {v2, v3}, Lorg/dom4j/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    .line 63
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Found element: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/NamespaceTest;->log(Ljava/lang/String;)V

    .line 64
    return-void

    .line 61
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public testGetElements()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/dom4j/NamespaceTest;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 69
    .local v1, root:Lorg/dom4j/Element;
    sget-object v2, Lorg/dom4j/NamespaceTest;->XSL_TEMPLATE:Lorg/dom4j/QName;

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, list:Ljava/util/List;
    const-string v2, "Root element contains at least one <xsl:template/> element"

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    .line 70
    :goto_0
    invoke-static {v2, v3}, Lorg/dom4j/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    .line 74
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Found elements: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/NamespaceTest;->log(Ljava/lang/String;)V

    .line 75
    return-void

    .line 72
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public testNamespaceUriMap()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v3, uris:Ljava/util/Map;
    const-string v5, "x"

    const-string v6, "fooNamespace"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v5, "y"

    const-string v6, "barNamespace"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Lorg/dom4j/DocumentFactory;

    invoke-direct {v1}, Lorg/dom4j/DocumentFactory;-><init>()V

    .line 103
    .local v1, factory:Lorg/dom4j/DocumentFactory;
    invoke-virtual {v1, v3}, Lorg/dom4j/DocumentFactory;->setXPathNamespaceURIs(Ljava/util/Map;)V

    .line 106
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 107
    .local v2, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v2, v1}, Lorg/dom4j/io/SAXReader;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 109
    const-string v5, "/xml/test/nestedNamespaces.xml"

    invoke-virtual {p0, v5, v2}, Lorg/dom4j/NamespaceTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 113
    .local v0, doc:Lorg/dom4j/Document;
    const-string v5, "/x:pizza/y:cheese/x:pepper"

    invoke-interface {v0, v5}, Lorg/dom4j/Document;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, value:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Found value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/NamespaceTest;->log(Ljava/lang/String;)V

    .line 117
    const-string v5, "XPath used default namesapce URIS"

    const-string v6, "works"

    invoke-static {v5, v6, v4}, Lorg/dom4j/NamespaceTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method
