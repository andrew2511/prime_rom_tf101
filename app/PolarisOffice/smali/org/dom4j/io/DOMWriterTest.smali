.class public Lorg/dom4j/io/DOMWriterTest;
.super Lorg/dom4j/AbstractTestCase;
.source "DOMWriterTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field static class$1:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 25
    sget-object v0, Lorg/dom4j/io/DOMWriterTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.io.DOMWriterTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/DOMWriterTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 26
    return-void

    .line 25
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testBug905745()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    const-string v5, "/xml/namespaces.xml"

    invoke-virtual {p0, v5}, Lorg/dom4j/io/DOMWriterTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 43
    .local v1, doc:Lorg/dom4j/Document;
    new-instance v4, Lorg/dom4j/io/DOMWriter;

    invoke-direct {v4}, Lorg/dom4j/io/DOMWriter;-><init>()V

    .line 44
    .local v4, writer:Lorg/dom4j/io/DOMWriter;
    invoke-virtual {v4, v1}, Lorg/dom4j/io/DOMWriter;->write(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 46
    .local v2, result:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 47
    .local v0, atts:Lorg/w3c/dom/NamedNodeMap;
    const-string v5, "version"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 48
    .local v3, versionAttr:Lorg/w3c/dom/Node;
    invoke-static {v3}, Lorg/dom4j/io/DOMWriterTest;->assertNotNull(Ljava/lang/Object;)V

    .line 49
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/dom4j/io/DOMWriterTest;->assertNotNull(Ljava/lang/Object;)V

    .line 50
    const-string v5, "version"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/dom4j/io/DOMWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v5, "version"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/dom4j/io/DOMWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public testBug926752()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 55
    const-string v7, "/xml/test/defaultNamespace.xml"

    invoke-virtual {p0, v7}, Lorg/dom4j/io/DOMWriterTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 56
    .local v1, doc:Lorg/dom4j/Document;
    new-instance v6, Lorg/dom4j/io/DOMWriter;

    sget-object v7, Lorg/dom4j/io/DOMWriterTest;->class$1:Ljava/lang/Class;

    if-nez v7, :cond_0

    :try_start_0
    const-string v7, "org.dom4j.dom.DOMDocument"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    sput-object v7, Lorg/dom4j/io/DOMWriterTest;->class$1:Ljava/lang/Class;

    :cond_0
    invoke-direct {v6, v7}, Lorg/dom4j/io/DOMWriter;-><init>(Ljava/lang/Class;)V

    .line 57
    .local v6, writer:Lorg/dom4j/io/DOMWriter;
    invoke-virtual {v6, v1}, Lorg/dom4j/io/DOMWriter;->write(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 59
    .local v3, result:Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 60
    .local v0, atts:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    invoke-static {v8, v7}, Lorg/dom4j/io/DOMWriterTest;->assertEquals(II)V

    .line 62
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createCompactFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v2

    .line 63
    .local v2, format:Lorg/dom4j/io/OutputFormat;
    invoke-virtual {v2, v8}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    .line 65
    new-instance v5, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v5, v2}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    .line 66
    .local v5, wr:Lorg/dom4j/io/XMLWriter;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 67
    .local v4, strWriter:Ljava/io/StringWriter;
    invoke-virtual {v5, v4}, Lorg/dom4j/io/XMLWriter;->setWriter(Ljava/io/Writer;)V

    .line 68
    check-cast v3, Lorg/dom4j/Document;

    .end local v3           #result:Lorg/w3c/dom/Document;
    invoke-virtual {v5, v3}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 69
    const-string v7, "<a xmlns=\"dummyNamespace\"><b><c>Hello</c></b></a>"

    .line 70
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-static {v7, v8}, Lorg/dom4j/io/DOMWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 56
    .end local v0           #atts:Lorg/w3c/dom/NamedNodeMap;
    .end local v2           #format:Lorg/dom4j/io/OutputFormat;
    .end local v4           #strWriter:Ljava/io/StringWriter;
    .end local v5           #wr:Lorg/dom4j/io/XMLWriter;
    .end local v6           #writer:Lorg/dom4j/io/DOMWriter;
    :catch_0
    move-exception v7

    new-instance v8, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public testNamespaceBug()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    const-string v5, "/xml/namespaces.xml"

    invoke-virtual {p0, v5}, Lorg/dom4j/io/DOMWriterTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 30
    .local v1, doc:Lorg/dom4j/Document;
    new-instance v4, Lorg/dom4j/io/DOMWriter;

    sget-object v5, Lorg/dom4j/io/DOMWriterTest;->class$1:Ljava/lang/Class;

    if-nez v5, :cond_0

    :try_start_0
    const-string v5, "org.dom4j.dom.DOMDocument"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    sput-object v5, Lorg/dom4j/io/DOMWriterTest;->class$1:Ljava/lang/Class;

    :cond_0
    invoke-direct {v4, v5}, Lorg/dom4j/io/DOMWriter;-><init>(Ljava/lang/Class;)V

    .line 31
    .local v4, writer:Lorg/dom4j/io/DOMWriter;
    invoke-virtual {v4, v1}, Lorg/dom4j/io/DOMWriter;->write(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 33
    .local v2, result:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 34
    .local v0, atts:Lorg/w3c/dom/NamedNodeMap;
    const/4 v5, 0x4

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    invoke-static {v5, v6}, Lorg/dom4j/io/DOMWriterTest;->assertEquals(II)V

    .line 36
    new-instance v3, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v3}, Lorg/dom4j/io/XMLWriter;-><init>()V

    .line 37
    .local v3, wr:Lorg/dom4j/io/XMLWriter;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v5}, Lorg/dom4j/io/XMLWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 38
    check-cast v2, Lorg/dom4j/Document;

    .end local v2           #result:Lorg/w3c/dom/Document;
    invoke-virtual {v3, v2}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 39
    return-void

    .line 30
    .end local v0           #atts:Lorg/w3c/dom/NamedNodeMap;
    .end local v3           #wr:Lorg/dom4j/io/XMLWriter;
    .end local v4           #writer:Lorg/dom4j/io/DOMWriter;
    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method
