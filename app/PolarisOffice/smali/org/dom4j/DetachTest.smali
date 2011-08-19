.class public Lorg/dom4j/DetachTest;
.super Lorg/dom4j/AbstractTestCase;
.source "DetachTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 20
    sget-object v0, Lorg/dom4j/DetachTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.DetachTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/DetachTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 21
    return-void

    .line 20
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testRoot()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    iget-object v3, p0, Lorg/dom4j/DetachTest;->document:Lorg/dom4j/Document;

    const-string v4, "doc1"

    invoke-interface {v3, v4}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 28
    iget-object v3, p0, Lorg/dom4j/DetachTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 29
    .local v2, root:Lorg/dom4j/Element;
    const-string v3, "Has root element"

    if-eqz v2, :cond_0

    move v4, v6

    :goto_0
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 30
    const-string v3, "Root has no parent"

    invoke-interface {v2}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    if-nez v4, :cond_1

    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 32
    invoke-interface {v2}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 34
    const-string v3, "Detached root now has no document"

    .line 35
    invoke-interface {v2}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v6

    .line 34
    :goto_2
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 36
    const-string v3, "Original doc now has no root element"

    .line 37
    iget-object v4, p0, Lorg/dom4j/DetachTest;->document:Lorg/dom4j/Document;

    invoke-interface {v4}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    .line 36
    if-nez v4, :cond_3

    move v4, v6

    :goto_3
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 39
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 40
    .local v0, doc2:Lorg/dom4j/Document;
    const-string v3, "doc2"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 42
    const-string v3, "Doc2 has no root element"

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v6

    :goto_4
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 44
    invoke-interface {v0, v2}, Lorg/dom4j/Document;->setRootElement(Lorg/dom4j/Element;)V

    .line 46
    const-string v3, "Doc2 has now has root element"

    .line 47
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    if-ne v4, v2, :cond_5

    move v4, v6

    .line 46
    :goto_5
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 48
    const-string v3, "Root element now has document"

    invoke-interface {v2}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    if-ne v4, v0, :cond_6

    move v4, v6

    :goto_6
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 50
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 51
    .local v1, doc3:Lorg/dom4j/Document;
    const-string v3, "doc3"

    invoke-interface {v1, v3}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 52
    const-string v3, "foo"

    invoke-interface {v1, v3}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 54
    const-string v3, "Doc3 has root element"

    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    if-eqz v4, :cond_7

    move v4, v6

    :goto_7
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 56
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 57
    invoke-interface {v2}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 58
    invoke-interface {v1, v2}, Lorg/dom4j/Document;->setRootElement(Lorg/dom4j/Element;)V

    .line 60
    const-string v3, "Doc3 now has root element"

    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    if-ne v4, v2, :cond_8

    move v4, v6

    :goto_8
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 61
    const-string v3, "Root element now has a document"

    invoke-interface {v2}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/dom4j/DetachTest;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    const-string v3, "Doc2 has no root element"

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v6

    :goto_9
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 63
    return-void

    .end local v0           #doc2:Lorg/dom4j/Document;
    .end local v1           #doc3:Lorg/dom4j/Document;
    :cond_0
    move v4, v5

    .line 29
    goto/16 :goto_0

    :cond_1
    move v4, v5

    .line 30
    goto/16 :goto_1

    :cond_2
    move v4, v5

    .line 35
    goto/16 :goto_2

    :cond_3
    move v4, v5

    .line 36
    goto/16 :goto_3

    .restart local v0       #doc2:Lorg/dom4j/Document;
    :cond_4
    move v4, v5

    .line 42
    goto :goto_4

    :cond_5
    move v4, v5

    .line 47
    goto :goto_5

    :cond_6
    move v4, v5

    .line 48
    goto :goto_6

    .restart local v1       #doc3:Lorg/dom4j/Document;
    :cond_7
    move v4, v5

    .line 54
    goto :goto_7

    :cond_8
    move v4, v5

    .line 60
    goto :goto_8

    :cond_9
    move v4, v5

    .line 62
    goto :goto_9
.end method
