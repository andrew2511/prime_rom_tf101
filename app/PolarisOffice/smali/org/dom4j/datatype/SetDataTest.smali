.class public Lorg/dom4j/datatype/SetDataTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SetDataTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field static class$1:Ljava/lang/Class;

.field static class$2:Ljava/lang/Class;


# instance fields
.field private factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 28
    new-instance v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/datatype/DatatypeDocumentFactory;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    .line 27
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 31
    sget-object v0, Lorg/dom4j/datatype/SetDataTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.datatype.SetDataTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/SetDataTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 32
    return-void

    .line 31
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 157
    const-string v2, "/xml/test/schema/personal.xsd"

    invoke-virtual {p0, v2}, Lorg/dom4j/datatype/SetDataTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 158
    .local v1, schema:Lorg/dom4j/Document;
    iget-object v2, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-virtual {v2, v1}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;)V

    .line 160
    new-instance v0, Lorg/dom4j/Namespace;

    const-string v2, "t"

    const-string v3, "urn://testing"

    invoke-direct {v0, v2, v3}, Lorg/dom4j/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v0, ns:Lorg/dom4j/Namespace;
    iget-object v2, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-virtual {v2, v1, v0}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V

    .line 162
    return-void
.end method

.method public testAttribute()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v6, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    const-string v7, "person"

    invoke-virtual {v6, v7}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v5

    .line 38
    .local v5, personName:Lorg/dom4j/QName;
    iget-object v6, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    const-string v7, "age"

    invoke-virtual {v6, v7}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v1

    .line 40
    .local v1, ageName:Lorg/dom4j/QName;
    iget-object v6, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-virtual {v6, v5}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v4

    .line 42
    .local v4, person:Lorg/dom4j/Element;
    const-string v6, "10"

    invoke-interface {v4, v1, v6}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 44
    invoke-interface {v4, v1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 46
    .local v0, age:Lorg/dom4j/Attribute;
    const-string v6, "Created DatatypeAttribute not correct"

    .line 47
    instance-of v7, v0, Lorg/dom4j/datatype/DatatypeAttribute;

    .line 46
    invoke-static {v6, v7}, Lorg/dom4j/datatype/SetDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 49
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Found attribute: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/datatype/SetDataTest;->log(Ljava/lang/String;)V

    .line 51
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 52
    .local v2, data:Ljava/lang/Object;
    new-instance v3, Ljava/math/BigInteger;

    const-string v6, "10"

    invoke-direct {v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, expected:Ljava/math/BigInteger;
    const-string v6, "Data is correct type"

    sget-object v7, Lorg/dom4j/datatype/SetDataTest;->class$1:Ljava/lang/Class;

    if-nez v7, :cond_0

    :try_start_0
    const-string v7, "java.math.BigInteger"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    sput-object v7, Lorg/dom4j/datatype/SetDataTest;->class$1:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/dom4j/datatype/SetDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    const-string v6, "Set age correctly"

    invoke-static {v6, v3, v2}, Lorg/dom4j/datatype/SetDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    const-string v6, "32"

    invoke-interface {v0, v6}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    .line 59
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 60
    new-instance v3, Ljava/math/BigInteger;

    .end local v3           #expected:Ljava/math/BigInteger;
    const-string v6, "32"

    invoke-direct {v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v3       #expected:Ljava/math/BigInteger;
    const-string v6, "Set age correctly"

    invoke-static {v6, v3, v2}, Lorg/dom4j/datatype/SetDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    :try_start_1
    const-string v6, "abc"

    invoke-interface {v0, v6}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    .line 74
    const-string v6, "Appeared to set an invalid value"

    invoke-static {v6}, Lorg/dom4j/datatype/SetDataTest;->fail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 75
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public testAttributeWithNamespace()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v6, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    const-string v7, "person"

    const-string v8, "t"

    const-string v9, "urn://testing"

    invoke-virtual {v6, v7, v8, v9}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v5

    .line 81
    .local v5, personName:Lorg/dom4j/QName;
    iget-object v6, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    const-string v7, "age"

    const-string v8, "t"

    const-string v9, "urn://testing"

    invoke-virtual {v6, v7, v8, v9}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v1

    .line 83
    .local v1, ageName:Lorg/dom4j/QName;
    iget-object v6, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-virtual {v6, v5}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v4

    .line 85
    .local v4, person:Lorg/dom4j/Element;
    const-string v6, "10"

    invoke-interface {v4, v1, v6}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 87
    invoke-interface {v4, v1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 89
    .local v0, age:Lorg/dom4j/Attribute;
    const-string v6, "Created DatatypeAttribute not correct"

    .line 90
    instance-of v7, v0, Lorg/dom4j/datatype/DatatypeAttribute;

    .line 89
    invoke-static {v6, v7}, Lorg/dom4j/datatype/SetDataTest;->assertTrue(Ljava/lang/String;Z)V

    .line 92
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Found attribute: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/datatype/SetDataTest;->log(Ljava/lang/String;)V

    .line 94
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, data:Ljava/lang/Object;
    new-instance v3, Ljava/math/BigInteger;

    const-string v6, "10"

    invoke-direct {v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, expected:Ljava/math/BigInteger;
    const-string v6, "Data is correct type"

    sget-object v7, Lorg/dom4j/datatype/SetDataTest;->class$1:Ljava/lang/Class;

    if-nez v7, :cond_0

    :try_start_0
    const-string v7, "java.math.BigInteger"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    sput-object v7, Lorg/dom4j/datatype/SetDataTest;->class$1:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/dom4j/datatype/SetDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    const-string v6, "Set age correctly"

    invoke-static {v6, v3, v2}, Lorg/dom4j/datatype/SetDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    const-string v6, "32"

    invoke-interface {v0, v6}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    .line 102
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 103
    new-instance v3, Ljava/math/BigInteger;

    .end local v3           #expected:Ljava/math/BigInteger;
    const-string v6, "32"

    invoke-direct {v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v3       #expected:Ljava/math/BigInteger;
    const-string v6, "Set age correctly"

    invoke-static {v6, v3, v2}, Lorg/dom4j/datatype/SetDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    :try_start_1
    const-string v6, "abc"

    invoke-interface {v0, v6}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    .line 109
    const-string v6, "Appeared to set an invalid value"

    invoke-static {v6}, Lorg/dom4j/datatype/SetDataTest;->fail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 110
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public testElement()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    .line 115
    iget-object v6, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    const-string v7, "person"

    invoke-virtual {v6, v7}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v5

    .line 116
    .local v5, personName:Lorg/dom4j/QName;
    iget-object v6, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    const-string v7, "numberOfCars"

    invoke-virtual {v6, v7}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    .line 118
    .local v3, numberOfCarsName:Lorg/dom4j/QName;
    iget-object v6, p0, Lorg/dom4j/datatype/SetDataTest;->factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-virtual {v6, v5}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v4

    .line 120
    .local v4, person:Lorg/dom4j/Element;
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 122
    .local v0, cars:Lorg/dom4j/Element;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Found element: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/datatype/SetDataTest;->log(Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/Short;

    const/16 v6, 0xa

    invoke-direct {v2, v6}, Ljava/lang/Short;-><init>(S)V

    .line 125
    .local v2, expected:Ljava/lang/Short;
    invoke-interface {v0, v2}, Lorg/dom4j/Element;->setData(Ljava/lang/Object;)V

    .line 127
    invoke-interface {v0}, Lorg/dom4j/Element;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, data:Ljava/lang/Object;
    const-string v6, "Data is correct type"

    sget-object v7, Lorg/dom4j/datatype/SetDataTest;->class$2:Ljava/lang/Class;

    if-nez v7, :cond_0

    :try_start_0
    const-string v7, "java.lang.Short"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    sput-object v7, Lorg/dom4j/datatype/SetDataTest;->class$2:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/dom4j/datatype/SetDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    const-string v6, "Set cars correctly"

    invoke-static {v6, v2, v1}, Lorg/dom4j/datatype/SetDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    new-instance v6, Ljava/lang/Short;

    invoke-direct {v6, v9}, Ljava/lang/Short;-><init>(S)V

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->setData(Ljava/lang/Object;)V

    .line 133
    invoke-interface {v0}, Lorg/dom4j/Element;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 134
    new-instance v2, Ljava/lang/Short;

    .end local v2           #expected:Ljava/lang/Short;
    invoke-direct {v2, v9}, Ljava/lang/Short;-><init>(S)V

    .line 136
    .restart local v2       #expected:Ljava/lang/Short;
    const-string v6, "Set cars correctly"

    invoke-static {v6, v2, v1}, Lorg/dom4j/datatype/SetDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    const-string v6, "34"

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 139
    invoke-interface {v0}, Lorg/dom4j/Element;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/lang/Short;

    .end local v2           #expected:Ljava/lang/Short;
    const/16 v6, 0x22

    invoke-direct {v2, v6}, Ljava/lang/Short;-><init>(S)V

    .line 142
    .restart local v2       #expected:Ljava/lang/Short;
    const-string v6, "Set cars correctly"

    invoke-static {v6, v2, v1}, Lorg/dom4j/datatype/SetDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    :try_start_1
    const-string v6, "abc"

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 147
    const-string v6, "Appeared to set an invalid value"

    invoke-static {v6}, Lorg/dom4j/datatype/SetDataTest;->fail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 148
    :catch_1
    move-exception v6

    goto :goto_0
.end method
