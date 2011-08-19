.class public Lcom/mobipocket/common/parser/HyphenationHelper;
.super Ljava/lang/Object;
.source "HyphenationHelper.java"


# instance fields
.field private isStrictHtml:Z

.field private pLexer:Lcom/mobipocket/common/parser/EBookLexer;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V
    .locals 2
    .parameter "ebook"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->isHtml(Lcom/mobipocket/common/library/reader/bookreader/EBook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/mobipocket/common/parser/EBookLexer;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/parser/EBookLexer;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    .line 36
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    sget-object v1, Lcom/mobipocket/common/parser/LexingTables;->_CTXTLLexerinit:Lcom/mobipocket/common/parser/LexingTables$SLexerInit;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookLexer;->init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V

    .line 44
    :goto_0
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->isStrictHTML()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/HyphenationHelper;->isStrictHtml:Z

    .line 45
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/mobipocket/common/parser/EBookLexer;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/parser/EBookLexer;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    .line 41
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    sget-object v1, Lcom/mobipocket/common/parser/LexingTables;->_CSearchMLLLexerinit:Lcom/mobipocket/common/parser/LexingTables$SLexerInit;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookLexer;->init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V

    goto :goto_0
.end method

.method private search(Ljava/lang/String;IILcom/mobipocket/common/parser/HyphenationStringChecker;)Z
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 95
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 97
    if-gez p2, :cond_8

    .line 99
    const/4 v6, 0x0

    .line 102
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v7, v0

    invoke-virtual {v7, v6}, Lcom/mobipocket/common/parser/EBookLexer;->set_position(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v6

    move v0, v6

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    .line 105
    const/4 v4, 0x0

    .line 242
    :goto_1
    return v4

    .line 108
    :cond_0
    const/4 v6, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    new-instance v8, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v8}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/mobipocket/common/parser/EBookLexer;->start_state()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v9

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v10, v0

    invoke-virtual {v10, v4}, Lcom/mobipocket/common/parser/EBookLexer;->get_one_lex([I)B

    move-result v10

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v11

    move v0, v11

    move/from16 v1, p3

    if-le v0, v1, :cond_7

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v11

    .line 125
    :goto_2
    const/4 v12, 0x0

    move/from16 v16, v12

    move v12, v10

    move v10, v6

    move/from16 v6, v16

    move/from16 v17, v9

    move v9, v7

    move/from16 v7, v17

    .line 126
    :goto_3
    if-gt v7, v11, :cond_6

    .line 128
    packed-switch v12, :pswitch_data_0

    :cond_1
    move-object v7, v8

    move v8, v9

    move v9, v10

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v10

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v12, v0

    invoke-virtual {v12, v4}, Lcom/mobipocket/common/parser/EBookLexer;->get_one_lex([I)B

    move-result v12

    move/from16 v16, v10

    move v10, v9

    move v9, v8

    move-object v8, v7

    move/from16 v7, v16

    goto :goto_3

    .line 133
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v12, v0

    const/4 v13, 0x0

    aget v13, v4, v13

    invoke-virtual {v12, v13, v5}, Lcom/mobipocket/common/parser/EBookLexer;->interpret_lex(I[I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 135
    const/4 v12, 0x0

    aget v12, v5, v12

    packed-switch v12, :pswitch_data_1

    .line 216
    :pswitch_1
    invoke-virtual {v8}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 220
    :cond_2
    :goto_4
    if-eqz v8, :cond_1

    if-nez v6, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v12

    move-object/from16 v0, p4

    move-object v1, v8

    move v2, v7

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/parser/HyphenationStringChecker;->feed(Lcom/mobipocket/common/parser/StrDescriptor;II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 143
    :pswitch_2
    new-instance v8, Lcom/mobipocket/common/parser/StrDescriptor;

    const/4 v12, 0x1

    new-array v12, v12, [C

    const/4 v13, 0x0

    const/16 v14, 0x20

    aput-char v14, v12, v13

    invoke-direct {v8, v12}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>([C)V

    goto :goto_4

    .line 147
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_parts_count()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v8, v0

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_part(I)Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v8

    goto :goto_4

    .line 153
    :cond_3
    invoke-virtual {v8}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/mobipocket/common/parser/EBookLexer;->sizeof_lex_parts()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v12, v0

    invoke-virtual {v12, v8}, Lcom/mobipocket/common/parser/EBookLexer;->concat_lex_parts(Lcom/mobipocket/common/parser/StrDescriptor;)V

    goto :goto_4

    .line 160
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v13}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_interpret_entity(Lcom/mobipocket/common/parser/StrDescriptor;Z)I

    move-result v12

    if-eqz v12, :cond_4

    .line 162
    invoke-virtual {v8}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/mobipocket/common/parser/UnicodeWestern;->getHyphenationClass(C)B

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2

    .line 166
    new-instance v12, Lcom/mobipocket/common/parser/StrDescriptor;

    const/4 v13, 0x1

    new-array v13, v13, [C

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v8

    aput-char v8, v13, v14

    invoke-direct {v12, v13}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>([C)V

    move-object v8, v12

    goto/16 :goto_4

    .line 171
    :cond_4
    new-instance v8, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v8}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    goto/16 :goto_4

    .line 177
    :pswitch_5
    const/4 v9, 0x0

    .line 178
    const/4 v10, 0x0

    .line 179
    invoke-virtual {v8}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    move/from16 v16, v10

    move v10, v9

    move/from16 v9, v16

    .line 180
    goto/16 :goto_4

    .line 183
    :pswitch_6
    const/16 v12, 0x31

    if-ne v9, v12, :cond_2

    .line 185
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 191
    :pswitch_7
    invoke-static {v9}, Lcom/mobipocket/common/parser/EBookDTD;->isHTMLTag(S)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->isStrictHtml:Z

    move v12, v0

    invoke-static {v9, v10, v12}, Lcom/mobipocket/common/parser/styles/EBookCSS;->isFlowBreakTag(IZZ)S

    move-result v12

    if-eqz v12, :cond_2

    .line 195
    new-instance v8, Lcom/mobipocket/common/parser/StrDescriptor;

    const/4 v12, 0x1

    new-array v12, v12, [C

    const/4 v13, 0x0

    const/16 v14, 0x20

    aput-char v14, v12, v13

    invoke-direct {v8, v12}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>([C)V

    goto/16 :goto_4

    .line 201
    :pswitch_8
    invoke-virtual {v8}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 202
    const/4 v9, 0x0

    .line 203
    const/4 v10, 0x1

    .line 204
    goto/16 :goto_4

    .line 208
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/HyphenationHelper;->pLexer:Lcom/mobipocket/common/parser/EBookLexer;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/mobipocket/common/parser/EBookLexer;->identify_html_lex()S

    move-result v9

    .line 209
    const/16 v12, 0x31

    if-ne v9, v12, :cond_2

    .line 211
    if-nez v10, :cond_5

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 232
    :pswitch_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 242
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    move/from16 v11, p3

    goto/16 :goto_2

    :cond_8
    move/from16 v6, p2

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 135
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_9
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
.method public getBeginPosition(Ljava/lang/String;II)I
    .locals 3
    .parameter "expression"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 55
    new-instance v0, Lcom/mobipocket/common/parser/HyphenationStringChecker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/mobipocket/common/parser/HyphenationStringChecker;-><init>(Ljava/lang/String;ZZ)V

    .line 57
    .local v0, stringChecker:Lcom/mobipocket/common/parser/HyphenationStringChecker;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mobipocket/common/parser/HyphenationHelper;->search(Ljava/lang/String;IILcom/mobipocket/common/parser/HyphenationStringChecker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/HyphenationStringChecker;->getBeginPosition()I

    move-result v1

    .line 62
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getEndPosition(Ljava/lang/String;II)I
    .locals 3
    .parameter "expression"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 73
    new-instance v0, Lcom/mobipocket/common/parser/HyphenationStringChecker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/mobipocket/common/parser/HyphenationStringChecker;-><init>(Ljava/lang/String;ZZ)V

    .line 75
    .local v0, stringChecker:Lcom/mobipocket/common/parser/HyphenationStringChecker;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mobipocket/common/parser/HyphenationHelper;->search(Ljava/lang/String;IILcom/mobipocket/common/parser/HyphenationStringChecker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/HyphenationStringChecker;->getEndPosition()I

    move-result v1

    .line 80
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
