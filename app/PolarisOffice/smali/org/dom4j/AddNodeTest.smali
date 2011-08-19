.class public Lorg/dom4j/AddNodeTest;
.super Lorg/dom4j/AbstractTestCase;
.source "AddNodeTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 19
    sget-object v0, Lorg/dom4j/AddNodeTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.AddNodeTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/AddNodeTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 20
    return-void

    .line 19
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testDom4jAddNodeBug()V
    .locals 7

    .prologue
    .line 51
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v2

    .line 52
    .local v2, maindoc:Lorg/dom4j/Document;
    const-string v5, "document"

    invoke-interface {v2, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 53
    .local v0, docroot:Lorg/dom4j/Element;
    const-string v5, "header"

    invoke-interface {v0, v5}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    const-string v6, "Some Text"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 55
    .local v1, header:Lorg/dom4j/Element;
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v3

    .line 56
    .local v3, subdoc:Lorg/dom4j/Document;
    const-string v5, "document"

    invoke-interface {v3, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 60
    .local v4, subroot:Lorg/dom4j/Element;
    :try_start_0
    const-string v5, "/document/header"

    invoke-interface {v2, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/Element;

    invoke-interface {v4, p0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 61
    invoke-static {}, Lorg/dom4j/AddNodeTest;->fail()V
    :try_end_0
    .catch Lorg/dom4j/IllegalAddException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public testDom4jAddNodeClone()V
    .locals 7

    .prologue
    .line 25
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v3

    .line 26
    .local v3, maindoc:Lorg/dom4j/Document;
    const-string v5, "document"

    invoke-interface {v3, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 27
    .local v0, docroot:Lorg/dom4j/Element;
    const-string v5, "header"

    invoke-interface {v0, v5}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    const-string v6, "Some Text"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 29
    .local v2, header:Lorg/dom4j/Element;
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v4

    .line 30
    .local v4, subdoc:Lorg/dom4j/Document;
    const-string v5, "document"

    invoke-interface {v4, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 33
    .local v1, docroot2:Lorg/dom4j/Element;
    const-string v5, "/document/header"

    invoke-interface {v3, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object p0

    .line 32
    .end local p0
    check-cast p0, Lorg/dom4j/Element;

    invoke-interface {v1, p0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 34
    invoke-interface {v4}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/dom4j/AddNodeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public testDom4jAddNodeCreateCopy()V
    .locals 7

    .prologue
    .line 38
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v3

    .line 39
    .local v3, maindoc:Lorg/dom4j/Document;
    const-string v5, "document"

    invoke-interface {v3, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 40
    .local v0, docroot:Lorg/dom4j/Element;
    const-string v5, "header"

    invoke-interface {v0, v5}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    const-string v6, "Some Text"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 42
    .local v2, header:Lorg/dom4j/Element;
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v4

    .line 43
    .local v4, subdoc:Lorg/dom4j/Document;
    const-string v5, "document"

    invoke-interface {v4, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 46
    .local v1, docroot2:Lorg/dom4j/Element;
    const-string v5, "/document/header"

    invoke-interface {v3, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/Element;

    invoke-interface {p0}, Lorg/dom4j/Element;->createCopy()Lorg/dom4j/Element;

    move-result-object v5

    .line 45
    invoke-interface {v1, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 47
    invoke-interface {v4}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/dom4j/AddNodeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
