.class public final Lcom/google/android/apps/books/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# static fields
.field private static final ESCAPE_KEYS:Ljava/lang/String; = "\\tbnrf"

.field private static final ESCAPE_VALUES:Ljava/lang/String; = "\\\t\u0008\n\r\u000c"

.field private static final UNICODE_ESCAPE_LENGTH:I = 0x4

.field private static final UNICODE_ESCAPE_RADIX:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static assertArrayContains(Ljava/lang/String;[II)V
    .locals 3
    .parameter "message"
    .parameter "array"
    .parameter "target"

    .prologue
    .line 579
    invoke-static {p1, p2}, Lcom/google/android/apps/books/util/Assert;->assertArrayContainsInternal([II)I

    move-result v0

    .line 580
    .local v0, index:I
    if-gez v0, :cond_0

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array doesn\'t contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    return-void
.end method

.method public static assertArrayContains(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "message"
    .parameter "array"
    .parameter "target"

    .prologue
    .line 520
    invoke-static {p1, p2}, Lcom/google/android/apps/books/util/Assert;->assertArrayContainsInternal([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 521
    .local v0, index:I
    if-gez v0, :cond_0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array doesn\'t contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void
.end method

.method public static assertArrayContains([II)V
    .locals 1
    .parameter "array"
    .parameter "target"

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertArrayContains(Ljava/lang/String;[II)V

    .line 570
    return-void
.end method

.method public static assertArrayContains([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "array"
    .parameter "target"

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertArrayContains(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method private static assertArrayContainsInternal([II)I
    .locals 2
    .parameter "array"
    .parameter "target"

    .prologue
    .line 613
    if-nez p0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'array\' may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/apps/books/util/Assert;->indexOf([II)I

    move-result v0

    return v0
.end method

.method private static assertArrayContainsInternal([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "array"
    .parameter "target"

    .prologue
    .line 556
    if-nez p0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'array\' may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/apps/books/util/Assert;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static assertArrayEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    return-void
.end method

.method public static assertArrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    const/4 v3, 0x0

    .line 367
    if-nez p1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'expected\' may not be null. Use assertNull instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    if-eq p1, p2, :cond_3

    .line 372
    if-nez p2, :cond_1

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value was null when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/books/util/Assert;->formatArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was expected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/books/util/Assert;->getArrayLength(Ljava/lang/Object;)I

    move-result v5

    .line 376
    .local v5, expectedLength:I
    invoke-static {p2}, Lcom/google/android/apps/books/util/Assert;->getArrayLength(Ljava/lang/Object;)I

    move-result v6

    .line 377
    .local v6, actualLength:I
    if-eq v5, v6, :cond_2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "array lengths differ,  expected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    .line 381
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/util/Assert;->assertArrayRegionEqualsInternal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 383
    .end local v5           #expectedLength:I
    .end local v6           #actualLength:I
    :cond_3
    return-void
.end method

.method public static assertArrayNotContains(Ljava/lang/String;[II)V
    .locals 3
    .parameter "message"
    .parameter "array"
    .parameter "target"

    .prologue
    .line 602
    invoke-static {p1, p2}, Lcom/google/android/apps/books/util/Assert;->assertArrayContainsInternal([II)I

    move-result v0

    .line 603
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_0
    return-void
.end method

.method public static assertArrayNotContains(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "message"
    .parameter "array"
    .parameter "target"

    .prologue
    .line 545
    invoke-static {p1, p2}, Lcom/google/android/apps/books/util/Assert;->assertArrayContainsInternal([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 546
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    return-void
.end method

.method public static assertArrayNotContains([II)V
    .locals 1
    .parameter "array"
    .parameter "target"

    .prologue
    .line 592
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertArrayNotContains(Ljava/lang/String;[II)V

    .line 593
    return-void
.end method

.method public static assertArrayNotContains([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "array"
    .parameter "target"

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertArrayNotContains(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    return-void
.end method

.method public static assertArrayRegionEquals(Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 6
    .parameter "expected"
    .parameter "actual"
    .parameter "expectedStart"
    .parameter "actualStart"
    .parameter "count"

    .prologue
    .line 447
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/util/Assert;->assertArrayRegionEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 448
    return-void
.end method

.method public static assertArrayRegionEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"
    .parameter "expectedStart"
    .parameter "actualStart"
    .parameter "count"

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'expected\' may not be null. Use assertNull instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    if-eq p1, p2, :cond_2

    .line 424
    if-nez p2, :cond_1

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value was null when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/books/util/Assert;->formatArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was expected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_1
    invoke-static/range {p0 .. p5}, Lcom/google/android/apps/books/util/Assert;->assertArrayRegionEqualsInternal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 430
    :cond_2
    return-void
.end method

.method private static assertArrayRegionEqualsInternal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 9
    .parameter "message"
    .parameter "expected"
    .parameter "actual"
    .parameter "expectedStart"
    .parameter "actualStart"
    .parameter "count"

    .prologue
    const-string v8, "] but got ["

    const-string v7, "]"

    .line 464
    if-gez p3, :cond_0

    .line 465
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parameter \'expectedStart\' may not be less than zero."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 468
    :cond_0
    if-gez p4, :cond_1

    .line 469
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parameter \'actualStart\' may not be less than zero."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 472
    :cond_1
    if-gez p5, :cond_2

    .line 473
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parameter \'count\' may not be less than zero."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 475
    :cond_2
    add-int v5, p3, p5

    invoke-static {p1}, Lcom/google/android/apps/books/util/Assert;->getArrayLength(Ljava/lang/Object;)I

    move-result v6

    if-le v5, v6, :cond_3

    .line 476
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region may not extend off the end of the \'expected\' array."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 479
    :cond_3
    if-eq p1, p2, :cond_7

    .line 480
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 481
    .local v2, expectedClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 482
    .local v0, actualClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrays have different types,  expected ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] but got ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_4
    invoke-static {p2}, Lcom/google/android/apps/books/util/Assert;->getArrayLength(Ljava/lang/Object;)I

    move-result v5

    add-int v6, p4, p5

    if-ge v5, v6, :cond_5

    .line 487
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "array too short, expected at least ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] elements,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but only got ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/google/android/apps/books/util/Assert;->getArrayLength(Ljava/lang/Object;)I

    move-result v6

    sub-int/2addr v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p5, :cond_7

    .line 491
    add-int v5, p3, v4

    invoke-static {p1, v5}, Lcom/google/android/apps/books/util/Assert;->getArrayElement(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 492
    .local v3, expectedObject:Ljava/lang/Object;
    add-int v5, p4, v4

    invoke-static {p2, v5}, Lcom/google/android/apps/books/util/Assert;->getArrayElement(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 493
    .local v1, actualObject:Ljava/lang/Object;
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrays differ at element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", expected ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] but got ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 499
    .end local v0           #actualClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #actualObject:Ljava/lang/Object;
    .end local v2           #expectedClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #expectedObject:Ljava/lang/Object;
    .end local v4           #i:I
    :cond_7
    return-void
.end method

.method public static assertContains(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "haystack"
    .parameter "needle"

    .prologue
    .line 796
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public static assertContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .parameter "haystack"
    .parameter "needle"

    .prologue
    const-string v2, "\'"

    .line 784
    const/4 v0, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' does not contain \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_0
    return-void
.end method

.method public static assertElementsNotNull([Ljava/lang/Object;)V
    .locals 2
    .parameter "objects"

    .prologue
    .line 760
    invoke-static {p0}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 761
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/Assert;->assertElementsNotNull([Ljava/lang/Object;II)V

    .line 762
    return-void
.end method

.method public static assertElementsNotNull([Ljava/lang/Object;II)V
    .locals 3
    .parameter "objects"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 769
    invoke-static {p0}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 770
    add-int v1, p1, p2

    array-length v2, p0

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Z)V

    .line 771
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 772
    add-int v1, p1, v0

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 770
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 774
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public static assertEquals(DDD)V
    .locals 7
    .parameter "expected"
    .parameter "actual"
    .parameter "delta"

    .prologue
    .line 227
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;DDD)V

    .line 228
    return-void
.end method

.method public static assertEquals(JJ)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 194
    return-void
.end method

.method public static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;DDD)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"
    .parameter "delta"

    .prologue
    .line 209
    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, p5

    if-lez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "values not equal, expected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;JJ)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 178
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "values not equal, expected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 272
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "objects not equal, expected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/books/util/Assert;->escape(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/apps/books/util/Assert;->escape(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .parameter "message"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, expected:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, actual:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const-string v8, "] but got ["

    const-string v7, "List<T>s differ at element "

    const-string v6, ", "

    const-string v5, "]"

    .line 309
    if-nez p1, :cond_0

    .line 310
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parameter \'expected\' may not be null. Use assertNull instead."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_0
    if-eq p1, p2, :cond_5

    .line 314
    if-nez p2, :cond_1

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value was null when ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] was expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List<T> lengths differ,  expected ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] but got ["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 322
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 323
    .local v1, expectedObject:Ljava/lang/Object;
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, actualObject:Ljava/lang/Object;
    if-nez v1, :cond_4

    .line 325
    if-eqz p2, :cond_3

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List<T>s differ at element "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "expected  [null] but got ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List<T>s differ at element "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] but got ["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 337
    .end local v0           #actualObject:Ljava/lang/Object;
    .end local v1           #expectedObject:Ljava/lang/Object;
    .end local v2           #i:I
    :cond_5
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 127
    if-eq p1, p2, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "booleans not equal, expected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public static assertEquals(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, expected:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, actual:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 351
    return-void
.end method

.method public static assertEquals(ZZ)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    .line 141
    return-void
.end method

.method public static assertFalse(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "condition"

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    const-string v0, "condition was true"

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public static assertFalse(Z)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method public static assertFlagOnlyOne(II)V
    .locals 4
    .parameter "value"
    .parameter "flags"

    .prologue
    const-string v3, "\nflags\n"

    .line 921
    and-int v0, p0, p1

    .line 923
    .local v0, flaggedValue:I
    if-nez v0, :cond_0

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None bit in set in value\nvalue\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nflags\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;)V

    .line 928
    :cond_0
    const/4 v1, 0x1

    sub-int v1, v0, v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More bits set\nvalue\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nflags\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;)V

    .line 932
    :cond_1
    return-void
.end method

.method public static assertFlagsAtLeast(II)V
    .locals 2
    .parameter "value"
    .parameter "flags"

    .prologue
    .line 911
    and-int v0, p0, p1

    if-nez v0, :cond_0

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None bit in set in value\nvalue\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nflags\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;)V

    .line 915
    :cond_0
    return-void
.end method

.method public static assertFlagsSet(II)V
    .locals 2
    .parameter "value"
    .parameter "flags"

    .prologue
    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value does not matches the flags\nvalue\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nflags\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    and-int v1, p0, p1

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 905
    return-void

    .line 903
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static assertLocked(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 865
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/Assert;->assertLocked(Ljava/lang/String;Ljava/lang/Object;)V

    .line 866
    return-void
.end method

.method public static assertLocked(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "message"
    .parameter "object"

    .prologue
    .line 835
    if-nez p1, :cond_0

    .line 836
    const-string v1, "object is null"

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, e:Ljava/lang/IllegalMonitorStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitor on ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not held by current thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static assertNotContains(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "haystack"
    .parameter "needle"

    .prologue
    .line 819
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public static assertNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .parameter "haystack"
    .parameter "needle"

    .prologue
    const-string v2, "\'"

    .line 807
    const/4 v0, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' contains \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_0
    return-void
.end method

.method public static assertNotEquals(JJ)V
    .locals 1
    .parameter "unexpected"
    .parameter "actual"

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/books/util/Assert;->assertNotEquals(Ljava/lang/String;JJ)V

    .line 257
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "unexpected"
    .parameter "actual"

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 657
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;JJ)V
    .locals 2
    .parameter "message"
    .parameter "unexpected"
    .parameter "actual"

    .prologue
    .line 241
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "values equal, did not expect ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "message"
    .parameter "unexpected"
    .parameter "actual"

    .prologue
    .line 633
    if-nez p1, :cond_2

    .line 634
    if-nez p2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 638
    .local v0, equal:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "objects equal, did not expect ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/apps/books/util/Assert;->escape(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    return-void

    .line 634
    .end local v0           #equal:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 636
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0       #equal:Z
    goto :goto_0
.end method

.method public static assertNotEquals(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "message"
    .parameter "unexpected"
    .parameter "actual"

    .prologue
    .line 152
    if-ne p1, p2, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "booleans equal, did not expect ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public static assertNotEquals(ZZ)V
    .locals 1
    .parameter "unexpected"
    .parameter "actual"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertNotEquals(Ljava/lang/String;ZZ)V

    .line 166
    return-void
.end method

.method public static assertNotLocked(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 896
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/Assert;->assertNotLocked(Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    return-void
.end method

.method public static assertNotLocked(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "object"

    .prologue
    .line 876
    if-nez p1, :cond_0

    .line 877
    const-string v0, "object is null"

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "monitor on ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is held by current thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 753
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "object"

    .prologue
    .line 741
    if-nez p1, :cond_0

    .line 742
    const-string v0, "object is null"

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_0
    return-void
.end method

.method public static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 707
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 708
    return-void
.end method

.method public static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "unexpected"
    .parameter "actual"

    .prologue
    .line 694
    if-ne p1, p2, :cond_0

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "objects same, did not expect ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_0
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 730
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 731
    return-void
.end method

.method public static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "object"

    .prologue
    .line 718
    if-eqz p1, :cond_0

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "object is not null ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/books/util/Assert;->escape(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    return-void
.end method

.method public static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 682
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/books/util/Assert;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 683
    return-void
.end method

.method public static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 668
    if-eq p1, p2, :cond_0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "objects not same, expected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_0
    return-void
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "condition"

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const-string v0, "condition was false"

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1159
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static escape(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "o"

    .prologue
    .line 976
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/Assert;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "s"

    .prologue
    const/16 v10, 0x5c

    const/4 v9, 0x4

    .line 941
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 942
    .local v6, srcLen:I
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v8, v6, 0x2

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 943
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_4

    .line 944
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 945
    .local v1, c:C
    const-string v8, "\\\t\u0008\n\r\u000c"

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 946
    .local v4, index:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 948
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 949
    const-string v8, "\\tbnrf"

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 943
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 950
    :cond_0
    invoke-static {v1}, Lcom/google/android/apps/books/util/Assert;->isPrintableAscii(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 952
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 955
    :cond_1
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 956
    const/16 v8, 0x75

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 958
    const/16 v8, 0x10

    invoke-static {v1, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 959
    .local v2, hexValue:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Z)V

    .line 961
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v7, v9, v8

    .line 962
    .local v7, zeroCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    if-ge v5, v7, :cond_3

    .line 963
    const/16 v8, 0x30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 962
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 959
    .end local v5           #j:I
    .end local v7           #zeroCount:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 965
    .restart local v5       #j:I
    .restart local v7       #zeroCount:I
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 968
    .end local v1           #c:C
    .end local v2           #hexValue:Ljava/lang/String;
    .end local v4           #index:I
    .end local v5           #j:I
    .end local v7           #zeroCount:I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static fail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .parameter "reason"

    .prologue
    .line 69
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;)V

    .line 70
    return-void

    :cond_0
    move-object v0, p1

    .line 69
    goto :goto_0
.end method

.method private static formatArray(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "..."

    invoke-static {p0}, Lcom/google/android/apps/books/util/Assert;->getArrayLength(Ljava/lang/Object;)I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/apps/books/util/Assert;->joinArray(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getArrayElement(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .parameter "array"
    .parameter "index"

    .prologue
    .line 1076
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1078
    .local v0, arrayClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1079
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1080
    :cond_0
    instance-of v1, p0, [Z

    if-eqz v1, :cond_1

    .line 1081
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    aget-boolean v1, p0, p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1097
    :goto_0
    return-object v1

    .line 1082
    .restart local p0
    :cond_1
    instance-of v1, p0, [B

    if-eqz v1, :cond_2

    .line 1083
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    aget-byte v1, p0, p1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 1084
    .restart local p0
    :cond_2
    instance-of v1, p0, [S

    if-eqz v1, :cond_3

    .line 1085
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    aget-short v1, p0, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 1086
    .restart local p0
    :cond_3
    instance-of v1, p0, [C

    if-eqz v1, :cond_4

    .line 1087
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    aget-char v1, p0, p1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_0

    .line 1088
    .restart local p0
    :cond_4
    instance-of v1, p0, [I

    if-eqz v1, :cond_5

    .line 1089
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    aget v1, p0, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 1090
    .restart local p0
    :cond_5
    instance-of v1, p0, [J

    if-eqz v1, :cond_6

    .line 1091
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    aget-wide v1, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 1092
    .restart local p0
    :cond_6
    instance-of v1, p0, [F

    if-eqz v1, :cond_7

    .line 1093
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    aget v1, p0, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 1094
    .restart local p0
    :cond_7
    instance-of v1, p0, [D

    if-eqz v1, :cond_8

    .line 1095
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    aget-wide v1, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 1097
    .restart local p0
    :cond_8
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    aget-object v1, p0, p1

    goto :goto_0
.end method

.method private static getArrayLength(Ljava/lang/Object;)I
    .locals 2
    .parameter "array"

    .prologue
    .line 1037
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1039
    .local v0, arrayClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1040
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1041
    :cond_0
    instance-of v1, p0, [Z

    if-eqz v1, :cond_1

    .line 1042
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    array-length v1, p0

    .line 1058
    :goto_0
    return v1

    .line 1043
    .restart local p0
    :cond_1
    instance-of v1, p0, [B

    if-eqz v1, :cond_2

    .line 1044
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    array-length v1, p0

    goto :goto_0

    .line 1045
    .restart local p0
    :cond_2
    instance-of v1, p0, [S

    if-eqz v1, :cond_3

    .line 1046
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    array-length v1, p0

    goto :goto_0

    .line 1047
    .restart local p0
    :cond_3
    instance-of v1, p0, [C

    if-eqz v1, :cond_4

    .line 1048
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    array-length v1, p0

    goto :goto_0

    .line 1049
    .restart local p0
    :cond_4
    instance-of v1, p0, [I

    if-eqz v1, :cond_5

    .line 1050
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    array-length v1, p0

    goto :goto_0

    .line 1051
    .restart local p0
    :cond_5
    instance-of v1, p0, [J

    if-eqz v1, :cond_6

    .line 1052
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    array-length v1, p0

    goto :goto_0

    .line 1053
    .restart local p0
    :cond_6
    instance-of v1, p0, [F

    if-eqz v1, :cond_7

    .line 1054
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    array-length v1, p0

    goto :goto_0

    .line 1055
    .restart local p0
    :cond_7
    instance-of v1, p0, [D

    if-eqz v1, :cond_8

    .line 1056
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    array-length v1, p0

    goto :goto_0

    .line 1058
    .restart local p0
    :cond_8
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    goto :goto_0
.end method

.method public static indexOf([II)I
    .locals 1
    .parameter "array"
    .parameter "value"

    .prologue
    .line 1120
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/books/util/Assert;->indexOf([III)I

    move-result v0

    return v0
.end method

.method private static indexOf([III)I
    .locals 2
    .parameter "array"
    .parameter "value"
    .parameter "fromIndex"

    .prologue
    .line 1133
    move v0, p2

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1134
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 1138
    :goto_1
    return v1

    .line 1133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "arr"
    .parameter "o"

    .prologue
    .line 1109
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/books/util/Assert;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2
    .parameter "arr"
    .parameter "o"
    .parameter "fromIndex"

    .prologue
    .line 1150
    move v0, p2

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1151
    aget-object v1, p0, v0

    invoke-static {p1, v1}, Lcom/google/android/apps/books/util/Assert;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 1155
    :goto_1
    return v1

    .line 1150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1155
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static isPrintableAscii(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 986
    const/16 v0, 0x1f

    if-ge v0, p0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static joinArray(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "array"
    .parameter "separator"
    .parameter "continuation"
    .parameter "count"

    .prologue
    .line 1005
    invoke-static {p0}, Lcom/google/android/apps/books/util/Assert;->getArrayLength(Ljava/lang/Object;)I

    move-result v0

    .line 1007
    .local v0, arrayLength:I
    if-lez v0, :cond_4

    .line 1008
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1009
    .local v1, buffer:Ljava/lang/StringBuffer;
    if-lez p3, :cond_0

    .line 1010
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/google/android/apps/books/util/Assert;->getArrayElement(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1012
    :cond_0
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    if-ge v2, p3, :cond_1

    .line 1013
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1014
    invoke-static {p0, v2}, Lcom/google/android/apps/books/util/Assert;->getArrayElement(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1012
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1016
    :cond_1
    if-le v0, p3, :cond_3

    .line 1017
    if-lez p3, :cond_2

    .line 1018
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1020
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1022
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1024
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    :goto_1
    return-object v3

    :cond_4
    const-string v3, ""

    goto :goto_1
.end method
