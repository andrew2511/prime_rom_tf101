.class public Lorg/dom4j/xpath/AttributeTest;
.super Lorg/dom4j/AbstractTestCase;
.source "AttributeTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "attribute::*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 28
    const-string v2, "/root/author/attribute::*"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "//attribute::*"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@name"

    aput-object v2, v0, v1

    .line 27
    sput-object v0, Lorg/dom4j/xpath/AttributeTest;->paths:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 31
    sget-object v0, Lorg/dom4j/xpath/AttributeTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.AttributeTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/AttributeTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 32
    return-void

    .line 31
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected testXPath(Ljava/lang/String;)V
    .locals 10
    .parameter "xpathText"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 47
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v5

    .line 48
    .local v5, xpath:Lorg/dom4j/XPath;
    iget-object v6, p0, Lorg/dom4j/xpath/AttributeTest;->document:Lorg/dom4j/Document;

    invoke-interface {v5, v6}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 50
    .local v3, list:Ljava/util/List;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Searched path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 51
    const-string v7, " result(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual {p0, v6}, Lorg/dom4j/xpath/AttributeTest;->log(Ljava/lang/String;)V

    .line 53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 71
    return-void

    .line 54
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, object:Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Found Result: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/xpath/AttributeTest;->log(Ljava/lang/String;)V

    .line 58
    const-string v6, "Results should be Attribute objects"

    .line 59
    instance-of v7, v4, Lorg/dom4j/Attribute;

    .line 58
    invoke-static {v6, v7}, Lorg/dom4j/xpath/AttributeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 61
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Attribute;

    move-object v1, v0

    .line 63
    .local v1, attribute:Lorg/dom4j/Attribute;
    const-string v6, "Results should support the parent relationship"

    .line 64
    invoke-interface {v1}, Lorg/dom4j/Attribute;->supportsParent()Z

    move-result v7

    .line 63
    invoke-static {v6, v7}, Lorg/dom4j/xpath/AttributeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 66
    const-string v6, "Results should contain reference to the parent element"

    .line 67
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v7

    if-eqz v7, :cond_1

    move v7, v9

    .line 65
    :goto_1
    invoke-static {v6, v7}, Lorg/dom4j/xpath/AttributeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 68
    const-string v6, "Resulting document not correct"

    .line 69
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getDocument()Lorg/dom4j/Document;

    move-result-object v7

    .line 68
    if-eqz v7, :cond_2

    move v7, v9

    :goto_2
    invoke-static {v6, v7}, Lorg/dom4j/xpath/AttributeTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v7, v8

    .line 67
    goto :goto_1

    :cond_2
    move v7, v8

    .line 68
    goto :goto_2
.end method

.method public testXPaths()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    sget-object v2, Lorg/dom4j/xpath/AttributeTest;->paths:[Ljava/lang/String;

    array-length v1, v2

    .line 39
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    sget-object v2, Lorg/dom4j/xpath/AttributeTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/AttributeTest;->testXPath(Ljava/lang/String;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
