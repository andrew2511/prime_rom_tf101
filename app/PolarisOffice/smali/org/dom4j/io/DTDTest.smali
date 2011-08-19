.class public Lorg/dom4j/io/DTDTest;
.super Lorg/dom4j/AbstractTestCase;
.source "DTDTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/io/DTDTest$MyEntityResolver;
    }
.end annotation


# static fields
.field private static final DTD_FILE:Ljava/lang/String; = "xml/dtd/sample.dtd"

.field protected static final DTD_PUBLICID:Ljava/lang/String; = "-//dom4j//DTD sample"

.field protected static final DTD_SYSTEM_ID:Ljava/lang/String; = "sample.dtd"

.field private static final XML_EXTERNAL_FILE:Ljava/lang/String; = "xml/dtd/external.xml"

.field private static final XML_INTERNAL_FILE:Ljava/lang/String; = "xml/dtd/internal.xml"

.field private static final XML_MIXED:Ljava/lang/String; = "xml/dtd/mixed.xml"

.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 92
    sget-object v0, Lorg/dom4j/io/DTDTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.io.DTDTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/DTDTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 93
    return-void

    .line 92
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected assertSameDTDSubset(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter "txt"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 304
    if-nez p2, :cond_2

    .line 305
    if-nez p3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Not expecting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " DTD subset."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/dom4j/io/DTDTest;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_2
    if-nez p3, :cond_3

    .line 315
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Expecting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " DTD subset."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/dom4j/io/DTDTest;->fail(Ljava/lang/String;)V

    .line 321
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, " DTD subset has correct #of declarations"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 322
    const-string v5, ": expected=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", actual=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 323
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 321
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    .line 321
    invoke-static {v4, v5, v6}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;II)V

    .line 329
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 331
    .local v0, itr1:Ljava/util/Iterator;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 333
    .local v1, itr2:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 336
    .local v2, obj1:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 338
    .local v3, obj2:Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, " DTD subset: Same type of declaration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 338
    invoke-static {v4, v5, v6}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    instance-of v4, v2, Lorg/dom4j/dtd/AttributeDecl;

    if-eqz v4, :cond_4

    .line 342
    check-cast v2, Lorg/dom4j/dtd/AttributeDecl;

    .end local v2           #obj1:Ljava/lang/Object;
    check-cast v3, Lorg/dom4j/dtd/AttributeDecl;

    .end local v3           #obj2:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/io/DTDTest;->assertSameDecl(Lorg/dom4j/dtd/AttributeDecl;Lorg/dom4j/dtd/AttributeDecl;)V

    goto :goto_1

    .line 343
    .restart local v2       #obj1:Ljava/lang/Object;
    .restart local v3       #obj2:Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Lorg/dom4j/dtd/ElementDecl;

    if-eqz v4, :cond_5

    .line 344
    check-cast v2, Lorg/dom4j/dtd/ElementDecl;

    .end local v2           #obj1:Ljava/lang/Object;
    check-cast v3, Lorg/dom4j/dtd/ElementDecl;

    .end local v3           #obj2:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/io/DTDTest;->assertSameDecl(Lorg/dom4j/dtd/ElementDecl;Lorg/dom4j/dtd/ElementDecl;)V

    goto :goto_1

    .line 345
    .restart local v2       #obj1:Ljava/lang/Object;
    .restart local v3       #obj2:Ljava/lang/Object;
    :cond_5
    instance-of v4, v2, Lorg/dom4j/dtd/InternalEntityDecl;

    if-eqz v4, :cond_6

    .line 346
    check-cast v2, Lorg/dom4j/dtd/InternalEntityDecl;

    .line 347
    .end local v2           #obj1:Ljava/lang/Object;
    check-cast v3, Lorg/dom4j/dtd/InternalEntityDecl;

    .line 346
    .end local v3           #obj2:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/io/DTDTest;->assertSameDecl(Lorg/dom4j/dtd/InternalEntityDecl;Lorg/dom4j/dtd/InternalEntityDecl;)V

    goto :goto_1

    .line 348
    .restart local v2       #obj1:Ljava/lang/Object;
    .restart local v3       #obj2:Ljava/lang/Object;
    :cond_6
    instance-of v4, v2, Lorg/dom4j/dtd/ExternalEntityDecl;

    if-eqz v4, :cond_7

    .line 349
    check-cast v2, Lorg/dom4j/dtd/ExternalEntityDecl;

    .line 350
    .end local v2           #obj1:Ljava/lang/Object;
    check-cast v3, Lorg/dom4j/dtd/ExternalEntityDecl;

    .line 349
    .end local v3           #obj2:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/io/DTDTest;->assertSameDecl(Lorg/dom4j/dtd/ExternalEntityDecl;Lorg/dom4j/dtd/ExternalEntityDecl;)V

    goto :goto_1

    .line 352
    .restart local v2       #obj1:Ljava/lang/Object;
    .restart local v3       #obj2:Ljava/lang/Object;
    :cond_7
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Unexpected declaration type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public assertSameDecl(Lorg/dom4j/dtd/AttributeDecl;Lorg/dom4j/dtd/AttributeDecl;)V
    .locals 3
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 369
    const-string v0, "attributeName is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDecl;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "elementName is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDecl;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v0, "type is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDecl;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "value is not correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDecl;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "valueDefault is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDecl;->getValueDefault()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->getValueDefault()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "toString() is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/AttributeDecl;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual {p2}, Lorg/dom4j/dtd/AttributeDecl;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method protected assertSameDecl(Lorg/dom4j/dtd/ElementDecl;Lorg/dom4j/dtd/ElementDecl;)V
    .locals 3
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 397
    const-string v0, "name is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/ElementDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/dtd/ElementDecl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "model is not correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/ElementDecl;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {p2}, Lorg/dom4j/dtd/ElementDecl;->getModel()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "toString() is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/ElementDecl;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-virtual {p2}, Lorg/dom4j/dtd/ElementDecl;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method protected assertSameDecl(Lorg/dom4j/dtd/ExternalEntityDecl;Lorg/dom4j/dtd/ExternalEntityDecl;)V
    .locals 3
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 437
    const-string v0, "name is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/ExternalEntityDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/dtd/ExternalEntityDecl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "publicID is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/ExternalEntityDecl;->getPublicID()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {p2}, Lorg/dom4j/dtd/ExternalEntityDecl;->getPublicID()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "systemID is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/ExternalEntityDecl;->getSystemID()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {p2}, Lorg/dom4j/dtd/ExternalEntityDecl;->getSystemID()Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v0, "toString() is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/ExternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-virtual {p2}, Lorg/dom4j/dtd/ExternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method protected assertSameDecl(Lorg/dom4j/dtd/InternalEntityDecl;Lorg/dom4j/dtd/InternalEntityDecl;)V
    .locals 3
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 417
    const-string v0, "name is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/InternalEntityDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/dtd/InternalEntityDecl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v0, "value is not correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/InternalEntityDecl;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {p2}, Lorg/dom4j/dtd/InternalEntityDecl;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "toString() is correct"

    invoke-virtual {p1}, Lorg/dom4j/dtd/InternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-virtual {p2}, Lorg/dom4j/dtd/InternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-static {v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method protected assertSameDocumentType(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)V
    .locals 3
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 254
    if-nez p1, :cond_1

    .line 255
    if-nez p2, :cond_0

    .line 280
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string v0, "Not expecting DOCTYPE."

    invoke-static {v0}, Lorg/dom4j/io/DTDTest;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    if-nez p2, :cond_2

    .line 265
    const-string v0, "Expecting DOCTYPE"

    invoke-static {v0}, Lorg/dom4j/io/DTDTest;->fail(Ljava/lang/String;)V

    .line 268
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Expected DocumentType:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DTDTest;->log(Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Actual DocumentType:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DTDTest;->log(Ljava/lang/String;)V

    .line 273
    const-string v0, "Internal"

    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getInternalDeclarations()Ljava/util/List;

    move-result-object v1

    .line 274
    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getInternalDeclarations()Ljava/util/List;

    move-result-object v2

    .line 273
    invoke-virtual {p0, v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertSameDTDSubset(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 277
    const-string v0, "External"

    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getExternalDeclarations()Ljava/util/List;

    move-result-object v1

    .line 278
    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getExternalDeclarations()Ljava/util/List;

    move-result-object v2

    .line 277
    invoke-virtual {p0, v0, v1, v2}, Lorg/dom4j/io/DTDTest;->assertSameDTDSubset(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected getExternalDeclarations()Ljava/util/List;
    .locals 4

    .prologue
    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, decls:Ljava/util/List;
    new-instance v1, Lorg/dom4j/dtd/ElementDecl;

    const-string v2, "another-greeting"

    const-string v3, "(#PCDATA)"

    invoke-direct {v1, v2, v3}, Lorg/dom4j/dtd/ElementDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-object v0
.end method

.method protected getInternalDeclarations()Ljava/util/List;
    .locals 7

    .prologue
    .line 211
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v6, decls:Ljava/util/List;
    new-instance v0, Lorg/dom4j/dtd/ElementDecl;

    const-string v1, "greeting"

    const-string v2, "(#PCDATA)"

    invoke-direct {v0, v1, v2}, Lorg/dom4j/dtd/ElementDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lorg/dom4j/dtd/AttributeDecl;

    const-string v1, "greeting"

    const-string v2, "foo"

    const-string v3, "ID"

    const-string v4, "#IMPLIED"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/dom4j/dtd/AttributeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Lorg/dom4j/dtd/InternalEntityDecl;

    const-string v1, "%boolean"

    const-string v2, "( true | false )"

    invoke-direct {v0, v1, v2}, Lorg/dom4j/dtd/InternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-object v6
.end method

.method protected readDocument(Ljava/lang/String;ZZ)Lorg/dom4j/Document;
    .locals 5
    .parameter "resourceName"
    .parameter "includeInternal"
    .parameter "includeExternal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 474
    .local v0, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXReader;->setIncludeInternalDTDDeclarations(Z)V

    .line 476
    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXReader;->setIncludeExternalDTDDeclarations(Z)V

    .line 478
    new-instance v1, Lorg/dom4j/io/DTDTest$MyEntityResolver;

    const-string v2, "xml/dtd/sample.dtd"

    .line 479
    const-string v3, "-//dom4j//DTD sample"

    const-string v4, "sample.dtd"

    invoke-direct {v1, v2, v3, v4}, Lorg/dom4j/io/DTDTest$MyEntityResolver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 481
    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/DTDTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public testExternalDTDSubset()V
    .locals 6

    .prologue
    .line 143
    new-instance v1, Lorg/dom4j/tree/DefaultDocumentType;

    const-string v3, "another-greeting"

    .line 144
    const/4 v4, 0x0

    const-string v5, "sample.dtd"

    .line 143
    invoke-direct {v1, v3, v4, v5}, Lorg/dom4j/tree/DefaultDocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v1, expected:Lorg/dom4j/DocumentType;
    invoke-virtual {p0}, Lorg/dom4j/io/DTDTest;->getExternalDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/dom4j/DocumentType;->setExternalDeclarations(Ljava/util/List;)V

    .line 154
    :try_start_0
    const-string v3, "xml/dtd/external.xml"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lorg/dom4j/io/DTDTest;->readDocument(Ljava/lang/String;ZZ)Lorg/dom4j/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v3

    .line 153
    invoke-virtual {p0, v1, v3}, Lorg/dom4j/io/DTDTest;->assertSameDocumentType(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)V
    :try_end_0
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 156
    .local v0, ex:Ljunit/framework/AssertionFailedError;
    throw v0

    .line 157
    .end local v0           #ex:Ljunit/framework/AssertionFailedError;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 158
    .local v2, t:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Not expecting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/dom4j/io/DTDTest;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public testInternalDTDSubset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Lorg/dom4j/tree/DefaultDocumentType;

    invoke-direct {v1}, Lorg/dom4j/tree/DefaultDocumentType;-><init>()V

    .line 117
    .local v1, expected:Lorg/dom4j/DocumentType;
    const-string v3, "greeting"

    invoke-interface {v1, v3}, Lorg/dom4j/DocumentType;->setElementName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lorg/dom4j/io/DTDTest;->getInternalDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/dom4j/DocumentType;->setInternalDeclarations(Ljava/util/List;)V

    .line 127
    :try_start_0
    const-string v3, "xml/dtd/internal.xml"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lorg/dom4j/io/DTDTest;->readDocument(Ljava/lang/String;ZZ)Lorg/dom4j/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v3

    .line 126
    invoke-virtual {p0, v1, v3}, Lorg/dom4j/io/DTDTest;->assertSameDocumentType(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)V
    :try_end_0
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 129
    .local v0, ex:Ljunit/framework/AssertionFailedError;
    throw v0

    .line 130
    .end local v0           #ex:Ljunit/framework/AssertionFailedError;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 131
    .local v2, t:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Not expecting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/dom4j/io/DTDTest;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public testMixedDTDSubset()V
    .locals 6

    .prologue
    .line 170
    new-instance v1, Lorg/dom4j/tree/DefaultDocumentType;

    const-string v3, "another-greeting"

    .line 171
    const/4 v4, 0x0

    const-string v5, "sample.dtd"

    .line 170
    invoke-direct {v1, v3, v4, v5}, Lorg/dom4j/tree/DefaultDocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v1, expected:Lorg/dom4j/DocumentType;
    invoke-virtual {p0}, Lorg/dom4j/io/DTDTest;->getInternalDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/dom4j/DocumentType;->setInternalDeclarations(Ljava/util/List;)V

    .line 175
    invoke-virtual {p0}, Lorg/dom4j/io/DTDTest;->getExternalDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/dom4j/DocumentType;->setExternalDeclarations(Ljava/util/List;)V

    .line 183
    :try_start_0
    const-string v3, "xml/dtd/mixed.xml"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lorg/dom4j/io/DTDTest;->readDocument(Ljava/lang/String;ZZ)Lorg/dom4j/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v3

    .line 182
    invoke-virtual {p0, v1, v3}, Lorg/dom4j/io/DTDTest;->assertSameDocumentType(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)V
    :try_end_0
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 185
    .local v0, ex:Ljunit/framework/AssertionFailedError;
    throw v0

    .line 186
    .end local v0           #ex:Ljunit/framework/AssertionFailedError;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 187
    .local v2, t:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Not expecting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/dom4j/io/DTDTest;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method
