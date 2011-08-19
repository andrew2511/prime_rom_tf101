.class public Lorg/dom4j/IsTextOnlyTest;
.super Lorg/dom4j/AbstractTestCase;
.source "IsTextOnlyTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 21
    sget-object v0, Lorg/dom4j/IsTextOnlyTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.IsTextOnlyTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/IsTextOnlyTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 22
    return-void

    .line 21
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    .line 28
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    const-string v3, "root"

    invoke-virtual {v0, v3}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 29
    .local v2, root:Lorg/dom4j/Element;
    const-string v3, "child"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 30
    .local v1, first:Lorg/dom4j/Element;
    const-string v3, "This is some text"

    invoke-interface {v1, v3}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 32
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Root node is not text only: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/dom4j/Element;->isTextOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-static {v3, v4}, Lorg/dom4j/IsTextOnlyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 33
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "First child is text only: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/dom4j/Element;->isTextOnly()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/dom4j/IsTextOnlyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 34
    return-void

    .line 32
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method
