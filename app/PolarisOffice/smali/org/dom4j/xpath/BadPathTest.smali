.class public Lorg/dom4j/xpath/BadPathTest;
.super Lorg/dom4j/AbstractTestCase;
.source "BadPathTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field private paths:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/foo/bar/"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/dom4j/xpath/BadPathTest;->paths:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 25
    sget-object v0, Lorg/dom4j/xpath/BadPathTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.BadPathTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/BadPathTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 26
    return-void

    .line 25
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected testBadPath(Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    iget-object v2, p0, Lorg/dom4j/xpath/BadPathTest;->document:Lorg/dom4j/Document;

    invoke-interface {v2, p1}, Lorg/dom4j/Document;->selectObject(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Should have thrown exception for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/dom4j/xpath/BadPathTest;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/dom4j/xpath/BadPathTest;->document:Lorg/dom4j/Document;

    invoke-interface {v2, p1}, Lorg/dom4j/Document;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v1

    .line 49
    .local v1, xpath:Lorg/dom4j/XPath;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Should have thrown exception for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/dom4j/xpath/BadPathTest;->fail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .end local v1           #xpath:Lorg/dom4j/XPath;
    :goto_1
    return-void

    .line 42
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 43
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Successfully caught: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/BadPathTest;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 51
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Successfully caught: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/BadPathTest;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public testBadPaths()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lorg/dom4j/xpath/BadPathTest;->paths:[Ljava/lang/String;

    array-length v2, v3

    .local v2, size:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 35
    return-void

    .line 32
    :cond_0
    iget-object v3, p0, Lorg/dom4j/xpath/BadPathTest;->paths:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 33
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/dom4j/xpath/BadPathTest;->testBadPath(Ljava/lang/String;)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
