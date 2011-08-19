.class public Lorg/dom4j/xpath/TextTest;
.super Lorg/dom4j/AbstractTestCase;
.source "TextTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text()"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "//author/text()"

    aput-object v2, v0, v1

    sput-object v0, Lorg/dom4j/xpath/TextTest;->paths:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 28
    sget-object v0, Lorg/dom4j/xpath/TextTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.TextTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/TextTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 29
    return-void

    .line 28
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
    .locals 9
    .parameter "xpath"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 44
    iget-object v5, p0, Lorg/dom4j/xpath/TextTest;->document:Lorg/dom4j/Document;

    invoke-interface {v5, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 46
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    return-void

    .line 47
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 49
    .local v3, object:Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Found Result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/xpath/TextTest;->log(Ljava/lang/String;)V

    .line 51
    const-string v5, "Results not Text objects"

    instance-of v6, v3, Lorg/dom4j/Text;

    invoke-static {v5, v6}, Lorg/dom4j/xpath/TextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 53
    move-object v0, v3

    check-cast v0, Lorg/dom4j/Text;

    move-object v4, v0

    .line 55
    .local v4, text:Lorg/dom4j/Text;
    const-string v5, "Results should support the parent relationship"

    .line 56
    invoke-interface {v4}, Lorg/dom4j/Text;->supportsParent()Z

    move-result v6

    .line 55
    invoke-static {v5, v6}, Lorg/dom4j/xpath/TextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 58
    const-string v5, "Results should contain reference to the parent element"

    .line 59
    invoke-interface {v4}, Lorg/dom4j/Text;->getParent()Lorg/dom4j/Element;

    move-result-object v6

    if-eqz v6, :cond_1

    move v6, v8

    .line 57
    :goto_1
    invoke-static {v5, v6}, Lorg/dom4j/xpath/TextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 60
    const-string v5, "Results should not reference to the owning document"

    .line 61
    invoke-interface {v4}, Lorg/dom4j/Text;->getDocument()Lorg/dom4j/Document;

    move-result-object v6

    if-eqz v6, :cond_2

    move v6, v8

    .line 60
    :goto_2
    invoke-static {v5, v6}, Lorg/dom4j/xpath/TextTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v6, v7

    .line 59
    goto :goto_1

    :cond_2
    move v6, v7

    .line 61
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
    .line 34
    sget-object v2, Lorg/dom4j/xpath/TextTest;->paths:[Ljava/lang/String;

    array-length v1, v2

    .line 36
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 39
    return-void

    .line 37
    :cond_0
    sget-object v2, Lorg/dom4j/xpath/TextTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/TextTest;->testXPath(Ljava/lang/String;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
