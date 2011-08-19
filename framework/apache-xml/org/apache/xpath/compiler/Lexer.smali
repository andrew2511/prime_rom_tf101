.class Lorg/apache/xpath/compiler/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# static fields
.field static final TARGETEXTRA:I = 0x2710


# instance fields
.field private m_compiler:Lorg/apache/xpath/compiler/Compiler;

.field m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field private m_patternMap:[I

.field private m_patternMapSize:I

.field m_processor:Lorg/apache/xpath/compiler/XPathParser;


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V
    .registers 5
    .parameter "compiler"
    .parameter "resolver"
    .parameter "xpathProcessor"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    .line 84
    iput-object p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    .line 85
    iput-object p2, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    .line 86
    iput-object p3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    .line 87
    return-void
.end method

.method private final addToTokenQueue(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 561
    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectVector;->addElement(Ljava/lang/Object;)V

    .line 562
    return-void
.end method

.method private getTokenQueuePosFromMap(I)I
    .registers 5
    .parameter "i"

    .prologue
    const/16 v2, 0x2710

    .line 434
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    aget v0, v1, p1

    .line 436
    .local v0, pos:I
    if-lt v0, v2, :cond_b

    sub-int v1, v0, v2

    :goto_a
    return v1

    :cond_b
    move v1, v0

    goto :goto_a
.end method

.method private mapNSTokens(Ljava/lang/String;III)I
    .registers 13
    .parameter "pat"
    .parameter "startSubstring"
    .parameter "posOfNSSep"
    .parameter "posOfScan"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 582
    const-string v1, ""

    .line 584
    .local v1, prefix:Ljava/lang/String;
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    .line 586
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 590
    :cond_a
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    if-eqz v4, :cond_5b

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    const-string v4, "xmlns"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 595
    :try_start_1e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4b

    .line 596
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_29} :catch_52

    move-result-object v3

    .line 633
    .local v3, uName:Ljava/lang/String;
    :goto_2a
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5d

    .line 635
    invoke-direct {p0, v3}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 636
    const-string v4, ":"

    invoke-direct {p0, v4}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 638
    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v4, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_49

    .line 641
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 667
    .end local v2           #s:Ljava/lang/String;
    :cond_49
    :goto_49
    const/4 v4, -0x1

    return v4

    .line 617
    .end local v3           #uName:Ljava/lang/String;
    :cond_4b
    :try_start_4b
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_4b .. :try_end_50} :catch_52

    move-result-object v3

    .restart local v3       #uName:Ljava/lang/String;
    goto :goto_2a

    .line 623
    .end local v3           #uName:Ljava/lang/String;
    :catch_52
    move-exception v4

    move-object v0, v4

    .line 625
    .local v0, cce:Ljava/lang/ClassCastException;
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 626
    .restart local v3       #uName:Ljava/lang/String;
    goto :goto_2a

    .line 630
    .end local v0           #cce:Ljava/lang/ClassCastException;
    .end local v3           #uName:Ljava/lang/String;
    :cond_5b
    move-object v3, v1

    .restart local v3       #uName:Ljava/lang/String;
    goto :goto_2a

    .line 647
    :cond_5d
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v5, "ER_PREFIX_MUST_RESOLVE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_49
.end method

.method private mapPatternElemPos(IZZ)Z
    .registers 12
    .parameter "nesting"
    .parameter "isStart"
    .parameter "isAttrName"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 400
    if-nez p1, :cond_44

    .line 402
    iget v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1d

    .line 404
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    .line 405
    .local v1, patternMap:[I
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    array-length v0, v2

    .line 406
    .local v0, len:I
    iget v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 v2, v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    .line 407
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    invoke-static {v1, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    .end local v0           #len:I
    .end local v1           #patternMap:[I
    :cond_1d
    if-nez p2, :cond_2b

    .line 411
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iget v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    sub-int/2addr v3, v7

    aget v4, v2, v3

    const/16 v5, 0x2710

    sub-int/2addr v4, v5

    aput v4, v2, v3

    .line 413
    :cond_2b
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iget v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v4}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    move-result v4

    if-eqz p3, :cond_45

    move v5, v7

    :goto_38
    sub-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x2710

    aput v4, v2, v3

    .line 416
    iget v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    .line 418
    const/4 p2, 0x0

    .line 421
    :cond_44
    return p2

    :cond_45
    move v5, v6

    .line 413
    goto :goto_38
.end method

.method private recordTokenString(Ljava/util/Vector;)V
    .registers 7
    .parameter "targetStrings"

    .prologue
    const/4 v4, 0x1

    .line 503
    iget v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    sub-int/2addr v2, v4

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->getTokenQueuePosFromMap(I)I

    move-result v1

    .line 505
    .local v1, tokPos:I
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->resetTokenMark(I)V

    .line 507
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v3, 0x28

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 509
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v2, v2, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->getKeywordToken(Ljava/lang/String;)I

    move-result v0

    .line 511
    .local v0, tok:I
    sparse-switch v0, :sswitch_data_78

    .line 532
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 551
    .end local v0           #tok:I
    :goto_27
    return-void

    .line 514
    .restart local v0       #tok:I
    :sswitch_28
    const-string v2, "#comment"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_27

    .line 517
    :sswitch_2e
    const-string v2, "#text"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_27

    .line 520
    :sswitch_34
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_27

    .line 523
    :sswitch_3a
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_27

    .line 526
    :sswitch_40
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_27

    .line 529
    :sswitch_46
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_27

    .line 537
    .end local v0           #tok:I
    :cond_4c
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 539
    add-int/lit8 v1, v1, 0x1

    .line 541
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->resetTokenMark(I)V

    .line 544
    :cond_5d
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 546
    add-int/lit8 v1, v1, 0x2

    .line 549
    :cond_69
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v2}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_27

    .line 511
    nop

    :sswitch_data_78
    .sparse-switch
        0x23 -> :sswitch_3a
        0x24 -> :sswitch_40
        0x406 -> :sswitch_28
        0x407 -> :sswitch_2e
        0x408 -> :sswitch_46
        0x409 -> :sswitch_34
    .end sparse-switch
.end method

.method private final resetTokenMark(I)V
    .registers 9
    .parameter "mark"

    .prologue
    const/4 v6, 0x0

    .line 447
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    move-result v0

    .line 449
    .local v0, qsz:I
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    if-lez p1, :cond_3f

    if-gt p1, v0, :cond_3d

    const/4 v2, 0x1

    sub-int v2, p1, v2

    :goto_10
    iput v2, v1, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    .line 452
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget v1, v1, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    if-ge v1, v0, :cond_41

    .line 454
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget v4, v3, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 456
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v2, v2, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    .line 463
    :goto_3c
    return-void

    :cond_3d
    move v2, p1

    .line 449
    goto :goto_10

    :cond_3f
    move v2, v6

    goto :goto_10

    .line 460
    :cond_41
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iput-char v6, v1, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    goto :goto_3c
.end method


# virtual methods
.method final getKeywordToken(Ljava/lang/String;)I
    .registers 7
    .parameter "key"

    .prologue
    .line 479
    :try_start_0
    invoke-static {p1}, Lorg/apache/xpath/compiler/Keywords;->getKeyWord(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 481
    .local v1, itok:Ljava/lang/Integer;
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_b} :catch_15

    move-result v4

    move v3, v4

    .line 492
    .end local v1           #itok:Ljava/lang/Integer;
    .local v3, tok:I
    :goto_d
    return v3

    .line 481
    .end local v3           #tok:I
    .restart local v1       #itok:Ljava/lang/Integer;
    :cond_e
    const/4 v4, 0x0

    move v3, v4

    goto :goto_d

    .line 483
    .end local v1           #itok:Ljava/lang/Integer;
    :catch_11
    move-exception v4

    move-object v2, v4

    .line 485
    .local v2, npe:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    .line 490
    .restart local v3       #tok:I
    goto :goto_d

    .line 487
    .end local v2           #npe:Ljava/lang/NullPointerException;
    .end local v3           #tok:I
    :catch_15
    move-exception v4

    move-object v0, v4

    .line 489
    .local v0, cce:Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    .restart local v3       #tok:I
    goto :goto_d
.end method

.method tokenize(Ljava/lang/String;)V
    .registers 3
    .parameter "pat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;Ljava/util/Vector;)V

    .line 99
    return-void
.end method

.method tokenize(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 22
    .parameter "pat"
    .parameter "targetStrings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    move-object v15, v0

    move-object/from16 v0, p1

    move-object v1, v15

    iput-object v0, v1, Lorg/apache/xpath/compiler/Compiler;->m_currentPattern:Ljava/lang/String;

    .line 114
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1f4

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_5d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    :goto_1f
    mul-int/lit8 v7, v15, 0x5

    .line 122
    .local v7, initTokQueueSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    move-object v15, v0

    new-instance v16, Lorg/apache/xpath/compiler/OpMapVector;

    const/16 v17, 0x9c4

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move v1, v7

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/compiler/OpMapVector;-><init>(III)V

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lorg/apache/xpath/compiler/Compiler;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    .line 126
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 127
    .local v11, nChars:I
    const/4 v14, -0x1

    .line 128
    .local v14, startSubstring:I
    const/4 v13, -0x1

    .line 129
    .local v13, posOfNSSep:I
    const/4 v10, 0x1

    .line 130
    .local v10, isStartOfPat:Z
    const/4 v8, 0x0

    .line 131
    .local v8, isAttrName:Z
    const/4 v9, 0x0

    .line 135
    .local v9, isNum:Z
    const/4 v12, 0x0

    .line 138
    .local v12, nesting:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_46
    if-ge v6, v11, :cond_228

    .line 140
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 142
    .local v5, c:C
    sparse-switch v5, :sswitch_data_292

    .line 345
    :cond_52
    :goto_52
    const/4 v15, -0x1

    if-ne v15, v14, :cond_220

    .line 347
    move v14, v6

    .line 348
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 138
    :cond_5a
    :goto_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 120
    .end local v5           #c:C
    .end local v6           #i:I
    .end local v7           #initTokQueueSize:I
    .end local v8           #isAttrName:Z
    .end local v9           #isNum:Z
    .end local v10           #isStartOfPat:Z
    .end local v11           #nChars:I
    .end local v12           #nesting:I
    .end local v13           #posOfNSSep:I
    .end local v14           #startSubstring:I
    :cond_5d
    const/16 v15, 0x1f4

    goto :goto_1f

    .line 146
    .restart local v5       #c:C
    .restart local v6       #i:I
    .restart local v7       #initTokQueueSize:I
    .restart local v8       #isAttrName:Z
    .restart local v9       #isNum:Z
    .restart local v10       #isStartOfPat:Z
    .restart local v11       #nChars:I
    .restart local v12       #nesting:I
    .restart local v13       #posOfNSSep:I
    .restart local v14       #startSubstring:I
    :sswitch_60
    const/4 v15, -0x1

    if-eq v14, v15, :cond_7c

    .line 148
    const/4 v9, 0x0

    .line 149
    move-object/from16 v0, p0

    move v1, v12

    move v2, v10

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    .line 150
    const/4 v8, 0x0

    .line 152
    const/4 v15, -0x1

    if-eq v15, v13, :cond_8f

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v13

    .line 162
    :cond_7c
    :goto_7c
    move v14, v6

    .line 164
    add-int/lit8 v6, v6, 0x1

    :goto_7f
    if-ge v6, v11, :cond_9e

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v15, 0x22

    if-eq v5, v15, :cond_9e

    add-int/lit8 v6, v6, 0x1

    goto :goto_7f

    .line 158
    :cond_8f
    move-object/from16 v0, p1

    move v1, v14

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_7c

    .line 166
    :cond_9e
    const/16 v15, 0x22

    if-ne v5, v15, :cond_b6

    if-ge v6, v11, :cond_b6

    .line 168
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 170
    const/4 v14, -0x1

    goto :goto_5a

    .line 174
    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    move-object v15, v0

    const-string v16, "ER_EXPECTED_DOUBLE_QUOTE"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5a

    .line 180
    :sswitch_c3
    const/4 v15, -0x1

    if-eq v14, v15, :cond_df

    .line 182
    const/4 v9, 0x0

    .line 183
    move-object/from16 v0, p0

    move v1, v12

    move v2, v10

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    .line 184
    const/4 v8, 0x0

    .line 186
    const/4 v15, -0x1

    if-eq v15, v13, :cond_f2

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v13

    .line 196
    :cond_df
    :goto_df
    move v14, v6

    .line 198
    add-int/lit8 v6, v6, 0x1

    :goto_e2
    if-ge v6, v11, :cond_101

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v15, 0x27

    if-eq v5, v15, :cond_101

    add-int/lit8 v6, v6, 0x1

    goto :goto_e2

    .line 192
    :cond_f2
    move-object/from16 v0, p1

    move v1, v14

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_df

    .line 200
    :cond_101
    const/16 v15, 0x27

    if-ne v5, v15, :cond_11a

    if-ge v6, v11, :cond_11a

    .line 202
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 204
    const/4 v14, -0x1

    goto/16 :goto_5a

    .line 208
    :cond_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    move-object v15, v0

    const-string v16, "ER_EXPECTED_SINGLE_QUOTE"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5a

    .line 216
    :sswitch_128
    const/4 v15, -0x1

    if-eq v14, v15, :cond_5a

    .line 218
    const/4 v9, 0x0

    .line 219
    move-object/from16 v0, p0

    move v1, v12

    move v2, v10

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    .line 220
    const/4 v8, 0x0

    .line 222
    const/4 v15, -0x1

    if-eq v15, v13, :cond_147

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v13

    .line 231
    :goto_144
    const/4 v14, -0x1

    goto/16 :goto_5a

    .line 228
    :cond_147
    move-object/from16 v0, p1

    move v1, v14

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_144

    .line 235
    :sswitch_156
    const/4 v8, 0x1

    .line 239
    :sswitch_157
    const/16 v15, 0x2d

    if-ne v15, v5, :cond_161

    .line 241
    if-nez v9, :cond_160

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5a

    .line 246
    :cond_160
    const/4 v9, 0x0

    .line 266
    :cond_161
    :sswitch_161
    const/4 v15, -0x1

    if-eq v14, v15, :cond_1b9

    .line 268
    const/4 v9, 0x0

    .line 269
    move-object/from16 v0, p0

    move v1, v12

    move v2, v10

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    .line 270
    const/4 v8, 0x0

    .line 272
    const/4 v15, -0x1

    if-eq v15, v13, :cond_1aa

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v13

    .line 281
    :goto_17d
    const/4 v14, -0x1

    .line 293
    :cond_17e
    :goto_17e
    if-nez v12, :cond_18e

    .line 295
    const/16 v15, 0x7c

    if-ne v15, v5, :cond_18e

    .line 297
    if-eqz p2, :cond_18d

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    .line 302
    :cond_18d
    const/4 v10, 0x1

    .line 306
    :cond_18e
    const/16 v15, 0x29

    if-eq v15, v5, :cond_196

    const/16 v15, 0x5d

    if-ne v15, v5, :cond_1d8

    .line 308
    :cond_196
    add-int/lit8 v12, v12, -0x1

    .line 315
    :cond_198
    :goto_198
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 278
    :cond_1aa
    move-object/from16 v0, p1

    move v1, v14

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_17d

    .line 283
    :cond_1b9
    const/16 v15, 0x2f

    if-ne v15, v5, :cond_1c9

    if-eqz v10, :cond_1c9

    .line 285
    move-object/from16 v0, p0

    move v1, v12

    move v2, v10

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    goto :goto_17e

    .line 287
    :cond_1c9
    const/16 v15, 0x2a

    if-ne v15, v5, :cond_17e

    .line 289
    move-object/from16 v0, p0

    move v1, v12

    move v2, v10

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    .line 290
    const/4 v8, 0x0

    goto :goto_17e

    .line 310
    :cond_1d8
    const/16 v15, 0x28

    if-eq v15, v5, :cond_1e0

    const/16 v15, 0x5b

    if-ne v15, v5, :cond_198

    .line 312
    :cond_1e0
    add-int/lit8 v12, v12, 0x1

    goto :goto_198

    .line 318
    :sswitch_1e3
    if-lez v6, :cond_52

    .line 320
    const/4 v15, 0x1

    sub-int v15, v6, v15

    if-ne v13, v15, :cond_21d

    .line 322
    const/4 v15, -0x1

    if-eq v14, v15, :cond_203

    .line 324
    const/4 v15, 0x1

    sub-int v15, v6, v15

    if-ge v14, v15, :cond_203

    .line 325
    const/4 v15, 0x1

    sub-int v15, v6, v15

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 328
    :cond_203
    const/4 v9, 0x0

    .line 329
    const/4 v8, 0x0

    .line 330
    const/4 v14, -0x1

    .line 331
    const/4 v13, -0x1

    .line 333
    const/4 v15, 0x1

    sub-int v15, v6, v15

    add-int/lit8 v16, v6, 0x1

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 339
    :cond_21d
    move v13, v6

    goto/16 :goto_52

    .line 350
    :cond_220
    if-eqz v9, :cond_5a

    .line 352
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    goto/16 :goto_5a

    .line 357
    .end local v5           #c:C
    :cond_228
    const/4 v15, -0x1

    if-eq v14, v15, :cond_255

    .line 359
    const/4 v9, 0x0

    .line 360
    move-object/from16 v0, p0

    move v1, v12

    move v2, v10

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    .line 362
    const/4 v15, -0x1

    if-ne v15, v13, :cond_24a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object v15, v0

    if-eqz v15, :cond_279

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object v15, v0

    invoke-interface {v15}, Lorg/apache/xml/utils/PrefixResolver;->handlesNullPrefixes()Z

    move-result v15

    if-eqz v15, :cond_279

    .line 365
    :cond_24a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v13

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v13

    .line 373
    :cond_255
    :goto_255
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    move-result v15

    if-nez v15, :cond_288

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    move-object v15, v0

    const-string v16, "ER_EMPTY_EXPRESSION"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_26c
    :goto_26c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    move-object v15, v0

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    .line 383
    return-void

    .line 369
    :cond_279
    move-object/from16 v0, p1

    move v1, v14

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_255

    .line 377
    :cond_288
    if-eqz p2, :cond_26c

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    goto :goto_26c

    .line 142
    :sswitch_data_292
    .sparse-switch
        0x9 -> :sswitch_128
        0xa -> :sswitch_128
        0xd -> :sswitch_128
        0x20 -> :sswitch_128
        0x21 -> :sswitch_161
        0x22 -> :sswitch_60
        0x24 -> :sswitch_161
        0x27 -> :sswitch_c3
        0x28 -> :sswitch_161
        0x29 -> :sswitch_161
        0x2a -> :sswitch_161
        0x2b -> :sswitch_161
        0x2c -> :sswitch_161
        0x2d -> :sswitch_157
        0x2f -> :sswitch_161
        0x3a -> :sswitch_1e3
        0x3c -> :sswitch_161
        0x3d -> :sswitch_161
        0x3e -> :sswitch_161
        0x40 -> :sswitch_156
        0x5b -> :sswitch_161
        0x5c -> :sswitch_161
        0x5d -> :sswitch_161
        0x5e -> :sswitch_161
        0x7c -> :sswitch_161
    .end sparse-switch
.end method
