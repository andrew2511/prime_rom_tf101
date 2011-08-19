.class public Lorg/dom4j/SerializeTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SerializeTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 29
    sget-object v0, Lorg/dom4j/SerializeTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.SerializeTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/SerializeTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 30
    return-void

    .line 29
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected testSerialize(Ljava/lang/String;)V
    .locals 10
    .parameter "xmlFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/dom4j/SerializeTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v3

    .line 91
    .local v3, document:Lorg/dom4j/Document;
    invoke-interface {v3}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, text:Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    .local v0, bytesOut:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    .local v5, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v5, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 100
    .local v1, data:[B
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 101
    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 100
    invoke-direct {v4, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 102
    .local v4, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Document;

    .line 103
    .local v2, doc2:Lorg/dom4j/Document;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 105
    invoke-interface {v2}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, text2:Ljava/lang/String;
    const-string v8, "Documents text are equal"

    invoke-static {v8, v6, v7}, Lorg/dom4j/SerializeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v8, "Read back document after serialization"

    if-eqz v2, :cond_0

    .line 110
    instance-of v9, v2, Lorg/dom4j/Document;

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    .line 109
    :goto_0
    invoke-static {v8, v9}, Lorg/dom4j/SerializeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {p0, v3, v2}, Lorg/dom4j/SerializeTest;->assertDocumentsEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 115
    invoke-interface {v2}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v8

    const-string v9, "new"

    invoke-interface {v8, v9}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 116
    return-void

    .line 110
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public testSerializeMuchAdo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "/xml/much_ado.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/SerializeTest;->testSerialize(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public testSerializePeriodicTable()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "/xml/periodic_table.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/SerializeTest;->testSerialize(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public testSerializeTestSchema()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "/xml/test/schema/personal.xsd"

    invoke-virtual {p0, v0}, Lorg/dom4j/SerializeTest;->testSerialize(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public testSerializeXPath()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v9, uris:Ljava/util/Map;
    const-string v12, "SOAP-ENV"

    const-string v13, "http://schemas.xmlsoap.org/soap/envelope/"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v12, "m"

    const-string v13, "urn:xmethodsBabelFish"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v5, Lorg/dom4j/DocumentFactory;

    invoke-direct {v5}, Lorg/dom4j/DocumentFactory;-><init>()V

    .line 52
    .local v5, factory:Lorg/dom4j/DocumentFactory;
    invoke-virtual {v5, v9}, Lorg/dom4j/DocumentFactory;->setXPathNamespaceURIs(Ljava/util/Map;)V

    .line 55
    new-instance v8, Lorg/dom4j/io/SAXReader;

    invoke-direct {v8}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 56
    .local v8, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v8, v5}, Lorg/dom4j/io/SAXReader;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 58
    const-string v12, "/xml/soap.xml"

    invoke-virtual {p0, v12, v8}, Lorg/dom4j/SerializeTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v2

    .line 61
    .local v2, doc:Lorg/dom4j/Document;
    const-string v4, "/SOAP-ENV:Envelope/SOAP-ENV:Body/m:BabelFish"

    .line 62
    .local v4, expr:Ljava/lang/String;
    invoke-interface {v2, v4}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v3

    .line 63
    .local v3, element:Lorg/dom4j/Node;
    const-string v12, "Found valid element"

    if-eqz v3, :cond_0

    const/4 v13, 0x1

    :goto_0
    invoke-static {v12, v13}, Lorg/dom4j/SerializeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 66
    const-string v12, "/SOAP-ENV:Envelope/SOAP-ENV:Body/m:BabelFish"

    invoke-virtual {v5, v12}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v10

    .line 67
    .local v10, xpath:Lorg/dom4j/XPath;
    invoke-interface {v10, v2}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v3

    .line 68
    const-string v12, "Found valid element"

    if-eqz v3, :cond_1

    const/4 v13, 0x1

    :goto_1
    invoke-static {v12, v13}, Lorg/dom4j/SerializeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .local v0, bytesOut:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    .local v7, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v7, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 78
    .local v1, data:[B
    new-instance v6, Ljava/io/ObjectInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    .line 79
    invoke-direct {v12, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    invoke-direct {v6, v12}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    .local v6, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/dom4j/XPath;

    .line 81
    .local v11, xpath2:Lorg/dom4j/XPath;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 83
    invoke-interface {v11, v2}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v3

    .line 84
    const-string v12, "Found valid element"

    if-eqz v3, :cond_2

    const/4 v13, 0x1

    :goto_2
    invoke-static {v12, v13}, Lorg/dom4j/SerializeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 85
    return-void

    .line 63
    .end local v0           #bytesOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #data:[B
    .end local v6           #in:Ljava/io/ObjectInputStream;
    .end local v7           #out:Ljava/io/ObjectOutputStream;
    .end local v10           #xpath:Lorg/dom4j/XPath;
    .end local v11           #xpath2:Lorg/dom4j/XPath;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 68
    .restart local v10       #xpath:Lorg/dom4j/XPath;
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 84
    .restart local v0       #bytesOut:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #data:[B
    .restart local v6       #in:Ljava/io/ObjectInputStream;
    .restart local v7       #out:Ljava/io/ObjectOutputStream;
    .restart local v11       #xpath2:Lorg/dom4j/XPath;
    :cond_2
    const/4 v13, 0x0

    goto :goto_2
.end method
