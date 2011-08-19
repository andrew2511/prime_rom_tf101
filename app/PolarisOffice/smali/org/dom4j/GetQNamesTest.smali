.class public Lorg/dom4j/GetQNamesTest;
.super Lorg/dom4j/AbstractTestCase;
.source "GetQNamesTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 24
    sget-object v0, Lorg/dom4j/GetQNamesTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.GetQNamesTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/GetQNamesTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 25
    return-void

    .line 24
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testQNames()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    .line 32
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 33
    .local v2, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v2, v0}, Lorg/dom4j/io/SAXReader;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 34
    const-string v3, "/xml/test/soap2.xml"

    invoke-virtual {p0, v3, v2}, Lorg/dom4j/GetQNamesTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    .line 36
    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->getQNames()Ljava/util/List;

    move-result-object v1

    .line 37
    .local v1, qnames:Ljava/util/List;
    const-string v3, "Number of QNames not correct"

    const/16 v4, 0xf

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/dom4j/GetQNamesTest;->assertEquals(Ljava/lang/String;II)V

    .line 38
    return-void
.end method

.method public testRename()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 49
    .local v0, doc:Lorg/dom4j/Document;
    const-string v3, "foo"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 51
    .local v1, root:Lorg/dom4j/Element;
    const-string v3, "named correctly"

    const-string v4, "foo"

    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/dom4j/GetQNamesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "bar"

    invoke-interface {v1, v3}, Lorg/dom4j/Element;->setName(Ljava/lang/String;)V

    .line 55
    const-string v3, "named correctly"

    const-string v4, "bar"

    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/dom4j/GetQNamesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v3, "xyz"

    invoke-interface {v1, v3}, Lorg/dom4j/Element;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v2

    .line 59
    .local v2, xyz:Lorg/dom4j/QName;
    invoke-interface {v1, v2}, Lorg/dom4j/Element;->setQName(Lorg/dom4j/QName;)V

    .line 61
    const-string v3, "QNamed correctly"

    invoke-interface {v1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/dom4j/GetQNamesTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    return-void
.end method
