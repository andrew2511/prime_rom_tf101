.class public Lorg/dom4j/UserDataTest;
.super Lorg/dom4j/AbstractTestCase;
.source "UserDataTest.java"


# static fields
.field private static final INPUT_XML_FILE:Ljava/lang/String; = "/xml/web.xml"

.field static class$0:Ljava/lang/Class;


# instance fields
.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Double;

    const-wide v1, 0x3ff3c0c1fc8f3238L

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/dom4j/UserDataTest;->userData:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 30
    sget-object v0, Lorg/dom4j/UserDataTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.UserDataTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/UserDataTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 31
    return-void

    .line 30
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected assertUserData(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .locals 3
    .parameter "root"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    invoke-interface {p1}, Lorg/dom4j/Element;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, result:Ljava/lang/Object;
    const-string v1, "No user data!"

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 111
    const-string v1, "Stored user data correctly"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 112
    return-void

    .line 110
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected setUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 117
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 118
    .local v0, reader:Lorg/dom4j/io/SAXReader;
    invoke-static {}, Lorg/dom4j/util/UserDataDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 119
    const-string v1, "/xml/web.xml"

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/UserDataTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/UserDataTest;->document:Lorg/dom4j/Document;

    .line 120
    return-void
.end method

.method public testCloneAttribute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/dom4j/UserDataTest;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 60
    .local v3, root:Lorg/dom4j/Element;
    const-string v4, "name"

    const-string v5, "value"

    invoke-interface {v3, v4, v5}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 62
    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 63
    .local v0, attribute:Lorg/dom4j/Attribute;
    instance-of v4, v0, Lorg/dom4j/util/UserDataAttribute;

    invoke-static {v4}, Lorg/dom4j/UserDataTest;->assertTrue(Z)V

    .line 65
    invoke-interface {v3}, Lorg/dom4j/Element;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 66
    .local v1, cloned:Lorg/dom4j/Element;
    const-string v4, "name"

    invoke-interface {v1, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 67
    .local v2, clonedAttribute:Lorg/dom4j/Attribute;
    instance-of v4, v2, Lorg/dom4j/util/UserDataAttribute;

    invoke-static {v4}, Lorg/dom4j/UserDataTest;->assertTrue(Z)V

    .line 68
    return-void
.end method

.method public testNewAdditions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/dom4j/UserDataTest;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 73
    .local v2, root:Lorg/dom4j/Element;
    const-string v3, "foo1234"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 74
    .local v1, newElement:Lorg/dom4j/Element;
    const-string v3, "New Element is a UserDataElement"

    .line 75
    instance-of v4, v1, Lorg/dom4j/util/UserDataElement;

    .line 74
    invoke-static {v3, v4}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 77
    const-string v3, "bar456"

    const-string v4, "123"

    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 79
    const-string v3, "bar456"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 81
    .local v0, newAttribute:Lorg/dom4j/Attribute;
    const-string v3, "New Attribute is a UserDataAttribute"

    .line 82
    instance-of v4, v0, Lorg/dom4j/util/UserDataAttribute;

    .line 81
    invoke-static {v3, v4}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public testNewDocument()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lorg/dom4j/util/UserDataDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    .line 87
    .local v1, factory:Lorg/dom4j/DocumentFactory;
    invoke-virtual {v1}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 89
    .local v0, document:Lorg/dom4j/Document;
    const-string v5, "root"

    invoke-interface {v0, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 90
    .local v4, root:Lorg/dom4j/Element;
    const-string v5, "Root Element is a UserDataElement"

    .line 91
    instance-of v6, v4, Lorg/dom4j/util/UserDataElement;

    .line 90
    invoke-static {v5, v6}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 93
    const-string v5, "foo1234"

    invoke-interface {v4, v5}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 94
    .local v3, newElement:Lorg/dom4j/Element;
    const-string v5, "New Element is a UserDataElement"

    .line 95
    instance-of v6, v3, Lorg/dom4j/util/UserDataElement;

    .line 94
    invoke-static {v5, v6}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 97
    const-string v5, "bar456"

    const-string v6, "123"

    invoke-interface {v4, v5, v6}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 99
    const-string v5, "bar456"

    invoke-interface {v4, v5}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 101
    .local v2, newAttribute:Lorg/dom4j/Attribute;
    const-string v5, "New Attribute is a UserDataAttribute"

    .line 102
    instance-of v6, v2, Lorg/dom4j/util/UserDataAttribute;

    .line 101
    invoke-static {v5, v6}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public testSetData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    invoke-virtual {p0}, Lorg/dom4j/UserDataTest;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 38
    .local v1, root:Lorg/dom4j/Element;
    const-string v2, "Element instanceof UserDataElement"

    .line 39
    instance-of v3, v1, Lorg/dom4j/util/UserDataElement;

    .line 38
    invoke-static {v2, v3}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 41
    iget-object v2, p0, Lorg/dom4j/UserDataTest;->userData:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->setData(Ljava/lang/Object;)V

    .line 43
    const-string v2, "Stored user data!"

    invoke-interface {v1}, Lorg/dom4j/Element;->getData()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/dom4j/UserDataTest;->userData:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    move v3, v6

    :goto_0
    invoke-static {v2, v3}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 45
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "root: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/UserDataTest;->log(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lorg/dom4j/UserDataTest;->userData:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/UserDataTest;->assertUserData(Lorg/dom4j/Element;Ljava/lang/Object;)V

    .line 49
    invoke-interface {v1}, Lorg/dom4j/Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 50
    .local v0, cloned:Lorg/dom4j/Element;
    const-string v2, "Cloned new instance"

    if-eq v0, v1, :cond_1

    move v3, v6

    :goto_1
    invoke-static {v2, v3}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 51
    iget-object v2, p0, Lorg/dom4j/UserDataTest;->userData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lorg/dom4j/UserDataTest;->assertUserData(Lorg/dom4j/Element;Ljava/lang/Object;)V

    .line 53
    invoke-interface {v1}, Lorg/dom4j/Element;->createCopy()Lorg/dom4j/Element;

    move-result-object v0

    .line 54
    const-string v2, "Cloned new instance"

    if-eq v0, v1, :cond_2

    move v3, v6

    :goto_2
    invoke-static {v2, v3}, Lorg/dom4j/UserDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 55
    iget-object v2, p0, Lorg/dom4j/UserDataTest;->userData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lorg/dom4j/UserDataTest;->assertUserData(Lorg/dom4j/Element;Ljava/lang/Object;)V

    .line 56
    return-void

    .end local v0           #cloned:Lorg/dom4j/Element;
    :cond_0
    move v3, v5

    .line 43
    goto :goto_0

    .restart local v0       #cloned:Lorg/dom4j/Element;
    :cond_1
    move v3, v5

    .line 50
    goto :goto_1

    :cond_2
    move v3, v5

    .line 54
    goto :goto_2
.end method
