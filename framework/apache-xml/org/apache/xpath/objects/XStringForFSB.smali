.class public Lorg/apache/xpath/objects/XStringForFSB;
.super Lorg/apache/xpath/objects/XString;
.source "XStringForFSB.java"


# static fields
.field static final serialVersionUID:J = -0x154673048d1b5474L


# instance fields
.field protected m_hash:I

.field m_length:I

.field m_start:I

.field protected m_strCache:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "val"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_hash:I

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_FSB_CANNOT_TAKE_STRING"

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/xml/utils/FastStringBuffer;II)V
    .registers 7
    .parameter "val"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/Object;)V

    .line 44
    iput-object v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_hash:I

    .line 61
    iput p2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    .line 62
    iput p3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 64
    if-nez p1, :cond_1b

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_FASTSTRINGBUFFER_CANNOT_BE_NULL"

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1b
    return-void
.end method

.method private static isSpace(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 837
    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 3
    .parameter "fsb"

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public charAt(I)C
    .registers 4
    .parameter "index"

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/xml/utils/XMLString;)I
    .registers 12
    .parameter "xstr"

    .prologue
    .line 475
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 476
    .local v5, len1:I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v6

    .line 477
    .local v6, len2:I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 478
    .local v7, n:I
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v2

    .line 479
    .local v2, fsb:Lorg/apache/xml/utils/FastStringBuffer;
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    .line 480
    .local v3, i:I
    const/4 v4, 0x0

    .local v4, j:I
    move v8, v7

    .line 482
    .end local v7           #n:I
    .local v8, n:I
    :goto_12
    add-int/lit8 v7, v8, -0x1

    .end local v8           #n:I
    .restart local v7       #n:I
    if-eqz v8, :cond_29

    .line 484
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v0

    .line 485
    .local v0, c1:C
    invoke-interface {p1, v4}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v1

    .line 487
    .local v1, c2:C
    if-eq v0, v1, :cond_23

    .line 489
    sub-int v9, v0, v1

    .line 496
    .end local v0           #c1:C
    .end local v1           #c2:C
    :goto_22
    return v9

    .line 492
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    :cond_23
    add-int/lit8 v3, v3, 0x1

    .line 493
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    .line 494
    .end local v7           #n:I
    .restart local v8       #n:I
    goto :goto_12

    .line 496
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v8           #n:I
    .restart local v7       #n:I
    :cond_29
    sub-int v9, v5, v6

    goto :goto_22
.end method

.method public compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .registers 12
    .parameter "xstr"

    .prologue
    .line 521
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 522
    .local v5, len1:I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v6

    .line 523
    .local v6, len2:I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 524
    .local v7, n:I
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v2

    .line 525
    .local v2, fsb:Lorg/apache/xml/utils/FastStringBuffer;
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    .line 526
    .local v3, i:I
    const/4 v4, 0x0

    .local v4, j:I
    move v8, v7

    .line 528
    .end local v7           #n:I
    .local v8, n:I
    :goto_12
    add-int/lit8 v7, v8, -0x1

    .end local v8           #n:I
    .restart local v7       #n:I
    if-eqz v8, :cond_31

    .line 530
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 531
    .local v0, c1:C
    invoke-interface {p1, v4}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 533
    .local v1, c2:C
    if-eq v0, v1, :cond_2b

    .line 535
    sub-int v9, v0, v1

    .line 542
    .end local v0           #c1:C
    .end local v1           #c2:C
    :goto_2a
    return v9

    .line 538
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 539
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    .line 540
    .end local v7           #n:I
    .restart local v8       #n:I
    goto :goto_12

    .line 542
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v8           #n:I
    .restart local v7       #n:I
    :cond_31
    sub-int v9, v5, v6

    goto :goto_2a
.end method

.method public concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .registers 4
    .parameter "str"

    .prologue
    .line 815
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 5
    .parameter "lh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXComment(Lorg/xml/sax/ext/LexicalHandler;II)V

    .line 200
    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .registers 5
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    .line 185
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj2"

    .prologue
    .line 421
    if-nez p1, :cond_4

    .line 422
    const/4 v0, 0x0

    .line 435
    .end local p1
    :goto_3
    return v0

    .line 424
    .restart local p1
    :cond_4
    instance-of v0, p1, Lorg/apache/xpath/objects/XNumber;

    if-eqz v0, :cond_d

    .line 425
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 430
    :cond_d
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_16

    .line 431
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 432
    :cond_16
    instance-of v0, p1, Lorg/apache/xpath/objects/XStringForFSB;

    if-eqz v0, :cond_21

    .line 433
    check-cast p1, Lorg/apache/xml/utils/XMLString;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XStringForFSB;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v0

    goto :goto_3

    .line 435
    .restart local p1
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XStringForFSB;->equals(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public equals(Ljava/lang/String;)Z
    .registers 10
    .parameter "anotherString"

    .prologue
    const/4 v7, 0x0

    .line 379
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 381
    .local v3, n:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_29

    .line 383
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 384
    .local v0, fsb:Lorg/apache/xml/utils/FastStringBuffer;
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    .line 385
    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    move v4, v3

    .line 387
    .end local v3           #n:I
    .local v4, n:I
    :goto_11
    add-int/lit8 v3, v4, -0x1

    .end local v4           #n:I
    .restart local v3       #n:I
    if-eqz v4, :cond_27

    .line 389
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_21

    move v5, v7

    .line 401
    .end local v0           #fsb:Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1           #i:I
    .end local v2           #j:I
    :goto_20
    return v5

    .line 394
    .restart local v0       #fsb:Lorg/apache/xml/utils/FastStringBuffer;
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 395
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #n:I
    .restart local v4       #n:I
    goto :goto_11

    .line 398
    .end local v4           #n:I
    .restart local v3       #n:I
    :cond_27
    const/4 v5, 0x1

    goto :goto_20

    .end local v0           #fsb:Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_29
    move v5, v7

    .line 401
    goto :goto_20
.end method

.method public equals(Lorg/apache/xml/utils/XMLString;)Z
    .registers 11
    .parameter "obj2"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 292
    if-ne p0, p1, :cond_6

    move v5, v8

    .line 319
    :goto_5
    return v5

    .line 297
    :cond_6
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 299
    .local v3, n:I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v5

    if-ne v3, v5, :cond_2e

    .line 301
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 302
    .local v0, fsb:Lorg/apache/xml/utils/FastStringBuffer;
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    .line 303
    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    move v4, v3

    .line 305
    .end local v3           #n:I
    .local v4, n:I
    :goto_16
    add-int/lit8 v3, v4, -0x1

    .end local v4           #n:I
    .restart local v3       #n:I
    if-eqz v4, :cond_2c

    .line 307
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v5

    invoke-interface {p1, v2}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_26

    move v5, v7

    .line 309
    goto :goto_5

    .line 312
    :cond_26
    add-int/lit8 v1, v1, 0x1

    .line 313
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #n:I
    .restart local v4       #n:I
    goto :goto_16

    .end local v4           #n:I
    .restart local v3       #n:I
    :cond_2c
    move v5, v8

    .line 316
    goto :goto_5

    .end local v0           #fsb:Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_2e
    move v5, v7

    .line 319
    goto :goto_5
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 12
    .parameter "obj2"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 334
    if-ne p0, p1, :cond_6

    move v6, v9

    .line 364
    :goto_5
    return v6

    .line 338
    :cond_6
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_12

    .line 339
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v6

    goto :goto_5

    .line 341
    :cond_12
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, str:Ljava/lang/String;
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 344
    .local v3, n:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_3e

    .line 346
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 347
    .local v0, fsb:Lorg/apache/xml/utils/FastStringBuffer;
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    .line 348
    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    move v4, v3

    .line 350
    .end local v3           #n:I
    .local v4, n:I
    :goto_26
    add-int/lit8 v3, v4, -0x1

    .end local v4           #n:I
    .restart local v3       #n:I
    if-eqz v4, :cond_3c

    .line 352
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_36

    move v6, v8

    .line 354
    goto :goto_5

    .line 357
    :cond_36
    add-int/lit8 v1, v1, 0x1

    .line 358
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #n:I
    .restart local v4       #n:I
    goto :goto_26

    .end local v4           #n:I
    .restart local v3       #n:I
    :cond_3c
    move v6, v9

    .line 361
    goto :goto_5

    .end local v0           #fsb:Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_3e
    move v6, v8

    .line 364
    goto :goto_5
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 4
    .parameter "anotherString"

    .prologue
    .line 455
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .registers 18
    .parameter "trimHead"
    .parameter "trimTail"
    .parameter "doublePunctuationSpaces"

    .prologue
    .line 858
    iget v12, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    iget v13, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v5, v12, v13

    .line 859
    .local v5, end:I
    iget v12, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    new-array v0, v12, [C

    .line 860
    .local v0, buf:[C
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v6

    .line 861
    .local v6, fsb:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v4, 0x0

    .line 864
    .local v4, edit:Z
    const/4 v2, 0x0

    .line 865
    .local v2, d:I
    const/4 v7, 0x0

    .line 867
    .local v7, pres:Z
    iget v9, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    .local v9, s:I
    move v3, v2

    .end local v2           #d:I
    .local v3, d:I
    :goto_14
    if-ge v9, v5, :cond_53

    .line 869
    invoke-virtual {v6, v9}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v1

    .line 871
    .local v1, c:C
    invoke-static {v1}, Lorg/apache/xpath/objects/XStringForFSB;->isSpace(C)Z

    move-result v12

    if-eqz v12, :cond_4d

    .line 873
    if-nez v7, :cond_49

    .line 875
    const/16 v12, 0x20

    if-eq v12, v1, :cond_27

    .line 877
    const/4 v4, 0x1

    .line 880
    :cond_27
    add-int/lit8 v2, v3, 0x1

    .end local v3           #d:I
    .restart local v2       #d:I
    const/16 v12, 0x20

    aput-char v12, v0, v3

    .line 882
    if-eqz p3, :cond_47

    if-eqz v2, :cond_47

    .line 884
    const/4 v12, 0x1

    sub-int v12, v2, v12

    aget-char v8, v0, v12

    .line 886
    .local v8, prevChar:C
    const/16 v12, 0x2e

    if-eq v8, v12, :cond_43

    const/16 v12, 0x21

    if-eq v8, v12, :cond_43

    const/16 v12, 0x3f

    if-eq v8, v12, :cond_43

    .line 889
    const/4 v7, 0x1

    .line 867
    .end local v8           #prevChar:C
    :cond_43
    :goto_43
    add-int/lit8 v9, v9, 0x1

    move v3, v2

    .end local v2           #d:I
    .restart local v3       #d:I
    goto :goto_14

    .line 894
    .end local v3           #d:I
    .restart local v2       #d:I
    :cond_47
    const/4 v7, 0x1

    goto :goto_43

    .line 899
    .end local v2           #d:I
    .restart local v3       #d:I
    :cond_49
    const/4 v4, 0x1

    .line 900
    const/4 v7, 0x1

    move v2, v3

    .end local v3           #d:I
    .restart local v2       #d:I
    goto :goto_43

    .line 905
    .end local v2           #d:I
    .restart local v3       #d:I
    :cond_4d
    add-int/lit8 v2, v3, 0x1

    .end local v3           #d:I
    .restart local v2       #d:I
    aput-char v1, v0, v3

    .line 906
    const/4 v7, 0x0

    goto :goto_43

    .line 910
    .end local v1           #c:C
    .end local v2           #d:I
    .restart local v3       #d:I
    :cond_53
    if-eqz p2, :cond_82

    const/4 v12, 0x1

    if-gt v12, v3, :cond_82

    const/16 v12, 0x20

    const/4 v13, 0x1

    sub-int v13, v3, v13

    aget-char v13, v0, v13

    if-ne v12, v13, :cond_82

    .line 912
    const/4 v4, 0x1

    .line 914
    add-int/lit8 v2, v3, -0x1

    .line 917
    .end local v3           #d:I
    .restart local v2       #d:I
    :goto_64
    const/4 v10, 0x0

    .line 919
    .local v10, start:I
    if-eqz p1, :cond_73

    if-lez v2, :cond_73

    const/16 v12, 0x20

    const/4 v13, 0x0

    aget-char v13, v0, v13

    if-ne v12, v13, :cond_73

    .line 921
    const/4 v4, 0x1

    .line 923
    add-int/lit8 v10, v10, 0x1

    .line 926
    :cond_73
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v11

    .line 928
    .local v11, xsf:Lorg/apache/xml/utils/XMLStringFactory;
    if-eqz v4, :cond_80

    sub-int v12, v2, v10

    invoke-virtual {v11, v0, v10, v12}, Lorg/apache/xml/utils/XMLStringFactory;->newstr([CII)Lorg/apache/xml/utils/XMLString;

    move-result-object v12

    :goto_7f
    return-object v12

    :cond_80
    move-object v12, p0

    goto :goto_7f

    .end local v2           #d:I
    .end local v10           #start:I
    .end local v11           #xsf:Lorg/apache/xml/utils/XMLStringFactory;
    .restart local v3       #d:I
    :cond_82
    move v2, v3

    .end local v3           #d:I
    .restart local v2       #d:I
    goto :goto_64
.end method

.method public fsb()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 1

    .prologue
    .line 90
    iget-object p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/xml/utils/FastStringBuffer;

    return-object p0
.end method

.method public getChars(II[CI)V
    .registers 12
    .parameter "srcBegin"
    .parameter "srcEnd"
    .parameter "dst"
    .parameter "dstBegin"

    .prologue
    .line 257
    sub-int v5, p2, p1

    .line 259
    .local v5, n:I
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-le v5, v6, :cond_8

    .line 260
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 262
    :cond_8
    array-length v6, p3

    sub-int/2addr v6, p4

    if-le v5, v6, :cond_f

    .line 263
    array-length v6, p3

    sub-int v5, v6, p4

    .line 265
    :cond_f
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr v6, p1

    add-int v2, v6, v5

    .line 266
    .local v2, end:I
    move v0, p4

    .line 267
    .local v0, d:I
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v3

    .line 269
    .local v3, fsb:Lorg/apache/xml/utils/FastStringBuffer;
    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v4, p1, v6

    .local v4, i:I
    move v1, v0

    .end local v0           #d:I
    .local v1, d:I
    :goto_1e
    if-ge v4, v2, :cond_2c

    .line 271
    add-int/lit8 v0, v1, 0x1

    .end local v1           #d:I
    .restart local v0       #d:I
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v6

    aput-char v6, p3, v1

    .line 269
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #d:I
    .restart local v1       #d:I
    goto :goto_1e

    .line 273
    :cond_2c
    return-void
.end method

.method public hasString()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 586
    invoke-super {p0}, Lorg/apache/xpath/objects/XString;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(I)I
    .registers 3
    .parameter "ch"

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .registers 9
    .parameter "ch"
    .parameter "fromIndex"

    .prologue
    const/4 v5, -0x1

    .line 710
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    add-int v2, v3, v4

    .line 711
    .local v2, max:I
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 713
    .local v0, fsb:Lorg/apache/xml/utils/FastStringBuffer;
    if-gez p2, :cond_1f

    .line 715
    const/4 p2, 0x0

    .line 724
    :cond_e
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v1, v3, p2

    .local v1, i:I
    :goto_12
    if-ge v1, v2, :cond_28

    .line 726
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_25

    .line 728
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    sub-int v3, v1, v3

    .line 732
    .end local v1           #i:I
    :goto_1e
    return v3

    .line 717
    :cond_1f
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-lt p2, v3, :cond_e

    move v3, v5

    .line 721
    goto :goto_1e

    .line 724
    .restart local v1       #i:I
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_28
    move v3, v5

    .line 732
    goto :goto_1e
.end method

.method public length()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    return v0
.end method

.method public object()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .registers 3
    .parameter "prefix"

    .prologue
    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->startsWith(Lorg/apache/xml/utils/XMLString;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .registers 11
    .parameter "prefix"
    .parameter "toffset"

    .prologue
    const/4 v7, 0x0

    .line 611
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 612
    .local v0, fsb:Lorg/apache/xml/utils/FastStringBuffer;
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v4, v5, p2

    .line 613
    .local v4, to:I
    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    add-int v3, v5, v6

    .line 614
    .local v3, tlim:I
    const/4 v2, 0x0

    .line 615
    .local v2, po:I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v1

    .line 618
    .local v1, pc:I
    if-ltz p2, :cond_1b

    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    sub-int/2addr v5, v1

    if-le p2, v5, :cond_21

    :cond_1b
    move v5, v7

    .line 634
    :goto_1c
    return v5

    .line 630
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    .line 631
    add-int/lit8 v2, v2, 0x1

    .line 623
    :cond_21
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_31

    .line 625
    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v5

    invoke-interface {p1, v2}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_1d

    move v5, v7

    .line 627
    goto :goto_1c

    .line 634
    :cond_31
    const/4 v5, 0x1

    goto :goto_1c
.end method

.method public str()Ljava/lang/String;
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 141
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    .line 167
    :cond_12
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    return-object v0
.end method

.method public substring(I)Lorg/apache/xml/utils/XMLString;
    .registers 6
    .parameter "beginIndex"

    .prologue
    .line 755
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    sub-int v0, v2, p1

    .line 757
    .local v0, len:I
    if-gtz v0, :cond_9

    .line 758
    sget-object v2, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    .line 763
    :goto_8
    return-object v2

    .line 761
    :cond_9
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v1, v2, p1

    .line 763
    .local v1, start:I
    new-instance v2, Lorg/apache/xpath/objects/XStringForFSB;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    goto :goto_8
.end method

.method public substring(II)Lorg/apache/xml/utils/XMLString;
    .registers 7
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 786
    sub-int v0, p2, p1

    .line 788
    .local v0, len:I
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-le v0, v2, :cond_8

    .line 789
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 791
    :cond_8
    if-gtz v0, :cond_d

    .line 792
    sget-object v2, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    .line 797
    :goto_c
    return-object v2

    .line 795
    :cond_d
    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int v1, v2, p1

    .line 797
    .local v1, start:I
    new-instance v2, Lorg/apache/xpath/objects/XStringForFSB;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    goto :goto_c
.end method

.method public toDouble()D
    .registers 10

    .prologue
    const-wide/high16 v7, 0x7ff8

    .line 949
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-nez v4, :cond_8

    move-wide v4, v7

    .line 983
    :goto_7
    return-wide v4

    .line 953
    :cond_8
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v4

    iget v5, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v6, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v3

    .line 962
    .local v3, valueString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ge v1, v4, :cond_23

    .line 963
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_29

    .line 965
    :cond_23
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ne v1, v4, :cond_2c

    move-wide v4, v7

    goto :goto_7

    .line 962
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 966
    :cond_2c
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_36

    .line 967
    add-int/lit8 v1, v1, 0x1

    .line 968
    :cond_36
    :goto_36
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ge v1, v4, :cond_4a

    .line 969
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 970
    .local v0, c:C
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_5e

    const/16 v4, 0x30

    if-lt v0, v4, :cond_4a

    const/16 v4, 0x39

    if-le v0, v4, :cond_5e

    .line 973
    .end local v0           #c:C
    :cond_4a
    :goto_4a
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ge v1, v4, :cond_58

    .line 974
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_61

    .line 976
    :cond_58
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-eq v1, v4, :cond_64

    move-wide v4, v7

    .line 977
    goto :goto_7

    .line 968
    .restart local v0       #c:C
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 973
    .end local v0           #c:C
    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 980
    :cond_64
    :try_start_64
    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6c} :catch_6e

    move-result-wide v4

    goto :goto_7

    .line 981
    :catch_6e
    move-exception v4

    move-object v2, v4

    .local v2, nfe:Ljava/lang/NumberFormatException;
    move-wide v4, v7

    .line 983
    goto :goto_7
.end method

.method public trim()Lorg/apache/xml/utils/XMLString;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 825
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    return-object v0
.end method
