.class public Lorg/dom4j/dom/DOMTest;
.super Lorg/dom4j/AbstractTestCase;
.source "DOMTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field private attributes:J

.field private characters:J

.field private elements:J


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
    .line 40
    sget-object v0, Lorg/dom4j/dom/DOMTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.dom.DOMTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/dom/DOMTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 41
    return-void

    .line 40
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 133
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-static {}, Lorg/dom4j/dom/DOMDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;)V

    .line 134
    .local v0, reader:Lorg/dom4j/io/SAXReader;
    const-string v1, "/xml/contents.xml"

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/dom/DOMTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/dom/DOMTest;->document:Lorg/dom4j/Document;

    .line 135
    return-void
.end method

.method public testClassCastBug()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lorg/dom4j/dom/DOMDocument;

    const-string v2, "Root"

    invoke-direct {v0, v2}, Lorg/dom4j/dom/DOMDocument;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, oDocument:Lorg/dom4j/dom/DOMDocument;
    const-string v2, "Parent"

    invoke-virtual {v0, v2}, Lorg/dom4j/dom/DOMDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 85
    .local v1, oParent:Lorg/w3c/dom/Element;
    const-string v2, "name"

    const-string v3, "N01"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "id"

    const-string v3, "ID01"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v1}, Lorg/dom4j/dom/DOMDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 90
    return-void
.end method

.method public testCount()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Lorg/dom4j/io/DOMWriter;

    invoke-direct {v1}, Lorg/dom4j/io/DOMWriter;-><init>()V

    .line 48
    .local v1, domWriter:Lorg/dom4j/io/DOMWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    .local v4, start:J
    iget-object v6, p0, Lorg/dom4j/dom/DOMTest;->document:Lorg/dom4j/Document;

    invoke-virtual {v1, v6}, Lorg/dom4j/io/DOMWriter;->write(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 50
    .local v0, domDocument:Lorg/w3c/dom/Document;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 52
    .local v2, end:J
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Converting to a W3C Document took: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 53
    sub-long v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " milliseconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMTest;->traverse(Lorg/w3c/dom/Node;)V

    .line 57
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "elements: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lorg/dom4j/dom/DOMTest;->elements:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-wide v7, p0, Lorg/dom4j/dom/DOMTest;->attributes:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 58
    const-string v7, " characters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-wide v7, p0, Lorg/dom4j/dom/DOMTest;->characters:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-virtual {p0, v6}, Lorg/dom4j/dom/DOMTest;->log(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public testNamespace()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    const-string v1, "<prefix:root xmlns:prefix=\"myuri\" />"

    .line 63
    .local v1, xml:Ljava/lang/String;
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-static {}, Lorg/dom4j/dom/DOMDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;)V

    .line 64
    .local v2, xmlReader:Lorg/dom4j/io/SAXReader;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dom/DOMDocument;

    .line 66
    .local v0, d:Lorg/dom4j/dom/DOMDocument;
    const-string v3, "namespace prefix not correct"

    const-string v4, "prefix"

    .line 67
    invoke-virtual {v0}, Lorg/dom4j/dom/DOMDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v5

    invoke-virtual {v5}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-static {v3, v4, v5}, Lorg/dom4j/dom/DOMTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "namespace uri not correct"

    const-string v4, "myuri"

    .line 69
    invoke-virtual {v0}, Lorg/dom4j/dom/DOMDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v5

    invoke-virtual {v5}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-static {v3, v4, v5}, Lorg/dom4j/dom/DOMTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/dom4j/dom/DOMDocument;->asXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public testReplaceChild()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v2, Lorg/dom4j/dom/DOMDocument;

    const-string v11, "Root"

    invoke-direct {v2, v11}, Lorg/dom4j/dom/DOMDocument;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, document:Lorg/dom4j/dom/DOMDocument;
    const-string v11, "Parent"

    invoke-virtual {v2, v11}, Lorg/dom4j/dom/DOMDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 95
    .local v8, parent:Lorg/w3c/dom/Element;
    const-string v11, "FirstChild"

    invoke-virtual {v2, v11}, Lorg/dom4j/dom/DOMDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 96
    .local v4, first:Lorg/w3c/dom/Element;
    const-string v11, "SecondChild"

    invoke-virtual {v2, v11}, Lorg/dom4j/dom/DOMDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 97
    .local v9, second:Lorg/w3c/dom/Element;
    const-string v11, "ThirdChild"

    invoke-virtual {v2, v11}, Lorg/dom4j/dom/DOMDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 99
    .local v10, third:Lorg/w3c/dom/Element;
    invoke-virtual {v2, v8}, Lorg/dom4j/dom/DOMDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 100
    invoke-interface {v8, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 101
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 102
    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 104
    const-string v11, "NewFirst"

    invoke-virtual {v2, v11}, Lorg/dom4j/dom/DOMDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 106
    .local v6, newFirst:Lorg/w3c/dom/Element;
    invoke-interface {v8, v6, v4}, Lorg/w3c/dom/Element;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 105
    check-cast v7, Lorg/w3c/dom/Element;

    .line 109
    .local v7, oldFirst:Lorg/w3c/dom/Element;
    invoke-static {v7, v4}, Lorg/dom4j/dom/DOMTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 113
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    invoke-interface {v1, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 114
    .local v5, firstChild:Lorg/w3c/dom/Node;
    const/4 v11, 0x1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    invoke-static {v11, v12}, Lorg/dom4j/dom/DOMTest;->assertEquals(SS)V

    .line 115
    invoke-static {v6, v5}, Lorg/dom4j/dom/DOMTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    const-string v11, "No Child"

    invoke-virtual {v2, v11}, Lorg/dom4j/dom/DOMDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 121
    .local v0, badNode:Lorg/w3c/dom/Element;
    :try_start_0
    invoke-interface {v8, v6, v0}, Lorg/w3c/dom/Element;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 122
    const-string v11, "DOMException not thrown"

    invoke-static {v11}, Lorg/dom4j/dom/DOMTest;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 124
    .local v3, e:Lorg/w3c/dom/DOMException;
    const/16 v11, 0x8

    iget-short v12, v3, Lorg/w3c/dom/DOMException;->code:S

    invoke-static {v11, v12}, Lorg/dom4j/dom/DOMTest;->assertEquals(SS)V

    goto :goto_0
.end method

.method protected traverse(Lorg/w3c/dom/Node;)V
    .locals 9
    .parameter "node"

    .prologue
    const-wide/16 v5, 0x0

    .line 145
    if-nez p1, :cond_1

    .line 212
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local p1
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    .line 151
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 162
    :pswitch_1
    iget-wide v5, p0, Lorg/dom4j/dom/DOMTest;->elements:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/dom4j/dom/DOMTest;->elements:J

    .line 164
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 166
    .local v0, attrs:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_2

    .line 167
    iget-wide v5, p0, Lorg/dom4j/dom/DOMTest;->attributes:J

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/dom4j/dom/DOMTest;->attributes:J

    .line 170
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 172
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 175
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 176
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/dom/DOMTest;->traverse(Lorg/w3c/dom/Node;)V

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    .end local v0           #attrs:Lorg/w3c/dom/NamedNodeMap;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v2           #i:I
    .end local v3           #len:I
    :pswitch_2
    iput-wide v5, p0, Lorg/dom4j/dom/DOMTest;->elements:J

    .line 154
    iput-wide v5, p0, Lorg/dom4j/dom/DOMTest;->attributes:J

    .line 155
    iput-wide v5, p0, Lorg/dom4j/dom/DOMTest;->characters:J

    .line 156
    check-cast p1, Lorg/w3c/dom/Document;

    .end local p1
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/dom/DOMTest;->traverse(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 184
    .restart local p1
    :pswitch_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 186
    .restart local v1       #children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 189
    .restart local v3       #len:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 190
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/dom/DOMTest;->traverse(Lorg/w3c/dom/Node;)V

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 198
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v2           #i:I
    .end local v3           #len:I
    :pswitch_4
    iget-wide v5, p0, Lorg/dom4j/dom/DOMTest;->characters:J

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/dom4j/dom/DOMTest;->characters:J

    goto :goto_0

    .line 204
    :pswitch_5
    iget-wide v5, p0, Lorg/dom4j/dom/DOMTest;->characters:J

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/dom4j/dom/DOMTest;->characters:J

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
