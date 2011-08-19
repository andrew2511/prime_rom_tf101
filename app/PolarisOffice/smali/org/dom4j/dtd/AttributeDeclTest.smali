.class public Lorg/dom4j/dtd/AttributeDeclTest;
.super Lorg/dom4j/AbstractTestCase;
.source "AttributeDeclTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;
    }
.end annotation


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 43
    sget-object v0, Lorg/dom4j/dtd/AttributeDeclTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.dtd.AttributeDeclTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/dtd/AttributeDeclTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 44
    return-void

    .line 43
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected assertSameAttributeDecl(Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;Lorg/dom4j/dtd/AttributeDecl;)V
    .locals 3
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 113
    const-string v0, "elementName is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v0, v1, v2}, Lorg/dom4j/dtd/AttributeDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "attributeName is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v0, v1, v2}, Lorg/dom4j/dtd/AttributeDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "type is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/dtd/AttributeDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "valueDefault is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->getValueDefault()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->getValueDefault()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0, v1, v2}, Lorg/dom4j/dtd/AttributeDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "toString() is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->getText()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v0, v1, v2}, Lorg/dom4j/dtd/AttributeDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public testCDataFixedValue()V
    .locals 7

    .prologue
    .line 79
    new-instance v0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;

    const-string v1, "foo"

    .line 80
    const-string v2, "bar"

    .line 81
    const-string v3, "CDATA"

    .line 82
    const-string v4, "#FIXED"

    .line 83
    const-string v5, "goo"

    .line 84
    const-string v6, "<!ATTLIST foo bar CDATA #FIXED \"goo\">"

    .line 79
    invoke-direct/range {v0 .. v6}, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v0, decl:Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;
    new-instance v1, Lorg/dom4j/dtd/AttributeDecl;

    const-string v2, "foo"

    const-string v3, "bar"

    const-string v4, "CDATA"

    .line 86
    const-string v5, "#FIXED"

    const-string v6, "goo"

    invoke-direct/range {v1 .. v6}, Lorg/dom4j/dtd/AttributeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/dtd/AttributeDeclTest;->assertSameAttributeDecl(Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;Lorg/dom4j/dtd/AttributeDecl;)V

    .line 87
    return-void
.end method

.method public testCDataNoneValue()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;

    const-string v1, "foo"

    .line 100
    const-string v2, "bar"

    .line 101
    const-string v3, "CDATA"

    .line 103
    const-string v5, "goo"

    .line 104
    const-string v6, "<!ATTLIST foo bar CDATA \"goo\">"

    .line 99
    invoke-direct/range {v0 .. v6}, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v0, decl:Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;
    new-instance v5, Lorg/dom4j/dtd/AttributeDecl;

    const-string v6, "foo"

    const-string v7, "bar"

    const-string v8, "CDATA"

    .line 106
    const-string v10, "goo"

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Lorg/dom4j/dtd/AttributeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v0, v5}, Lorg/dom4j/dtd/AttributeDeclTest;->assertSameAttributeDecl(Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;Lorg/dom4j/dtd/AttributeDecl;)V

    .line 107
    return-void
.end method

.method public testIdImpliedNone()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 59
    new-instance v0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;

    const-string v1, "foo"

    .line 60
    const-string v2, "bar"

    .line 61
    const-string v3, "ID"

    .line 62
    const-string v4, "#IMPLIED"

    .line 64
    const-string v6, "<!ATTLIST foo bar ID #IMPLIED>"

    .line 59
    invoke-direct/range {v0 .. v6}, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v0, decl:Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;
    new-instance v6, Lorg/dom4j/dtd/AttributeDecl;

    const-string v7, "foo"

    const-string v8, "bar"

    const-string v9, "ID"

    .line 66
    const-string v10, "#IMPLIED"

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/dom4j/dtd/AttributeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v0, v6}, Lorg/dom4j/dtd/AttributeDeclTest;->assertSameAttributeDecl(Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;Lorg/dom4j/dtd/AttributeDecl;)V

    .line 67
    return-void
.end method
