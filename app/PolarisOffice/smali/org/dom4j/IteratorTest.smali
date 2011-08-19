.class public Lorg/dom4j/IteratorTest;
.super Lorg/dom4j/AbstractTestCase;
.source "IteratorTest.java"


# static fields
.field private static final NUMELE:I = 0xa

.field static class$0:Ljava/lang/Class;


# instance fields
.field protected iterDocument:Lorg/dom4j/Document;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 27
    sget-object v0, Lorg/dom4j/IteratorTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.IteratorTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/IteratorTest;->class$0:Ljava/lang/Class;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 32
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/IteratorTest;->iterDocument:Lorg/dom4j/Document;

    .line 34
    iget-object v2, p0, Lorg/dom4j/IteratorTest;->iterDocument:Lorg/dom4j/Document;

    const-string v3, "root"

    invoke-interface {v2, v3}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 36
    .local v1, root:Lorg/dom4j/Element;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 40
    return-void

    .line 37
    :cond_0
    const-string v2, "iterator test"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    const-string v3, "instance"

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public testElementCount()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    iget-object v3, p0, Lorg/dom4j/IteratorTest;->iterDocument:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 46
    .local v2, root:Lorg/dom4j/Element;
    const-string v3, "Has root element"

    if-eqz v2, :cond_0

    move v4, v6

    :goto_0
    invoke-static {v3, v4}, Lorg/dom4j/IteratorTest;->assertTrue(Ljava/lang/String;Z)V

    .line 48
    const-string v3, "iterator test"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, elements:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 50
    .local v0, elementSize:I
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Root has "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " children"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 51
    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    move v4, v6

    .line 50
    :goto_1
    invoke-static {v3, v4}, Lorg/dom4j/IteratorTest;->assertTrue(Ljava/lang/String;Z)V

    .line 52
    return-void

    .end local v0           #elementSize:I
    .end local v1           #elements:Ljava/util/List;
    :cond_0
    move v4, v5

    .line 46
    goto :goto_0

    .restart local v0       #elementSize:I
    .restart local v1       #elements:Ljava/util/List;
    :cond_1
    move v4, v5

    .line 51
    goto :goto_1
.end method

.method public testExtraHasNexts()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v6, p0, Lorg/dom4j/IteratorTest;->iterDocument:Lorg/dom4j/Document;

    invoke-interface {v6}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v5

    .line 127
    .local v5, root:Lorg/dom4j/Element;
    const-string v6, "iterator test"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 128
    .local v3, elements:Ljava/util/List;
    const-string v6, "iterator test"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 129
    .local v4, iter:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 130
    .local v2, elementSize:I
    const/4 v0, 0x0

    .line 132
    .local v0, count:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 141
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, " elements iterated with extra hasNexts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    if-ne v0, v2, :cond_1

    const/4 v7, 0x1

    .line 141
    :goto_1
    invoke-static {v6, v7}, Lorg/dom4j/IteratorTest;->assertTrue(Ljava/lang/String;Z)V

    .line 143
    return-void

    .line 133
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 134
    .local v1, e:Lorg/dom4j/Element;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "instance "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "instance"

    invoke-interface {v1, v7}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v7

    invoke-interface {v7}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 135
    const-string v7, " equals "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    const-string v7, "instance"

    invoke-interface {v1, v7}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v7

    invoke-interface {v7}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-static {v6, v7, v8}, Lorg/dom4j/IteratorTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v1           #e:Lorg/dom4j/Element;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public testNoHasNext()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v8, p0, Lorg/dom4j/IteratorTest;->iterDocument:Lorg/dom4j/Document;

    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v7

    .line 95
    .local v7, root:Lorg/dom4j/Element;
    const-string v8, "iterator test"

    invoke-interface {v7, v8}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 96
    .local v4, elements:Ljava/util/List;
    const-string v8, "iterator test"

    invoke-interface {v7, v8}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v6

    .line 97
    .local v6, iter:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 98
    .local v3, elementSize:I
    const/4 v1, 0x0

    .line 99
    .local v1, count:I
    const/4 v2, 0x0

    .line 101
    .local v2, e:Lorg/dom4j/Element;
    :goto_0
    if-lt v1, v3, :cond_1

    .line 112
    :try_start_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/dom4j/Element;

    move-object v2, v0

    .line 114
    if-eqz v2, :cond_0

    .line 116
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "no more elements,value instead is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v9, "instance"

    invoke-interface {v2, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 116
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 117
    if-nez v2, :cond_2

    const/4 v9, 0x1

    .line 116
    :goto_1
    invoke-static {v8, v9}, Lorg/dom4j/IteratorTest;->assertTrue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_2
    return-void

    .line 102
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #e:Lorg/dom4j/Element;
    check-cast v2, Lorg/dom4j/Element;

    .line 103
    .restart local v2       #e:Lorg/dom4j/Element;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "instance "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v9, "instance"

    invoke-interface {v2, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 104
    const-string v9, " equals "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 103
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 104
    const-string v9, "instance"

    invoke-interface {v2, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 103
    invoke-static {v8, v9, v10}, Lorg/dom4j/IteratorTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "instance "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v10, "instance"

    invoke-interface {v2, v10}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v10

    invoke-interface {v10}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 107
    const-string v10, " equals "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 117
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 119
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 120
    .local v5, exp:Ljava/lang/Exception;
    const-string v8, "Real iterators throw NoSuchElementException"

    .line 121
    instance-of v9, v5, Ljava/util/NoSuchElementException;

    .line 120
    invoke-static {v8, v9}, Lorg/dom4j/IteratorTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public testPlainIteration()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v6, p0, Lorg/dom4j/IteratorTest;->iterDocument:Lorg/dom4j/Document;

    invoke-interface {v6}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v5

    .line 56
    .local v5, root:Lorg/dom4j/Element;
    const-string v6, "iterator test"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 57
    .local v3, elements:Ljava/util/List;
    const-string v6, "iterator test"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 58
    .local v4, iter:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 60
    .local v2, elementSize:I
    const/4 v0, 0x0

    .line 62
    .local v0, count:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, " elements iterated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    if-ne v0, v2, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-static {v6, v7}, Lorg/dom4j/IteratorTest;->assertTrue(Ljava/lang/String;Z)V

    .line 71
    return-void

    .line 63
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 64
    .local v1, e:Lorg/dom4j/Element;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "instance "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "instance"

    invoke-interface {v1, v7}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v7

    invoke-interface {v7}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 65
    const-string v7, " equals "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    const-string v7, "instance"

    invoke-interface {v1, v7}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v7

    invoke-interface {v7}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-static {v6, v7, v8}, Lorg/dom4j/IteratorTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v1           #e:Lorg/dom4j/Element;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public testSkipAlternates()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v6, p0, Lorg/dom4j/IteratorTest;->iterDocument:Lorg/dom4j/Document;

    invoke-interface {v6}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v5

    .line 75
    .local v5, root:Lorg/dom4j/Element;
    const-string v6, "iterator test"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 76
    .local v3, elements:Ljava/util/List;
    const-string v6, "iterator test"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 77
    .local v4, iter:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 78
    .local v2, elementSize:I
    const/4 v0, 0x0

    .line 80
    .local v0, count:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    new-instance v6, Ljava/lang/StringBuffer;

    div-int/lit8 v7, v2, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, " alternate elements iterated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 90
    div-int/lit8 v7, v2, 0x2

    if-ne v0, v7, :cond_1

    const/4 v7, 0x1

    .line 89
    :goto_1
    invoke-static {v6, v7}, Lorg/dom4j/IteratorTest;->assertTrue(Ljava/lang/String;Z)V

    .line 91
    return-void

    .line 81
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 82
    .local v1, e:Lorg/dom4j/Element;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "instance "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "instance"

    invoke-interface {v1, v7}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v7

    invoke-interface {v7}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 83
    const-string v7, " equals "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    const-string v7, "instance"

    invoke-interface {v1, v7}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v7

    .line 84
    invoke-interface {v7}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    mul-int/lit8 v8, v0, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-static {v6, v7, v8}, Lorg/dom4j/IteratorTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1           #e:Lorg/dom4j/Element;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method
