.class public Lcom/mobipocket/common/parser/EBookSearcher;
.super Ljava/lang/Thread;
.source "EBookSearcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/parser/EBookSearcher$1;,
        Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;
    }
.end annotation


# static fields
.field private static final DEFAULT_SPACES_TO_REMEMBER:I = 0x3

.field private static final SEARCH_OPTION_INDEX_ALL:I = -0x1


# instance fields
.field private pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

.field private pCancelled:Z

.field private pCurrentPosition:I

.field private pExpression:Ljava/lang/String;

.field private pLastBlanks:[I

.field private pLastBlanksIndex:I

.field private pLexer:Lcom/mobipocket/common/parser/EBookLexer;

.field private pMaxResults:I

.field private pMode:I

.field private pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

.field private pSManager:Lcom/mobipocket/common/library/reader/SearchManager;

.field private pSearchAll:Z

.field private pSecurityCode:I

.field private pSpacesToRemember:I


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/library/reader/SearchManager;)V
    .locals 2
    .parameter "currentEBook"
    .parameter "searchManager"

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 141
    iput v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSpacesToRemember:I

    .line 142
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    .line 143
    iput v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    .line 145
    iput v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSecurityCode:I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    .line 151
    iput-object p1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 152
    iput-object p2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSManager:Lcom/mobipocket/common/library/reader/SearchManager;

    .line 153
    invoke-static {p1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->isHtml(Lcom/mobipocket/common/library/reader/bookreader/EBook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/mobipocket/common/parser/EBookLexer;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/parser/EBookLexer;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    .line 156
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    sget-object v1, Lcom/mobipocket/common/parser/LexingTables;->_CTXTLLexerinit:Lcom/mobipocket/common/parser/LexingTables$SLexerInit;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookLexer;->init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/mobipocket/common/parser/EBookLexer;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/parser/EBookLexer;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    .line 161
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    sget-object v1, Lcom/mobipocket/common/parser/LexingTables;->_CSearchMLLLexerinit:Lcom/mobipocket/common/parser/LexingTables$SLexerInit;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookLexer;->init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V

    goto :goto_0
.end method

.method private getTextAround(III)Ljava/lang/String;
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    const/4 v2, 0x1

    .line 625
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    const/4 v4, 0x0

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 631
    new-instance v5, Lcom/mobipocket/common/parser/EBookLexer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/mobipocket/common/parser/EBookLexer;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    .line 632
    sget-object v6, Lcom/mobipocket/common/parser/LexingTables;->_CSearchMLLLexerinit:Lcom/mobipocket/common/parser/LexingTables$SLexerInit;

    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/EBookLexer;->init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V

    .line 639
    :goto_0
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 640
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 643
    const/4 v8, 0x0

    .line 644
    const/4 v9, 0x0

    .line 646
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v10

    .line 647
    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookLexer;->set_position(I)V

    .line 648
    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/EBookLexer;->get_one_lex([I)B

    move-result v11

    .line 649
    const/4 v12, 0x0

    move v14, v12

    move v12, v2

    move v2, v14

    move v15, v11

    move v11, v4

    move v4, v9

    move v9, v15

    .line 650
    :goto_1
    const/4 v13, 0x2

    if-eq v9, v13, :cond_5

    move v0, v11

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    if-nez v2, :cond_5

    .line 652
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v13

    move/from16 v0, p2

    move v1, v13

    if-gt v0, v1, :cond_0

    .line 654
    const/4 v2, 0x1

    .line 656
    :cond_0
    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_2
    move v9, v11

    move v11, v12

    .line 753
    :goto_3
    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/EBookLexer;->get_one_lex([I)B

    move-result v12

    move v14, v12

    move v12, v11

    move v11, v9

    move v9, v14

    goto :goto_1

    .line 636
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v5, v0

    goto :goto_0

    .line 661
    :pswitch_0
    const/4 v9, 0x0

    aget v9, v6, v9

    invoke-virtual {v5, v9, v7}, Lcom/mobipocket/common/parser/EBookLexer;->interpret_lex(I[I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 667
    const/4 v9, 0x0

    aget v9, v7, v9

    packed-switch v9, :pswitch_data_1

    :pswitch_1
    goto :goto_2

    .line 714
    :pswitch_2
    invoke-static {v4}, Lcom/mobipocket/common/parser/EBookDTD;->isHTMLTag(S)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    move-object v9, v0

    iget-object v9, v9, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v9}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->isStrictHTML()Z

    move-result v9

    invoke-static {v4, v8, v9}, Lcom/mobipocket/common/parser/styles/EBookCSS;->isFlowBreakTag(IZZ)S

    move-result v9

    if-eqz v9, :cond_1

    .line 718
    if-nez v12, :cond_1

    .line 720
    const/16 v9, 0x20

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 721
    add-int/lit8 v9, v11, 0x1

    .line 722
    const/4 v11, 0x1

    goto :goto_3

    .line 673
    :pswitch_3
    if-nez v12, :cond_1

    .line 675
    const/16 v9, 0x20

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 676
    add-int/lit8 v9, v11, 0x1

    .line 677
    const/4 v11, 0x1

    goto :goto_3

    .line 682
    :pswitch_4
    const/4 v9, 0x0

    .line 683
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_parts_count()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 685
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_part(I)Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mobipocket/common/parser/StrDescriptor;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v14, v11

    move v11, v9

    move v9, v14

    goto :goto_3

    .line 689
    :cond_3
    new-instance v12, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v12}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    .line 690
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookLexer;->sizeof_lex_parts()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate(I)V

    .line 691
    invoke-virtual {v5, v12}, Lcom/mobipocket/common/parser/EBookLexer;->concat_lex_parts(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 692
    invoke-virtual {v12}, Lcom/mobipocket/common/parser/StrDescriptor;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v14, v11

    move v11, v9

    move v9, v14

    .line 694
    goto :goto_3

    .line 697
    :pswitch_5
    const/4 v9, 0x0

    .line 698
    new-instance v12, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v12}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    .line 699
    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_interpret_entity(Lcom/mobipocket/common/parser/StrDescriptor;Z)I

    move-result v13

    if-eqz v13, :cond_4

    .line 701
    invoke-virtual {v12}, Lcom/mobipocket/common/parser/StrDescriptor;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v14, v11

    move v11, v9

    move v9, v14

    goto/16 :goto_3

    :cond_4
    move v14, v11

    move v11, v9

    move v9, v14

    .line 705
    goto/16 :goto_3

    .line 709
    :pswitch_6
    const/4 v4, 0x0

    .line 710
    const/4 v8, 0x0

    move v9, v11

    move v11, v12

    move v14, v8

    move v8, v4

    move v4, v14

    .line 711
    goto/16 :goto_3

    .line 729
    :pswitch_7
    const/4 v4, 0x0

    .line 730
    const/4 v8, 0x1

    move v9, v11

    move v11, v12

    .line 731
    goto/16 :goto_3

    .line 734
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookLexer;->identify_html_lex()S

    move-result v4

    move v9, v11

    move v11, v12

    goto/16 :goto_3

    .line 746
    :pswitch_9
    const/4 v2, 0x1

    move v9, v11

    move v11, v12

    goto/16 :goto_3

    .line 756
    :cond_5
    invoke-virtual {v5, v10}, Lcom/mobipocket/common/parser/EBookLexer;->set_position(I)V

    .line 757
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 667
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private searchHTML(Ljava/lang/String;IIZZZ)I
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    const/4 v5, 0x1

    .line 340
    const/4 v6, 0x0

    .line 341
    const/4 v7, 0x0

    .line 342
    const/4 v8, -0x1

    .line 343
    if-gez p2, :cond_1b

    .line 344
    const/4 v9, 0x0

    .line 348
    :goto_0
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 349
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 350
    new-instance v12, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v12}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    .line 351
    const/4 v13, 0x0

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    move v14, v0

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 354
    new-instance v13, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;

    const/4 v14, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;-><init>(Ljava/lang/String;ZZLcom/mobipocket/common/parser/EBookSearcher$1;)V

    .line 367
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v14, v0

    invoke-virtual {v14, v9}, Lcom/mobipocket/common/parser/EBookLexer;->set_position(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v14

    move v0, v14

    move/from16 v1, p3

    if-lt v0, v1, :cond_2

    .line 370
    const/4 v5, -0x1

    .line 588
    :goto_2
    return v5

    .line 358
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v15, v0

    aput v9, v14, v15

    .line 359
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pSpacesToRemember:I

    move v15, v0

    if-lt v14, v15, :cond_1

    .line 362
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    .line 365
    :cond_1
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    goto :goto_1

    .line 372
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v14, v0

    invoke-virtual {v14, v10}, Lcom/mobipocket/common/parser/EBookLexer;->get_one_lex([I)B

    move-result v14

    move-object/from16 v17, v12

    move v12, v6

    move v6, v14

    move v14, v5

    move-object/from16 v5, v17

    move/from16 v18, v7

    move v7, v9

    move/from16 v9, v18

    .line 373
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v15

    move v0, v15

    move/from16 v1, p3

    if-ge v0, v1, :cond_17

    .line 375
    packed-switch v6, :pswitch_data_0

    :cond_3
    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v12

    move v12, v14

    .line 585
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v14, v0

    invoke-virtual {v14, v10}, Lcom/mobipocket/common/parser/EBookLexer;->get_one_lex([I)B

    move-result v14

    move/from16 v17, v14

    move v14, v12

    move v12, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v17

    goto :goto_3

    .line 380
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v6, v0

    const/4 v15, 0x0

    aget v15, v10, v15

    invoke-virtual {v6, v15, v11}, Lcom/mobipocket/common/parser/EBookLexer;->interpret_lex(I[I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 382
    const/4 v6, 0x0

    aget v6, v11, v6

    packed-switch v6, :pswitch_data_1

    .line 547
    :pswitch_1
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    :cond_4
    move v6, v7

    move v7, v9

    move v9, v12

    move v12, v14

    .line 551
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    move v14, v0

    const/4 v15, -0x1

    if-eq v14, v15, :cond_15

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v14

    if-lez v14, :cond_15

    .line 553
    invoke-static {v13, v5}, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->access$100(Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;Lcom/mobipocket/common/parser/StrDescriptor;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v5

    invoke-static {v13}, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->access$200(Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;)I

    move-result v6

    sub-int/2addr v5, v6

    goto/16 :goto_2

    .line 388
    :pswitch_2
    if-nez v14, :cond_9

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    move v6, v0

    const/4 v14, -0x1

    if-ne v6, v14, :cond_5

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    move-object v6, v0

    if-eqz v6, :cond_5

    move v5, v8

    .line 396
    goto/16 :goto_2

    .line 400
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v15

    aput v15, v6, v14

    .line 402
    if-eqz p6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v14, v0

    aget v6, v6, v14

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0xb

    if-eqz v6, :cond_6

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v7, v0

    aget v6, v6, v7

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pSManager:Lcom/mobipocket/common/library/reader/SearchManager;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v15, v0

    aget v14, v14, v15

    invoke-virtual {v7, v14}, Lcom/mobipocket/common/library/reader/SearchManager;->setCurrentPosition(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 407
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pCancelled:Z

    .line 408
    const/4 v5, -0x1

    goto/16 :goto_2

    :cond_6
    move v6, v7

    .line 411
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pSpacesToRemember:I

    move v14, v0

    if-lt v7, v14, :cond_8

    .line 414
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    .line 416
    :cond_8
    const/4 v7, 0x1

    .line 429
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    move v14, v0

    const/4 v15, -0x1

    if-eq v14, v15, :cond_19

    .line 431
    new-instance v5, Lcom/mobipocket/common/parser/StrDescriptor;

    const/4 v14, 0x1

    new-array v14, v14, [C

    const/4 v15, 0x0

    const/16 v16, 0x20

    aput-char v16, v14, v15

    invoke-direct {v5, v14}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>([C)V

    move/from16 v17, v9

    move v9, v12

    move v12, v7

    move/from16 v7, v17

    goto/16 :goto_5

    .line 421
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v6, v0

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    .line 422
    if-gez v6, :cond_a

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pSpacesToRemember:I

    move v6, v0

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    .line 426
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v16

    aput v16, v15, v6

    move v6, v7

    move v7, v14

    goto :goto_6

    .line 437
    :pswitch_3
    const/4 v6, 0x0

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_parts_count()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v5, v0

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_part(I)Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v5

    move/from16 v17, v7

    move v7, v9

    move v9, v12

    move v12, v6

    move/from16 v6, v17

    goto/16 :goto_5

    .line 444
    :cond_b
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/mobipocket/common/parser/EBookLexer;->sizeof_lex_parts()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v14, v0

    invoke-virtual {v14, v5}, Lcom/mobipocket/common/parser/EBookLexer;->concat_lex_parts(Lcom/mobipocket/common/parser/StrDescriptor;)V

    move/from16 v17, v7

    move v7, v9

    move v9, v12

    move v12, v6

    move/from16 v6, v17

    .line 448
    goto/16 :goto_5

    .line 451
    :pswitch_4
    const/4 v6, 0x0

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_interpret_entity(Lcom/mobipocket/common/parser/StrDescriptor;Z)I

    move-result v14

    if-eqz v14, :cond_e

    .line 454
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1a

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lcom/mobipocket/common/parser/UnicodeWestern;->getHyphenationClass(C)B

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1a

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    move v14, v0

    const/4 v15, -0x1

    if-ne v14, v15, :cond_d

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    move-object v14, v0

    if-eqz v14, :cond_c

    move v5, v8

    .line 460
    goto/16 :goto_2

    .line 463
    :cond_c
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    move/from16 v17, v7

    move v7, v9

    move v9, v12

    move v12, v6

    move/from16 v6, v17

    goto/16 :goto_5

    .line 469
    :cond_d
    new-instance v5, Lcom/mobipocket/common/parser/StrDescriptor;

    const/4 v14, 0x1

    new-array v14, v14, [C

    const/4 v15, 0x0

    const/16 v16, 0x20

    aput-char v16, v14, v15

    invoke-direct {v5, v14}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>([C)V

    move/from16 v17, v7

    move v7, v9

    move v9, v12

    move v12, v6

    move/from16 v6, v17

    goto/16 :goto_5

    .line 475
    :cond_e
    new-instance v5, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v5}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    move/from16 v17, v7

    move v7, v9

    move v9, v12

    move v12, v6

    move/from16 v6, v17

    .line 478
    goto/16 :goto_5

    .line 480
    :pswitch_5
    const/4 v6, 0x0

    .line 481
    const/4 v9, 0x0

    .line 482
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    move v12, v14

    move/from16 v17, v9

    move v9, v6

    move v6, v7

    move/from16 v7, v17

    .line 483
    goto/16 :goto_5

    .line 486
    :pswitch_6
    invoke-static {v9}, Lcom/mobipocket/common/parser/EBookDTD;->isHTMLTag(S)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    move-object v6, v0

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->isStrictHTML()Z

    move-result v6

    invoke-static {v9, v12, v6}, Lcom/mobipocket/common/parser/styles/EBookCSS;->isFlowBreakTag(IZZ)S

    move-result v6

    if-eqz v6, :cond_4

    .line 490
    if-nez v14, :cond_13

    .line 493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    move v6, v0

    const/4 v14, -0x1

    if-ne v6, v14, :cond_f

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    move-object v6, v0

    if-eqz v6, :cond_f

    move v5, v8

    .line 497
    goto/16 :goto_2

    .line 501
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v15

    aput v15, v6, v14

    .line 502
    if-eqz p6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v14, v0

    aget v6, v6, v14

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0xb

    if-eqz v6, :cond_10

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v7, v0

    aget v6, v6, v7

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pSManager:Lcom/mobipocket/common/library/reader/SearchManager;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v15, v0

    aget v14, v14, v15

    invoke-virtual {v7, v14}, Lcom/mobipocket/common/library/reader/SearchManager;->setCurrentPosition(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 507
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pCancelled:Z

    .line 508
    const/4 v5, -0x1

    goto/16 :goto_2

    :cond_10
    move v6, v7

    .line 511
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pSpacesToRemember:I

    move v14, v0

    if-lt v7, v14, :cond_12

    .line 514
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    .line 516
    :cond_12
    const/4 v7, 0x1

    .line 529
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    move v14, v0

    const/4 v15, -0x1

    if-eq v14, v15, :cond_19

    .line 531
    new-instance v5, Lcom/mobipocket/common/parser/StrDescriptor;

    const/4 v14, 0x1

    new-array v14, v14, [C

    const/4 v15, 0x0

    const/16 v16, 0x20

    aput-char v16, v14, v15

    invoke-direct {v5, v14}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>([C)V

    move/from16 v17, v9

    move v9, v12

    move v12, v7

    move/from16 v7, v17

    goto/16 :goto_5

    .line 521
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    move v6, v0

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    .line 522
    if-gez v6, :cond_14

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pSpacesToRemember:I

    move v6, v0

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    .line 526
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v16

    aput v16, v15, v6

    move v6, v7

    move v7, v14

    goto :goto_7

    .line 538
    :pswitch_7
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 539
    const/4 v6, 0x0

    .line 540
    const/4 v9, 0x1

    move v12, v14

    move/from16 v17, v6

    move v6, v7

    move/from16 v7, v17

    .line 541
    goto/16 :goto_5

    .line 544
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/EBookLexer;->identify_html_lex()S

    move-result v6

    move v9, v12

    move v12, v14

    move/from16 v17, v7

    move v7, v6

    move/from16 v6, v17

    .line 545
    goto/16 :goto_5

    .line 559
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    move v14, v0

    const/4 v15, -0x1

    if-ne v14, v15, :cond_18

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    move-object v14, v0

    if-nez v14, :cond_16

    .line 563
    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v14

    if-lez v14, :cond_18

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v8

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v14

    sub-int/2addr v8, v14

    .line 566
    new-instance v14, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v14, v5}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto/16 :goto_4

    .line 571
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    move-object v14, v0

    invoke-virtual {v14, v5}, Lcom/mobipocket/common/parser/StrDescriptor;->concat(Lcom/mobipocket/common/parser/StrDescriptor;)V

    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto/16 :goto_4

    .line 579
    :pswitch_9
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mobipocket/common/parser/EBookSearcher;->pCancelled:Z

    .line 583
    const/4 v5, -0x1

    goto/16 :goto_2

    .line 588
    :cond_17
    const/4 v5, -0x1

    goto/16 :goto_2

    :cond_18
    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto/16 :goto_4

    :cond_19
    move/from16 v17, v9

    move v9, v12

    move v12, v7

    move/from16 v7, v17

    goto/16 :goto_5

    :cond_1a
    move/from16 v17, v7

    move v7, v9

    move v9, v12

    move v12, v6

    move/from16 v6, v17

    goto/16 :goto_5

    :cond_1b
    move/from16 v9, p2

    goto/16 :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 382
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getTextAround(IIII)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 603
    .line 604
    const v0, 0x54f91ac3

    .line 605
    const v1, -0x37d19b4d

    .line 606
    const/4 v2, 0x0

    move v3, p1

    move v5, v0

    move v0, v2

    move v2, v5

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    .line 608
    xor-int/2addr v3, v2

    .line 609
    shl-int v4, v2, v0

    xor-int/2addr v1, v4

    .line 610
    ushr-int/lit8 v2, v2, 0x8

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    if-eq v3, v1, :cond_1

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong security code :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    const-string v0, ""

    .line 617
    :goto_1
    return-object v0

    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/mobipocket/common/parser/EBookSearcher;->getTextAround(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public run()V
    .locals 15

    .prologue
    .line 188
    const/4 v0, -0x1

    .line 189
    const/4 v1, 0x0

    .line 191
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pCancelled:Z

    .line 192
    iget v2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v4, v2

    .line 193
    :goto_0
    iget v2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    move v5, v2

    .line 194
    :goto_1
    iget v2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    and-int/lit8 v2, v2, 0x7

    .line 195
    iget v3, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    .line 217
    iget v3, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSecurityCode:I

    .line 218
    const v6, 0x54f91ac3

    .line 219
    const v7, -0x37d19b4d

    .line 220
    const/4 v8, 0x0

    move v13, v8

    move v8, v3

    move v3, v13

    move v14, v6

    move v6, v7

    move v7, v14

    :goto_2
    const/4 v9, 0x4

    if-ge v3, v9, :cond_2

    .line 222
    xor-int/2addr v8, v7

    .line 223
    shl-int v9, v7, v3

    xor-int/2addr v6, v9

    .line 224
    ushr-int/lit8 v7, v7, 0x8

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 192
    :cond_0
    const/4 v2, 0x0

    move v4, v2

    goto :goto_0

    .line 193
    :cond_1
    const/4 v2, 0x0

    move v5, v2

    goto :goto_1

    .line 226
    :cond_2
    if-eq v8, v6, :cond_3

    .line 322
    :goto_3
    return-void

    .line 231
    :cond_3
    iget-boolean v3, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSearchAll:Z

    if-eqz v3, :cond_9

    .line 233
    iget v2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pCurrentPosition:I

    .line 234
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    iget v3, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pCurrentPosition:I

    aput v3, v1, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 238
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    const v3, 0x7fffffff

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/parser/EBookSearcher;->searchHTML(Ljava/lang/String;IIZZZ)I

    move-result v0

    move v7, v0

    .line 240
    :goto_5
    if-ltz v7, :cond_8

    iget v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMaxResults:I

    if-lez v1, :cond_8

    .line 242
    iget v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMaxResults:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMaxResults:I

    .line 244
    iget v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 246
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    if-eqz v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSManager:Lcom/mobipocket/common/library/reader/SearchManager;

    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    iget v2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    add-int/2addr v2, v7

    iget-object v3, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pOccurence:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/StrDescriptor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/mobipocket/common/library/reader/SearchManager;->occurenceFound(IIILjava/lang/String;)V

    .line 259
    :goto_6
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v0

    move v2, v0

    .line 260
    :goto_7
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    const v3, 0x7fffffff

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/parser/EBookSearcher;->searchHTML(Ljava/lang/String;IIZZZ)I

    move-result v0

    move v13, v7

    move v7, v0

    move v0, v13

    .line 261
    goto :goto_5

    .line 252
    :cond_5
    iget v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMaxResults:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMaxResults:I

    goto :goto_6

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSManager:Lcom/mobipocket/common/library/reader/SearchManager;

    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    iget v2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v7

    iget-object v3, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    iget v6, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanksIndex:I

    aget v3, v3, v6

    const v6, 0x7fffffff

    iget v8, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSpacesToRemember:I

    shl-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-direct {p0, v3, v6, v8}, Lcom/mobipocket/common/parser/EBookSearcher;->getTextAround(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/mobipocket/common/library/reader/SearchManager;->occurenceFound(IIILjava/lang/String;)V

    goto :goto_6

    .line 259
    :cond_7
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    move v2, v0

    goto :goto_7

    .line 263
    :cond_8
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSManager:Lcom/mobipocket/common/library/reader/SearchManager;

    invoke-virtual {v1, v0, v0}, Lcom/mobipocket/common/library/reader/SearchManager;->searchEnded(II)V

    goto/16 :goto_3

    .line 266
    :cond_9
    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    if-nez v2, :cond_c

    .line 268
    :cond_a
    const/4 v0, 0x1

    if-ne v2, v0, :cond_13

    .line 269
    iget v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pCurrentPosition:I

    move v2, v0

    .line 270
    :goto_8
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    const v3, 0x7fffffff

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/parser/EBookSearcher;->searchHTML(Ljava/lang/String;IIZZZ)I

    move-result v0

    .line 321
    :cond_b
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSManager:Lcom/mobipocket/common/library/reader/SearchManager;

    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/mobipocket/common/library/reader/SearchManager;->searchEnded(II)V

    goto/16 :goto_3

    .line 274
    :cond_c
    const/4 v1, 0x3

    if-ne v2, v1, :cond_e

    .line 276
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v1

    .line 285
    :goto_9
    if-lez v3, :cond_d

    if-gez v0, :cond_d

    iget-boolean v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pCancelled:Z

    if-nez v1, :cond_d

    .line 287
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getSBuffer(I)Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    move-result-object v1

    .line 288
    if-nez v1, :cond_f

    :cond_d
    :goto_a
    move v7, v0

    .line 314
    :goto_b
    if-ltz v7, :cond_b

    .line 317
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    add-int/lit8 v2, v7, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/parser/EBookSearcher;->searchHTML(Ljava/lang/String;IIZZZ)I

    move-result v0

    move v13, v7

    move v7, v0

    move v0, v13

    goto :goto_b

    .line 280
    :cond_e
    iget v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pCurrentPosition:I

    move v3, v1

    goto :goto_9

    .line 293
    :cond_f
    iget v2, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    .line 294
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSManager:Lcom/mobipocket/common/library/reader/SearchManager;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/SearchManager;->setCurrentPosition(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 296
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pCancelled:Z

    goto :goto_a

    .line 299
    :cond_10
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/parser/EBookSearcher;->searchHTML(Ljava/lang/String;IIZZZ)I

    move-result v0

    .line 301
    if-gez v0, :cond_12

    if-lez v2, :cond_12

    .line 303
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 304
    sub-int v8, v2, v0

    .line 305
    add-int v9, v2, v0

    .line 306
    iget-object v7, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v6, p0

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/mobipocket/common/parser/EBookSearcher;->searchHTML(Ljava/lang/String;IIZZZ)I

    move-result v0

    move v1, v0

    move v0, v9

    .line 309
    :goto_c
    if-gez v1, :cond_11

    .line 310
    const/4 v0, 0x1

    sub-int v0, v2, v0

    move v3, v0

    move v0, v1

    goto :goto_9

    :cond_11
    move v3, v0

    move v0, v1

    goto :goto_9

    :cond_12
    move v1, v0

    move v0, v3

    goto :goto_c

    :cond_13
    move v2, v1

    goto/16 :goto_8
.end method

.method public setGetAllData(III)V
    .locals 1
    .parameter "maxResults"
    .parameter "securityCode"
    .parameter "searchCurrentPosition"

    .prologue
    .line 178
    iput p2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSecurityCode:I

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    .line 181
    iput p3, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pCurrentPosition:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSearchAll:Z

    .line 183
    iput p1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMaxResults:I

    .line 184
    return-void
.end method

.method public setSearch(Ljava/lang/String;IZIII)V
    .locals 1
    .parameter "searchedExpression"
    .parameter "searchMode"
    .parameter "searchAll"
    .parameter "maxResults"
    .parameter "searchCurrentPosition"
    .parameter "spacesToRemember"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pExpression:Ljava/lang/String;

    .line 168
    iput p2, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMode:I

    .line 169
    iput p5, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pCurrentPosition:I

    .line 170
    iput-boolean p3, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSearchAll:Z

    .line 171
    iput p4, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pMaxResults:I

    .line 172
    iput p6, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSpacesToRemember:I

    .line 173
    iget v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pSpacesToRemember:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher;->pLastBlanks:[I

    .line 174
    return-void
.end method
