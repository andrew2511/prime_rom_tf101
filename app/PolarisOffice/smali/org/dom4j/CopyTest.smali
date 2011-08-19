.class public Lorg/dom4j/CopyTest;
.super Lorg/dom4j/AbstractTestCase;
.source "CopyTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 22
    sget-object v0, Lorg/dom4j/CopyTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.CopyTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/CopyTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 23
    return-void

    .line 22
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected testCopy(Lorg/dom4j/Element;)V
    .locals 13
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 44
    const-string v8, "Not null"

    if-eqz p1, :cond_0

    move v9, v12

    :goto_0
    invoke-static {v8, v9}, Lorg/dom4j/CopyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 46
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v2

    .line 47
    .local v2, attributeCount:I
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v7

    .line 49
    .local v7, nodeCount:I
    invoke-interface {p1}, Lorg/dom4j/Element;->createCopy()Lorg/dom4j/Element;

    move-result-object v3

    .line 51
    .local v3, copy:Lorg/dom4j/Element;
    const-string v8, "Node size not equal after copy"

    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v9

    invoke-static {v8, v9, v7}, Lorg/dom4j/CopyTest;->assertEquals(Ljava/lang/String;II)V

    .line 53
    const-string v8, "Same attribute size after copy"

    .line 54
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v9

    if-ne v9, v2, :cond_1

    move v9, v12

    .line 53
    :goto_1
    invoke-static {v8, v9}, Lorg/dom4j/CopyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 56
    const-string v8, "Copy has same node size"

    invoke-interface {v3}, Lorg/dom4j/Element;->nodeCount()I

    move-result v9

    if-ne v9, v7, :cond_2

    move v9, v12

    :goto_2
    invoke-static {v8, v9}, Lorg/dom4j/CopyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 57
    const-string v8, "Copy has same attribute size"

    .line 58
    invoke-interface {v3}, Lorg/dom4j/Element;->attributeCount()I

    move-result v9

    if-ne v9, v2, :cond_3

    move v9, v12

    .line 57
    :goto_3
    invoke-static {v8, v9}, Lorg/dom4j/CopyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 60
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-lt v4, v2, :cond_4

    .line 70
    const/4 v4, 0x0

    :goto_5
    if-lt v4, v7, :cond_5

    .line 79
    return-void

    .end local v2           #attributeCount:I
    .end local v3           #copy:Lorg/dom4j/Element;
    .end local v4           #i:I
    .end local v7           #nodeCount:I
    :cond_0
    move v9, v11

    .line 44
    goto :goto_0

    .restart local v2       #attributeCount:I
    .restart local v3       #copy:Lorg/dom4j/Element;
    .restart local v7       #nodeCount:I
    :cond_1
    move v9, v11

    .line 54
    goto :goto_1

    :cond_2
    move v9, v11

    .line 56
    goto :goto_2

    :cond_3
    move v9, v11

    .line 58
    goto :goto_3

    .line 61
    .restart local v4       #i:I
    :cond_4
    invoke-interface {p1, v4}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 62
    .local v0, attr1:Lorg/dom4j/Attribute;
    invoke-interface {v3, v4}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 64
    .local v1, attr2:Lorg/dom4j/Attribute;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Attribute: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " name is equal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 65
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 64
    invoke-static {v8, v9}, Lorg/dom4j/CopyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 66
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Attribute: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " value is equal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 67
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 66
    invoke-static {v8, v9}, Lorg/dom4j/CopyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 71
    .end local v0           #attr1:Lorg/dom4j/Attribute;
    .end local v1           #attr2:Lorg/dom4j/Attribute;
    :cond_5
    invoke-interface {p1, v4}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v5

    .line 72
    .local v5, node1:Lorg/dom4j/Node;
    invoke-interface {v3, v4}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v6

    .line 74
    .local v6, node2:Lorg/dom4j/Node;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Node: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " type is equal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-interface {v5}, Lorg/dom4j/Node;->getNodeType()S

    move-result v9

    invoke-interface {v6}, Lorg/dom4j/Node;->getNodeType()S

    move-result v10

    if-ne v9, v10, :cond_6

    move v9, v12

    .line 74
    :goto_6
    invoke-static {v8, v9}, Lorg/dom4j/CopyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 76
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Node: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " value is equal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-interface {v5}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 76
    invoke-static {v8, v9}, Lorg/dom4j/CopyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 70
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_6
    move v9, v11

    .line 75
    goto :goto_6
.end method

.method public testRoot()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 28
    iget-object v4, p0, Lorg/dom4j/CopyTest;->document:Lorg/dom4j/Document;

    const-string v5, "doc1"

    invoke-interface {v4, v5}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 30
    iget-object v4, p0, Lorg/dom4j/CopyTest;->document:Lorg/dom4j/Document;

    invoke-interface {v4}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 31
    .local v3, root:Lorg/dom4j/Element;
    const-string v4, "author"

    invoke-interface {v3, v4}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 33
    .local v2, authors:Ljava/util/List;
    const-string v4, "Should be at least 2 authors"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move v5, v8

    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/CopyTest;->assertTrue(Ljava/lang/String;Z)V

    .line 35
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 36
    .local v0, author1:Lorg/dom4j/Element;
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 38
    .local v1, author2:Lorg/dom4j/Element;
    invoke-virtual {p0, v3}, Lorg/dom4j/CopyTest;->testCopy(Lorg/dom4j/Element;)V

    .line 39
    invoke-virtual {p0, v0}, Lorg/dom4j/CopyTest;->testCopy(Lorg/dom4j/Element;)V

    .line 40
    invoke-virtual {p0, v1}, Lorg/dom4j/CopyTest;->testCopy(Lorg/dom4j/Element;)V

    .line 41
    return-void

    .end local v0           #author1:Lorg/dom4j/Element;
    .end local v1           #author2:Lorg/dom4j/Element;
    :cond_0
    move v5, v7

    .line 33
    goto :goto_0
.end method
