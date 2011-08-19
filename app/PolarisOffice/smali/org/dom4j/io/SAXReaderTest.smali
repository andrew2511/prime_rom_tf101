.class public Lorg/dom4j/io/SAXReaderTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SAXReaderTest.java"


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
    sget-object v0, Lorg/dom4j/io/SAXReaderTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.io.SAXReaderTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/SAXReaderTest;->class$0:Ljava/lang/Class;

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
.method public testBug527062()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    const-string v3, "/xml/test/test.xml"

    invoke-virtual {p0, v3}, Lorg/dom4j/io/SAXReaderTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 91
    .local v0, doc:Lorg/dom4j/Document;
    const-string v3, "//broked/junk"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, l:Ljava/util/List;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 98
    const-string v3, "hi there"

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/dom4j/Element;

    invoke-interface {p0}, Lorg/dom4j/Element;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/io/SAXReaderTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "hello world"

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/dom4j/Element;

    invoke-interface {p0}, Lorg/dom4j/Element;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/io/SAXReaderTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 94
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Found node: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/dom4j/Element;

    invoke-interface {p0}, Lorg/dom4j/Element;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public testBug833765()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 85
    .local v0, reader:Lorg/dom4j/io/SAXReader;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->setIncludeExternalDTDDeclarations(Z)V

    .line 86
    const-string v1, "/xml/dtd/external.xml"

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/SAXReaderTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    .line 87
    return-void
.end method

.method public testEncoding()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    const-string v2, "<?xml version=\'1.0\' encoding=\'ISO-8859-1\'?><root/>"

    .line 49
    .local v2, xml:Ljava/lang/String;
    new-instance v1, Lorg/dom4j/io/SAXReader;

    invoke-direct {v1}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 50
    .local v1, reader:Lorg/dom4j/io/SAXReader;
    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Lorg/dom4j/io/SAXReader;->setEncoding(Ljava/lang/String;)V

    .line 51
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 53
    .local v0, doc:Lorg/dom4j/Document;
    const-string v3, "encoding incorrect"

    const-string v4, "ISO-8859-1"

    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/dom4j/io/SAXReaderTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public testEscapedComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    const-string v2, "<eg>&lt;!-- &lt;head> &amp; &lt;body> --&gt;</eg>"

    .line 104
    .local v2, txt:Ljava/lang/String;
    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 105
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 106
    .local v1, eg:Lorg/dom4j/Element;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    const-string v3, "<!-- <head> & <body> -->"

    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/io/SAXReaderTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public testReadFile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const-string v1, "/xml/#.xml"

    invoke-virtual {p0, v1}, Lorg/dom4j/io/SAXReaderTest;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 44
    .local v0, file:Ljava/io/File;
    new-instance v1, Lorg/dom4j/io/SAXReader;

    invoke-direct {v1}, Lorg/dom4j/io/SAXReader;-><init>()V

    invoke-virtual {v1, v0}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    .line 45
    return-void
.end method

.method public testRussian()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const-string v5, "/xml/russArticle.xml"

    invoke-virtual {p0, v5}, Lorg/dom4j/io/SAXReaderTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 59
    .local v0, doc:Lorg/dom4j/Document;
    const-string v5, "encoding not correct"

    const-string v6, "koi8-r"

    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/dom4j/io/SAXReaderTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 63
    .local v1, el:Lorg/dom4j/Element;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 64
    .local v3, writer:Ljava/io/StringWriter;
    new-instance v4, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v4, v3}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 65
    .local v4, xmlWriter:Lorg/dom4j/io/XMLWriter;
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v2

    .line 66
    .local v2, format:Lorg/dom4j/io/OutputFormat;
    const-string v5, "koi8-r"

    invoke-virtual {v2, v5}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 68
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/io/SAXReaderTest;->log(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public testRussian2()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    const-string v3, "/xml/russArticle.xml"

    invoke-virtual {p0, v3}, Lorg/dom4j/io/SAXReaderTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 73
    .local v0, doc:Lorg/dom4j/Document;
    new-instance v2, Lorg/dom4j/io/XMLWriter;

    new-instance v3, Lorg/dom4j/io/OutputFormat;

    const-string v4, ""

    const/4 v5, 0x0

    .line 74
    const-string v6, "koi8-r"

    invoke-direct {v3, v4, v5, v6}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 73
    invoke-direct {v2, v3}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    .line 75
    .local v2, xmlWriter:Lorg/dom4j/io/XMLWriter;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v1}, Lorg/dom4j/io/XMLWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 77
    invoke-virtual {v2, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 78
    invoke-virtual {v2}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 79
    invoke-virtual {v2}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 80
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/io/SAXReaderTest;->log(Ljava/lang/String;)V

    .line 81
    return-void
.end method
