.class public Lorg/dom4j/xpath/VariableTest;
.super Lorg/dom4j/AbstractTestCase;
.source "VariableTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# instance fields
.field private authorNode:Lorg/dom4j/Node;

.field private rootNode:Lorg/dom4j/Node;

.field private variableContext:Lorg/jaxen/SimpleVariableContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    const-string v2, "$author"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lorg/dom4j/xpath/VariableTest;->paths:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 39
    new-instance v0, Lorg/jaxen/SimpleVariableContext;

    invoke-direct {v0}, Lorg/jaxen/SimpleVariableContext;-><init>()V

    iput-object v0, p0, Lorg/dom4j/xpath/VariableTest;->variableContext:Lorg/jaxen/SimpleVariableContext;

    .line 27
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 46
    sget-object v0, Lorg/dom4j/xpath/VariableTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.VariableTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/VariableTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 47
    return-void

    .line 46
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 1
    .parameter "xpath"

    .prologue
    .line 71
    iget-object v0, p0, Lorg/dom4j/xpath/VariableTest;->variableContext:Lorg/jaxen/SimpleVariableContext;

    invoke-static {p1, v0}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 77
    iget-object v0, p0, Lorg/dom4j/xpath/VariableTest;->document:Lorg/dom4j/Document;

    const-string v1, "/root"

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/VariableTest;->rootNode:Lorg/dom4j/Node;

    .line 78
    iget-object v0, p0, Lorg/dom4j/xpath/VariableTest;->document:Lorg/dom4j/Document;

    const-string v1, "/root/author[1]"

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/VariableTest;->authorNode:Lorg/dom4j/Node;

    .line 80
    iget-object v0, p0, Lorg/dom4j/xpath/VariableTest;->variableContext:Lorg/jaxen/SimpleVariableContext;

    const-string v1, "root"

    iget-object v2, p0, Lorg/dom4j/xpath/VariableTest;->rootNode:Lorg/dom4j/Node;

    invoke-virtual {v0, v1, v2}, Lorg/jaxen/SimpleVariableContext;->setVariableValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lorg/dom4j/xpath/VariableTest;->variableContext:Lorg/jaxen/SimpleVariableContext;

    const-string v1, "author"

    iget-object v2, p0, Lorg/dom4j/xpath/VariableTest;->authorNode:Lorg/dom4j/Node;

    invoke-virtual {v0, v1, v2}, Lorg/jaxen/SimpleVariableContext;->setVariableValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method protected testXPath(Ljava/lang/String;)V
    .locals 4
    .parameter "xpathText"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/VariableTest;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v1

    .line 61
    .local v1, xpath:Lorg/dom4j/XPath;
    iget-object v2, p0, Lorg/dom4j/xpath/VariableTest;->document:Lorg/dom4j/Document;

    invoke-interface {v1, v2}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, list:Ljava/util/List;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Searched path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 64
    const-string v3, " result(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/VariableTest;->log(Ljava/lang/String;)V

    .line 66
    const-string v2, "Results should not contain the root node"

    .line 67
    iget-object v3, p0, Lorg/dom4j/xpath/VariableTest;->rootNode:Lorg/dom4j/Node;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 66
    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lorg/dom4j/xpath/VariableTest;->assertTrue(Ljava/lang/String;Z)V

    .line 68
    return-void

    .line 66
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public testXPaths()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v2, Lorg/dom4j/xpath/VariableTest;->paths:[Ljava/lang/String;

    array-length v1, v2

    .line 54
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 57
    return-void

    .line 55
    :cond_0
    sget-object v2, Lorg/dom4j/xpath/VariableTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/VariableTest;->testXPath(Ljava/lang/String;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
