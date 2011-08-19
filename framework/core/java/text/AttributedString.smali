.class public Ljava/text/AttributedString;
.super Ljava/lang/Object;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/AttributedString$AttributedIterator;,
        Ljava/text/AttributedString$Range;
    }
.end annotation


# instance fields
.field attributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;>;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    if-nez p1, :cond_b

    .line 528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 530
    :cond_b
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 531
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    .line 532
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p2, attributes:Ljava/util/Map;,"Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    if-nez p1, :cond_b

    .line 551
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 553
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1f

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 554
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot add attributes to empty string"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 556
    :cond_1f
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 557
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    .line 559
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 560
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 561
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 562
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    .local v2, ranges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    new-instance v3, Ljava/text/AttributedString$Range;

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v4, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 567
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v2           #ranges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    :cond_6b
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 12
    .parameter "iterator"

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v8

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    if-le v8, v9, :cond_15

    .line 390
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid substring range"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 392
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v2, buffer:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    .local v3, i:I
    :goto_1e
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v8

    if-ge v3, v8, :cond_31

    .line 394
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 397
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 398
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v1

    .line 400
    .local v1, attributes:Ljava/util/Set;,"Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    if-nez v1, :cond_3e

    .line 420
    :cond_3d
    return-void

    .line 403
    :cond_3e
    new-instance v8, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    div-int/lit8 v9, v9, 0x3

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    .line 406
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 407
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 408
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 409
    .local v0, attribute:Ljava/text/AttributedCharacterIterator$Attribute;
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 410
    :goto_63
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v8

    const v9, 0xffff

    if-eq v8, v9, :cond_53

    .line 411
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v6

    .line 412
    .local v6, start:I
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v5

    .line 413
    .local v5, limit:I
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v7

    .line 414
    .local v7, value:Ljava/lang/Object;
    if-eqz v7, :cond_7d

    .line 415
    invoke-virtual {p0, v0, v7, v6, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 417
    :cond_7d
    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_63
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II)V
    .registers 5
    .parameter "iterator"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 482
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V

    .line 483
    return-void
.end method

.method private constructor <init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V
    .registers 13
    .parameter "iterator"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/AttributedCharacterIterator;",
            "II",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p4, attributes:Ljava/util/Set;,"Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v6

    if-lt p2, v6, :cond_11

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v6

    if-gt p3, v6, :cond_11

    if-le p2, p3, :cond_17

    .line 426
    :cond_11
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 429
    :cond_17
    if-nez p4, :cond_1a

    .line 460
    :cond_19
    return-void

    .line 433
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v1, buffer:Ljava/lang/StringBuilder;
    invoke-interface {p1, p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 435
    :goto_22
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    if-ge v6, p3, :cond_33

    .line 436
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    goto :goto_22

    .line 439
    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 440
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    .line 443
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 444
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 445
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 446
    .local v0, attribute:Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {p1, p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 447
    :goto_5d
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    if-ge v6, p3, :cond_4e

    .line 448
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v5

    .line 449
    .local v5, value:Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v4

    .line 450
    .local v4, runStart:I
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 451
    .local v3, limit:I
    instance-of v6, v5, Ljava/text/Annotation;

    if-eqz v6, :cond_77

    if-lt v4, p2, :cond_77

    if-le v3, p3, :cond_7d

    :cond_77
    if-eqz v5, :cond_88

    instance-of v6, v5, Ljava/text/Annotation;

    if-nez v6, :cond_88

    .line 453
    :cond_7d
    if-ge v4, p2, :cond_8c

    move v6, p2

    :goto_80
    sub-int/2addr v6, p2

    if-le v3, p3, :cond_8e

    move v7, p3

    :goto_84
    sub-int/2addr v7, p2

    invoke-virtual {p0, v0, v5, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 457
    :cond_88
    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_5d

    :cond_8c
    move v6, v4

    .line 453
    goto :goto_80

    :cond_8e
    move v7, v3

    goto :goto_84
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .registers 7
    .parameter "iterator"
    .parameter "start"
    .parameter "end"
    .parameter "attributes"

    .prologue
    .line 514
    if-nez p4, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_7
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V

    .line 518
    return-void

    .line 514
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_7
.end method


# virtual methods
.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .registers 7
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 583
    if-nez p1, :cond_8

    .line 584
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 586
    :cond_8
    iget-object v1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 587
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 590
    :cond_16
    iget-object v1, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 591
    .local v0, ranges:Ljava/util/List;,"Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    if-nez v0, :cond_3b

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #ranges:Ljava/util/List;,"Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    .restart local v0       #ranges:Ljava/util/List;,"Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    iget-object v1, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :goto_2b
    new-instance v1, Ljava/text/AttributedString$Range;

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    return-void

    .line 595
    :cond_3b
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2b
.end method

.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 14
    .parameter "attribute"
    .parameter "value"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 620
    if-nez p1, :cond_8

    .line 621
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 623
    :cond_8
    if-ltz p3, :cond_14

    iget-object v5, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt p4, v5, :cond_14

    if-lt p3, p4, :cond_1a

    .line 624
    :cond_14
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 627
    :cond_1a
    if-nez p2, :cond_1d

    .line 697
    :cond_1c
    :goto_1c
    return-void

    .line 631
    :cond_1d
    iget-object v5, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 632
    .local v4, ranges:Ljava/util/List;,"Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    if-nez v4, :cond_3b

    .line 633
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #ranges:Ljava/util/List;,"Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 634
    .restart local v4       #ranges:Ljava/util/List;,"Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    new-instance v5, Ljava/text/AttributedString$Range;

    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v5, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 638
    :cond_3b
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 639
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/text/AttributedString$Range;>;"
    :cond_3f
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 640
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/AttributedString$Range;

    .line 641
    .local v3, range:Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    if-gt p4, v5, :cond_5b

    .line 642
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 696
    .end local v3           #range:Ljava/text/AttributedString$Range;
    :cond_52
    new-instance v5, Ljava/text/AttributedString$Range;

    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_1c

    .line 644
    .restart local v3       #range:Ljava/text/AttributedString$Range;
    :cond_5b
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-lt p3, v5, :cond_6b

    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-ne p3, v5, :cond_3f

    iget-object v5, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 646
    :cond_6b
    const/4 v1, 0x0

    .line 647
    .local v1, r1:Ljava/text/AttributedString$Range;
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 648
    new-instance v1, Ljava/text/AttributedString$Range;

    .end local v1           #r1:Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v1, v5, p3, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    .line 649
    .restart local v1       #r1:Ljava/text/AttributedString$Range;
    new-instance v2, Ljava/text/AttributedString$Range;

    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v2, p4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    .line 651
    .local v2, r3:Ljava/text/AttributedString$Range;
    :cond_81
    :goto_81
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-le p4, v5, :cond_b1

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 652
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #range:Ljava/text/AttributedString$Range;
    check-cast v3, Ljava/text/AttributedString$Range;

    .line 653
    .restart local v3       #range:Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-gt p4, v5, :cond_d9

    .line 654
    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    if-gt p4, v5, :cond_a5

    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    if-ne p4, v5, :cond_81

    iget-object v5, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 656
    :cond_a5
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 657
    new-instance v2, Ljava/text/AttributedString$Range;

    .end local v2           #r3:Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v2, p4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    .line 665
    .restart local v2       #r3:Ljava/text/AttributedString$Range;
    :cond_b1
    iget-object v5, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 666
    iget-object v5, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 667
    new-instance v5, Ljava/text/AttributedString$Range;

    iget v6, v1, Ljava/text/AttributedString$Range;->start:I

    if-ge v6, p3, :cond_dd

    iget v6, v1, Ljava/text/AttributedString$Range;->start:I

    :goto_c9
    iget v7, v2, Ljava/text/AttributedString$Range;->end:I

    if-le v7, p4, :cond_df

    iget v7, v2, Ljava/text/AttributedString$Range;->end:I

    :goto_cf
    iget-object v8, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v5, v6, v7, v8}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 661
    :cond_d9
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_81

    :cond_dd
    move v6, p3

    .line 667
    goto :goto_c9

    :cond_df
    move v7, p4

    goto :goto_cf

    .line 670
    :cond_e1
    new-instance v5, Ljava/text/AttributedString$Range;

    iget v6, v1, Ljava/text/AttributedString$Range;->start:I

    if-ge v6, p3, :cond_fc

    iget v6, v1, Ljava/text/AttributedString$Range;->start:I

    :goto_e9
    iget-object v7, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v5, v6, p4, v7}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 672
    iget v5, v2, Ljava/text/AttributedString$Range;->start:I

    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_1c

    .line 673
    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_1c

    :cond_fc
    move v6, p3

    .line 670
    goto :goto_e9

    .line 677
    :cond_fe
    iget-object v5, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_123

    .line 678
    iget v5, v1, Ljava/text/AttributedString$Range;->start:I

    iget v6, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_10f

    .line 679
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 681
    :cond_10f
    new-instance v5, Ljava/text/AttributedString$Range;

    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-le v6, p4, :cond_121

    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    :goto_117
    iget-object v7, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v5, p3, v6, v7}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_1c

    :cond_121
    move v6, p4

    goto :goto_117

    .line 684
    :cond_123
    iget v5, v1, Ljava/text/AttributedString$Range;->start:I

    iget v6, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_12c

    .line 685
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 687
    :cond_12c
    new-instance v5, Ljava/text/AttributedString$Range;

    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 688
    iget v5, v2, Ljava/text/AttributedString$Range;->start:I

    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_1c

    .line 689
    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_1c
.end method

.method public addAttributes(Ljava/util/Map;II)V
    .registers 8
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, attributes:Ljava/util/Map;,"Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 716
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 717
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 718
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_8

    .line 722
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_22
    return-void
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .registers 2

    .prologue
    .line 731
    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    invoke-direct {v0, p0}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;)V

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;
    .registers 5
    .parameter "attributes"

    .prologue
    .line 747
    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .registers 5
    .parameter "attributes"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 768
    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method
