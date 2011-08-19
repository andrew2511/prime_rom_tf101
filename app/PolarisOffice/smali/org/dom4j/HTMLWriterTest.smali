.class public Lorg/dom4j/HTMLWriterTest;
.super Lorg/dom4j/AbstractTestCase;
.source "HTMLWriterTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


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
    sget-object v0, Lorg/dom4j/HTMLWriterTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.HTMLWriterTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/HTMLWriterTest;->class$0:Ljava/lang/Class;

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
.method public testBug619415()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 122
    const-string v4, "/xml/test/dosLineFeeds.xml"

    invoke-virtual {p0, v4}, Lorg/dom4j/HTMLWriterTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 124
    .local v0, doc:Lorg/dom4j/Document;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 125
    .local v2, wr:Ljava/io/StringWriter;
    new-instance v3, Lorg/dom4j/io/HTMLWriter;

    new-instance v4, Lorg/dom4j/io/OutputFormat;

    const-string v5, ""

    invoke-direct {v4, v5, v6}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v2, v4}, Lorg/dom4j/io/HTMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 126
    .local v3, writer:Lorg/dom4j/io/HTMLWriter;
    invoke-virtual {v3, v0}, Lorg/dom4j/io/HTMLWriter;->write(Lorg/dom4j/Document;)V

    .line 128
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, result:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    const-string v4, "Mary had a little lamb."

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v7, :cond_0

    move v4, v8

    :goto_0
    invoke-static {v4}, Lorg/dom4j/HTMLWriterTest;->assertTrue(Z)V

    .line 132
    const-string v4, "Hello, this is a test."

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v7, :cond_1

    move v4, v8

    :goto_1
    invoke-static {v4}, Lorg/dom4j/HTMLWriterTest;->assertTrue(Z)V

    .line 133
    return-void

    :cond_0
    move v4, v6

    .line 131
    goto :goto_0

    :cond_1
    move v4, v6

    .line 132
    goto :goto_1
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

    .line 48
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v10

    invoke-virtual {v10}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 49
    .local v1, doc:Lorg/dom4j/Document;
    const-string v10, "root"

    invoke-interface {v1, v10}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 50
    .local v6, root:Lorg/dom4j/Element;
    const-string v10, "this is "

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 51
    const-string v10, " sim"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 52
    const-string v10, "ple text "

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 53
    const-string v10, "child"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 54
    const-string v10, " contai"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 55
    const-string v10, "ning spaces and"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 56
    const-string v10, " multiple textnodes"

    invoke-interface {v6, v10}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 58
    new-instance v5, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v5}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 59
    .local v5, format:Lorg/dom4j/io/OutputFormat;
    const-string v10, "UTF-8"

    invoke-virtual {v5, v10}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 60
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    .line 61
    invoke-virtual {v5, v11}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 62
    invoke-virtual {v5, v11}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 63
    invoke-virtual {v5, v11}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    .line 65
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 66
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v8, Lorg/dom4j/io/HTMLWriter;

    invoke-direct {v8, v0, v5}, Lorg/dom4j/io/HTMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 67
    .local v8, writer:Lorg/dom4j/io/HTMLWriter;
    invoke-virtual {v8, v1}, Lorg/dom4j/io/HTMLWriter;->write(Lorg/dom4j/Document;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, xml:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lorg/dom4j/HTMLWriterTest;->log(Ljava/lang/String;)V

    .line 72
    const-string v10, "<root"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 73
    .local v7, start:I
    const-string v10, "/root>"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v2, v10, 0x6

    .line 74
    .local v2, end:I
    const-string v3, "\n"

    .line 75
    .local v3, eol:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "<root>this is simple text"

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 76
    const-string v11, "    <child></child>containing spaces and multiple textnodes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 77
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "</root>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 75
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, expected:Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Expected:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Obtained:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v9, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lorg/dom4j/HTMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public testBug923882asWriter()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 88
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 89
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v2, Lorg/dom4j/io/HTMLWriter;

    .line 90
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v3

    .line 89
    invoke-direct {v2, v0, v3}, Lorg/dom4j/io/HTMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 91
    .local v2, writer:Lorg/dom4j/io/HTMLWriter;
    const-string v3, "wor"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v5, v4}, Lorg/dom4j/io/HTMLWriter;->characters([CII)V

    .line 92
    const-string v3, "d-being-cut"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Lorg/dom4j/io/HTMLWriter;->characters([CII)V

    .line 94
    const-string v1, "word-being-cut"

    .line 95
    .local v1, expected:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/dom4j/HTMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/io/StringWriter;

    .end local v0           #buffer:Ljava/io/StringWriter;
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 98
    .restart local v0       #buffer:Ljava/io/StringWriter;
    new-instance v2, Lorg/dom4j/io/HTMLWriter;

    .end local v2           #writer:Lorg/dom4j/io/HTMLWriter;
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/dom4j/io/HTMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 99
    .restart local v2       #writer:Lorg/dom4j/io/HTMLWriter;
    const-string v3, "    wor"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v5, v4}, Lorg/dom4j/io/HTMLWriter;->characters([CII)V

    .line 100
    const-string v3, "d being    "

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Lorg/dom4j/io/HTMLWriter;->characters([CII)V

    .line 101
    const-string v3, "  cut"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v5, v4}, Lorg/dom4j/io/HTMLWriter;->characters([CII)V

    .line 103
    const-string v1, "word being cut"

    .line 104
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/dom4j/HTMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public testBug923882asWriterWithEmptyCharArray()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 110
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 111
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v2, Lorg/dom4j/io/HTMLWriter;

    .line 112
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v3

    .line 111
    invoke-direct {v2, v0, v3}, Lorg/dom4j/io/HTMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 113
    .local v2, writer:Lorg/dom4j/io/HTMLWriter;
    const-string v3, "wor"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v5, v4}, Lorg/dom4j/io/HTMLWriter;->characters([CII)V

    .line 114
    new-array v3, v5, [C

    invoke-virtual {v2, v3, v5, v5}, Lorg/dom4j/io/HTMLWriter;->characters([CII)V

    .line 115
    const-string v3, "d-being-cut"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v5, v4}, Lorg/dom4j/io/HTMLWriter;->characters([CII)V

    .line 117
    const-string v1, "word-being-cut"

    .line 118
    .local v1, expected:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/dom4j/HTMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public testWriter()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const-string v5, "<html> <body><![CDATA[First&nbsp;test]]></body> </html>"

    .line 32
    .local v5, xml:Ljava/lang/String;
    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 33
    .local v1, document:Lorg/dom4j/Document;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 34
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v4, Lorg/dom4j/io/HTMLWriter;

    invoke-direct {v4, v0}, Lorg/dom4j/io/HTMLWriter;-><init>(Ljava/io/Writer;)V

    .line 35
    .local v4, writer:Lorg/dom4j/io/HTMLWriter;
    invoke-virtual {v4, v1}, Lorg/dom4j/io/HTMLWriter;->write(Lorg/dom4j/Document;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, output:Ljava/lang/String;
    const-string v2, "\n<html>\n  <body>First&nbsp;test</body>\n</html>\n"

    .line 41
    .local v2, expects:Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "expects: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "output: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    const-string v6, "Output is correct"

    invoke-static {v6, v2, v3}, Lorg/dom4j/HTMLWriterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
