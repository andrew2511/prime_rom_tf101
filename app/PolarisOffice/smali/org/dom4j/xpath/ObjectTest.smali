.class public Lorg/dom4j/xpath/ObjectTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ObjectTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name(/.)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name()"

    aput-object v2, v0, v1

    sput-object v0, Lorg/dom4j/xpath/ObjectTest;->paths:[Ljava/lang/String;

    .line 22
    return-void
.end method

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
    .line 26
    sget-object v0, Lorg/dom4j/xpath/ObjectTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.ObjectTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/ObjectTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 27
    return-void

    .line 26
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected testXPath(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 2
    .parameter "node"
    .parameter "xpathText"

    .prologue
    .line 44
    invoke-interface {p1, p2}, Lorg/dom4j/Node;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v1

    .line 45
    .local v1, xpath:Lorg/dom4j/XPath;
    invoke-interface {v1, p1}, Lorg/dom4j/XPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, object:Ljava/lang/Object;
    return-void
.end method

.method public testXPaths()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v3, p0, Lorg/dom4j/xpath/ObjectTest;->document:Lorg/dom4j/Document;

    const-string v4, "//author"

    invoke-interface {v3, v4}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    .line 33
    .local v0, element:Lorg/dom4j/Node;
    sget-object v3, Lorg/dom4j/xpath/ObjectTest;->paths:[Ljava/lang/String;

    array-length v2, v3

    .line 35
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 39
    return-void

    .line 36
    :cond_0
    iget-object v3, p0, Lorg/dom4j/xpath/ObjectTest;->document:Lorg/dom4j/Document;

    sget-object v4, Lorg/dom4j/xpath/ObjectTest;->paths:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v3, v4}, Lorg/dom4j/xpath/ObjectTest;->testXPath(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 37
    sget-object v3, Lorg/dom4j/xpath/ObjectTest;->paths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v0, v3}, Lorg/dom4j/xpath/ObjectTest;->testXPath(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
