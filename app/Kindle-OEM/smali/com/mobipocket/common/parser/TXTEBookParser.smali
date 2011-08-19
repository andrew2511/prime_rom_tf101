.class public Lcom/mobipocket/common/parser/TXTEBookParser;
.super Lcom/mobipocket/common/parser/EBookParser;
.source "TXTEBookParser.java"


# static fields
.field public static final PD_TAB_SIZE:I = 0x8

.field public static final ST_BEGIN:I = 0x0

.field public static final ST_END:I = 0x9

.field public static final ST_PARSING:I = 0x5

.field public static final ST_SEND_BLANK:I = 0x8

.field public static final ST_SEND_BLANK_STRING:I = 0x7

.field public static final ST_SEND_CLOSETAG_BODY:I = 0x3

.field public static final ST_SEND_CLOSETAG_HTML:I = 0x4

.field public static final ST_SEND_TAG_BODY:I = 0x2

.field public static final ST_SEND_TAG_BR:I = 0x6

.field public static final ST_SEND_TAG_HTML:I = 0x1

.field public static final TABSPACES:[C


# instance fields
.field private final buf:Lcom/mobipocket/common/parser/StrDescriptor;

.field private char_count:I

.field private defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

.field private lex_error:I

.field private lex_id:[I

.field private final part:Lcom/mobipocket/common/parser/StrDescriptor;

.field private state:I

.field private final text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobipocket/common/parser/TXTEBookParser;->TABSPACES:[C

    return-void

    :array_0
    .array-data 0x2
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V
    .locals 2
    .parameter "currentEBook"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/mobipocket/common/parser/EBookParser;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lex_id:[I

    .line 47
    new-instance v0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    .line 377
    new-instance v0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->buf:Lcom/mobipocket/common/parser/StrDescriptor;

    .line 378
    new-instance v0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->part:Lcom/mobipocket/common/parser/StrDescriptor;

    .line 52
    new-instance v0, Lcom/mobipocket/common/parser/EBookLexer;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/parser/EBookLexer;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    .line 53
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    sget-object v1, Lcom/mobipocket/common/parser/LexingTables;->_CTXTLLexerinit:Lcom/mobipocket/common/parser/LexingTables$SLexerInit;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookLexer;->init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V

    .line 54
    return-void
.end method

.method private handle_tabs(I)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 385
    .line 395
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v0

    move v1, v8

    move v2, v8

    move v3, v8

    .line 396
    :goto_0
    if-ge v3, v0, :cond_1

    if-nez v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1, v11, v3, v9}, Lcom/mobipocket/common/parser/StrDescriptor;->indexOf(CII)I

    move-result v1

    if-ne v1, v9, :cond_0

    move v4, v10

    .line 399
    :goto_1
    if-nez v4, :cond_5

    .line 401
    add-int/lit8 v2, v2, 0x1

    .line 402
    add-int/lit8 v1, v1, 0x1

    move v3, v1

    move v1, v4

    goto :goto_0

    :cond_0
    move v4, v8

    .line 398
    goto :goto_1

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->buf:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->copy(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 408
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v0

    mul-int/lit8 v1, v2, 0x7

    add-int/2addr v0, v1

    .line 409
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 410
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate(I)V

    .line 413
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->buf:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v1

    sub-int/2addr v1, v10

    move v2, v1

    move v3, v8

    move v4, p1

    move v1, v8

    .line 417
    :goto_2
    iget-object v5, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->buf:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    if-nez v1, :cond_3

    .line 419
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->buf:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1, v11, v3, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->indexOf(CII)I

    move-result v1

    if-ne v1, v9, :cond_2

    move v5, v10

    .line 420
    :goto_3
    if-nez v5, :cond_4

    .line 424
    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->part:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v6, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->buf:Lcom/mobipocket/common/parser/StrDescriptor;

    sub-int v7, v1, v3

    invoke-virtual {v2, v6, v3, v7}, Lcom/mobipocket/common/parser/StrDescriptor;->mid_of(Lcom/mobipocket/common/parser/StrDescriptor;II)V

    .line 425
    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v6, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->part:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2, v6}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 427
    sub-int v2, v1, v3

    add-int/2addr v2, v4

    .line 430
    const/16 v3, 0x8

    and-int/lit8 v4, v2, 0x7

    sub-int/2addr v3, v4

    .line 431
    iget-object v4, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    sget-object v6, Lcom/mobipocket/common/parser/TXTEBookParser;->TABSPACES:[C

    invoke-virtual {v4, v6, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast([CI)V

    .line 433
    add-int/lit8 v3, v1, 0x1

    move v4, v2

    move v2, v1

    move v1, v5

    goto :goto_2

    :cond_2
    move v5, v8

    .line 419
    goto :goto_3

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->part:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->buf:Lcom/mobipocket/common/parser/StrDescriptor;

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->buf:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    sub-int v2, v4, v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/mobipocket/common/parser/StrDescriptor;->mid_of(Lcom/mobipocket/common/parser/StrDescriptor;II)V

    .line 437
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->part:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 438
    return-void

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    move v1, v4

    goto/16 :goto_0
.end method

.method private make_word()V
    .locals 5

    .prologue
    .line 361
    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_parts_count()I

    move-result v0

    .line 362
    .local v0, count:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v3, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_part(I)Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->copy(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 373
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookLexer;->sizeof_lex_parts()I

    move-result v1

    .line 369
    .local v1, size:I
    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 370
    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate(I)V

    .line 371
    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    iget-object v3, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/parser/EBookLexer;->concat_lex_parts(Lcom/mobipocket/common/parser/StrDescriptor;)V

    goto :goto_0
.end method


# virtual methods
.method public addTableToFlattenID(I)V
    .locals 0
    .parameter

    .prologue
    .line 481
    return-void
.end method

.method public getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/mobipocket/common/parser/AttributeStack;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/AttributeStack;-><init>()V

    return-object v0
.end method

.method public getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v0

    return v0
.end method

.method public get_cur_entity()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    iget v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v1

    .line 290
    :goto_1
    return v0

    :pswitch_0
    move v0, v3

    .line 253
    goto :goto_1

    :pswitch_1
    move v0, v2

    .line 255
    goto :goto_1

    :pswitch_2
    move v0, v4

    .line 257
    goto :goto_1

    .line 260
    :pswitch_3
    iget v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lex_error:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 268
    :pswitch_4
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lex_id:[I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :pswitch_5
    goto :goto_0

    :pswitch_6
    move v0, v4

    .line 272
    goto :goto_1

    :pswitch_7
    move v0, v1

    .line 265
    goto :goto_1

    :pswitch_8
    move v0, v2

    .line 274
    goto :goto_1

    :pswitch_9
    move v0, v3

    .line 276
    goto :goto_1

    :pswitch_a
    move v0, v1

    .line 286
    goto :goto_1

    :pswitch_b
    move v0, v1

    .line 288
    goto :goto_1

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_a
    .end packed-switch

    .line 260
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 268
    :pswitch_data_2
    .packed-switch 0xd
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public get_next_entity()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    new-array v0, v5, [I

    aput v4, v0, v4

    .line 116
    :cond_0
    iget v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    move v1, v4

    .line 230
    :cond_2
    if-nez v1, :cond_0

    move v0, v4

    .line 235
    :goto_0
    return v0

    .line 119
    :pswitch_0
    iput v5, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 120
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->get_cur_entity()I

    move-result v0

    goto :goto_0

    .line 122
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 123
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->get_cur_entity()I

    move-result v0

    goto :goto_0

    .line 125
    :pswitch_2
    iput v7, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 126
    iget v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    .line 127
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->get_cur_entity()I

    move-result v0

    goto :goto_0

    .line 132
    :pswitch_3
    const/4 v1, 0x5

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 134
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    const/16 v2, 0x1e

    invoke-virtual {v1, v0, v2}, Lcom/mobipocket/common/parser/EBookLexer;->get_one_lex([II)B

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lex_error:I

    .line 135
    iget v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lex_error:I

    packed-switch v1, :pswitch_data_1

    :cond_3
    move v1, v4

    .line 208
    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->get_cur_entity()I

    move-result v0

    goto :goto_0

    .line 139
    :pswitch_4
    const/4 v1, 0x3

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    move v1, v4

    .line 140
    goto :goto_1

    .line 143
    :pswitch_5
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/parser/EBookLexer;->set_position(I)V

    move v1, v5

    .line 145
    goto :goto_1

    .line 147
    :pswitch_6
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    aget v2, v0, v4

    iget-object v3, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lex_id:[I

    invoke-virtual {v1, v2, v3}, Lcom/mobipocket/common/parser/EBookLexer;->interpret_lex(I[I)Z

    move-result v1

    .line 148
    if-nez v1, :cond_4

    move v1, v5

    .line 149
    goto :goto_1

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lex_id:[I

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_2

    .line 196
    :goto_2
    :pswitch_7
    if-nez v4, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->get_cur_entity()I

    move-result v0

    goto :goto_0

    .line 157
    :pswitch_8
    iput v6, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 158
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->make_word()V

    .line 159
    iget v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    invoke-direct {p0, v1}, Lcom/mobipocket/common/parser/TXTEBookParser;->handle_tabs(I)V

    .line 161
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v3, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->mid_of(Lcom/mobipocket/common/parser/StrDescriptor;II)V

    .line 162
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 164
    iput v7, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 165
    iget v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    goto :goto_2

    .line 169
    :cond_5
    iget v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    goto :goto_2

    .line 176
    :pswitch_9
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookLexer;->sizeof_lex_parts()I

    move-result v1

    if-gt v1, v5, :cond_6

    .line 177
    iget v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    goto :goto_2

    .line 180
    :cond_6
    iput v6, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 181
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->make_word()V

    .line 183
    iget-object v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v3, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->mid_of(Lcom/mobipocket/common/parser/StrDescriptor;II)V

    .line 184
    iget v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    goto :goto_2

    .line 189
    :pswitch_a
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->make_word()V

    .line 190
    iget v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    iget-object v2, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    goto :goto_2

    .line 194
    :pswitch_b
    const/4 v1, 0x6

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 195
    iput v4, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    goto :goto_2

    .line 213
    :pswitch_c
    const/4 v1, 0x4

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 214
    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->get_cur_entity()I

    move-result v0

    goto/16 :goto_0

    .line 217
    :pswitch_d
    const/16 v1, 0x9

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 218
    if-nez v4, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->get_cur_entity()I

    move-result v0

    goto/16 :goto_0

    .line 224
    :pswitch_e
    if-nez v4, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->get_cur_entity()I

    move-result v0

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_c
        :pswitch_d
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_e
    .end packed-switch

    .line 135
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 153
    :pswitch_data_2
    .packed-switch 0xd
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public get_tag([Z[Z)S
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 313
    iget v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 342
    :goto_0
    return v0

    .line 317
    :pswitch_1
    aput-boolean v1, p1, v1

    .line 318
    aput-boolean v1, p2, v1

    move v0, v2

    .line 319
    goto :goto_0

    .line 321
    :pswitch_2
    aput-boolean v1, p1, v1

    .line 322
    aput-boolean v1, p2, v1

    move v0, v3

    .line 323
    goto :goto_0

    .line 328
    :pswitch_3
    aput-boolean v2, p1, v1

    .line 329
    aput-boolean v1, p2, v1

    move v0, v3

    .line 330
    goto :goto_0

    .line 332
    :pswitch_4
    aput-boolean v2, p1, v1

    .line 333
    aput-boolean v1, p2, v1

    move v0, v2

    .line 334
    goto :goto_0

    .line 336
    :pswitch_5
    aput-boolean v1, p1, v1

    .line 337
    aput-boolean v2, p2, v1

    .line 338
    const/16 v0, 0x20

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public get_text()Lcom/mobipocket/common/parser/StrDescriptor;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    return-object v0
.end method

.method public hasMoreEntityAtCurrentPosition()Z
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public init(IILcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/mobipocket/common/parser/TXTEBookParser;->init(IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 94
    return-void
.end method

.method public init(IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 71
    iput-object p3, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 72
    if-nez p1, :cond_1

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 75
    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lex_error:I

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/EBookLexer;->set_position(I)V

    .line 85
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->get_next_entity()I

    .line 87
    :cond_0
    return v1

    .line 79
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 80
    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->lex_error:I

    goto :goto_0
.end method

.method public loadParserState([B)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    array-length v0, p1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 465
    new-instance v0, Ljava/io/IOException;

    const-string v1, "wrong parser state data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 467
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    .line 468
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    .line 470
    return-void
.end method

.method public saveParserState(Lcom/mobipocket/common/parser/TagAndAttributeStack;I)[B
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    const/16 v0, 0xc

    .line 448
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 449
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 451
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 452
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TXTEBookParser;->getPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 453
    iget v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->state:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 454
    iget v0, p0, Lcom/mobipocket/common/parser/TXTEBookParser;->char_count:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 455
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 456
    return-object v0
.end method

.method public setReturnUnautorizedTableTag(Z)V
    .locals 0
    .parameter

    .prologue
    .line 475
    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 487
    return-void
.end method
