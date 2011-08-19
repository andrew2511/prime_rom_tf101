.class public Lorg/dom4j/IndexedElementTest;
.super Lorg/dom4j/AbstractTestCase;
.source "IndexedElementTest.java"


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
    sget-object v0, Lorg/dom4j/IndexedElementTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.IndexedElementTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/IndexedElementTest;->class$0:Ljava/lang/Class;

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
.method protected createDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lorg/dom4j/util/IndexedDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method protected testXPath(Ljava/lang/String;)V
    .locals 9
    .parameter "xpath"

    .prologue
    .line 36
    iget-object v7, p0, Lorg/dom4j/IndexedElementTest;->document:Lorg/dom4j/Document;

    invoke-interface {v7, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 38
    .local v2, list:Ljava/util/List;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Searched path: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 39
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Found        : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " result(s)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 41
    const-string v7, "Results"

    invoke-virtual {p0, v7}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 43
    if-nez v2, :cond_0

    .line 44
    const-string v7, "null"

    invoke-virtual {p0, v7}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 65
    :goto_0
    const-string v7, "..........................................."

    invoke-virtual {p0, v7}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 67
    const-string v7, "Found some results"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-static {v7, v8}, Lorg/dom4j/IndexedElementTest;->assertTrue(Ljava/lang/String;Z)V

    .line 68
    return-void

    .line 46
    :cond_0
    const-string v7, "["

    invoke-virtual {p0, v7}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, size:I
    :goto_2
    if-lt v1, v5, :cond_1

    .line 62
    const-string v7, "]"

    invoke-virtual {p0, v7}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 50
    .local v4, object:Ljava/lang/Object;
    const-string v6, "null"

    .line 52
    .local v6, text:Ljava/lang/String;
    instance-of v7, v4, Lorg/dom4j/Node;

    if-eqz v7, :cond_3

    .line 53
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Node;

    move-object v3, v0

    .line 54
    .local v3, node:Lorg/dom4j/Node;
    invoke-interface {v3}, Lorg/dom4j/Node;->asXML()Ljava/lang/String;

    move-result-object v6

    .line 59
    .end local v3           #node:Lorg/dom4j/Node;
    :cond_2
    :goto_3
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 55
    :cond_3
    if-eqz v4, :cond_2

    .line 56
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 67
    .end local v1           #i:I
    .end local v4           #object:Ljava/lang/Object;
    .end local v5           #size:I
    .end local v6           #text:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public testXPaths()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string v0, "//author"

    invoke-virtual {p0, v0}, Lorg/dom4j/IndexedElementTest;->testXPath(Ljava/lang/String;)V

    .line 31
    return-void
.end method
