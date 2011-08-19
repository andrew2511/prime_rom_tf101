.class public Lorg/dom4j/XMLSpaceAttributeTest;
.super Lorg/dom4j/AbstractTestCase;
.source "XMLSpaceAttributeTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 23
    sget-object v0, Lorg/dom4j/XMLSpaceAttributeTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.XMLSpaceAttributeTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/XMLSpaceAttributeTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 24
    return-void

    .line 23
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private rewriteToXmlString(Lorg/dom4j/Document;Z)Ljava/lang/String;
    .locals 7
    .parameter "doc"
    .parameter "trimOn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 168
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createCompactFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    .line 169
    .local v1, of:Lorg/dom4j/io/OutputFormat;
    invoke-virtual {v1, v6}, Lorg/dom4j/io/OutputFormat;->setIndent(Z)V

    .line 170
    invoke-virtual {v1, v6}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 171
    invoke-virtual {v1, v5}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    .line 172
    invoke-virtual {v1, v5}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    .line 173
    invoke-virtual {v1, v5}, Lorg/dom4j/io/OutputFormat;->setOmitEncoding(Z)V

    .line 174
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, p2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 177
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .local v2, os:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v4, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v4, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    .line 181
    .local v4, xmlWriter:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v4, v0}, Lorg/dom4j/io/XMLWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 182
    invoke-virtual {v4, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 183
    invoke-virtual {v4}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 185
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, xml:Ljava/lang/String;
    return-object v3
.end method


# virtual methods
.method public testWithEscapeTextTrimOn()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    const-string v7, "<top ><row><col>   This is a test!</col></row><row><col xml:space=\'preserve\' >   This is a test!\r\nWith a new line, special character like &amp; , and\t tab.</col></row><row><col>   This is a test!\r\nWith a new line, special character like &amp; , and\t tab.</col></row></top>"

    .line 200
    .local v7, xmlString:Ljava/lang/String;
    invoke-static {v7}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v3

    .line 201
    .local v3, doc1:Lorg/dom4j/Document;
    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Lorg/dom4j/XMLSpaceAttributeTest;->rewriteToXmlString(Lorg/dom4j/Document;Z)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, xml:Ljava/lang/String;
    invoke-static {v6}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v4

    .line 204
    .local v4, doc2:Lorg/dom4j/Document;
    const-string v8, "/top/row[2]/col"

    invoke-interface {v4, v8}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 205
    .local v1, c2:Lorg/dom4j/Element;
    const-string v5, "   This is a test!\nWith a new line, special character like & , and\t tab."

    .line 207
    .local v5, expected:Ljava/lang/String;
    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, actual:Ljava/lang/String;
    const-string v8, "compared element text expecting whitespace"

    invoke-static {v8, v5, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v8, "/top/row[3]/col"

    invoke-interface {v4, v8}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 212
    .local v2, c4:Lorg/dom4j/Element;
    const-string v5, "This is a test! With a new line, special character like & , and tab."

    .line 214
    invoke-interface {v2}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v8, "compared element text expecting whitespace"

    invoke-static {v8, v5, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public testWithTextTrimOff()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    const-string v7, "<top ><row><col>   This is a test!</col></row><row><col xml:space=\'preserve\' >   This is a test!</col></row><row><col>   This is a test!</col></row></top>"

    .line 65
    .local v7, xmlString:Ljava/lang/String;
    invoke-static {v7}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v3

    .line 66
    .local v3, doc1:Lorg/dom4j/Document;
    const-string v8, "/top/row[2]/col"

    invoke-interface {v3, v8}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 67
    .local v1, c2:Lorg/dom4j/Element;
    const-string v5, "   New Text TrimOff! "

    .line 68
    .local v5, expected:Ljava/lang/String;
    invoke-interface {v1, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 70
    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lorg/dom4j/XMLSpaceAttributeTest;->rewriteToXmlString(Lorg/dom4j/Document;Z)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, xml:Ljava/lang/String;
    invoke-static {v6}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v4

    .line 73
    .local v4, doc2:Lorg/dom4j/Document;
    const-string v8, "/top/row[2]/col"

    invoke-interface {v4, v8}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 74
    .local v2, c4:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, actual:Ljava/lang/String;
    const-string v8, "compared element text expecting whitespace"

    invoke-static {v8, v5, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public testWithTextTrimOn()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    const-string v8, "<top ><row><col>   This is a test!</col></row><row><col xml:space=\'preserve\' >   This is a test!</col></row><row><col>   This is a test!</col></row></top>"

    .line 33
    .local v8, xmlString:Ljava/lang/String;
    invoke-static {v8}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v4

    .line 34
    .local v4, doc1:Lorg/dom4j/Document;
    const-string v9, "/top/row[2]/col"

    invoke-interface {v4, v9}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 35
    .local v1, c2:Lorg/dom4j/Element;
    const-string v6, "   New Text TrimOn! "

    .line 36
    .local v6, expected:Ljava/lang/String;
    invoke-interface {v1, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 38
    const/4 v9, 0x1

    invoke-direct {p0, v4, v9}, Lorg/dom4j/XMLSpaceAttributeTest;->rewriteToXmlString(Lorg/dom4j/Document;Z)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, xml:Ljava/lang/String;
    invoke-static {v7}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v5

    .line 41
    .local v5, doc2:Lorg/dom4j/Document;
    const-string v9, "/top/row[2]/col"

    invoke-interface {v5, v9}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 42
    .local v2, c4:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, actual:Ljava/lang/String;
    const-string v9, "compared element text expecting whitespace"

    invoke-static {v9, v6, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-interface {v2}, Lorg/dom4j/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v9, "compared element getTextTrim"

    invoke-static {v9, v6, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v6, "This is a test!"

    .line 53
    const-string v9, "/top/row[3]/col"

    invoke-interface {v5, v9}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Element;

    .line 54
    .local v3, c5:Lorg/dom4j/Element;
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v9, "compared element text expecting trimmed whitespace"

    invoke-static {v9, v6, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public testWithTextTrimOnFollow()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    const-string v9, "<top ><row><col>   This is a test!</col></row><row><col xml:space=\'preserve\' ><a><b>   This is embedded!</b></a><a><b>   This is space=preserve too!</b></a></col></row><row><col>   This is a test!</col></row></top>"

    .line 89
    .local v9, xmlString:Ljava/lang/String;
    invoke-static {v9}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v5

    .line 90
    .local v5, doc1:Lorg/dom4j/Document;
    const-string v10, "/top/row[2]/col/a[1]/b"

    invoke-interface {v5, v10}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 91
    .local v2, c2:Lorg/dom4j/Element;
    const-string v7, "   New Text TrimOnFollow! "

    .line 92
    .local v7, expected:Ljava/lang/String;
    invoke-interface {v2, v7}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 94
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lorg/dom4j/XMLSpaceAttributeTest;->rewriteToXmlString(Lorg/dom4j/Document;Z)Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, xml:Ljava/lang/String;
    invoke-static {v8}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v6

    .line 98
    .local v6, doc2:Lorg/dom4j/Document;
    const-string v10, "/top/row[2]/col/a[1]/b"

    invoke-interface {v6, v10}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Element;

    .line 99
    .local v3, c4:Lorg/dom4j/Element;
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, actual:Ljava/lang/String;
    const-string v10, "compared element text expecting whitespace"

    invoke-static {v10, v7, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v10, "/top/row[2]/col/a[2]/b"

    invoke-interface {v6, v10}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v4

    check-cast v4, Lorg/dom4j/Element;

    .line 106
    .local v4, c8:Lorg/dom4j/Element;
    const-string v7, "   This is space=preserve too!"

    .line 107
    invoke-interface {v4}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v10, "compared element text follow trimmed whitespace"

    invoke-static {v10, v7, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-interface {v4}, Lorg/dom4j/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v10, "compared element getTextTrim"

    invoke-static {v10, v7, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v10, "/top/row[3]/col"

    invoke-interface {v6, v10}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 117
    .local v1, c12:Lorg/dom4j/Element;
    const-string v7, "This is a test!"

    .line 118
    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v10, "compared element text follow trimmed whitespace"

    invoke-static {v10, v7, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public testWithTextTrimOnNested()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    const-string v9, "<top ><row><col>   This is a test!</col></row><row><col xml:space=\'preserve\' ><a><b>   This is embedded! </b><b xml:space=\'default\' >   This should do global default! </b><b>   This is embedded! </b></a></col></row><row><col>   This is a test!</col></row></top>"

    .line 133
    .local v9, xmlString:Ljava/lang/String;
    invoke-static {v9}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v5

    .line 134
    .local v5, doc1:Lorg/dom4j/Document;
    const-string v10, "/top/row[2]/col/a[1]/b"

    invoke-interface {v5, v10}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 135
    .local v2, c2:Lorg/dom4j/Element;
    const-string v7, "   New Text TrimOnNested! "

    .line 136
    .local v7, expected:Ljava/lang/String;
    invoke-interface {v2, v7}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 138
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lorg/dom4j/XMLSpaceAttributeTest;->rewriteToXmlString(Lorg/dom4j/Document;Z)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, xml:Ljava/lang/String;
    invoke-static {v8}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v6

    .line 143
    .local v6, doc2:Lorg/dom4j/Document;
    const-string v10, "/top/row[2]/col/a[1]/b[1]"

    invoke-interface {v6, v10}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v3

    .line 142
    check-cast v3, Lorg/dom4j/Element;

    .line 144
    .local v3, c4:Lorg/dom4j/Element;
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, actual:Ljava/lang/String;
    const-string v10, "compared element text expecting whitespace"

    invoke-static {v10, v7, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v10, "/top/row[2]/col/a[1]/b[2]"

    invoke-interface {v6, v10}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v4

    .line 148
    check-cast v4, Lorg/dom4j/Element;

    .line 150
    .local v4, c8:Lorg/dom4j/Element;
    const-string v7, "This should do global default!"

    .line 151
    invoke-interface {v4}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v10, "compared element text nested trimmed whitespace"

    invoke-static {v10, v7, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v10, "/top/row[2]/col/a[1]/b[3]"

    invoke-interface {v6, v10}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v1

    .line 155
    check-cast v1, Lorg/dom4j/Element;

    .line 157
    .local v1, c12:Lorg/dom4j/Element;
    const-string v7, "   This is embedded! "

    .line 158
    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v10, "compared element text nested preserved whitespace"

    invoke-static {v10, v7, v0}, Lorg/dom4j/XMLSpaceAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method
