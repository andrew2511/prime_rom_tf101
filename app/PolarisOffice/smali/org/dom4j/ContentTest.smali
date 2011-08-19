.class public Lorg/dom4j/ContentTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ContentTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field protected factory:Lorg/dom4j/DocumentFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 22
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    iput-object v0, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    .line 21
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 25
    sget-object v0, Lorg/dom4j/ContentTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.ContentTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/ContentTest;->class$0:Ljava/lang/Class;

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
.method public testAddAtIndex()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 161
    iget-object v7, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v7}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v3

    .line 162
    .local v3, doc:Lorg/dom4j/Document;
    const-string v7, "html"

    invoke-interface {v3, v7}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 163
    .local v6, root:Lorg/dom4j/Element;
    const-string v7, "header"

    invoke-interface {v6, v7}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 164
    .local v5, header:Lorg/dom4j/Element;
    const-string v7, "body"

    invoke-interface {v6, v7}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 166
    .local v1, body:Lorg/dom4j/Element;
    iget-object v7, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    const-string v8, "foo"

    invoke-virtual {v7, v8}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 167
    .local v4, foo:Lorg/dom4j/Element;
    iget-object v7, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    const-string v8, "bar"

    invoke-virtual {v7, v8}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 169
    .local v0, bar:Lorg/dom4j/Element;
    invoke-interface {v5}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v2

    .line 170
    .local v2, content:Ljava/util/List;
    invoke-interface {v2, v9, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 171
    invoke-interface {v2, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 173
    const-string v7, "foo"

    invoke-interface {v5, v10}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/dom4j/ContentTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v7, "bar"

    invoke-interface {v5, v9}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/dom4j/ContentTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v7, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    const-string v8, "foo"

    invoke-virtual {v7, v8}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 177
    iget-object v7, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    const-string v8, "bar"

    invoke-virtual {v7, v8}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 179
    invoke-interface {v1}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v2

    .line 180
    invoke-interface {v2, v9, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 181
    invoke-interface {v2, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 183
    const-string v7, "foo"

    invoke-interface {v1, v9}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/dom4j/ContentTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v7, "bar"

    invoke-interface {v1, v10}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/dom4j/ContentTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public testAddAtIndex2()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 188
    iget-object v6, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v6}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v2

    .line 189
    .local v2, doc:Lorg/dom4j/Document;
    const-string v6, "parent"

    invoke-interface {v2, v6}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 190
    .local v5, parent:Lorg/dom4j/Element;
    const-string v6, "child"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 191
    .local v1, child:Lorg/dom4j/Element;
    iget-object v6, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    const-string v7, "child2"

    invoke-virtual {v6, v7}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 193
    .local v0, anotherChild:Lorg/dom4j/Element;
    invoke-interface {v5}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v3

    .line 194
    .local v3, elements:Ljava/util/List;
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 196
    .local v4, index:I
    invoke-static {v8, v4}, Lorg/dom4j/ContentTest;->assertEquals(II)V

    .line 198
    invoke-interface {v3, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 199
    invoke-interface {v5}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v3

    .line 200
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/dom4j/ContentTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/dom4j/ContentTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public testAddingInTheMiddle()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 143
    iget-object v6, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v6}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 144
    .local v0, doc:Lorg/dom4j/Document;
    const-string v6, "html"

    invoke-interface {v0, v6}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 145
    .local v5, root:Lorg/dom4j/Element;
    const-string v6, "header"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 146
    .local v3, header:Lorg/dom4j/Element;
    const-string v6, "footer"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 149
    .local v2, footer:Lorg/dom4j/Element;
    invoke-interface {v5}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v4

    .line 150
    .local v4, list:Ljava/util/List;
    iget-object v6, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    const-string v7, "foo"

    invoke-virtual {v6, v7}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 151
    .local v1, foo:Lorg/dom4j/Element;
    invoke-interface {v4, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    move v6, v8

    :goto_0
    invoke-static {v6}, Lorg/dom4j/ContentTest;->assertTrue(Z)V

    .line 155
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_1

    move v6, v8

    :goto_1
    invoke-static {v6}, Lorg/dom4j/ContentTest;->assertTrue(Z)V

    .line 156
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_2

    move v6, v8

    :goto_2
    invoke-static {v6}, Lorg/dom4j/ContentTest;->assertTrue(Z)V

    .line 157
    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_3

    move v6, v8

    :goto_3
    invoke-static {v6}, Lorg/dom4j/ContentTest;->assertTrue(Z)V

    .line 158
    return-void

    :cond_0
    move v6, v9

    .line 154
    goto :goto_0

    :cond_1
    move v6, v9

    .line 155
    goto :goto_1

    :cond_2
    move v6, v9

    .line 156
    goto :goto_2

    :cond_3
    move v6, v9

    .line 157
    goto :goto_3
.end method

.method public testContent()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    iget-object v5, p0, Lorg/dom4j/ContentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v5}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    .line 52
    .local v4, root:Lorg/dom4j/Element;
    const-string v5, "Has root element"

    if-eqz v4, :cond_0

    move v6, v9

    :goto_0
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 54
    invoke-interface {v4}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, content:Ljava/util/List;
    const-string v5, "Root has content"

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    move v6, v9

    .line 55
    :goto_1
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, iterated:Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 66
    const-string v5, "Iteration completed"

    invoke-static {v5, v2}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 67
    return-void

    .end local v0           #content:Ljava/util/List;
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #iterated:Z
    :cond_0
    move v6, v8

    .line 52
    goto :goto_0

    .restart local v0       #content:Ljava/util/List;
    :cond_1
    move v6, v8

    .line 56
    goto :goto_1

    .line 61
    .restart local v1       #iter:Ljava/util/Iterator;
    .restart local v2       #iterated:Z
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 62
    .local v3, object:Ljava/lang/Object;
    const-string v5, "Content object is a node"

    instance-of v6, v3, Lorg/dom4j/Node;

    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 63
    const/4 v2, 0x1

    goto :goto_2
.end method

.method protected testGetAttributes(Lorg/dom4j/Element;)V
    .locals 8
    .parameter "author"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 207
    const-string v1, "name"

    .line 208
    .local v1, definedName:Ljava/lang/String;
    const-string v2, "undefined-attribute-name"

    .line 209
    .local v2, undefinedName:Ljava/lang/String;
    const-string v0, "** Default Value **"

    .line 211
    .local v0, defaultValue:Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, value:Ljava/lang/String;
    const-string v4, "Defined value doesn\'t return specified default value"

    .line 213
    if-eq v3, v0, :cond_0

    move v5, v7

    .line 212
    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 215
    invoke-interface {p1, v2, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    const-string v4, "Undefined value returns specified default value"

    .line 217
    if-ne v3, v0, :cond_1

    move v5, v7

    .line 216
    :goto_1
    invoke-static {v4, v5}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 218
    return-void

    :cond_0
    move v5, v6

    .line 213
    goto :goto_0

    :cond_1
    move v5, v6

    .line 217
    goto :goto_1
.end method

.method public testGetNode()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    iget-object v5, p0, Lorg/dom4j/ContentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v5}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    .line 71
    .local v4, root:Lorg/dom4j/Element;
    const-string v5, "Has root element"

    if-eqz v4, :cond_0

    move v6, v8

    :goto_0
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 73
    invoke-interface {v4}, Lorg/dom4j/Element;->nodeCount()I

    move-result v0

    .line 74
    .local v0, count:I
    const-string v5, "Root has correct node count"

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    move v6, v8

    :goto_1
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 76
    const/4 v2, 0x0

    .line 78
    .local v2, iterated:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-lt v1, v0, :cond_2

    .line 84
    const-string v5, "Iteration completed"

    invoke-static {v5, v2}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 85
    return-void

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #iterated:Z
    :cond_0
    move v6, v7

    .line 71
    goto :goto_0

    .restart local v0       #count:I
    :cond_1
    move v6, v7

    .line 74
    goto :goto_1

    .line 79
    .restart local v1       #i:I
    .restart local v2       #iterated:Z
    :cond_2
    invoke-interface {v4, v1}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v3

    .line 80
    .local v3, node:Lorg/dom4j/Node;
    const-string v5, "Valid node returned from node()"

    if-eqz v3, :cond_3

    move v6, v8

    :goto_3
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 81
    const/4 v2, 0x1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v6, v7

    .line 80
    goto :goto_3
.end method

.method public testGetXPathNode()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 88
    iget-object v5, p0, Lorg/dom4j/ContentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v5}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    .line 89
    .local v4, root:Lorg/dom4j/Element;
    const-string v5, "Has root element"

    if-eqz v4, :cond_0

    move v6, v8

    :goto_0
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 91
    invoke-interface {v4}, Lorg/dom4j/Element;->nodeCount()I

    move-result v0

    .line 92
    .local v0, count:I
    const-string v5, "Root has correct node count"

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    move v6, v8

    :goto_1
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 94
    const/4 v2, 0x0

    .line 96
    .local v2, iterated:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-lt v1, v0, :cond_2

    .line 104
    const-string v5, "Iteration completed"

    invoke-static {v5, v2}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 105
    return-void

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #iterated:Z
    :cond_0
    move v6, v7

    .line 89
    goto :goto_0

    .restart local v0       #count:I
    :cond_1
    move v6, v7

    .line 92
    goto :goto_1

    .line 97
    .restart local v1       #i:I
    .restart local v2       #iterated:Z
    :cond_2
    invoke-interface {v4, v1}, Lorg/dom4j/Element;->getXPathResult(I)Lorg/dom4j/Node;

    move-result-object v3

    .line 98
    .local v3, node:Lorg/dom4j/Node;
    const-string v5, "Valid node returned from node()"

    if-eqz v3, :cond_3

    move v6, v8

    :goto_3
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 99
    const-string v5, "Node supports the parent relationship"

    .line 100
    invoke-interface {v3}, Lorg/dom4j/Node;->supportsParent()Z

    move-result v6

    .line 99
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 101
    const/4 v2, 0x1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v6, v7

    .line 98
    goto :goto_3
.end method

.method public testOrderOfPI()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    iget-object v5, p0, Lorg/dom4j/ContentTest;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v5}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 109
    .local v0, document:Lorg/dom4j/Document;
    const-string v5, "xml-stylesheet"

    .line 110
    const-string v6, "type=\"text/xsl\" href=\"...\""

    .line 109
    invoke-interface {v0, v5, v6}, Lorg/dom4j/Document;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    .line 111
    const-string v5, "root"

    invoke-interface {v0, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 113
    invoke-interface {v0}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, list:Ljava/util/List;
    invoke-static {v1}, Lorg/dom4j/ContentTest;->assertNotNull(Ljava/lang/Object;)V

    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v9, v5}, Lorg/dom4j/ContentTest;->assertEquals(II)V

    .line 118
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 119
    .local v2, pi:Ljava/lang/Object;
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 121
    .local v3, root:Ljava/lang/Object;
    const-string v5, "First element is not a PI"

    .line 122
    instance-of v6, v2, Lorg/dom4j/ProcessingInstruction;

    .line 121
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 123
    const-string v5, "Second element is an element"

    instance-of v6, v3, Lorg/dom4j/Element;

    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 125
    const-string v4, "<?xml version=\"1.0\" ?>\n<?xml-stylesheet type=\"text/xsl\" href=\"foo\" ?>\n<root/>"

    .line 128
    .local v4, xml:Ljava/lang/String;
    invoke-static {v4}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lorg/dom4j/ContentTest;->assertNotNull(Ljava/lang/Object;)V

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v9, v5}, Lorg/dom4j/ContentTest;->assertEquals(II)V

    .line 134
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 135
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 137
    const-string v5, "First element is not a PI"

    .line 138
    instance-of v6, v2, Lorg/dom4j/ProcessingInstruction;

    .line 137
    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 139
    const-string v5, "Second element is an element"

    instance-of v6, v3, Lorg/dom4j/Element;

    invoke-static {v5, v6}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 140
    return-void
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

    .line 31
    iget-object v4, p0, Lorg/dom4j/ContentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v4}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 32
    .local v3, root:Lorg/dom4j/Element;
    const-string v4, "Has root element"

    if-eqz v3, :cond_0

    move v5, v8

    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 34
    const-string v4, "author"

    invoke-interface {v3, v4}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 35
    .local v2, authors:Ljava/util/List;
    const-string v4, "Root has children"

    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move v5, v8

    .line 35
    :goto_1
    invoke-static {v4, v5}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 38
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 39
    .local v0, author1:Lorg/dom4j/Element;
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 41
    .local v1, author2:Lorg/dom4j/Element;
    const-string v4, "Author1 is James"

    const-string v5, "name"

    invoke-interface {v0, v5}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    const-string v6, "James"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 41
    invoke-static {v4, v5}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 43
    const-string v4, "Author2 is Bob"

    const-string v5, "name"

    invoke-interface {v1, v5}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    const-string v6, "Bob"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 43
    invoke-static {v4, v5}, Lorg/dom4j/ContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {p0, v0}, Lorg/dom4j/ContentTest;->testGetAttributes(Lorg/dom4j/Element;)V

    .line 47
    invoke-virtual {p0, v1}, Lorg/dom4j/ContentTest;->testGetAttributes(Lorg/dom4j/Element;)V

    .line 48
    return-void

    .end local v0           #author1:Lorg/dom4j/Element;
    .end local v1           #author2:Lorg/dom4j/Element;
    .end local v2           #authors:Ljava/util/List;
    :cond_0
    move v5, v7

    .line 32
    goto :goto_0

    .restart local v2       #authors:Ljava/util/List;
    :cond_1
    move v5, v7

    .line 36
    goto :goto_1
.end method
