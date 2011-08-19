.class public Lcom/amazon/topaz/Searcher;
.super Ljava/lang/Object;
.source "Searcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;
    }
.end annotation


# static fields
.field private static final CONTEXT_WORDS_PER_SIDE:I = 0x14


# instance fields
.field private final book:Lcom/amazon/topaz/TPZBook;

.field private final buffer:[Ljava/lang/String;

.field private final cancelRequester:Lcom/amazon/foundation/internal/ICancelRequester;

.field private final gotoResultExecutor:Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;

.field private final onResultCallback:Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;

.field private final query:[Ljava/lang/String;

.field private final statusTracker:Lcom/amazon/foundation/IStatusTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/topaz/TPZBook;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;)V
    .locals 2
    .parameter "query"
    .parameter "book"
    .parameter "onResultCallback"
    .parameter "statusTracker"
    .parameter "cancelRequester"
    .parameter "gotoResultExecutor"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null query."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/topaz/Searcher;->stripPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/topaz/Searcher;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/Searcher;->query:[Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/amazon/topaz/Searcher;->query:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/amazon/topaz/Searcher;->book:Lcom/amazon/topaz/TPZBook;

    .line 68
    iput-object p3, p0, Lcom/amazon/topaz/Searcher;->onResultCallback:Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;

    .line 69
    iput-object p4, p0, Lcom/amazon/topaz/Searcher;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 70
    iput-object p5, p0, Lcom/amazon/topaz/Searcher;->cancelRequester:Lcom/amazon/foundation/internal/ICancelRequester;

    .line 71
    iput-object p6, p0, Lcom/amazon/topaz/Searcher;->gotoResultExecutor:Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/Searcher;)Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amazon/topaz/Searcher;->gotoResultExecutor:Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;

    return-object v0
.end method

.method private createSearchResult(Lcom/amazon/topaz/WordIterator;II)Lcom/amazon/kcp/reader/models/BookSearchResult;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x0

    .line 142
    move v0, v7

    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/amazon/topaz/WordIterator;->previous()Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v7

    .line 149
    :goto_1
    if-ge v0, v8, :cond_1

    invoke-virtual {p1}, Lcom/amazon/topaz/WordIterator;->previous()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v7

    .line 156
    :goto_2
    if-ge v2, v0, :cond_2

    .line 158
    invoke-virtual {p1}, Lcom/amazon/topaz/WordIterator;->next()Z

    .line 159
    invoke-virtual {p1}, Lcom/amazon/topaz/WordIterator;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 164
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v7

    .line 166
    :goto_3
    iget-object v4, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 168
    invoke-virtual {p1}, Lcom/amazon/topaz/WordIterator;->next()Z

    .line 169
    invoke-virtual {p1}, Lcom/amazon/topaz/WordIterator;->getWord()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {p1}, Lcom/amazon/topaz/WordIterator;->getID()I

    move-result v5

    .line 172
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const/4 v5, 0x1

    invoke-static {v4, v7, v5}, Lcom/amazon/topaz/Searcher;->getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 178
    add-int/lit8 v0, v0, -0x1

    .line 166
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 183
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v7

    .line 185
    :goto_4
    if-ge v0, v8, :cond_5

    invoke-virtual {p1}, Lcom/amazon/topaz/WordIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 187
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {p1}, Lcom/amazon/topaz/WordIterator;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v5, v7

    .line 192
    :goto_5
    if-ge v5, v0, :cond_6

    .line 194
    invoke-virtual {p1}, Lcom/amazon/topaz/WordIterator;->previous()Z

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 197
    :cond_6
    new-instance v0, Lcom/amazon/topaz/Searcher$1;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/topaz/Searcher$1;-><init>(Lcom/amazon/topaz/Searcher;Ljava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getMatchLength(Ljava/lang/String;ILjava/lang/String;II)I
    .locals 6
    .parameter "word"
    .parameter "start"
    .parameter "query"
    .parameter "queryStart"
    .parameter "step"

    .prologue
    const/4 v5, 0x0

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, matchLength:I
    invoke-static {p0, p1, p4}, Lcom/amazon/topaz/Searcher;->getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I

    move-result v0

    .line 404
    .local v0, idx:I
    move v2, p3

    .line 405
    .local v2, queryIdx:I
    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    if-ltz v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 407
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    move v3, v5

    .line 416
    :goto_1
    return v3

    .line 411
    :cond_0
    sub-int v3, v0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 412
    add-int v3, v0, p4

    invoke-static {p0, v3, p4}, Lcom/amazon/topaz/Searcher;->getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I

    move-result v0

    .line 405
    add-int/2addr v2, p4

    goto :goto_0

    .line 416
    :cond_1
    if-ltz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method private static getMatchOffsetAndLength(Ljava/lang/String;Ljava/lang/String;Z)[I
    .locals 11
    .parameter "word"
    .parameter "query"
    .parameter "forward"

    .prologue
    const/4 v10, 0x1

    .line 358
    if-eqz p2, :cond_0

    .line 360
    const/4 v6, 0x0

    .line 361
    .local v6, start:I
    const/4 v7, 0x1

    .line 362
    .local v7, step:I
    const/4 v4, 0x0

    .line 363
    .local v4, min:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v3, v8, v9

    .line 364
    .local v3, max:I
    const/4 v5, 0x0

    .line 375
    .local v5, queryIdx:I
    :goto_0
    invoke-static {p0, v6, v7}, Lcom/amazon/topaz/Searcher;->getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I

    move-result v0

    .line 376
    .local v0, idx:I
    :goto_1
    if-lt v0, v4, :cond_3

    if-gt v0, v3, :cond_3

    .line 378
    invoke-static {p0, v0, p1, v5, v7}, Lcom/amazon/topaz/Searcher;->getMatchLength(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v1

    .line 379
    .local v1, matchLength:I
    if-lez v1, :cond_2

    .line 381
    if-eqz p2, :cond_1

    move v2, v0

    .line 382
    .local v2, matchOffset:I
    :goto_2
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v2, v8, v9

    aput v1, v8, v10

    .line 386
    .end local v1           #matchLength:I
    .end local v2           #matchOffset:I
    :goto_3
    return-object v8

    .line 368
    .end local v0           #idx:I
    .end local v3           #max:I
    .end local v4           #min:I
    .end local v5           #queryIdx:I
    .end local v6           #start:I
    .end local v7           #step:I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v6, v8, v10

    .line 369
    .restart local v6       #start:I
    const/4 v7, -0x1

    .line 370
    .restart local v7       #step:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v4, v8, v10

    .line 371
    .restart local v4       #min:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v3, v8, v10

    .line 372
    .restart local v3       #max:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v5, v8, v10

    .restart local v5       #queryIdx:I
    goto :goto_0

    .line 381
    .restart local v0       #idx:I
    .restart local v1       #matchLength:I
    :cond_1
    sub-int v8, v0, v1

    add-int/lit8 v8, v8, 0x1

    move v2, v8

    goto :goto_2

    .line 384
    :cond_2
    add-int v8, v0, v7

    invoke-static {p0, v8, v7}, Lcom/amazon/topaz/Searcher;->getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I

    move-result v0

    .line 385
    goto :goto_1

    .line 386
    .end local v1           #matchLength:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3
.end method

.method static getMatchOffsetAndLength([Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 12
    .parameter "text"
    .parameter "query"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 289
    array-length v5, p0

    if-ne v5, v8, :cond_0

    .line 291
    aget-object v5, p0, v9

    aget-object v6, p1, v9

    invoke-static {v5, v6, v8}, Lcom/amazon/topaz/Searcher;->getMatchOffsetAndLength(Ljava/lang/String;Ljava/lang/String;Z)[I

    move-result-object v5

    .line 343
    :goto_0
    return-object v5

    .line 295
    :cond_0
    aget-object v5, p0, v9

    aget-object v6, p1, v9

    invoke-static {v5, v6, v9}, Lcom/amazon/topaz/Searcher;->getMatchOffsetAndLength(Ljava/lang/String;Ljava/lang/String;Z)[I

    move-result-object v1

    .line 296
    .local v1, matchData:[I
    if-nez v1, :cond_1

    move-object v5, v10

    .line 298
    goto :goto_0

    .line 301
    :cond_1
    aget-object v5, p0, v9

    aget v6, v1, v9

    aget v7, v1, v8

    add-int/2addr v6, v7

    invoke-static {v5, v6, v8}, Lcom/amazon/topaz/Searcher;->getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I

    move-result v4

    .line 302
    .local v4, nextNonPuncIdx:I
    if-eq v4, v11, :cond_2

    move-object v5, v10

    .line 304
    goto :goto_0

    .line 306
    :cond_2
    aget v3, v1, v9

    .line 309
    .local v3, matchOffset:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v5, p0

    sub-int/2addr v5, v8

    if-ge v0, v5, :cond_6

    .line 311
    aget-object v5, p0, v0

    aget-object v6, p1, v0

    invoke-static {v5, v6, v8}, Lcom/amazon/topaz/Searcher;->getMatchOffsetAndLength(Ljava/lang/String;Ljava/lang/String;Z)[I

    move-result-object v1

    .line 312
    if-nez v1, :cond_3

    move-object v5, v10

    .line 314
    goto :goto_0

    .line 317
    :cond_3
    aget-object v5, p0, v0

    aget v6, v1, v9

    sub-int/2addr v6, v8

    invoke-static {v5, v6, v11}, Lcom/amazon/topaz/Searcher;->getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I

    move-result v4

    .line 318
    if-eq v4, v11, :cond_4

    move-object v5, v10

    .line 320
    goto :goto_0

    .line 322
    :cond_4
    aget-object v5, p0, v0

    aget v6, v1, v9

    aget v7, v1, v8

    add-int/2addr v6, v7

    invoke-static {v5, v6, v8}, Lcom/amazon/topaz/Searcher;->getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I

    move-result v4

    .line 323
    if-eq v4, v11, :cond_5

    move-object v5, v10

    .line 325
    goto :goto_0

    .line 309
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    :cond_6
    array-length v5, p0

    sub-int/2addr v5, v8

    aget-object v5, p0, v5

    array-length v6, p1

    sub-int/2addr v6, v8

    aget-object v6, p1, v6

    invoke-static {v5, v6, v8}, Lcom/amazon/topaz/Searcher;->getMatchOffsetAndLength(Ljava/lang/String;Ljava/lang/String;Z)[I

    move-result-object v1

    .line 331
    if-nez v1, :cond_7

    move-object v5, v10

    .line 333
    goto :goto_0

    .line 336
    :cond_7
    array-length v5, p0

    sub-int/2addr v5, v8

    aget-object v5, p0, v5

    aget v6, v1, v9

    sub-int/2addr v6, v8

    invoke-static {v5, v6, v11}, Lcom/amazon/topaz/Searcher;->getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I

    move-result v4

    .line 337
    if-eq v4, v11, :cond_8

    move-object v5, v10

    .line 339
    goto :goto_0

    .line 341
    :cond_8
    aget v5, v1, v9

    aget v6, v1, v8

    add-int v2, v5, v6

    .line 343
    .local v2, matchLength:I
    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v3, v5, v9

    aput v2, v5, v8

    goto :goto_0
.end method

.method private static getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I
    .locals 1
    .parameter "word"
    .parameter "start"
    .parameter "step"

    .prologue
    .line 428
    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 430
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/amazon/topaz/Searcher;->isPunctuation(C)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, p1

    .line 435
    :goto_1
    return v0

    .line 428
    :cond_0
    add-int/2addr p1, p2

    goto :goto_0

    .line 435
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static isPunctuation(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 466
    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2f

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x3a

    if-lt p0, v0, :cond_1

    const/16 v0, 0x40

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x5b

    if-lt p0, v0, :cond_2

    const/16 v0, 0x60

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x7b

    if-lt p0, v0, :cond_3

    const/16 v0, 0x9f

    if-le p0, v0, :cond_4

    :cond_3
    const/16 v0, 0xa1

    if-lt p0, v0, :cond_5

    const/16 v0, 0xbf

    if-gt p0, v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSpace(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 445
    sparse-switch p0, :sswitch_data_0

    .line 455
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 453
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 445
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v6

    move v3, v6

    move v4, v6

    .line 219
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/amazon/topaz/Searcher;->isSpace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    if-nez v3, :cond_0

    .line 225
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 v3, 0x1

    .line 228
    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 219
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v3, v6

    .line 232
    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_3

    .line 238
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v2, v6

    .line 242
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 244
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v0, v2

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 246
    :cond_4
    return-object v0
.end method

.method static stripPunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 257
    const/4 v0, 0x0

    move-object v1, v0

    move v0, v3

    .line 258
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/amazon/topaz/Searcher;->isPunctuation(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    if-nez v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 258
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 275
    :cond_2
    if-nez v1, :cond_3

    move-object v0, p0

    :goto_2
    return-object v0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public search()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 81
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    iget-object v6, p0, Lcom/amazon/topaz/Searcher;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v6}, Lcom/amazon/topaz/TPZBook;->lastID()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/amazon/foundation/IStatusTracker;->setMaxProgress(J)V

    .line 82
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->query:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 84
    new-instance v4, Lcom/amazon/topaz/WordIterator;

    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->book:Lcom/amazon/topaz/TPZBook;

    invoke-direct {v4, v5}, Lcom/amazon/topaz/WordIterator;-><init>(Lcom/amazon/topaz/TPZBook;)V

    .line 85
    .local v4, wordIterator:Lcom/amazon/topaz/WordIterator;
    const/4 v3, 0x0

    .local v3, wordIdx:I
    :goto_0
    invoke-virtual {v4}, Lcom/amazon/topaz/WordIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->cancelRequester:Lcom/amazon/foundation/internal/ICancelRequester;

    invoke-interface {v5}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v5

    if-nez v5, :cond_4

    .line 87
    invoke-virtual {v4}, Lcom/amazon/topaz/WordIterator;->getWord()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, word:Ljava/lang/String;
    invoke-static {v2, v9, v8}, Lcom/amazon/topaz/Searcher;->getNextNonPunctuationCharacterIndex(Ljava/lang/String;II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 91
    add-int/lit8 v3, v3, -0x1

    .line 85
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 97
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    aput-object v2, v5, v3

    .line 110
    :goto_2
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v8

    if-lt v3, v5, :cond_1

    .line 112
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/topaz/Searcher;->query:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/amazon/topaz/Searcher;->getMatchOffsetAndLength([Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v1

    .line 113
    .local v1, matchData:[I
    if-eqz v1, :cond_1

    .line 115
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->onResultCallback:Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;

    aget v6, v1, v9

    aget v7, v1, v8

    invoke-direct {p0, v4, v6, v7}, Lcom/amazon/topaz/Searcher;->createSearchResult(Lcom/amazon/topaz/WordIterator;II)Lcom/amazon/kcp/reader/models/BookSearchResult;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;->onResultFound(Lcom/amazon/kcp/reader/models/BookSearchResult;)V

    .line 118
    .end local v1           #matchData:[I
    :cond_1
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual {v4}, Lcom/amazon/topaz/WordIterator;->getID()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/amazon/foundation/IStatusTracker;->reportCurrentProgress(J)V

    goto :goto_1

    .line 102
    :cond_2
    const/4 v0, 0x1

    .local v0, i:I
    :goto_3
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 104
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    sub-int v6, v0, v8

    iget-object v7, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    aget-object v7, v7, v0

    aput-object v7, v5, v6

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 106
    :cond_3
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/topaz/Searcher;->buffer:[Ljava/lang/String;

    array-length v6, v6

    sub-int/2addr v6, v8

    aput-object v2, v5, v6

    goto :goto_2

    .line 123
    .end local v0           #i:I
    .end local v2           #word:Ljava/lang/String;
    .end local v3           #wordIdx:I
    .end local v4           #wordIterator:Lcom/amazon/topaz/WordIterator;
    :cond_4
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->cancelRequester:Lcom/amazon/foundation/internal/ICancelRequester;

    invoke-interface {v5}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v5

    if-nez v5, :cond_5

    .line 125
    iget-object v5, p0, Lcom/amazon/topaz/Searcher;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    iget-object v6, p0, Lcom/amazon/topaz/Searcher;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v6}, Lcom/amazon/topaz/TPZBook;->lastID()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/amazon/foundation/IStatusTracker;->reportCurrentProgress(J)V

    .line 127
    :cond_5
    return-void
.end method
