.class public Lorg/dom4j/tree/DefaultElementTest;
.super Lorg/dom4j/AbstractTestCase;
.source "DefaultElementTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
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
    .line 27
    sget-object v0, Lorg/dom4j/tree/DefaultElementTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.tree.DefaultElementTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/DefaultElementTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 28
    return-void

    .line 27
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testAdditionalNamespaces()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 106
    const-string v5, "<a xmlns:ns1=\"uri1\">    <ns1:b/>    <ns2:c xmlns:ns2=\"uri2\"/></a>"

    .line 108
    .local v5, xml:Ljava/lang/String;
    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v3

    .line 110
    .local v3, doc:Lorg/dom4j/Document;
    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 111
    .local v0, a:Lorg/dom4j/Element;
    invoke-interface {v0}, Lorg/dom4j/Element;->additionalNamespaces()Ljava/util/List;

    move-result-object v4

    .line 112
    .local v4, ns:Ljava/util/List;
    const/4 v6, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(II)V

    .line 113
    const-string v6, "ns1"

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v6

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/dom4j/tree/DefaultElementTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    const-string v6, "b"

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 116
    .local v1, b:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->additionalNamespaces()Ljava/util/List;

    move-result-object v4

    .line 117
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v8, v6}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(II)V

    .line 119
    const-string v6, "c"

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 120
    .local v2, c:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->additionalNamespaces()Ljava/util/List;

    move-result-object v4

    .line 121
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v8, v6}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(II)V

    .line 122
    return-void
.end method

.method public testBug894878()V
    .locals 4

    .prologue
    .line 59
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    const-string v2, "foo"

    invoke-virtual {v1, v2}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 60
    .local v0, foo:Lorg/dom4j/Element;
    const-string v1, "bla"

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    const-string v2, "foo"

    const-string v3, "bar"

    invoke-interface {v1, v2, v3}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 61
    const-string v1, "<foo foo=\"bar\">bla</foo>"

    invoke-interface {v0}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    const-string v2, "foo"

    invoke-virtual {v1, v2}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 64
    const-string v1, "foo"

    const-string v2, "bar"

    invoke-interface {v0, v1, v2}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    const-string v2, "bla"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 65
    const-string v1, "<foo foo=\"bar\">bla</foo>"

    invoke-interface {v0}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public testDeclaredNamespaces()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 86
    const-string v5, "<a xmlns:ns1=\"uri1\">    <ns1:b/>    <ns2:c xmlns:ns2=\"uri2\"/></a>"

    .line 88
    .local v5, xml:Ljava/lang/String;
    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v3

    .line 90
    .local v3, doc:Lorg/dom4j/Document;
    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 91
    .local v0, a:Lorg/dom4j/Element;
    invoke-interface {v0}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v4

    .line 92
    .local v4, ns:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v9, v6}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(II)V

    .line 93
    const-string v6, "ns1"

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v6

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/dom4j/tree/DefaultElementTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    const-string v6, "b"

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 96
    .local v1, b:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v4

    .line 97
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v8, v6}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(II)V

    .line 99
    const-string v6, "c"

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 100
    .local v2, c:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v4

    .line 101
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v9, v6}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(II)V

    .line 102
    const-string v6, "ns2"

    invoke-interface {v2, v6}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v6

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/dom4j/tree/DefaultElementTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public testGetNamespacesForURI()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    const-string v3, "<schema targetNamespace=\'http://SharedTest.org/xsd\'         xmlns=\'http://www.w3.org/2001/XMLSchema\'         xmlns:xsd=\'http://www.w3.org/2001/XMLSchema\'>    <complexType name=\'AllStruct\'>        <all>            <element name=\'arString\' type=\'xsd:string\'/>            <element name=\'varInt\' type=\'xsd:int\'/>        </all>    </complexType></schema>"

    .line 76
    .local v3, xml:Ljava/lang/String;
    invoke-static {v3}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 77
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 79
    .local v2, schema:Lorg/dom4j/Element;
    const-string v4, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v2, v4}, Lorg/dom4j/Element;->getNamespacesForURI(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, namespaces:Ljava/util/List;
    invoke-static {v1}, Lorg/dom4j/tree/DefaultElementTest;->assertNotNull(Ljava/lang/Object;)V

    .line 82
    const/4 v4, 0x2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(II)V

    .line 83
    return-void
.end method

.method public testGetStringValue()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    const-string v4, "xml/test/test_text.xml"

    invoke-virtual {p0, v4}, Lorg/dom4j/tree/DefaultElementTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 48
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 50
    .local v1, message:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getStringValue()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, text:Ljava/lang/String;
    const-string v4, "String value incorrect"

    const-string v5, "This should work"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v4, "normalize-space(/message)"

    invoke-interface {v0, v4}, Lorg/dom4j/Document;->selectObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, xpathText:Ljava/lang/String;
    const-string v4, "xpath value incorrect"

    const-string v5, "This should work"

    invoke-static {v4, v5, v3}, Lorg/dom4j/tree/DefaultElementTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public testParentAfterSetContent()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    const-string v5, "<root><a>a</a><b>b</b><x>x</x><d>d</d></root>"

    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v2

    .line 35
    .local v2, doc:Lorg/dom4j/Document;
    const-string v5, "/root/x"

    invoke-interface {v2, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v4

    .line 36
    .local v4, x:Lorg/dom4j/Node;
    invoke-interface {v2}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v1

    .line 37
    .local v1, content:Ljava/util/List;
    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 38
    .local v3, position:I
    const-string v5, "c"

    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 39
    .local v0, c:Lorg/dom4j/Element;
    const-string v5, "c"

    invoke-interface {v0, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 40
    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41
    invoke-interface {v0}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v5

    invoke-static {v5}, Lorg/dom4j/tree/DefaultElementTest;->assertNotNull(Ljava/lang/Object;)V

    .line 42
    invoke-interface {v2}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/dom4j/Element;->setContent(Ljava/util/List;)V

    .line 43
    const-string v5, "Parent is null of setting content"

    invoke-interface {v0}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/dom4j/tree/DefaultElementTest;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    return-void
.end method
