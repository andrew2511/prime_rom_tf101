.class public Lorg/dom4j/XMLWriterTest;
.super Lorg/dom4j/AbstractTestCase;
.source "XMLWriterTest.java"


# static fields
.field protected static final VERBOSE:Z

.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 37
    sget-object v0, Lorg/dom4j/XMLWriterTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.XMLWriterTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/XMLWriterTest;->class$0:Ljava/lang/Class;

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
.method protected generateXML(Lorg/xml/sax/ContentHandler;)V
    .locals 8
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 533
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 534
    .local v0, attrs:Lorg/xml/sax/helpers/AttributesImpl;
    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 535
    const-string v1, ""

    const-string v2, ""

    const-string v3, "name"

    const-string v4, "CDATA"

    const-string v5, "arvojoo"

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v1, ""

    const-string v2, ""

    const-string v3, "processes"

    invoke-interface {p1, v1, v2, v3, v0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 538
    const-string v6, "jeejee"

    .line 539
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 540
    .local v7, textch:[C
    const/4 v1, 0x0

    array-length v2, v7

    invoke-interface {p1, v7, v1, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 541
    const-string v1, ""

    const-string v2, ""

    const-string v3, "processes"

    invoke-interface {p1, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 543
    return-void
.end method

.method public testAttributeQuotes()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 380
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 381
    .local v0, doc:Lorg/dom4j/Document;
    const-string v4, "root"

    invoke-interface {v0, v4}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    const-string v5, "test"

    const-string v6, "text with \' in it"

    invoke-interface {v4, v5, v6}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 383
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 384
    .local v2, out:Ljava/io/StringWriter;
    new-instance v3, Lorg/dom4j/io/XMLWriter;

    .line 385
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createCompactFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v4

    .line 384
    invoke-direct {v3, v2, v4}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 386
    .local v3, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v3, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 388
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<root test=\"text with \' in it\"/>"

    .line 390
    .local v1, expected:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public testBug1119733()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    const-string v4, "<root><code>foo</code> bar</root>"

    invoke-static {v4}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 69
    .local v0, doc:Lorg/dom4j/Document;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 70
    .local v1, out:Ljava/io/StringWriter;
    new-instance v2, Lorg/dom4j/io/XMLWriter;

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 71
    .local v2, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v2, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 72
    invoke-virtual {v2}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 74
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, xml:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    const-string v4, "whitespace problem"

    const/4 v5, -0x1

    const-string v6, "</code>bar"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;II)V

    .line 78
    return-void
.end method

.method public testBug1119733WithSAXEvents()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 81
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v0, out:Ljava/io/StringWriter;
    new-instance v1, Lorg/dom4j/io/XMLWriter;

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 83
    .local v1, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v1}, Lorg/dom4j/io/XMLWriter;->startDocument()V

    .line 84
    const-string v3, "root"

    const-string v4, "root"

    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {v1, v6, v3, v4, v5}, Lorg/dom4j/io/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 85
    const-string v3, "code"

    const-string v4, "code"

    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {v1, v6, v3, v4, v5}, Lorg/dom4j/io/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 86
    new-array v3, v8, [C

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3, v7, v8}, Lorg/dom4j/io/XMLWriter;->characters([CII)V

    .line 87
    const-string v3, "code"

    const-string v4, "code"

    invoke-virtual {v1, v6, v3, v4}, Lorg/dom4j/io/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-array v3, v9, [C

    fill-array-data v3, :array_1

    invoke-virtual {v1, v3, v7, v9}, Lorg/dom4j/io/XMLWriter;->characters([CII)V

    .line 89
    const-string v3, "root"

    const-string v4, "root"

    invoke-virtual {v1, v6, v3, v4}, Lorg/dom4j/io/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lorg/dom4j/io/XMLWriter;->endDocument()V

    .line 91
    invoke-virtual {v1}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 93
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, xml:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    const-string v3, "whitespace problem"

    const/4 v4, -0x1

    const-string v5, "</code>bar"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;II)V

    .line 97
    return-void

    .line 86
    nop

    :array_0
    .array-data 0x2
        0x66t 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
    .end array-data

    .line 88
    nop

    :array_1
    .array-data 0x2
        0x20t 0x0t
        0x62t 0x0t
        0x61t 0x0t
        0x72t 0x0t
    .end array-data
.end method

.method public testBug1180791()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const-string v4, "<?xml version=\"1.0\"?><root><foo>bar</foo></root>"

    .line 45
    .local v4, xml:Ljava/lang/String;
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 46
    .local v2, reader:Lorg/dom4j/io/SAXReader;
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 48
    .local v0, doc:Lorg/dom4j/Document;
    new-instance v1, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v1}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 49
    .local v1, format:Lorg/dom4j/io/OutputFormat;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 52
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 53
    .local v3, writer:Ljava/io/StringWriter;
    new-instance v5, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v5, v3, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 54
    .local v5, xmlwriter:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v5, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 55
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    new-instance v6, Ljava/io/StringReader;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 59
    new-instance v3, Ljava/io/StringWriter;

    .end local v3           #writer:Ljava/io/StringWriter;
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 60
    .restart local v3       #writer:Ljava/io/StringWriter;
    new-instance v5, Lorg/dom4j/io/XMLWriter;

    .end local v5           #xmlwriter:Lorg/dom4j/io/XMLWriter;
    invoke-direct {v5, v3, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 61
    .restart local v5       #xmlwriter:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v5, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 62
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public testBug868408()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 394
    const-string v2, "/xml/web.xml"

    invoke-virtual {p0, v2}, Lorg/dom4j/XMLWriterTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 395
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 396
    .local v1, doc2:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public testBug923882()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 400
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v10

    invoke-virtual {v10}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 401
    .local v1, doc:Lorg/dom4j/Document;
    const-string v10, "root"

    invoke-interface {v1, v10}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 402
    .local v6, root:Lorg/dom4j/Element;
    const-string v10, "this is "

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 403
    const-string v10, " sim"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 404
    const-string v10, "ple text "

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 405
    const-string v10, "child"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 406
    const-string v10, " contai"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 407
    const-string v10, "ning spaces and"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 408
    const-string v10, " multiple textnodes"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 410
    new-instance v5, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v5}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 411
    .local v5, format:Lorg/dom4j/io/OutputFormat;
    const-string v10, "UTF-8"

    invoke-virtual {v5, v10}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 412
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    .line 413
    invoke-virtual {v5, v11}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 414
    invoke-virtual {v5, v11}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 415
    invoke-virtual {v5, v11}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    .line 417
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 418
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v8, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v8, v0, v5}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 419
    .local v8, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v8, v1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 421
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 422
    .local v9, xml:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lorg/dom4j/XMLWriterTest;->log(Ljava/lang/String;)V

    .line 424
    const-string v10, "<root"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 425
    .local v7, start:I
    const-string v10, "/root>"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v2, v10, 0x6

    .line 426
    .local v2, end:I
    const-string v3, "\n"

    .line 427
    .local v3, eol:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "<root>this is simple text"

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 428
    const-string v11, "    <child></child>containing spaces and multiple textnodes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 429
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "</root>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 427
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, expected:Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Expected:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Obtained:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v9, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public testContentHandler()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 215
    .local v2, out:Ljava/io/StringWriter;
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    .line 216
    .local v1, format:Lorg/dom4j/io/OutputFormat;
    const-string v6, "iso-8859-1"

    invoke-virtual {v1, v6}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 218
    new-instance v5, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v5, v2, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 219
    .local v5, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {p0, v5}, Lorg/dom4j/XMLWriterTest;->generateXML(Lorg/xml/sax/ContentHandler;)V

    .line 220
    invoke-virtual {v5}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 222
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, text:Ljava/lang/String;
    invoke-static {v3}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 231
    .local v0, doc:Lorg/dom4j/Document;
    const-string v6, "/processes[@name=\'arvojoo\']"

    invoke-interface {v0, v6}, Lorg/dom4j/Document;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, value:Ljava/lang/String;
    const-string v6, "Document contains the correct text"

    const-string v7, "jeejee"

    invoke-static {v6, v7, v4}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method protected testEncoding(Ljava/lang/String;)V
    .locals 5
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    .line 154
    .local v0, format:Lorg/dom4j/io/OutputFormat;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 156
    new-instance v2, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v2, v1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 157
    .local v2, writer:Lorg/dom4j/io/XMLWriter;
    iget-object v3, p0, Lorg/dom4j/XMLWriterTest;->document:Lorg/dom4j/Document;

    invoke-virtual {v2, v3}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 158
    invoke-virtual {v2}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 160
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Wrote to encoding: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/XMLWriterTest;->log(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public testEncodingFormats()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lorg/dom4j/XMLWriterTest;->testEncoding(Ljava/lang/String;)V

    .line 121
    const-string v0, "UTF-16"

    invoke-virtual {p0, v0}, Lorg/dom4j/XMLWriterTest;->testEncoding(Ljava/lang/String;)V

    .line 122
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Lorg/dom4j/XMLWriterTest;->testEncoding(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public testEscapeChars()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 489
    .local v0, document:Lorg/dom4j/Document;
    const-string v5, "root"

    invoke-interface {v0, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 490
    .local v1, root:Lorg/dom4j/Element;
    const-string v5, "blahblah \u008f"

    invoke-interface {v1, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 492
    new-instance v3, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v3}, Lorg/dom4j/io/XMLWriter;-><init>()V

    .line 493
    .local v3, writer:Lorg/dom4j/io/XMLWriter;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 494
    .local v2, strWriter:Ljava/io/StringWriter;
    invoke-virtual {v3, v2}, Lorg/dom4j/io/XMLWriter;->setWriter(Ljava/io/Writer;)V

    .line 495
    const/16 v5, 0x7f

    invoke-virtual {v3, v5}, Lorg/dom4j/io/XMLWriter;->setMaximumAllowedCharacter(I)V

    .line 496
    invoke-virtual {v3, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 498
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, xml:Ljava/lang/String;
    return-void
.end method

.method public testEscapeText()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 502
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 503
    .local v2, writer:Ljava/io/StringWriter;
    new-instance v3, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v3, v2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 504
    .local v3, xmlWriter:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v3, v6}, Lorg/dom4j/io/XMLWriter;->setEscapeText(Z)V

    .line 506
    const-string v1, "<test></test>"

    .line 508
    .local v1, txt:Ljava/lang/String;
    invoke-virtual {v3}, Lorg/dom4j/io/XMLWriter;->startDocument()V

    .line 509
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5}, Lorg/dom4j/io/XMLWriter;->characters([CII)V

    .line 510
    invoke-virtual {v3}, Lorg/dom4j/io/XMLWriter;->endDocument()V

    .line 512
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, output:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 514
    const-string v4, "<test>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lorg/dom4j/XMLWriterTest;->assertTrue(Z)V

    .line 515
    return-void

    :cond_0
    move v4, v6

    .line 514
    goto :goto_0
.end method

.method public testEscapeXML()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 439
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/dom4j/io/OutputFormat;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "ISO-8859-2"

    invoke-direct {v2, v7, v8, v9}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 440
    .local v2, format:Lorg/dom4j/io/OutputFormat;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    .line 442
    new-instance v6, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v6, v3, v2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 444
    .local v6, writer:Lorg/dom4j/io/XMLWriter;
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 445
    .local v1, document:Lorg/dom4j/Document;
    const-string v7, "root"

    invoke-interface {v1, v7}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 446
    .local v5, root:Lorg/dom4j/Element;
    const-string v7, "bla &#c bla"

    invoke-interface {v5, v7}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v6, v1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 450
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, result:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    invoke-static {v4}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 454
    .local v0, doc2:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->normalize()V

    .line 455
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/XMLWriterTest;->assertNodesEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 457
    return-void
.end method

.method public testNamespaceBug()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 185
    .local v1, doc:Lorg/dom4j/Document;
    const-string v9, "root"

    const-string v10, "ns1"

    invoke-interface {v1, v9, v10}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 186
    .local v5, root:Lorg/dom4j/Element;
    const-string v9, "joe"

    const-string v10, "ns2"

    invoke-interface {v5, v9, v10}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 187
    .local v0, child1:Lorg/dom4j/Element;
    const-string v9, "zot"

    const-string v10, "ns1"

    invoke-interface {v0, v9, v10}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 189
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 190
    .local v4, out:Ljava/io/StringWriter;
    new-instance v7, Lorg/dom4j/io/XMLWriter;

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v9

    invoke-direct {v7, v4, v9}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 191
    .local v7, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v7, v1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 193
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, text:Ljava/lang/String;
    invoke-static {v6}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v2

    .line 197
    .local v2, doc2:Lorg/dom4j/Document;
    invoke-interface {v2}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v5

    .line 198
    const-string v9, "root has incorrect namespace"

    const-string v10, "ns1"

    .line 199
    invoke-interface {v5}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    .line 198
    invoke-static {v9, v10, v11}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-interface {v5}, Lorg/dom4j/Element;->elementIterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Element;

    .line 202
    .local v3, joe:Lorg/dom4j/Element;
    const-string v9, "joe has correct namespace"

    const-string v10, "ns2"

    invoke-interface {v3}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-interface {v3}, Lorg/dom4j/Element;->elementIterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/dom4j/Element;

    .line 205
    .local v8, zot:Lorg/dom4j/Element;
    const-string v9, "zot has correct namespace"

    const-string v10, "ns1"

    invoke-interface {v8}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public testNullCData()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 518
    const-string v2, "test"

    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 519
    .local v1, e:Lorg/dom4j/Element;
    const-string v2, "another"

    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 521
    invoke-static {v1}, Lorg/dom4j/DocumentHelper;->createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;

    move-result-object v0

    .line 523
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v1}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v4, v2}, Lorg/dom4j/XMLWriterTest;->assertEquals(II)V

    .line 524
    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v4, v2}, Lorg/dom4j/XMLWriterTest;->assertEquals(II)V

    .line 526
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 527
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public testPadding()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 307
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 308
    .local v1, doc:Lorg/dom4j/Document;
    const-string v7, "root"

    invoke-interface {v1, v7}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 309
    .local v4, root:Lorg/dom4j/Element;
    const-string v7, "prefix    "

    invoke-interface {v4, v7}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 310
    const-string v7, "b"

    invoke-interface {v4, v7}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 311
    const-string v7, "      suffix"

    invoke-interface {v4, v7}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 313
    new-instance v3, Lorg/dom4j/io/OutputFormat;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;Z)V

    .line 314
    .local v3, format:Lorg/dom4j/io/OutputFormat;
    invoke-virtual {v3, v9}, Lorg/dom4j/io/OutputFormat;->setOmitEncoding(Z)V

    .line 315
    invoke-virtual {v3, v9}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    .line 316
    invoke-virtual {v3, v9}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    .line 317
    invoke-virtual {v3, v9}, Lorg/dom4j/io/OutputFormat;->setPadText(Z)V

    .line 318
    invoke-virtual {v3, v9}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 320
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 321
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v5, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v5, v0, v3}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 322
    .local v5, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v5, v1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 324
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, xml:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "xml: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    const-string v2, "<root>prefix <b></b> suffix</root>"

    .line 329
    .local v2, expected:Ljava/lang/String;
    invoke-static {v2, v6}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public testPadding2()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 333
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 334
    .local v1, doc:Lorg/dom4j/Document;
    const-string v7, "root"

    invoke-interface {v1, v7}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 335
    .local v4, root:Lorg/dom4j/Element;
    const-string v7, "prefix"

    invoke-interface {v4, v7}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 336
    const-string v7, "b"

    invoke-interface {v4, v7}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 337
    const-string v7, "suffix"

    invoke-interface {v4, v7}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 339
    new-instance v3, Lorg/dom4j/io/OutputFormat;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;Z)V

    .line 340
    .local v3, format:Lorg/dom4j/io/OutputFormat;
    invoke-virtual {v3, v9}, Lorg/dom4j/io/OutputFormat;->setOmitEncoding(Z)V

    .line 341
    invoke-virtual {v3, v9}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    .line 342
    invoke-virtual {v3, v9}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    .line 343
    invoke-virtual {v3, v9}, Lorg/dom4j/io/OutputFormat;->setPadText(Z)V

    .line 344
    invoke-virtual {v3, v9}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 346
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 347
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v5, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v5, v0, v3}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 348
    .local v5, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v5, v1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 350
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, xml:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "xml: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    const-string v2, "<root>prefix<b></b>suffix</root>"

    .line 355
    .local v2, expected:Ljava/lang/String;
    invoke-static {v2, v6}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public testPrettyPrinting()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 363
    .local v0, doc:Lorg/dom4j/Document;
    const-string v2, "summary"

    invoke-interface {v0, v2}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    const-string v3, "date"

    const-string v4, "6/7/8"

    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 364
    const-string v3, "orderline"

    .line 363
    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 364
    const-string v3, "puffins"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    const-string v3, "ranjit"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 365
    const-string v3, "Ranjit is a happy Puffin"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addComment(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 367
    new-instance v1, Lorg/dom4j/io/XMLWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 368
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v3

    .line 367
    invoke-direct {v1, v2, v3}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 369
    .local v1, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v1, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 371
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 372
    const-string v2, "summary"

    invoke-interface {v0, v2}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    const-string v3, "date"

    const-string v4, "6/7/8"

    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 373
    const-string v3, "orderline"

    .line 372
    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 373
    const-string v3, "puffins"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    const-string v3, "ranjit"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 374
    const-string v3, "Ranjit is a happy Puffin"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addComment(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 375
    const-string v3, "another comment"

    .line 374
    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addComment(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 375
    const-string v3, "anotherElement"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 376
    invoke-virtual {v1, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 377
    return-void
.end method

.method public testWhitespaceBug()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 241
    const-string v5, "<notes> This is a      multiline\n\rentry</notes>"

    .line 242
    .local v5, notes:Ljava/lang/String;
    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 244
    .local v1, doc:Lorg/dom4j/Document;
    new-instance v4, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v4}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 245
    .local v4, format:Lorg/dom4j/io/OutputFormat;
    const-string v9, "UTF-8"

    invoke-virtual {v4, v9}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 246
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    .line 247
    invoke-virtual {v4, v10}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 248
    invoke-virtual {v4, v10}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 249
    invoke-virtual {v4, v10}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    .line 251
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 252
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v7, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v7, v0, v4}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 253
    .local v7, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v7, v1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 255
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, xml:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lorg/dom4j/XMLWriterTest;->log(Ljava/lang/String;)V

    .line 258
    invoke-static {v8}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v2

    .line 259
    .local v2, doc2:Lorg/dom4j/Document;
    const-string v9, "/notes"

    invoke-interface {v2, v9}, Lorg/dom4j/Document;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, text:Ljava/lang/String;
    const-string v3, "This is a multiline entry"

    .line 262
    .local v3, expected:Ljava/lang/String;
    const-string v9, "valueOf() returns the correct text padding"

    invoke-static {v9, v3, v6}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v9, "getText() returns the correct text padding"

    .line 266
    invoke-interface {v2}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v10

    .line 265
    invoke-static {v9, v3, v10}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public testWhitespaceBug2()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 275
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 276
    .local v1, doc:Lorg/dom4j/Document;
    const-string v10, "root"

    invoke-interface {v1, v10}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 277
    .local v6, root:Lorg/dom4j/Element;
    const-string v10, "meaning"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 278
    .local v5, meaning:Lorg/dom4j/Element;
    const-string v10, "to li"

    invoke-interface {v5, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 279
    const-string v10, "ve"

    invoke-interface {v5, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 281
    new-instance v4, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v4}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 282
    .local v4, format:Lorg/dom4j/io/OutputFormat;
    const-string v10, "UTF-8"

    invoke-virtual {v4, v10}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 283
    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    .line 284
    invoke-virtual {v4, v11}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 285
    invoke-virtual {v4, v11}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 286
    invoke-virtual {v4, v11}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    .line 288
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 289
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v8, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v8, v0, v4}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 290
    .local v8, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v8, v1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 292
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, xml:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lorg/dom4j/XMLWriterTest;->log(Ljava/lang/String;)V

    .line 295
    invoke-static {v9}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v2

    .line 296
    .local v2, doc2:Lorg/dom4j/Document;
    const-string v10, "/root/meaning"

    invoke-interface {v2, v10}, Lorg/dom4j/Document;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, text:Ljava/lang/String;
    const-string v3, "to live"

    .line 299
    .local v3, expected:Ljava/lang/String;
    const-string v10, "valueOf() returns the correct text padding"

    invoke-static {v10, v3, v7}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v10, "getText() returns the correct text padding"

    .line 303
    invoke-interface {v2}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v11

    const-string v12, "meaning"

    invoke-interface {v11, v12}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v11

    invoke-interface {v11}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    .line 302
    invoke-static {v10, v3, v11}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public testWriteEntities()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 460
    const-string v5, "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n<!DOCTYPE xml [<!ENTITY copy \"&#169;\"> <!ENTITY trade \"&#8482;\"> <!ENTITY deg \"&#x00b0;\"> <!ENTITY gt \"&#62;\"> <!ENTITY sup2 \"&#x00b2;\"> <!ENTITY frac14 \"&#x00bc;\"> <!ENTITY quot \"&#34;\"> <!ENTITY frac12 \"&#x00bd;\"> <!ENTITY euro \"&#x20ac;\"> <!ENTITY Omega \"&#937;\"> ]>\n<root />"

    .line 471
    .local v5, xml:Ljava/lang/String;
    new-instance v2, Lorg/dom4j/io/SAXReader;

    const-string v7, "org.apache.xerces.parsers.SAXParser"

    invoke-direct {v2, v7}, Lorg/dom4j/io/SAXReader;-><init>(Ljava/lang/String;)V

    .line 472
    .local v2, reader:Lorg/dom4j/io/SAXReader;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/dom4j/io/SAXReader;->setIncludeInternalDTDDeclarations(Z)V

    .line 474
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 475
    .local v0, doc:Lorg/dom4j/Document;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 476
    .local v3, wr:Ljava/io/StringWriter;
    new-instance v4, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v4, v3}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 477
    .local v4, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v4, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 479
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, xml2:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    invoke-static {v6}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 484
    .local v1, doc2:Lorg/dom4j/Document;
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/XMLWriterTest;->assertNodesEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 485
    return-void
.end method

.method public testWriter()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/dom4j/XMLWriterTest;->document:Lorg/dom4j/Document;

    .line 101
    .local v0, object:Lorg/dom4j/Document;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 103
    .local v1, out:Ljava/io/StringWriter;
    new-instance v3, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v3, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 104
    .local v3, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v3, v0}, Lorg/dom4j/io/XMLWriter;->write(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v3}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 107
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, text:Ljava/lang/String;
    const-string v4, "Output text is bigger than 10 characters"

    .line 116
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    .line 115
    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/XMLWriterTest;->assertTrue(Ljava/lang/String;Z)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public testWriterBug()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 164
    new-instance v4, Lorg/dom4j/tree/BaseElement;

    const-string v7, "project"

    invoke-direct {v4, v7}, Lorg/dom4j/tree/BaseElement;-><init>(Ljava/lang/String;)V

    .line 165
    .local v4, project:Lorg/dom4j/Element;
    new-instance v0, Lorg/dom4j/tree/DefaultDocument;

    invoke-direct {v0, v4}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/Element;)V

    .line 167
    .local v0, doc:Lorg/dom4j/Document;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lorg/dom4j/io/XMLWriter;

    new-instance v7, Lorg/dom4j/io/OutputFormat;

    const-string v8, "\t"

    .line 169
    const-string v9, "ISO-8859-1"

    invoke-direct {v7, v8, v10, v9}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 168
    invoke-direct {v6, v3, v7}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 170
    .local v6, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v6, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 172
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 173
    .local v2, in:Ljava/io/ByteArrayInputStream;
    new-instance v5, Lorg/dom4j/io/SAXReader;

    invoke-direct {v5}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 174
    .local v5, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v5, v2}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v1

    .line 176
    .local v1, doc2:Lorg/dom4j/Document;
    const-string v7, "Generated document has a root element"

    .line 177
    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v8

    .line 176
    if-eqz v8, :cond_0

    move v8, v10

    :goto_0
    invoke-static {v7, v8}, Lorg/dom4j/XMLWriterTest;->assertTrue(Ljava/lang/String;Z)V

    .line 178
    const-string v7, "Generated document has corrent named root element"

    .line 179
    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "project"

    .line 178
    invoke-static {v7, v8, v9}, Lorg/dom4j/XMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void

    .line 176
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public testWritingEmptyElement()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v11

    invoke-virtual {v11}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v4

    .line 127
    .local v4, doc:Lorg/dom4j/Document;
    const-string v11, "grandfather"

    invoke-interface {v4, v11}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 128
    .local v6, grandFather:Lorg/dom4j/Element;
    const-string v11, "parent"

    invoke-interface {v6, v11}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 129
    .local v7, parent1:Lorg/dom4j/Element;
    const-string v11, "child1"

    invoke-interface {v7, v11}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 130
    .local v1, child1:Lorg/dom4j/Element;
    const-string v11, "child2"

    invoke-interface {v7, v11}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 131
    .local v2, child2:Lorg/dom4j/Element;
    const-string v11, "test"

    invoke-interface {v2, v11}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 133
    const-string v11, "parent"

    invoke-interface {v6, v11}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 134
    .local v8, parent2:Lorg/dom4j/Element;
    const-string v11, "child3"

    invoke-interface {v8, v11}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 135
    .local v3, child3:Lorg/dom4j/Element;
    const-string v11, "test"

    invoke-interface {v3, v11}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 138
    .local v0, buffer:Ljava/io/StringWriter;
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v5

    .line 139
    .local v5, format:Lorg/dom4j/io/OutputFormat;
    new-instance v9, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v9, v0, v5}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 140
    .local v9, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v9, v4}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, xml:Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    const-string v11, "child2 not present"

    .line 147
    const-string v12, "<child2>test</child2>"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    const/4 v12, 0x1

    .line 146
    :goto_0
    invoke-static {v11, v12}, Lorg/dom4j/XMLWriterTest;->assertTrue(Ljava/lang/String;Z)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method
