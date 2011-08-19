.class public Lorg/dom4j/GetXMLEncodingTest;
.super Lorg/dom4j/AbstractTestCase;
.source "GetXMLEncodingTest.java"


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
    sget-object v0, Lorg/dom4j/GetXMLEncodingTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.GetXMLEncodingTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/GetXMLEncodingTest;->class$0:Ljava/lang/Class;

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
.method public testXMLEncodingFromString()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<root/>"

    .line 35
    .local v3, xmlEnc:Ljava/lang/String;
    new-instance v1, Lorg/dom4j/io/SAXReader;

    invoke-direct {v1}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 36
    .local v1, reader:Lorg/dom4j/io/SAXReader;
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 37
    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    invoke-direct {v2, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 38
    .local v2, source:Lorg/xml/sax/InputSource;
    invoke-virtual {v1, v2}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    .line 39
    .local v0, doc:Lorg/dom4j/Document;
    const-string v4, "UTF-8"

    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/dom4j/GetXMLEncodingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/dom4j/GetXMLEncodingTest;->assertNull(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public testXMLEncodingFromStringWithHelper()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<root/>"

    .line 55
    .local v1, xmlEnc:Ljava/lang/String;
    const-string v2, "<root/>"

    .line 57
    .local v2, xmlNoEnc:Ljava/lang/String;
    invoke-static {v1}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 58
    .local v0, doc:Lorg/dom4j/Document;
    const-string v3, "UTF-8"

    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/GetXMLEncodingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/dom4j/GetXMLEncodingTest;->assertNull(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public testXMLEncodingFromURL()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const-string v1, "/xml/test/encode.xml"

    invoke-virtual {p0, v1}, Lorg/dom4j/GetXMLEncodingTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 47
    .local v0, doc:Lorg/dom4j/Document;
    const-string v1, "UTF-8"

    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/dom4j/GetXMLEncodingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "/xml/russArticle.xml"

    invoke-virtual {p0, v1}, Lorg/dom4j/GetXMLEncodingTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 50
    const-string v1, "koi8-r"

    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/dom4j/GetXMLEncodingTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
