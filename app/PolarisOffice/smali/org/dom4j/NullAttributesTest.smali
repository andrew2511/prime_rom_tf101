.class public Lorg/dom4j/NullAttributesTest;
.super Lorg/dom4j/AbstractTestCase;
.source "NullAttributesTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field protected document:Lorg/dom4j/Document;

.field protected element:Lorg/dom4j/Element;

.field protected factory:Lorg/dom4j/DocumentFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 19
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/NullAttributesTest;->factory:Lorg/dom4j/DocumentFactory;

    .line 21
    iget-object v0, p0, Lorg/dom4j/NullAttributesTest;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/NullAttributesTest;->document:Lorg/dom4j/Document;

    .line 23
    iget-object v0, p0, Lorg/dom4j/NullAttributesTest;->document:Lorg/dom4j/Document;

    const-string v1, "root"

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    .line 18
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 26
    sget-object v0, Lorg/dom4j/NullAttributesTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.NullAttributesTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/NullAttributesTest;->class$0:Ljava/lang/Class;

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
.method public testAttributes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->factory:Lorg/dom4j/DocumentFactory;

    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v3, "v"

    invoke-virtual {v1, v2, v3, v7}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 66
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v6

    :goto_0
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 67
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v6

    :goto_1
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 69
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v1, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Attribute;)V

    .line 70
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v2, "v"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 71
    if-nez v0, :cond_2

    move v1, v6

    :goto_2
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 73
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->factory:Lorg/dom4j/DocumentFactory;

    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v3, "v"

    const-string v4, "123"

    invoke-virtual {v1, v2, v3, v4}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v1, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Attribute;)V

    .line 75
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v2, "v"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    move v1, v6

    :goto_3
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 78
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->factory:Lorg/dom4j/DocumentFactory;

    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v3, "v"

    invoke-virtual {v1, v2, v3, v7}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v1, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Attribute;)V

    .line 80
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v2, "v"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 81
    if-nez v0, :cond_4

    move v1, v6

    :goto_4
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 82
    return-void

    :cond_0
    move v1, v5

    .line 66
    goto :goto_0

    :cond_1
    move v1, v5

    .line 67
    goto :goto_1

    :cond_2
    move v1, v5

    .line 71
    goto :goto_2

    :cond_3
    move v1, v5

    .line 76
    goto :goto_3

    :cond_4
    move v1, v5

    .line 81
    goto :goto_4
.end method

.method public testQNames()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    const-string v2, "bar"

    invoke-static {v2}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v1

    .line 49
    .local v1, bar:Lorg/dom4j/QName;
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v2, v1, v6}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 51
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v2, v1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 52
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-nez v0, :cond_0

    move v2, v5

    :goto_0
    invoke-static {v2}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 54
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v3, "123"

    invoke-interface {v2, v1, v3}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 55
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v2, v1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    move v2, v5

    :goto_1
    invoke-static {v2}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 58
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v2, v1, v6}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 59
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v2, v1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 60
    if-nez v0, :cond_2

    move v2, v5

    :goto_2
    invoke-static {v2}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 61
    return-void

    :cond_0
    move v2, v4

    .line 52
    goto :goto_0

    :cond_1
    move v2, v4

    .line 56
    goto :goto_1

    :cond_2
    move v2, v4

    .line 60
    goto :goto_2
.end method

.method public testStringNames()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v2, "foo"

    invoke-interface {v1, v2, v6}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 34
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v2, "foo"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 35
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-nez v0, :cond_0

    move v1, v5

    :goto_0
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 37
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v2, "foo"

    const-string v3, "123"

    invoke-interface {v1, v2, v3}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 38
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v2, "foo"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    move v1, v5

    :goto_1
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 41
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v2, "foo"

    invoke-interface {v1, v2, v6}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 42
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v2, "foo"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    move v1, v5

    :goto_2
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 44
    return-void

    :cond_0
    move v1, v4

    .line 35
    goto :goto_0

    :cond_1
    move v1, v4

    .line 39
    goto :goto_1

    :cond_2
    move v1, v4

    .line 43
    goto :goto_2
.end method
