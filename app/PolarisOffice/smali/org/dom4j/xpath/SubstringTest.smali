.class public Lorg/dom4j/xpath/SubstringTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SubstringTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 27
    sget-object v0, Lorg/dom4j/xpath/SubstringTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.SubstringTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/SubstringTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 28
    return-void

    .line 27
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 65
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "xml/test/fields.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/SubstringTest;->document:Lorg/dom4j/Document;

    .line 66
    return-void
.end method

.method public testSubstring()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "1100"

    aput-object v2, v0, v3

    const-string v2, "1101"

    aput-object v2, v0, v4

    .line 35
    .local v0, results1:[Ljava/lang/String;
    const-string v2, "//field[substring(@id,1,2)=\'11\']"

    invoke-virtual {p0, v2, v0}, Lorg/dom4j/xpath/SubstringTest;->testSubstring(Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "2111"

    aput-object v2, v1, v3

    const-string v2, "3111"

    aput-object v2, v1, v4

    .line 38
    .local v1, results2:[Ljava/lang/String;
    const-string v2, "//field[substring(@id,3)=\'11\']"

    invoke-virtual {p0, v2, v1}, Lorg/dom4j/xpath/SubstringTest;->testSubstring(Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected testSubstring(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Using XPath: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/xpath/SubstringTest;->log(Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lorg/dom4j/xpath/SubstringTest;->document:Lorg/dom4j/Document;

    invoke-interface {v4, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 49
    .local v2, list:Ljava/util/List;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/xpath/SubstringTest;->log(Ljava/lang/String;)V

    .line 53
    array-length v3, p2

    .line 54
    .local v3, size:I
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "List should contain "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " results: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 54
    if-ne v5, v3, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/xpath/SubstringTest;->assertTrue(Ljava/lang/String;Z)V

    .line 57
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 61
    return-void

    .line 54
    .end local v1           #i:I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 58
    .restart local v1       #i:I
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 59
    .local v0, element:Lorg/dom4j/Element;
    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-static {v4, v5}, Lorg/dom4j/xpath/SubstringTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
