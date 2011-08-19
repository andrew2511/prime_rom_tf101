.class public Lorg/dom4j/NamespacesTest;
.super Lorg/dom4j/AbstractTestCase;
.source "NamespacesTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 31
    sget-object v0, Lorg/dom4j/NamespacesTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.NamespacesTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/NamespacesTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 32
    return-void

    .line 31
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ns"
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    const-string v0, "namespace prefix"

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/dom4j/NamespacesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "namespace URI"

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lorg/dom4j/NamespacesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method protected assertNamespaces(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "elements"
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    return-void

    .line 309
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 310
    .local v0, element:Lorg/dom4j/Element;
    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected domRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;
    .locals 7
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 294
    .local v3, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 296
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 297
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Lorg/xml/sax/InputSource;

    .line 298
    new-instance v5, Ljava/io/StringReader;

    invoke-interface {p1}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 297
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 301
    .local v1, domDocument:Lorg/w3c/dom/Document;
    new-instance v2, Lorg/dom4j/io/DOMReader;

    invoke-direct {v2}, Lorg/dom4j/io/DOMReader;-><init>()V

    .line 303
    .local v2, domReader:Lorg/dom4j/io/DOMReader;
    invoke-virtual {v2, v1}, Lorg/dom4j/io/DOMReader;->read(Lorg/w3c/dom/Document;)Lorg/dom4j/Document;

    move-result-object v4

    return-object v4
.end method

.method protected saxRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;
    .locals 1
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 289
    invoke-interface {p1}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 285
    const-string v0, "/xml/test/test_schema.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/NamespacesTest;->document:Lorg/dom4j/Document;

    .line 286
    return-void
.end method

.method public testAttributeDefaultPrefix()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    const-string v1, "/xml/test/soap3.xml"

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 150
    .local v0, document:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testAttributeDefaultPrefix(Lorg/dom4j/Document;)V

    .line 151
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->saxRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->testAttributeDefaultPrefix(Lorg/dom4j/Document;)V

    .line 152
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->domRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->testAttributeDefaultPrefix(Lorg/dom4j/Document;)V

    .line 153
    return-void
.end method

.method public testAttributeDefaultPrefix(Lorg/dom4j/Document;)V
    .locals 11
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 156
    const-string v7, "//@*[local-name()=\'actor\']"

    invoke-interface {p1, v7}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 158
    .local v3, list:Ljava/util/List;
    const-string v7, "Matched at least one \'actor\' attribute"

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    move v8, v10

    :goto_0
    invoke-static {v7, v8}, Lorg/dom4j/NamespacesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 160
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 178
    return-void

    .end local v2           #iter:Ljava/util/Iterator;
    :cond_0
    move v8, v9

    .line 158
    goto :goto_0

    .line 161
    .restart local v2       #iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 163
    .local v0, attribute:Lorg/dom4j/Attribute;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "found: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/dom4j/Attribute;->asXML()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/dom4j/NamespacesTest;->log(Ljava/lang/String;)V

    .line 165
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    .line 166
    .local v1, element:Lorg/dom4j/Element;
    const-string v7, "Attribute has a parent"

    if-eqz v1, :cond_2

    move v8, v10

    :goto_2
    invoke-static {v7, v8}, Lorg/dom4j/NamespacesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 168
    const-string v7, ""

    invoke-interface {v1, v7}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v4

    .line 170
    .local v4, ns:Lorg/dom4j/Namespace;
    const-string v6, "http://schemas.xmlsoap.org/soap/envelope/"

    .line 171
    .local v6, uri:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {p0, v4, v7, v6}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v5

    .line 176
    .local v5, ns2:Lorg/dom4j/Namespace;
    const-string v7, ""

    const-string v8, ""

    invoke-virtual {p0, v5, v7, v8}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v4           #ns:Lorg/dom4j/Namespace;
    .end local v5           #ns2:Lorg/dom4j/Namespace;
    .end local v6           #uri:Ljava/lang/String;
    :cond_2
    move v8, v9

    .line 166
    goto :goto_2
.end method

.method public testDefaultNamespace()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 266
    .local v0, doc:Lorg/dom4j/Document;
    const-string v4, "process-definition"

    .line 267
    const-string v5, "http://jbpm.org/statedefinition-2.0-beta3"

    .line 266
    invoke-interface {v0, v4, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 268
    .local v1, processDef:Lorg/dom4j/Element;
    const-string v4, "start-state"

    invoke-interface {v1, v4}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 269
    .local v2, startState:Lorg/dom4j/Element;
    const-string v4, "name"

    const-string v5, "start"

    invoke-interface {v2, v4, v5}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 271
    const-string v4, "transition"

    invoke-interface {v2, v4}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 272
    .local v3, transition:Lorg/dom4j/Element;
    const-string v4, "to"

    const-string v5, "first"

    invoke-interface {v3, v4, v5}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 274
    const-string v4, "http://jbpm.org/statedefinition-2.0-beta3"

    .line 275
    invoke-interface {v2}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v5

    invoke-virtual {v5}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-static {v4, v5}, Lorg/dom4j/NamespacesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v4, ""

    invoke-interface {v2}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v5

    invoke-virtual {v5}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/dom4j/NamespacesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public testDefaultNamespaceIssue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    const-string v1, "/xml/test/defaultNamespaceIssue.xsd"

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 229
    .local v0, document:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testDefaultNamespaceIssue(Lorg/dom4j/Document;)V

    .line 230
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->saxRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->testDefaultNamespaceIssue(Lorg/dom4j/Document;)V

    .line 231
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->domRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->testDefaultNamespaceIssue(Lorg/dom4j/Document;)V

    .line 232
    return-void
.end method

.method public testDefaultNamespaceIssue(Lorg/dom4j/Document;)V
    .locals 5
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 241
    const-string v0, "/xsd:schema/xsd:element/xsd:annotation/xsd:documentation/text"

    .line 242
    .local v0, expr:Ljava/lang/String;
    const-string v3, "default namespace redeclaration"

    .line 243
    invoke-interface {p1, v0}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object p0

    .line 242
    .end local p0
    check-cast p0, Lorg/dom4j/Element;

    invoke-static {v3, p0}, Lorg/dom4j/NamespacesTest;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v3

    .line 250
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    const-string v3, "Default namespace declaration not present on root element"

    invoke-static {v3}, Lorg/dom4j/NamespacesTest;->fail(Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Namespace;

    .line 255
    .local v2, ns:Lorg/dom4j/Namespace;
    const-string v3, "urn:wapforum:devicesheet"

    invoke-virtual {v2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const-string v3, ""

    invoke-virtual {v2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public testNamespaceForDefaultPrefix()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    const-string v1, "/xml/test/defaultNamespace.xml"

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 128
    .local v0, document:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testNamespaceForDefaultPrefix(Lorg/dom4j/Document;)V

    .line 129
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->saxRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->testNamespaceForDefaultPrefix(Lorg/dom4j/Document;)V

    .line 130
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->domRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->testNamespaceForDefaultPrefix(Lorg/dom4j/Document;)V

    .line 131
    return-void
.end method

.method public testNamespaceForDefaultPrefix(Lorg/dom4j/Document;)V
    .locals 6
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    const-string v4, "//*"

    invoke-interface {p1, v4}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    return-void

    .line 138
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 139
    .local v0, element:Lorg/dom4j/Element;
    const-string v4, ""

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v3

    .line 140
    .local v3, ns:Lorg/dom4j/Namespace;
    const-string v4, ""

    const-string v5, "dummyNamespace"

    invoke-virtual {p0, v3, v4, v5}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v3

    .line 142
    const-string v4, ""

    const-string v5, "dummyNamespace"

    invoke-virtual {p0, v3, v4, v5}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/dom4j/Namespace;->asXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/NamespacesTest;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public testNamespaceForPrefix()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/dom4j/NamespacesTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testNamespaceForPrefix(Lorg/dom4j/Document;)V

    .line 106
    iget-object v0, p0, Lorg/dom4j/NamespacesTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->saxRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testNamespaceForPrefix(Lorg/dom4j/Document;)V

    .line 107
    iget-object v0, p0, Lorg/dom4j/NamespacesTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->domRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testNamespaceForPrefix(Lorg/dom4j/Document;)V

    .line 108
    return-void
.end method

.method public testNamespaceForPrefix(Lorg/dom4j/Document;)V
    .locals 7
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 112
    .local v3, root:Lorg/dom4j/Element;
    const-string v4, "t"

    invoke-interface {v3, v4}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    .line 114
    .local v1, ns:Lorg/dom4j/Namespace;
    const-string v4, "t"

    const-string v5, "http://www.w3.org/namespace/"

    invoke-virtual {p0, v1, v4, v5}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-interface {v3}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 117
    .local v0, element:Lorg/dom4j/Element;
    const-string v4, "t"

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v2

    .line 119
    .local v2, ns2:Lorg/dom4j/Namespace;
    const-string v4, "t"

    const-string v5, "http://www.w3.org/namespace/"

    invoke-virtual {p0, v2, v4, v5}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v4, "Same namespace instance returned"

    if-ne v1, v2, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/NamespacesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 122
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->asXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/NamespacesTest;->log(Ljava/lang/String;)V

    .line 123
    return-void

    :cond_0
    move v5, v6

    .line 120
    goto :goto_0
.end method

.method public testNamespaceForURI()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/dom4j/NamespacesTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testNamespaceForURI(Lorg/dom4j/Document;)V

    .line 182
    iget-object v0, p0, Lorg/dom4j/NamespacesTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->saxRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testNamespaceForURI(Lorg/dom4j/Document;)V

    .line 183
    iget-object v0, p0, Lorg/dom4j/NamespacesTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->domRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testNamespaceForURI(Lorg/dom4j/Document;)V

    .line 184
    return-void
.end method

.method public testNamespaceForURI(Lorg/dom4j/Document;)V
    .locals 7
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 189
    .local v3, root:Lorg/dom4j/Element;
    const-string v4, "http://www.w3.org/namespace/"

    invoke-interface {v3, v4}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    .line 191
    .local v1, ns:Lorg/dom4j/Namespace;
    const-string v4, "t"

    const-string v5, "http://www.w3.org/namespace/"

    invoke-virtual {p0, v1, v4, v5}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-interface {v3}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 195
    .local v0, element:Lorg/dom4j/Element;
    const-string v4, "http://www.w3.org/namespace/"

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v2

    .line 197
    .local v2, ns2:Lorg/dom4j/Namespace;
    const-string v4, "t"

    const-string v5, "http://www.w3.org/namespace/"

    invoke-virtual {p0, v2, v4, v5}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v4, "Same namespace instance returned"

    if-ne v1, v2, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/NamespacesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 201
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->asXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/NamespacesTest;->log(Ljava/lang/String;)V

    .line 202
    return-void

    :cond_0
    move v5, v6

    .line 199
    goto :goto_0
.end method

.method public testNamespaces()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/dom4j/NamespacesTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testNamespaces(Lorg/dom4j/Document;)V

    .line 38
    iget-object v0, p0, Lorg/dom4j/NamespacesTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->saxRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testNamespaces(Lorg/dom4j/Document;)V

    .line 39
    iget-object v0, p0, Lorg/dom4j/NamespacesTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->domRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testNamespaces(Lorg/dom4j/Document;)V

    .line 40
    return-void
.end method

.method public testNamespaces(Lorg/dom4j/Document;)V
    .locals 10
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 43
    invoke-interface {p1}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Document;

    .line 45
    .local v1, doc2:Lorg/dom4j/Document;
    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    .line 46
    .local v4, root:Lorg/dom4j/Element;
    invoke-interface {v4}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v5

    const-string v6, ""

    .line 47
    const-string v7, "http://www.w3.org/2001/XMLSchema"

    .line 46
    invoke-virtual {p0, v5, v6, v7}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v5, "xmlns=\"http://www.w3.org/2001/XMLSchema\""

    .line 49
    invoke-interface {v4}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v6

    invoke-virtual {v6}, Lorg/dom4j/Namespace;->asXML()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v5, "namespace::*[name()=\'\']"

    invoke-interface {v4}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v6

    invoke-virtual {v6}, Lorg/dom4j/Namespace;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v5, "namespace::*[name()=\'\']"

    .line 52
    invoke-interface {v4}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v6

    invoke-virtual {v6}, Lorg/dom4j/Namespace;->getUniquePath()Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v4}, Lorg/dom4j/Element;->additionalNamespaces()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, additionalNS:Ljava/util/List;
    const-string v5, "at least one additional namespace"

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    move v6, v9

    .line 55
    :goto_0
    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 58
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Namespace;

    .line 59
    .local v3, ns:Lorg/dom4j/Namespace;
    const-string v5, "t"

    const-string v6, "http://www.w3.org/namespace/"

    invoke-virtual {p0, v3, v5, v6}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v5, "xmlns:t=\"http://www.w3.org/namespace/\""

    invoke-virtual {v3}, Lorg/dom4j/Namespace;->asXML()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v5, "namespace::t"

    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v5, "namespace::t"

    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getUniquePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {v4, v8}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 65
    .local v2, node:Lorg/dom4j/Node;
    const-string v5, "First node is a namespace"

    instance-of v6, v2, Lorg/dom4j/Namespace;

    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 68
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->remove(Lorg/dom4j/Namespace;)Z

    .line 69
    const-string v5, "t"

    const-string v6, "myNewURI"

    invoke-interface {v4, v5, v6}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 71
    invoke-interface {v4}, Lorg/dom4j/Element;->additionalNamespaces()Ljava/util/List;

    move-result-object v0

    .line 72
    const-string v5, "at least one additional namespace"

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    move v6, v9

    .line 72
    :goto_1
    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 75
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ns:Lorg/dom4j/Namespace;
    check-cast v3, Lorg/dom4j/Namespace;

    .line 76
    .restart local v3       #ns:Lorg/dom4j/Namespace;
    const-string v5, "t"

    const-string v6, "myNewURI"

    invoke-virtual {p0, v3, v5, v6}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 80
    const-string v5, "t"

    const-string v6, "myNewURI-2"

    invoke-static {v5, v6}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v4}, Lorg/dom4j/Element;->additionalNamespaces()Ljava/util/List;

    move-result-object v0

    .line 83
    const-string v5, "at least one additional namespace"

    if-eqz v0, :cond_2

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    move v6, v9

    .line 83
    :goto_2
    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 86
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ns:Lorg/dom4j/Namespace;
    check-cast v3, Lorg/dom4j/Namespace;

    .line 87
    .restart local v3       #ns:Lorg/dom4j/Namespace;
    const-string v5, "t"

    const-string v6, "myNewURI-2"

    invoke-virtual {p0, v3, v5, v6}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    const-string v5, "t"

    const-string v6, "myNewURI"

    invoke-interface {v4, v5, v6}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 92
    invoke-interface {v4}, Lorg/dom4j/Element;->additionalNamespaces()Ljava/util/List;

    move-result-object v0

    .line 93
    const-string v5, "at least one additional namespace"

    if-eqz v0, :cond_3

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    move v6, v9

    .line 93
    :goto_3
    invoke-static {v5, v6}, Lorg/dom4j/NamespacesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 96
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ns:Lorg/dom4j/Namespace;
    check-cast v3, Lorg/dom4j/Namespace;

    .line 97
    .restart local v3       #ns:Lorg/dom4j/Namespace;
    const-string v5, "t"

    const-string v6, "myNewURI"

    invoke-virtual {p0, v3, v5, v6}, Lorg/dom4j/NamespacesTest;->assertNamespace(Lorg/dom4j/Namespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Namespaces: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/NamespacesTest;->log(Ljava/lang/String;)V

    .line 100
    const-string v5, "XML is now"

    invoke-virtual {p0, v5}, Lorg/dom4j/NamespacesTest;->log(Ljava/lang/String;)V

    .line 101
    invoke-interface {v4}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/NamespacesTest;->log(Ljava/lang/String;)V

    .line 102
    return-void

    .end local v2           #node:Lorg/dom4j/Node;
    .end local v3           #ns:Lorg/dom4j/Namespace;
    :cond_0
    move v6, v8

    .line 56
    goto/16 :goto_0

    .restart local v2       #node:Lorg/dom4j/Node;
    .restart local v3       #ns:Lorg/dom4j/Namespace;
    :cond_1
    move v6, v8

    .line 73
    goto/16 :goto_1

    :cond_2
    move v6, v8

    .line 84
    goto :goto_2

    :cond_3
    move v6, v8

    .line 94
    goto :goto_3
.end method

.method public testRedeclareNamespaces()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    const-string v1, "/xml/test/soap2.xml"

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 206
    .local v0, document:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->testRedeclareNamespaces(Lorg/dom4j/Document;)V

    .line 207
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->saxRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->testRedeclareNamespaces(Lorg/dom4j/Document;)V

    .line 208
    invoke-virtual {p0, v0}, Lorg/dom4j/NamespacesTest;->domRoundTrip(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/NamespacesTest;->testRedeclareNamespaces(Lorg/dom4j/Document;)V

    .line 209
    return-void
.end method

.method public testRedeclareNamespaces(Lorg/dom4j/Document;)V
    .locals 4
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    .line 213
    .local v0, uri:Ljava/lang/String;
    const-string v1, "//*[local-name()=\'Envelope\']"

    invoke-interface {p1, v1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 214
    const-string v2, "SOAP-ENV"

    .line 213
    invoke-virtual {p0, v1, v2, v0}, Lorg/dom4j/NamespacesTest;->assertNamespaces(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "//*[local-name()=\'Body\']"

    invoke-interface {p1, v1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 216
    const-string v2, "SOAP-ENV"

    .line 215
    invoke-virtual {p0, v1, v2, v0}, Lorg/dom4j/NamespacesTest;->assertNamespaces(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "//*[local-name()=\'bar\']"

    invoke-interface {p1, v1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "a"

    .line 218
    const-string v3, "barURI"

    .line 217
    invoke-virtual {p0, v1, v2, v3}, Lorg/dom4j/NamespacesTest;->assertNamespaces(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "//*[local-name()=\'newBar\']"

    invoke-interface {p1, v1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 220
    const-string v2, "a"

    const-string v3, "newBarURI"

    .line 219
    invoke-virtual {p0, v1, v2, v3}, Lorg/dom4j/NamespacesTest;->assertNamespaces(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "//*[local-name()=\'foo\']"

    invoke-interface {p1, v1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    .line 222
    const-string v3, "fooURI"

    .line 221
    invoke-virtual {p0, v1, v2, v3}, Lorg/dom4j/NamespacesTest;->assertNamespaces(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "//*[local-name()=\'newFoo\']"

    invoke-interface {p1, v1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 224
    const-string v2, ""

    const-string v3, "newFooURI"

    .line 223
    invoke-virtual {p0, v1, v2, v3}, Lorg/dom4j/NamespacesTest;->assertNamespaces(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method
