.class public Lorg/dom4j/tree/DefaultDocumentTest;
.super Lorg/dom4j/AbstractTestCase;
.source "DefaultDocumentTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 30
    sget-object v0, Lorg/dom4j/tree/DefaultDocumentTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.tree.DefaultDocumentTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/DefaultDocumentTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 31
    return-void

    .line 30
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testAsXMLWithEncoding()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 62
    new-instance v1, Lorg/dom4j/tree/DefaultDocument;

    invoke-direct {v1}, Lorg/dom4j/tree/DefaultDocument;-><init>()V

    .line 63
    .local v1, document:Lorg/dom4j/tree/DefaultDocument;
    const-string v4, "root"

    invoke-virtual {v1, v4}, Lorg/dom4j/tree/DefaultDocument;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 64
    const-string v4, "ISO-8859-1"

    invoke-virtual {v1, v4}, Lorg/dom4j/tree/DefaultDocument;->setXMLEncoding(Ljava/lang/String;)V

    .line 66
    const-string v4, "<?xml version=\'1.0\' encoding=\'ISO-8859-1\'?><root/>"

    invoke-static {v4}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 69
    .local v0, doc:Lorg/dom4j/Document;
    invoke-virtual {v1}, Lorg/dom4j/tree/DefaultDocument;->asXML()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, xml1:Ljava/lang/String;
    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, xml2:Ljava/lang/String;
    const-string v4, "ISO-8859-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_0

    move v4, v7

    :goto_0
    invoke-static {v4}, Lorg/dom4j/tree/DefaultDocumentTest;->assertTrue(Z)V

    .line 73
    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_1

    move v4, v7

    :goto_1
    invoke-static {v4}, Lorg/dom4j/tree/DefaultDocumentTest;->assertTrue(Z)V

    .line 74
    return-void

    :cond_0
    move v4, v6

    .line 72
    goto :goto_0

    :cond_1
    move v4, v6

    .line 73
    goto :goto_1
.end method

.method public testAsXMLWithEncodingAndContent()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 85
    new-instance v0, Lorg/dom4j/tree/DefaultDocument;

    invoke-direct {v0}, Lorg/dom4j/tree/DefaultDocument;-><init>()V

    .line 86
    .local v0, document:Lorg/dom4j/tree/DefaultDocument;
    const-string v3, "UTF-16"

    invoke-virtual {v0, v3}, Lorg/dom4j/tree/DefaultDocument;->setXMLEncoding(Ljava/lang/String;)V

    .line 87
    const-string v3, "root"

    invoke-virtual {v0, v3}, Lorg/dom4j/tree/DefaultDocument;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 88
    .local v1, root:Lorg/dom4j/Element;
    const-string v3, "text with an \u00fc in it"

    invoke-interface {v1, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lorg/dom4j/tree/DefaultDocument;->asXML()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, xml:Ljava/lang/String;
    const-string v3, "UTF-16"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    move v3, v6

    :goto_0
    invoke-static {v3}, Lorg/dom4j/tree/DefaultDocumentTest;->assertTrue(Z)V

    .line 92
    const/16 v3, 0xfc

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_1

    move v3, v6

    :goto_1
    invoke-static {v3}, Lorg/dom4j/tree/DefaultDocumentTest;->assertTrue(Z)V

    .line 93
    return-void

    :cond_0
    move v3, v5

    .line 91
    goto :goto_0

    :cond_1
    move v3, v5

    .line 92
    goto :goto_1
.end method

.method public testBug1156909()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    const-string v1, "<?xml version=\'1.0\' encoding=\'ISO-8859-1\'?><root/>"

    invoke-static {v1}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 80
    .local v0, doc:Lorg/dom4j/Document;
    const-string v1, "XMLEncoding not correct"

    const-string v2, "ISO-8859-1"

    .line 81
    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v1, v2, v3}, Lorg/dom4j/tree/DefaultDocumentTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public testBug799656()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 53
    .local v0, document:Lorg/dom4j/Document;
    const-string v2, "root"

    invoke-interface {v0, v2}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 54
    .local v1, el:Lorg/dom4j/Element;
    const-string v2, "text with an \u00fc in it"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 56
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    .line 59
    return-void
.end method

.method public testDoubleRootElement()V
    .locals 6

    .prologue
    .line 36
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 37
    .local v0, document:Lorg/dom4j/Document;
    const-string v4, "root"

    invoke-interface {v0, v4}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 39
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v4

    .line 40
    const-string v5, "anotherRoot"

    .line 39
    invoke-virtual {v4, v5}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 43
    .local v3, root:Lorg/dom4j/Element;
    :try_start_0
    invoke-interface {v0, v3}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 44
    invoke-static {}, Lorg/dom4j/tree/DefaultDocumentTest;->fail()V
    :try_end_0
    .catch Lorg/dom4j/IllegalAddException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 46
    .local v1, e:Lorg/dom4j/IllegalAddException;
    invoke-virtual {v1}, Lorg/dom4j/IllegalAddException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, msg:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lorg/dom4j/tree/DefaultDocumentTest;->assertTrue(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public testEncoding()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v7

    .line 97
    const-string v8, "koi8-r"

    .line 96
    invoke-virtual {v7, v8}, Lorg/dom4j/DocumentFactory;->createDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 98
    .local v1, document:Lorg/dom4j/Document;
    const-string v7, "root"

    invoke-interface {v1, v7}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 99
    .local v2, el:Lorg/dom4j/Element;
    const-string v7, "text with an \u00fc in it"

    invoke-interface {v2, v7}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 101
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v3

    .line 105
    .local v3, of:Lorg/dom4j/io/OutputFormat;
    const-string v7, "koi8-r"

    invoke-virtual {v3, v7}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 107
    new-instance v6, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v6, v4, v3}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 108
    .local v6, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v6, v1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 110
    const-string v7, "koi8-r"

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, result:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 116
    .local v0, doc2:Lorg/dom4j/Document;
    return-void
.end method
