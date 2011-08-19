.class public Lorg/apache/xpath/compiler/XPathParser;
.super Ljava/lang/Object;
.source "XPathParser.java"


# static fields
.field public static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "CONTINUE_AFTER_FATAL_ERROR"

.field protected static final FILTER_MATCH_FAILED:I = 0x0

.field protected static final FILTER_MATCH_PREDICATES:I = 0x2

.field protected static final FILTER_MATCH_PRIMARY:I = 0x1


# instance fields
.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

.field m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field private m_ops:Lorg/apache/xpath/compiler/OpMap;

.field m_queueMark:I

.field m_sourceLocator:Ljavax/xml/transform/SourceLocator;

.field transient m_token:Ljava/lang/String;

.field transient m_tokenChar:C


# direct methods
.method public constructor <init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V
    .registers 4
    .parameter "errorListener"
    .parameter "sourceLocator"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    .line 66
    iput v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    .line 80
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 81
    iput-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    .line 82
    return-void
.end method

.method private assertion(ZLjava/lang/String;)V
    .registers 7
    .parameter "b"
    .parameter "msg"

    .prologue
    .line 581
    if-nez p1, :cond_14

    .line 583
    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, fMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    .end local v0           #fMsg:Ljava/lang/String;
    :cond_14
    return-void
.end method

.method private final consumeExpected(C)V
    .registers 6
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 524
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 537
    return-void

    .line 528
    :cond_a
    const-string v0, "ER_EXPECTED_BUT_FOUND"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    new-instance v0, Lorg/apache/xpath/XPathProcessorException;

    const-string v1, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final consumeExpected(Ljava/lang/String;)V
    .registers 6
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 496
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 508
    return-void

    .line 500
    :cond_a
    const-string v0, "ER_EXPECTED_BUT_FOUND"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    new-instance v0, Lorg/apache/xpath/XPathProcessorException;

    const-string v1, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getTokenRelative(I)Ljava/lang/String;
    .registers 5
    .parameter "i"

    .prologue
    .line 447
    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int v0, v2, p1

    .line 449
    .local v0, relative:I
    if-lez v0, :cond_19

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 451
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v2, v2, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 458
    .local v1, tok:Ljava/lang/String;
    :goto_18
    return-object v1

    .line 455
    .end local v1           #tok:Ljava/lang/String;
    :cond_19
    const/4 v1, 0x0

    .restart local v1       #tok:Ljava/lang/String;
    goto :goto_18
.end method

.method private final lookahead(Ljava/lang/String;I)Z
    .registers 10
    .parameter "s"
    .parameter "n"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 402
    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v3

    if-gt v2, v3, :cond_2a

    .line 404
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v2, v2, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    iget v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int v4, p2, v5

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    .local v1, lookahead:Ljava/lang/String;
    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 413
    .end local v1           #lookahead:Ljava/lang/String;
    .local v0, isToken:Z
    :goto_23
    return v0

    .line 406
    .end local v0           #isToken:Z
    .restart local v1       #lookahead:Ljava/lang/String;
    :cond_24
    if-nez p1, :cond_28

    move v0, v5

    goto :goto_23

    :cond_28
    move v0, v6

    goto :goto_23

    .line 410
    .end local v1           #lookahead:Ljava/lang/String;
    :cond_2a
    if-nez p1, :cond_2e

    move v0, v5

    .restart local v0       #isToken:Z
    :goto_2d
    goto :goto_23

    .end local v0           #isToken:Z
    :cond_2e
    move v0, v6

    goto :goto_2d
.end method

.method private final lookbehind(CI)Z
    .registers 12
    .parameter "c"
    .parameter "n"

    .prologue
    const/16 v8, 0x7c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 329
    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v5, p2, 0x1

    sub-int v2, v4, v5

    .line 331
    .local v2, lookBehindPos:I
    if-ltz v2, :cond_31

    .line 333
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, v4, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 335
    .local v3, lookbehind:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_2f

    .line 337
    if-nez v3, :cond_23

    move v0, v8

    .line 339
    .local v0, c0:C
    :goto_1f
    if-ne v0, v8, :cond_29

    move v1, v6

    .line 351
    .end local v0           #c0:C
    .end local v3           #lookbehind:Ljava/lang/String;
    .local v1, isToken:Z
    :goto_22
    return v1

    .line 337
    .end local v1           #isToken:Z
    .restart local v3       #lookbehind:Ljava/lang/String;
    :cond_23
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v0, v4

    goto :goto_1f

    .line 339
    .restart local v0       #c0:C
    :cond_29
    if-ne v0, p1, :cond_2d

    move v1, v7

    goto :goto_22

    :cond_2d
    move v1, v6

    goto :goto_22

    .line 343
    .end local v0           #c0:C
    :cond_2f
    const/4 v1, 0x0

    .restart local v1       #isToken:Z
    goto :goto_22

    .line 348
    .end local v1           #isToken:Z
    .end local v3           #lookbehind:Ljava/lang/String;
    :cond_31
    const/4 v1, 0x0

    .restart local v1       #isToken:Z
    goto :goto_22
.end method

.method private final lookbehindHasToken(I)Z
    .registers 11
    .parameter "n"

    .prologue
    const/16 v8, 0x7c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 371
    iget v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v3, p1

    if-lez v3, :cond_27

    .line 373
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, v3, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int v5, p1, v7

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 374
    .local v2, lookbehind:Ljava/lang/String;
    if-nez v2, :cond_1f

    move v0, v8

    .line 376
    .local v0, c0:C
    :goto_1b
    if-ne v0, v8, :cond_25

    move v1, v6

    .line 383
    .end local v0           #c0:C
    .end local v2           #lookbehind:Ljava/lang/String;
    .local v1, hasToken:Z
    :goto_1e
    return v1

    .line 374
    .end local v1           #hasToken:Z
    .restart local v2       #lookbehind:Ljava/lang/String;
    :cond_1f
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v0, v3

    goto :goto_1b

    .restart local v0       #c0:C
    :cond_25
    move v1, v7

    .line 376
    goto :goto_1e

    .line 380
    .end local v0           #c0:C
    .end local v2           #lookbehind:Ljava/lang/String;
    :cond_27
    const/4 v1, 0x0

    .restart local v1       #hasToken:Z
    goto :goto_1e
.end method

.method private final nextToken()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 423
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 425
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v0, v0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    iget v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    .line 433
    :goto_25
    return-void

    .line 430
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 431
    iput-char v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    goto :goto_25
.end method

.method private final prevToken()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 468
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    if-lez v0, :cond_22

    .line 470
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    .line 472
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v0, v0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    iget v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    .line 480
    :goto_21
    return-void

    .line 477
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 478
    iput-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    goto :goto_21
.end method


# virtual methods
.method protected AbbreviatedNodeTestStep(Z)Z
    .registers 12
    .parameter "isLeadingSlashPermitted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2f

    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 2295
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    .line 2299
    .local v2, opPos:I
    const/4 v1, -0x1

    .line 2301
    .local v1, matchTypePos:I
    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 2303
    const/16 v0, 0x33

    .line 2305
    .local v0, axesType:I
    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2306
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2355
    :goto_1b
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v8, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2357
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->NodeTest(I)V

    .line 2360
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2363
    :goto_3b
    const/16 v4, 0x5b

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 2365
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    goto :goto_3b

    .line 2308
    .end local v0           #axesType:I
    :cond_47
    const-string v4, "::"

    invoke-direct {p0, v4, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2310
    const-string v4, "attribute"

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 2312
    const/16 v0, 0x33

    .line 2314
    .restart local v0       #axesType:I
    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2331
    :goto_5c
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2332
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_1b

    .line 2316
    .end local v0           #axesType:I
    :cond_63
    const-string v4, "child"

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 2318
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 2319
    const/16 v0, 0x35

    .line 2321
    .restart local v0       #axesType:I
    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    goto :goto_5c

    .line 2325
    .end local v0           #axesType:I
    :cond_77
    const/4 v0, -0x1

    .line 2327
    .restart local v0       #axesType:I
    const-string v4, "ER_AXES_NOT_ALLOWED"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5c

    .line 2334
    .end local v0           #axesType:I
    :cond_85
    invoke-virtual {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 2336
    if-nez p1, :cond_93

    .line 2339
    const-string v4, "ER_EXPECTED_STEP_PATTERN"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2341
    :cond_93
    const/16 v0, 0x34

    .line 2343
    .restart local v0       #axesType:I
    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2344
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_1b

    .line 2348
    .end local v0           #axesType:I
    :cond_9c
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 2349
    const/16 v0, 0x35

    .line 2351
    .restart local v0       #axesType:I
    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    goto/16 :goto_1b

    .line 2382
    :cond_a9
    const/4 v4, -0x1

    if-le v1, v4, :cond_d2

    invoke-virtual {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_d2

    invoke-virtual {p0, v9, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 2384
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/16 v5, 0x34

    invoke-virtual {v4, v1, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2386
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2388
    const/4 v3, 0x1

    .line 2396
    .local v3, trailingSlashConsumed:Z
    :goto_c3
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2399
    return v3

    .line 2392
    .end local v3           #trailingSlashConsumed:Z
    :cond_d2
    const/4 v3, 0x0

    .restart local v3       #trailingSlashConsumed:Z
    goto :goto_c3
.end method

.method protected AdditiveExpr(I)I
    .registers 8
    .parameter "addPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1000
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 1002
    .local v1, opPos:I
    if-ne v4, p1, :cond_c

    .line 1003
    move p1, v1

    .line 1005
    :cond_c
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    .line 1007
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 1009
    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1011
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1012
    const/16 v2, 0xa

    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1014
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    .line 1016
    .local v0, opPlusLeftHandLen:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    move-result p1

    .line 1017
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1019
    add-int/lit8 p1, p1, 0x2

    .line 1035
    .end local v0           #opPlusLeftHandLen:I
    :cond_43
    :goto_43
    return p1

    .line 1021
    :cond_44
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1023
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1024
    const/16 v2, 0xb

    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1026
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    .line 1028
    .restart local v0       #opPlusLeftHandLen:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    move-result p1

    .line 1029
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1031
    add-int/lit8 p1, p1, 0x2

    goto :goto_43
.end method

.method protected AndExpr()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 832
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 834
    .local v0, opPos:I
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    .line 836
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v1, :cond_30

    const-string v1, "and"

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 838
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 839
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 840
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AndExpr()V

    .line 842
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 845
    :cond_30
    return-void
.end method

.method protected Argument()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1466
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1468
    .local v0, opPos:I
    const/4 v1, 0x2

    const/16 v2, 0x1a

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1469
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1471
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1473
    return-void
.end method

.method protected AxisName()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1805
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xpath/compiler/Keywords;->getAxisName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1807
    .local v1, val:Ljava/lang/Object;
    if-nez v1, :cond_15

    .line 1809
    const-string v2, "ER_ILLEGAL_AXIS_NAME"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1813
    :cond_15
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #val:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1815
    .local v0, axesType:I
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1817
    return v0
.end method

.method protected Basis()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 1758
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 1762
    .local v1, opPos:I
    const-string v2, "::"

    invoke-direct {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1764
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AxisName()I

    move-result v0

    .line 1766
    .local v0, axesType:I
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1767
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1784
    :goto_1a
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1786
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->NodeTest(I)V

    .line 1789
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1791
    return-void

    .line 1769
    .end local v0           #axesType:I
    :cond_3b
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1771
    const/16 v0, 0x27

    .line 1773
    .restart local v0       #axesType:I
    invoke-virtual {p0, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1774
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_1a

    .line 1778
    .end local v0           #axesType:I
    :cond_4c
    const/16 v0, 0x28

    .line 1780
    .restart local v0       #axesType:I
    invoke-virtual {p0, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    goto :goto_1a
.end method

.method protected BooleanExpr()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1179
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 1181
    .local v1, opPos:I
    const/16 v2, 0x12

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1182
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1184
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, v1

    .line 1186
    .local v0, opLen:I
    if-ne v0, v4, :cond_20

    .line 1188
    const-string v2, "ER_BOOLEAN_ARG_NO_LONGER_OPTIONAL"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1191
    :cond_20
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1192
    return-void
.end method

.method protected EqualityExpr(I)I
    .registers 9
    .parameter "addPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 865
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 867
    .local v1, opPos:I
    if-ne v4, p1, :cond_e

    .line 868
    move p1, v1

    .line 870
    :cond_e
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    .line 872
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 874
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p0, v6, v3}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 876
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 877
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 878
    const/4 v2, 0x4

    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 880
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    .line 882
    .local v0, opPlusLeftHandLen:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    move-result p1

    .line 883
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 885
    add-int/lit8 p1, p1, 0x2

    .line 901
    .end local v0           #opPlusLeftHandLen:I
    :cond_4d
    :goto_4d
    return p1

    .line 887
    :cond_4e
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 889
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 890
    const/4 v2, 0x5

    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 892
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    .line 894
    .restart local v0       #opPlusLeftHandLen:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    move-result p1

    .line 895
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 897
    add-int/lit8 p1, p1, 0x2

    goto :goto_4d
.end method

.method protected Expr()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->OrExpr()V

    .line 791
    return-void
.end method

.method protected FilterExpr()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5b

    .line 1341
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 1345
    .local v1, opPos:I
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PrimaryExpr()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1347
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1351
    const/4 v2, 0x2

    const/16 v3, 0x1c

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1353
    :goto_1b
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1355
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    goto :goto_1b

    .line 1358
    :cond_25
    const/4 v0, 0x2

    .line 1370
    .local v0, filterMatch:I
    :goto_26
    return v0

    .line 1362
    .end local v0           #filterMatch:I
    :cond_27
    const/4 v0, 0x1

    .restart local v0       #filterMatch:I
    goto :goto_26

    .line 1367
    .end local v0           #filterMatch:I
    :cond_29
    const/4 v0, 0x0

    .restart local v0       #filterMatch:I
    goto :goto_26
.end method

.method protected FunctionCall()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2c

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x29

    const/4 v5, 0x1

    .line 1486
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 1488
    .local v1, opPos:I
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1490
    const/4 v2, 0x4

    const/16 v3, 0x18

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1492
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1494
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1495
    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1497
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1499
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1528
    :goto_3e
    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1530
    :cond_43
    :goto_43
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_9d

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_9d

    .line 1532
    invoke-virtual {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1534
    const-string v2, "ER_FOUND_COMMA_BUT_NO_PRECEDING_ARG"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1537
    :cond_59
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Argument()V

    .line 1539
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1541
    invoke-direct {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1543
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1545
    const-string v2, "ER_FOUND_COMMA_BUT_NO_FOLLOWING_ARG"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_43

    .line 1503
    :cond_72
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->getFunctionToken(Ljava/lang/String;)I

    move-result v0

    .line 1505
    .local v0, funcTok:I
    if-ne v7, v0, :cond_85

    .line 1507
    const-string v2, "ER_COULDNOT_FIND_FUNCTION"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1511
    :cond_85
    packed-switch v0, :pswitch_data_c8

    .line 1520
    const/4 v2, 0x3

    const/16 v3, 0x19

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1522
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1525
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_3e

    :pswitch_9b
    move v2, v8

    .line 1559
    .end local v0           #funcTok:I
    :goto_9c
    return v2

    .line 1551
    :cond_9d
    invoke-direct {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1554
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1555
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1556
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    move v2, v5

    .line 1559
    goto :goto_9c

    .line 1511
    :pswitch_data_c8
    .packed-switch 0x406
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
    .end packed-switch
.end method

.method protected IdKeyPattern()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2233
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FunctionCall()Z

    .line 2234
    return-void
.end method

.method protected Literal()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x27

    const/16 v6, 0x22

    const/4 v7, 0x1

    .line 2020
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v5, v7

    .line 2021
    .local v2, last:I
    iget-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    .line 2022
    .local v0, c0:C
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2024
    .local v1, cX:C
    if-ne v0, v6, :cond_19

    if-eq v1, v6, :cond_1d

    :cond_19
    if-ne v0, v8, :cond_57

    if-ne v1, v8, :cond_57

    .line 2029
    :cond_1d
    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int v4, v5, v7

    .line 2031
    .local v4, tokenQueuePos:I
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, v5, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 2033
    new-instance v3, Lorg/apache/xpath/objects/XString;

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .line 2035
    .local v3, obj:Lorg/apache/xpath/objects/XString;
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, v5, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v5, v3, v4}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 2038
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2039
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v7, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2041
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2048
    .end local v3           #obj:Lorg/apache/xpath/objects/XString;
    .end local v4           #tokenQueuePos:I
    :goto_56
    return-void

    .line 2045
    :cond_57
    const-string v5, "ER_PATTERN_LITERAL_NEEDS_BE_QUOTED"

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_56
.end method

.method protected LocationPath()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 1575
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1578
    .local v0, opPos:I
    const/16 v2, 0x1c

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1580
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v1

    .line 1582
    .local v1, seenSlash:Z
    if-eqz v1, :cond_78

    .line 1584
    const/16 v2, 0x32

    invoke-virtual {p0, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1587
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1588
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v6

    const/16 v4, 0x23

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1590
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1595
    :cond_38
    :goto_38
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_50

    .line 1597
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativeLocationPath()Z

    move-result v2

    if-nez v2, :cond_50

    if-nez v1, :cond_50

    .line 1601
    const-string v2, "ER_EXPECTED_LOC_PATH"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1607
    :cond_50
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1608
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v6, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1609
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1611
    return-void

    .line 1591
    :cond_78
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-nez v2, :cond_38

    .line 1592
    const-string v2, "ER_EXPECTED_LOC_PATH_AT_END_EXPR"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_38
.end method

.method protected LocationPathPattern()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x34

    const/16 v6, 0x2f

    const/4 v9, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    .line 2131
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    .line 2133
    .local v3, opPos:I
    const/4 v0, 0x0

    .line 2134
    .local v0, RELATIVE_PATH_NOT_PERMITTED:I
    const/4 v1, 0x1

    .line 2135
    .local v1, RELATIVE_PATH_PERMITTED:I
    const/4 v2, 0x2

    .line 2137
    .local v2, RELATIVE_PATH_REQUIRED:I
    const/4 v4, 0x0

    .line 2139
    .local v4, relativePathStatus:I
    const/16 v5, 0x1f

    invoke-virtual {p0, v9, v5}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2141
    const/16 v5, 0x28

    invoke-virtual {p0, v5, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v5

    if-eqz v5, :cond_a0

    const-string v5, "id"

    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2e

    const-string v5, "key"

    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 2145
    :cond_2e
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->IdKeyPattern()V

    .line 2147
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 2149
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2151
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 2153
    invoke-virtual {p0, v7, v10}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2155
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2163
    :goto_46
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2164
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v8

    const/16 v7, 0x40a

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2166
    const/4 v4, 0x2

    .line 2202
    :cond_61
    :goto_61
    if-eqz v4, :cond_72

    .line 2204
    const/16 v5, 0x7c

    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    if-nez v5, :cond_da

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v5, :cond_da

    .line 2206
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativePathPattern()V

    .line 2216
    :cond_72
    :goto_72
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2217
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v8, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2218
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v7, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2220
    return-void

    .line 2159
    :cond_9a
    const/16 v5, 0x35

    invoke-virtual {p0, v7, v5}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    goto :goto_46

    .line 2169
    :cond_a0
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 2171
    invoke-virtual {p0, v6, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 2173
    invoke-virtual {p0, v7, v10}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2179
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2181
    const/4 v4, 0x2

    .line 2192
    :goto_b3
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2193
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v8

    const/16 v7, 0x23

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2195
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_61

    .line 2185
    :cond_d1
    const/16 v5, 0x32

    invoke-virtual {p0, v7, v5}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2187
    const/4 v4, 0x1

    goto :goto_b3

    .line 2199
    :cond_d8
    const/4 v4, 0x2

    goto :goto_61

    .line 2208
    :cond_da
    if-ne v4, v9, :cond_72

    .line 2211
    const-string v5, "ER_EXPECTED_REL_PATH_PATTERN"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_72
.end method

.method protected MultiplicativeExpr(I)I
    .registers 8
    .parameter "addPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1058
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 1060
    .local v1, opPos:I
    const/4 v2, -0x1

    if-ne v2, p1, :cond_c

    .line 1061
    move p1, v1

    .line 1063
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->UnaryExpr()V

    .line 1065
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 1067
    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1069
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1070
    const/16 v2, 0xc

    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1072
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    .line 1074
    .local v0, opPlusLeftHandLen:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    .line 1075
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1077
    add-int/lit8 p1, p1, 0x2

    .line 1117
    .end local v0           #opPlusLeftHandLen:I
    :cond_43
    :goto_43
    return p1

    .line 1079
    :cond_44
    const-string v2, "div"

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1081
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1082
    const/16 v2, 0xd

    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1084
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    .line 1086
    .restart local v0       #opPlusLeftHandLen:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    .line 1087
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1089
    add-int/lit8 p1, p1, 0x2

    .line 1090
    goto :goto_43

    .line 1091
    .end local v0           #opPlusLeftHandLen:I
    :cond_75
    const-string v2, "mod"

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 1093
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1094
    const/16 v2, 0xe

    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1096
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    .line 1098
    .restart local v0       #opPlusLeftHandLen:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    .line 1099
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1101
    add-int/lit8 p1, p1, 0x2

    .line 1102
    goto :goto_43

    .line 1103
    .end local v0           #opPlusLeftHandLen:I
    :cond_a6
    const-string v2, "quo"

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1105
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1106
    const/16 v2, 0xf

    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1108
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    .line 1110
    .restart local v0       #opPlusLeftHandLen:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    .line 1111
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1113
    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_43
.end method

.method protected NCName()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2001
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2002
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2004
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2005
    return-void
.end method

.method protected NodeTest(I)V
    .registers 11
    .parameter "axesType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2a

    const/16 v7, 0x29

    const/16 v4, 0x28

    const/4 v6, -0x3

    const/4 v5, 0x1

    .line 1833
    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1835
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xpath/compiler/Keywords;->getNodeType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1837
    .local v0, nodeTestOp:Ljava/lang/Object;
    if-nez v0, :cond_23

    .line 1839
    const-string v2, "ER_UNKNOWN_NODETYPE"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1921
    .end local v0           #nodeTestOp:Ljava/lang/Object;
    :goto_22
    return-void

    .line 1844
    .restart local v0       #nodeTestOp:Ljava/lang/Object;
    :cond_23
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1846
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #nodeTestOp:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1848
    .local v1, nt:I
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1849
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1851
    invoke-direct {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1853
    const/16 v2, 0x408

    if-ne v2, v1, :cond_54

    .line 1855
    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_54

    .line 1857
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Literal()V

    .line 1861
    :cond_54
    invoke-direct {p0, v7}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    goto :goto_22

    .line 1868
    .end local v1           #nt:I
    :cond_58
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/16 v4, 0x22

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1869
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1871
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 1873
    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 1875
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1890
    :cond_8b
    :goto_8b
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1891
    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1898
    :goto_93
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1900
    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 1902
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1917
    :cond_b1
    :goto_b1
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1919
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto/16 :goto_22

    .line 1879
    :cond_c3
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1883
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_8b

    const/16 v2, 0x5f

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 1886
    const-string v2, "ER_EXPECTED_NODE_TEST"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8b

    .line 1895
    :cond_e8
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_93

    .line 1906
    :cond_f5
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1910
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_b1

    const/16 v2, 0x5f

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 1913
    const-string v2, "ER_EXPECTED_NODE_TEST"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b1
.end method

.method protected Number()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    .line 2060
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_5d

    .line 2070
    :try_start_6
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gt v3, v5, :cond_1a

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    const/16 v4, 0x45

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v5, :cond_5e

    .line 2071
    :cond_1a
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3}, Ljava/lang/NumberFormatException;-><init>()V

    throw v3
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_20} :catch_20

    .line 2074
    :catch_20
    move-exception v3

    move-object v0, v3

    .line 2076
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    .line 2078
    .local v1, num:D
    const-string v3, "ER_COULDNOT_BE_FORMATTED_TO_NUMBER"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2082
    .end local v0           #nfe:Ljava/lang/NumberFormatException;
    :goto_30
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, v3, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    new-instance v4, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {v4, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 2083
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2084
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v7, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2086
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2088
    .end local v1           #num:D
    :cond_5d
    return-void

    .line 2072
    :cond_5e
    :try_start_5e
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_67} :catch_20

    move-result-wide v1

    .restart local v1       #num:D
    goto :goto_30
.end method

.method protected NumberExpr()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1205
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1207
    .local v0, opPos:I
    const/4 v1, 0x2

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1208
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1210
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1212
    return-void
.end method

.method protected OrExpr()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 805
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 807
    .local v0, opPos:I
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AndExpr()V

    .line 809
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v1, :cond_2e

    const-string v1, "or"

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 811
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 812
    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 813
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->OrExpr()V

    .line 815
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 818
    :cond_2e
    return-void
.end method

.method protected PathExpr()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 1276
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    .line 1278
    .local v2, opPos:I
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FilterExpr()I

    move-result v0

    .line 1280
    .local v0, filterExprMatch:I
    if-eqz v0, :cond_5d

    .line 1284
    if-ne v0, v4, :cond_5a

    move v1, v6

    .line 1286
    .local v1, locationPathStarted:Z
    :goto_11
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1288
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1290
    if-nez v1, :cond_24

    .line 1293
    const/16 v3, 0x1c

    invoke-virtual {p0, v2, v4, v3}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1295
    const/4 v1, 0x1

    .line 1298
    :cond_24
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativeLocationPath()Z

    move-result v3

    if-nez v3, :cond_30

    .line 1301
    const-string v3, "ER_EXPECTED_REL_LOC_PATH"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    :cond_30
    if-eqz v1, :cond_59

    .line 1309
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1310
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v6, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1311
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1319
    .end local v1           #locationPathStarted:Z
    :cond_59
    :goto_59
    return-void

    .line 1284
    :cond_5a
    const/4 v3, 0x0

    move v1, v3

    goto :goto_11

    .line 1317
    :cond_5d
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->LocationPath()V

    goto :goto_59
.end method

.method protected Pattern()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2105
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->LocationPathPattern()V

    .line 2107
    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2109
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_0

    .line 2116
    :cond_f
    return-void
.end method

.method protected Predicate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1933
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1935
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1936
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PredicateExpr()V

    .line 1937
    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1939
    :cond_13
    return-void
.end method

.method protected PredicateExpr()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1951
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1953
    .local v0, opPos:I
    const/4 v1, 0x2

    const/16 v2, 0x1d

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1954
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1957
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1958
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v4, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1959
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1961
    return-void
.end method

.method protected PrimaryExpr()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x28

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 1398
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 1400
    .local v1, opPos:I
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x27

    if-eq v2, v3, :cond_16

    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2e

    .line 1402
    :cond_16
    const/16 v2, 0x15

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1403
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Literal()V

    .line 1405
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1408
    const/4 v0, 0x1

    .line 1453
    .local v0, matchFound:Z
    :goto_2d
    return v0

    .line 1410
    .end local v0           #matchFound:Z
    :cond_2e
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x24

    if-ne v2, v3, :cond_4f

    .line 1412
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1413
    const/16 v2, 0x16

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1414
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->QName()V

    .line 1416
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1419
    const/4 v0, 0x1

    .restart local v0       #matchFound:Z
    goto :goto_2d

    .line 1421
    .end local v0           #matchFound:Z
    :cond_4f
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    if-ne v2, v6, :cond_73

    .line 1423
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1424
    const/16 v2, 0x17

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1425
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1426
    const/16 v2, 0x29

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1428
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1431
    const/4 v0, 0x1

    .restart local v0       #matchFound:Z
    goto :goto_2d

    .line 1433
    .end local v0           #matchFound:Z
    :cond_73
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_b2

    const/16 v2, 0x2e

    iget-char v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    if-ne v2, v3, :cond_91

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_91

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_99

    :cond_91
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 1436
    :cond_99
    const/16 v2, 0x1b

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1437
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Number()V

    .line 1439
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1442
    const/4 v0, 0x1

    .restart local v0       #matchFound:Z
    goto/16 :goto_2d

    .line 1444
    .end local v0           #matchFound:Z
    :cond_b2
    invoke-virtual {p0, v6, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-nez v2, :cond_c7

    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_cd

    const/4 v2, 0x3

    invoke-virtual {p0, v6, v2}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 1446
    :cond_c7
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FunctionCall()Z

    move-result v0

    .restart local v0       #matchFound:Z
    goto/16 :goto_2d

    .line 1450
    .end local v0           #matchFound:Z
    :cond_cd
    const/4 v0, 0x0

    .restart local v0       #matchFound:Z
    goto/16 :goto_2d
.end method

.method protected QName()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3a

    const/4 v3, 0x1

    .line 1973
    invoke-virtual {p0, v4, v3}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1975
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1976
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1978
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1979
    invoke-direct {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1988
    :goto_2a
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1989
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1991
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1992
    return-void

    .line 1983
    :cond_49
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1984
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_2a
.end method

.method protected RelationalExpr(I)I
    .registers 9
    .parameter "addPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 925
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 927
    .local v1, opPos:I
    if-ne v5, p1, :cond_e

    .line 928
    move p1, v1

    .line 930
    :cond_e
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    .line 932
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 934
    const/16 v2, 0x3c

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 936
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 938
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 940
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 941
    const/4 v2, 0x6

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 948
    :goto_2d
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    .line 950
    .local v0, opPlusLeftHandLen:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    move-result p1

    .line 951
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 953
    add-int/lit8 p1, p1, 0x2

    .line 978
    .end local v0           #opPlusLeftHandLen:I
    :cond_4d
    :goto_4d
    return p1

    .line 945
    :cond_4e
    const/4 v2, 0x7

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    goto :goto_2d

    .line 955
    :cond_53
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 957
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 959
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 961
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 962
    const/16 v2, 0x8

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 969
    :goto_6c
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    .line 971
    .restart local v0       #opPlusLeftHandLen:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    move-result p1

    .line 972
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 974
    add-int/lit8 p1, p1, 0x2

    goto :goto_4d

    .line 966
    .end local v0           #opPlusLeftHandLen:I
    :cond_8d
    const/16 v2, 0x9

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    goto :goto_6c
.end method

.method protected RelativeLocationPath()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1626
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Step()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1628
    const/4 v0, 0x0

    .line 1643
    :goto_7
    return v0

    .line 1631
    :cond_8
    :goto_8
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1633
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1635
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Step()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1639
    const-string v0, "ER_EXPECTED_LOC_STEP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 1643
    :cond_20
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected RelativePathPattern()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2250
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->StepPattern(Z)Z

    move-result v0

    .line 2252
    .local v0, trailingSlashConsumed:Z
    :goto_5
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2254
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2259
    if-nez v0, :cond_18

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->StepPattern(Z)Z

    move-result v0

    goto :goto_5

    :cond_18
    move v1, v2

    goto :goto_13

    .line 2261
    :cond_1a
    return-void
.end method

.method protected Step()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x409

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 1657
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 1659
    .local v1, opPos:I
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    .line 1664
    .local v0, doubleSlash:Z
    if-eqz v0, :cond_65

    .line 1666
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1668
    const/16 v2, 0x2a

    invoke-virtual {p0, v7, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1676
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1677
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1678
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1681
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1685
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1688
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 1691
    :cond_65
    const-string v2, "."

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 1693
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1695
    const/16 v2, 0x5b

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1697
    const-string v2, "ER_PREDICATE_ILLEGAL_SYNTAX"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1700
    :cond_7e
    const/16 v2, 0x30

    invoke-virtual {p0, v6, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1703
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1704
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :goto_9b
    move v2, v5

    .line 1745
    :goto_9c
    return v2

    .line 1706
    :cond_9d
    const-string v2, ".."

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 1708
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1709
    const/16 v2, 0x2d

    invoke-virtual {p0, v6, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1712
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1713
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_9b

    .line 1719
    :cond_c6
    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_ee

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_ee

    const/16 v2, 0x5f

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_ee

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_10c

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 1722
    :cond_ee
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Basis()V

    .line 1724
    :goto_f1
    const/16 v2, 0x5b

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 1726
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    goto :goto_f1

    .line 1730
    :cond_fd
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_9b

    .line 1736
    :cond_10c
    if-eqz v0, :cond_114

    .line 1739
    const-string v2, "ER_EXPECTED_LOC_STEP"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_114
    move v2, v9

    .line 1742
    goto :goto_9c
.end method

.method protected StepPattern(Z)Z
    .registers 3
    .parameter "isLeadingSlashPermitted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 2277
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AbbreviatedNodeTestStep(Z)Z

    move-result v0

    return v0
.end method

.method protected StringExpr()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1159
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1161
    .local v0, opPos:I
    const/4 v1, 0x2

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1162
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1164
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1166
    return-void
.end method

.method protected UnaryExpr()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1131
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 1132
    .local v1, opPos:I
    const/4 v0, 0x0

    .line 1134
    .local v0, isNeg:Z
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_18

    .line 1136
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1137
    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1139
    const/4 v0, 0x1

    .line 1142
    :cond_18
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->UnionExpr()V

    .line 1144
    if-eqz v0, :cond_2b

    .line 1145
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1147
    :cond_2b
    return-void
.end method

.method protected UnionExpr()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1230
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    .line 1231
    .local v2, opPos:I
    const/4 v0, 0x1

    .line 1232
    .local v0, continueOrLoop:Z
    const/4 v1, 0x0

    .line 1236
    .local v1, foundUnion:Z
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PathExpr()V

    .line 1238
    const/16 v3, 0x7c

    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1240
    if-nez v1, :cond_1d

    .line 1242
    const/4 v1, 0x1

    .line 1244
    const/4 v3, 0x2

    const/16 v4, 0x14

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1247
    :cond_1d
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1256
    if-nez v0, :cond_9

    .line 1258
    :cond_22
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1260
    return-void
.end method

.method appendOp(II)V
    .registers 7
    .parameter "length"
    .parameter "op"

    .prologue
    const/4 v3, 0x1

    .line 771
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 773
    .local v0, totalLen:I
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v0, p2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 774
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 775
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v2, v0, p1

    invoke-virtual {v1, v3, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 776
    return-void
.end method

.method protected dumpRemainingTokenQueue()Ljava/lang/String;
    .registers 8

    .prologue
    .line 677
    iget v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    .line 680
    .local v1, q:I
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v5

    if-ge v1, v5, :cond_53

    .line 682
    const-string v0, "\n Remaining tokens: ("

    .line 684
    .local v0, msg:Ljava/lang/String;
    :goto_c
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v5

    if-ge v1, v5, :cond_3f

    .line 686
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, v5, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #q:I
    .local v2, q:I
    invoke-virtual {v5, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 688
    .local v4, t:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 689
    .end local v2           #q:I
    .restart local v1       #q:I
    goto :goto_c

    .line 691
    .end local v4           #t:Ljava/lang/String;
    :cond_3f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 698
    .end local v0           #msg:Ljava/lang/String;
    .local v3, returnMsg:Ljava/lang/String;
    :goto_52
    return-object v3

    .line 695
    .end local v3           #returnMsg:Ljava/lang/String;
    :cond_53
    const-string v3, ""

    .restart local v3       #returnMsg:Ljava/lang/String;
    goto :goto_52
.end method

.method error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, fmsg:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 610
    .local v0, ehandler:Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 611
    .local v2, te:Ljavax/xml/transform/TransformerException;
    if-eqz v0, :cond_15

    .line 614
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 621
    return-void

    .line 619
    :cond_15
    throw v2
.end method

.method errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, fmsg:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 655
    .local v0, ehandler:Ljavax/xml/transform/ErrorListener;
    new-instance v2, Lorg/apache/xpath/domapi/XPathStylesheetDOM3Exception;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, v1, v3}, Lorg/apache/xpath/domapi/XPathStylesheetDOM3Exception;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 656
    .local v2, te:Ljavax/xml/transform/TransformerException;
    if-eqz v0, :cond_15

    .line 659
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 666
    return-void

    .line 664
    :cond_15
    throw v2
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method final getFunctionToken(Ljava/lang/String;)I
    .registers 7
    .parameter "key"

    .prologue
    .line 721
    :try_start_0
    invoke-static {p1}, Lorg/apache/xpath/compiler/Keywords;->lookupNodeTest(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 722
    .local v1, id:Ljava/lang/Object;
    if-nez v1, :cond_c

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v4, p1}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionID(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 723
    :cond_c
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #id:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_11} :catch_13
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_11} :catch_17

    move-result v3

    .line 734
    .local v3, tok:I
    :goto_12
    return v3

    .line 725
    .end local v3           #tok:I
    :catch_13
    move-exception v4

    move-object v2, v4

    .line 727
    .local v2, npe:Ljava/lang/NullPointerException;
    const/4 v3, -0x1

    .line 732
    .restart local v3       #tok:I
    goto :goto_12

    .line 729
    .end local v2           #npe:Ljava/lang/NullPointerException;
    .end local v3           #tok:I
    :catch_17
    move-exception v4

    move-object v0, v4

    .line 731
    .local v0, cce:Ljava/lang/ClassCastException;
    const/4 v3, -0x1

    .restart local v3       #tok:I
    goto :goto_12
.end method

.method public initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 10
    .parameter "compiler"
    .parameter "expression"
    .parameter "namespaceContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 182
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    .line 183
    iput-object p3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    .line 184
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 186
    new-instance v1, Lorg/apache/xpath/compiler/Lexer;

    invoke-direct {v1, p1, p3, p0}, Lorg/apache/xpath/compiler/Lexer;-><init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V

    .line 188
    .local v1, lexer:Lorg/apache/xpath/compiler/Lexer;
    invoke-virtual {v1, p2}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/16 v3, 0x1e

    invoke-virtual {v2, v4, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 191
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v3, 0x2

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 193
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 194
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Pattern()V

    .line 196
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_74

    .line 198
    const-string v0, ""

    .line 200
    .local v0, extraTokens:Ljava/lang/String;
    :cond_2d
    :goto_2d
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_6b

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 206
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_2d

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 210
    :cond_6b
    const-string v2, "ER_EXTRA_ILLEGAL_TOKENS"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    .end local v0           #extraTokens:Ljava/lang/String;
    :cond_74
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 216
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 218
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2}, Lorg/apache/xpath/compiler/OpMap;->shrink()V

    .line 219
    return-void
.end method

.method public initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 10
    .parameter "compiler"
    .parameter "expression"
    .parameter "namespaceContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 106
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    .line 107
    iput-object p3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    .line 108
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 110
    new-instance v2, Lorg/apache/xpath/compiler/Lexer;

    invoke-direct {v2, p1, p3, p0}, Lorg/apache/xpath/compiler/Lexer;-><init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V

    .line 112
    .local v2, lexer:Lorg/apache/xpath/compiler/Lexer;
    invoke-virtual {v2, p2}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 115
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v4, 0x2

    invoke-virtual {v3, v5, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 128
    :try_start_1f
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 129
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 131
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_74

    .line 133
    const-string v1, ""

    .line 135
    .local v1, extraTokens:Ljava/lang/String;
    :cond_2b
    :goto_2b
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_69

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 141
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 145
    :cond_69
    const-string v3, "ER_EXTRA_ILLEGAL_TOKENS"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_74
    .catch Lorg/apache/xpath/XPathProcessorException; {:try_start_1f .. :try_end_74} :catch_78

    .line 163
    .end local v1           #extraTokens:Ljava/lang/String;
    :cond_74
    :goto_74
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->shrink()V

    .line 164
    return-void

    .line 150
    :catch_78
    move-exception v3

    move-object v0, v3

    .line 152
    .local v0, e:Lorg/apache/xpath/XPathProcessorException;
    const-string v3, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-virtual {v0}, Lorg/apache/xpath/XPathProcessorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 157
    const-string v3, "/.."

    invoke-virtual {p0, p1, v3, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    goto :goto_74

    .line 160
    :cond_8c
    throw v0
.end method

.method insertOp(III)V
    .registers 10
    .parameter "pos"
    .parameter "length"
    .parameter "op"

    .prologue
    const/4 v5, 0x1

    .line 749
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 751
    .local v1, totalLen:I
    sub-int v0, v1, v5

    .local v0, i:I
    :goto_9
    if-lt v0, p1, :cond_1b

    .line 753
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v3, v0, p2

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 751
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 756
    :cond_1b
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, p1, p3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 757
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v3, v1, p2

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 758
    return-void
.end method

.method final lookahead(CI)Z
    .registers 10
    .parameter "c"
    .parameter "n"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 293
    iget v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int v1, v3, p2

    .line 296
    .local v1, pos:I
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v3

    if-gt v1, v3, :cond_36

    if-lez v1, :cond_36

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v3

    if-eqz v3, :cond_36

    .line 299
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, v3, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    sub-int v4, v1, v6

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 301
    .local v2, tok:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_34

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_32

    move v0, v6

    .line 308
    .end local v2           #tok:Ljava/lang/String;
    .local v0, b:Z
    :goto_31
    return v0

    .end local v0           #b:Z
    .restart local v2       #tok:Ljava/lang/String;
    :cond_32
    move v0, v5

    .line 301
    goto :goto_31

    :cond_34
    move v0, v5

    goto :goto_31

    .line 305
    .end local v2           #tok:Ljava/lang/String;
    :cond_36
    const/4 v0, 0x0

    .restart local v0       #b:Z
    goto :goto_31
.end method

.method public setErrorHandler(Ljavax/xml/transform/ErrorListener;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 241
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 242
    return-void
.end method

.method final tokenIs(C)Z
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    if-ne v0, p1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method final tokenIs(Ljava/lang/String;)Z
    .registers 3
    .parameter "s"

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    if-nez p1, :cond_f

    const/4 v0, 0x1

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, fmsg:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 557
    .local v0, ehandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_15

    .line 560
    new-instance v2, Ljavax/xml/transform/TransformerException;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 567
    :goto_14
    return-void

    .line 565
    :cond_15
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14
.end method
