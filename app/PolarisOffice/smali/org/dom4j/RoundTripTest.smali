.class public Lorg/dom4j/RoundTripTest;
.super Lorg/dom4j/AbstractTestCase;
.source "RoundTripTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field protected testDocuments:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/xml/test/encode.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 37
    const-string v2, "/xml/fibo.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/xml/test/schema/personal-prefix.xsd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 38
    const-string v2, "/xml/test/soap2.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/xml/test/test_schema.xml"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 41
    sget-object v0, Lorg/dom4j/RoundTripTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.RoundTripTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/RoundTripTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 42
    return-void

    .line 41
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected roundTripDOM(Lorg/dom4j/Document;)Lorg/dom4j/Document;
    .locals 5
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v2, Lorg/dom4j/io/DOMWriter;

    invoke-direct {v2}, Lorg/dom4j/io/DOMWriter;-><init>()V

    .line 100
    .local v2, domWriter:Lorg/dom4j/io/DOMWriter;
    invoke-virtual {v2, p1}, Lorg/dom4j/io/DOMWriter;->write(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 103
    .local v0, domDocument:Lorg/w3c/dom/Document;
    new-instance v1, Lorg/dom4j/io/DOMReader;

    invoke-direct {v1}, Lorg/dom4j/io/DOMReader;-><init>()V

    .line 104
    .local v1, domReader:Lorg/dom4j/io/DOMReader;
    invoke-virtual {v1, v0}, Lorg/dom4j/io/DOMReader;->read(Lorg/w3c/dom/Document;)Lorg/dom4j/Document;

    move-result-object v3

    .line 107
    .local v3, newDocument:Lorg/dom4j/Document;
    invoke-interface {p1}, Lorg/dom4j/Document;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1, v3}, Lorg/dom4j/RoundTripTest;->assertDocumentsEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 111
    return-object v3
.end method

.method protected roundTripFull(Lorg/dom4j/Document;)Lorg/dom4j/Document;
    .locals 3
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lorg/dom4j/RoundTripTest;->roundTripDOM(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v0

    .line 184
    .local v0, doc2:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/RoundTripTest;->roundTripSAX(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v1

    .line 185
    .local v1, doc3:Lorg/dom4j/Document;
    invoke-virtual {p0, v1}, Lorg/dom4j/RoundTripTest;->roundTripText(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v2

    .line 187
    .local v2, doc4:Lorg/dom4j/Document;
    invoke-virtual {p0, p1, v2}, Lorg/dom4j/RoundTripTest;->assertDocumentsEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 189
    return-object v2
.end method

.method protected roundTripJAXP(Lorg/dom4j/Document;)Lorg/dom4j/Document;
    .locals 10
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    .line 117
    .local v3, factory:Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v7

    .line 119
    .local v7, transformer:Ljavax/xml/transform/Transformer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 120
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 121
    .local v5, streamResult:Ljavax/xml/transform/stream/StreamResult;
    new-instance v2, Lorg/dom4j/io/DocumentSource;

    invoke-direct {v2, p1}, Lorg/dom4j/io/DocumentSource;-><init>(Lorg/dom4j/Document;)V

    .line 123
    .local v2, documentSource:Lorg/dom4j/io/DocumentSource;
    invoke-virtual {v7, v2, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 126
    new-instance v1, Lorg/dom4j/io/DocumentResult;

    invoke-direct {v1}, Lorg/dom4j/io/DocumentResult;-><init>()V

    .line 127
    .local v1, documentResult:Lorg/dom4j/io/DocumentResult;
    new-instance v6, Ljavax/xml/transform/stream/StreamSource;

    new-instance v8, Ljava/io/StringReader;

    .line 128
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-direct {v6, v8}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 130
    .local v6, streamSource:Ljavax/xml/transform/stream/StreamSource;
    invoke-virtual {v7, v6, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 132
    invoke-virtual {v1}, Lorg/dom4j/io/DocumentResult;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    .line 135
    .local v4, newDocument:Lorg/dom4j/Document;
    invoke-interface {p1}, Lorg/dom4j/Document;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p1, v4}, Lorg/dom4j/RoundTripTest;->assertDocumentsEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 139
    return-object v4
.end method

.method protected roundTripSAX(Lorg/dom4j/Document;)Lorg/dom4j/Document;
    .locals 4
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lorg/dom4j/io/SAXContentHandler;

    invoke-direct {v0}, Lorg/dom4j/io/SAXContentHandler;-><init>()V

    .line 146
    .local v0, contentHandler:Lorg/dom4j/io/SAXContentHandler;
    new-instance v2, Lorg/dom4j/io/SAXWriter;

    invoke-direct {v2, v0, v0, v0}, Lorg/dom4j/io/SAXWriter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/xml/sax/EntityResolver;)V

    .line 149
    .local v2, saxWriter:Lorg/dom4j/io/SAXWriter;
    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Document;)V

    .line 151
    invoke-virtual {v0}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 154
    .local v1, newDocument:Lorg/dom4j/Document;
    invoke-interface {p1}, Lorg/dom4j/Document;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1, v1}, Lorg/dom4j/RoundTripTest;->assertDocumentsEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 158
    return-object v1
.end method

.method protected roundTripText(Lorg/dom4j/Document;)Lorg/dom4j/Document;
    .locals 7
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 163
    .local v2, out:Ljava/io/StringWriter;
    new-instance v5, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v5, v2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 165
    .local v5, xmlWriter:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v5, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 168
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, xml:Ljava/lang/String;
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, in:Ljava/io/StringReader;
    new-instance v3, Lorg/dom4j/io/SAXReader;

    invoke-direct {v3}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 172
    .local v3, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v3, v0}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v1

    .line 175
    .local v1, newDocument:Lorg/dom4j/Document;
    invoke-interface {p1}, Lorg/dom4j/Document;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1, v1}, Lorg/dom4j/RoundTripTest;->assertDocumentsEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 179
    return-object v1
.end method

.method public testDOMRoundTrip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    array-length v2, v3

    .local v2, size:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 65
    return-void

    .line 62
    :cond_0
    iget-object v3, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/dom4j/RoundTripTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 63
    .local v0, doc:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/RoundTripTest;->roundTripDOM(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public testFullRoundTrip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    array-length v2, v3

    .local v2, size:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 79
    return-void

    .line 76
    :cond_0
    iget-object v3, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/dom4j/RoundTripTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 77
    .local v0, doc:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/RoundTripTest;->roundTripFull(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public testJAXPRoundTrip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    array-length v2, v3

    .local v2, size:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 72
    return-void

    .line 69
    :cond_0
    iget-object v3, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/dom4j/RoundTripTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 70
    .local v0, doc:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/RoundTripTest;->roundTripJAXP(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public testRoundTrip()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    const-string v6, "/xml/xmlspec.xml"

    invoke-virtual {p0, v6}, Lorg/dom4j/RoundTripTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v5

    .line 85
    .local v5, document:Lorg/dom4j/Document;
    invoke-virtual {p0, v5}, Lorg/dom4j/RoundTripTest;->roundTripSAX(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v0

    .line 86
    .local v0, doc1:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/RoundTripTest;->roundTripDOM(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v1

    .line 87
    .local v1, doc2:Lorg/dom4j/Document;
    invoke-virtual {p0, v1}, Lorg/dom4j/RoundTripTest;->roundTripSAX(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v2

    .line 88
    .local v2, doc3:Lorg/dom4j/Document;
    invoke-virtual {p0, v2}, Lorg/dom4j/RoundTripTest;->roundTripText(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v3

    .line 89
    .local v3, doc4:Lorg/dom4j/Document;
    invoke-virtual {p0, v3}, Lorg/dom4j/RoundTripTest;->roundTripDOM(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v4

    .line 92
    .local v4, doc5:Lorg/dom4j/Document;
    invoke-virtual {p0, v5, v4}, Lorg/dom4j/RoundTripTest;->assertDocumentsEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 93
    return-void
.end method

.method public testSAXRoundTrip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    array-length v2, v3

    .local v2, size:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 58
    return-void

    .line 55
    :cond_0
    iget-object v3, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/dom4j/RoundTripTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 56
    .local v0, doc:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/RoundTripTest;->roundTripSAX(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public testTextRoundTrip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    array-length v2, v3

    .local v2, size:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 51
    return-void

    .line 48
    :cond_0
    iget-object v3, p0, Lorg/dom4j/RoundTripTest;->testDocuments:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/dom4j/RoundTripTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 49
    .local v0, doc:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/RoundTripTest;->roundTripText(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
