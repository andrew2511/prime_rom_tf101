.class public Lorg/dom4j/xpath/MatrixConcatTest;
.super Lorg/dom4j/AbstractTestCase;
.source "MatrixConcatTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
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
    .line 26
    sget-object v0, Lorg/dom4j/xpath/MatrixConcatTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.MatrixConcatTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/MatrixConcatTest;->class$0:Ljava/lang/Class;

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
.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 64
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "xml/test/product.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/MatrixConcatTest;->document:Lorg/dom4j/Document;

    .line 65
    return-void
.end method

.method public testMatrixConcat()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "EQUITY_CF1"

    aput-object v2, v0, v3

    const-string v2, "EQUITY_CF2"

    aput-object v2, v0, v4

    const-string v2, "EQUITY_CF3"

    aput-object v2, v0, v5

    .line 34
    .local v0, exp1:[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "EQUITY_BAR_CF1"

    aput-object v2, v1, v3

    const-string v2, "EQUITY_BAR_CF2"

    aput-object v2, v1, v4

    const-string v2, "EQUITY_BAR_CF3"

    aput-object v2, v1, v5

    .line 36
    .local v1, exp2:[Ljava/lang/String;
    const-string v2, "\'EQUITY_\',/product/cashflows/CashFlow/XREF"

    invoke-virtual {p0, v2, v0}, Lorg/dom4j/xpath/MatrixConcatTest;->testMatrixConcat(Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    const-string v2, "\'EQUITY_\',\'BAR_\',/product/cashflows/CashFlow/XREF"

    invoke-virtual {p0, v2, v1}, Lorg/dom4j/xpath/MatrixConcatTest;->testMatrixConcat(Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected testMatrixConcat(Ljava/lang/String;[Ljava/lang/String;)V
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
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Using XPath: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/MatrixConcatTest;->log(Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lorg/dom4j/xpath/MatrixConcatTest;->document:Lorg/dom4j/Document;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "matrix-concat("

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, list:Ljava/util/List;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/MatrixConcatTest;->log(Ljava/lang/String;)V

    .line 53
    array-length v2, p2

    .line 54
    .local v2, size:I
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "List should contain "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " results: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 54
    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v3, v4}, Lorg/dom4j/xpath/MatrixConcatTest;->assertTrue(Ljava/lang/String;Z)V

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_1

    .line 60
    return-void

    .line 54
    .end local v0           #i:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 58
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-static {v3, v4}, Lorg/dom4j/xpath/MatrixConcatTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
