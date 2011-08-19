.class public Lcom/google/android/gm/template/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# static fields
.field static final END_LITERAL_LENGTH:I


# instance fields
.field private final mBuffer:[C

.field private mColumn:I

.field private mLength:I

.field private mLine:I

.field private final mReader:Ljava/io/Reader;

.field private mUnreadChar:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "{/literal}"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/gm/template/Tokenizer;->END_LITERAL_LENGTH:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .parameter "reader"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gm/template/Tokenizer;->mBuffer:[C

    .line 26
    iput v1, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/template/Tokenizer;->mUnreadChar:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gm/template/Tokenizer;->mLine:I

    .line 30
    iput v1, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I

    .line 38
    iput-object p1, p0, Lcom/google/android/gm/template/Tokenizer;->mReader:Ljava/io/Reader;

    .line 39
    return-void
.end method

.method private flush()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 427
    iget v1, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/google/android/gm/template/Tokenizer;->mBuffer:[C

    iget v2, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    invoke-static {v1, v3, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, s:Ljava/lang/String;
    iput v3, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    move-object v1, v0

    .line 432
    .end local v0           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private flushTo(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "out"

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/google/android/gm/template/Tokenizer;->mBuffer:[C

    iget v1, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 443
    iput v2, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    .line 444
    return-void
.end method

.method private read()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 370
    iget v2, p0, Lcom/google/android/gm/template/Tokenizer;->mUnreadChar:I

    if-ne v2, v3, :cond_1

    .line 373
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/template/Tokenizer;->mReader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v1

    .line 374
    .local v1, i:I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 375
    iget v2, p0, Lcom/google/android/gm/template/Tokenizer;->mLine:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gm/template/Tokenizer;->mLine:I

    .line 376
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I

    .line 388
    :goto_0
    return v1

    .line 378
    :cond_0
    iget v2, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 381
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read from input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    iget v1, p0, Lcom/google/android/gm/template/Tokenizer;->mUnreadChar:I

    .line 386
    .restart local v1       #i:I
    iput v3, p0, Lcom/google/android/gm/template/Tokenizer;->mUnreadChar:I

    goto :goto_0
.end method

.method private readNumber(I)Lcom/google/android/gm/template/Token;
    .locals 4
    .parameter "currentChar"

    .prologue
    const/16 v1, 0x2e

    .line 227
    const/16 v0, 0x30

    if-ne p1, v0, :cond_4

    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    .line 230
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result p1

    .line 231
    const/16 v0, 0x78

    if-ne p1, v0, :cond_3

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    .line 235
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result p1

    .line 238
    const/16 v0, 0x61

    if-gt v0, p1, :cond_1

    const/16 v0, 0x66

    if-le p1, v0, :cond_0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_2

    const/16 v0, 0x46

    if-le p1, v0, :cond_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->unread(I)V

    .line 240
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->NUMBER:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Token;->getToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Lcom/google/android/gm/template/Token;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 241
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    new-instance v0, Lcom/google/android/gm/template/SyntaxError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leading zero before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gm/template/Tokenizer;->mLine:I

    iget v3, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v0

    .line 250
    :cond_4
    if-eq p1, v1, :cond_5

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    .line 253
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result p1

    .line 254
    if-eq p1, v1, :cond_5

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 257
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->unread(I)V

    .line 259
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->NUMBER:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Token;->getToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Lcom/google/android/gm/template/Token;

    move-result-object v0

    goto :goto_0
.end method

.method private readString(I)Lcom/google/android/gm/template/Token;
    .locals 5
    .parameter "currentChar"

    .prologue
    .line 269
    move v0, p1

    .line 272
    .local v0, quote:I
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result p1

    .line 274
    if-ne p1, v0, :cond_0

    .line 319
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->STRING:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gm/template/Token;->getToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Lcom/google/android/gm/template/Token;

    move-result-object v1

    return-object v1

    .line 279
    :cond_0
    const/16 v1, 0x5c

    if-ne p1, v1, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 303
    new-instance v1, Lcom/google/android/gm/template/SyntaxError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid escape sequence: \'\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gm/template/Tokenizer;->mLine:I

    iget v4, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v1

    .line 285
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    goto :goto_0

    .line 288
    :sswitch_1
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    goto :goto_0

    .line 291
    :sswitch_2
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    goto :goto_0

    .line 294
    :sswitch_3
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    goto :goto_0

    .line 297
    :sswitch_4
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    goto :goto_0

    .line 300
    :sswitch_5
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    goto :goto_0

    .line 310
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 312
    new-instance v1, Lcom/google/android/gm/template/SyntaxError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unterminated string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gm/template/Tokenizer;->mLine:I

    iget v4, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v1

    .line 316
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    goto/16 :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_1
        0x72 -> :sswitch_4
        0x74 -> :sswitch_2
    .end sparse-switch
.end method

.method private readSymbol(I)Lcom/google/android/gm/template/Token;
    .locals 4
    .parameter "currentChar"

    .prologue
    .line 329
    sparse-switch p1, :sswitch_data_0

    .line 353
    new-instance v0, Lcom/google/android/gm/template/SyntaxError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    const-string v2, "end of file"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gm/template/Tokenizer;->mLine:I

    iget v3, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v0

    .line 341
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    .line 342
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Token;->getToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Lcom/google/android/gm/template/Token;

    move-result-object v0

    .line 351
    :goto_1
    return-object v0

    .line 345
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    .line 346
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result p1

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_0

    .line 347
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    .line 351
    :goto_2
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Token;->getToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Lcom/google/android/gm/template/Token;

    move-result-object v0

    goto :goto_1

    .line 349
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->unread(I)V

    goto :goto_2

    .line 353
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 329
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x24 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3d -> :sswitch_1
        0x3f -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private readWord(I)Lcom/google/android/gm/template/Token;
    .locals 2
    .parameter "currentChar"

    .prologue
    .line 207
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    .line 208
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result p1

    .line 209
    const/16 v0, 0x5f

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Tokenizer;->unread(I)V

    .line 213
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Token;->getToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Lcom/google/android/gm/template/Token;

    move-result-object v0

    return-object v0
.end method

.method private store(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 413
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot store end-of-file character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    iget v0, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    .line 416
    new-instance v0, Lcom/google/android/gm/template/SyntaxError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token too long: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gm/template/Tokenizer;->mLine:I

    iget v3, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/template/Tokenizer;->mBuffer:[C

    iget v1, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 419
    return-void
.end method

.method private unread(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 399
    iget v0, p0, Lcom/google/android/gm/template/Tokenizer;->mUnreadChar:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unread more than one character in a row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_0
    iput p1, p0, Lcom/google/android/gm/template/Tokenizer;->mUnreadChar:I

    .line 403
    return-void
.end method


# virtual methods
.method public final getColumn()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I

    return v0
.end method

.method public final getLine()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/gm/template/Tokenizer;->mLine:I

    return v0
.end method

.method public nextFragment()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x7b

    const/4 v4, -0x1

    .line 64
    iget v2, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    if-eqz v2, :cond_0

    .line 65
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextFragment: buffer not flushed: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result v0

    .local v0, i:I
    if-eq v0, v4, :cond_5

    if-eq v0, v5, :cond_5

    .line 73
    iget v2, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    const/16 v3, 0x3ff

    if-ne v2, v3, :cond_2

    .line 74
    if-nez v1, :cond_1

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/gm/template/Tokenizer;->flushTo(Ljava/lang/StringBuilder;)V

    .line 82
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 83
    if-ne v0, v6, :cond_7

    move v2, v6

    :goto_1
    invoke-direct {p0, v2}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    .line 84
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 85
    :cond_4
    if-eq v0, v4, :cond_5

    if-ne v0, v5, :cond_8

    .line 93
    :cond_5
    if-ne v0, v5, :cond_6

    .line 94
    invoke-direct {p0, v0}, Lcom/google/android/gm/template/Tokenizer;->unread(I)V

    .line 97
    :cond_6
    if-nez v1, :cond_9

    .line 99
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v2

    .line 104
    :goto_2
    return-object v2

    .line 83
    :cond_7
    const/16 v2, 0x20

    goto :goto_1

    .line 90
    :cond_8
    invoke-direct {p0, v0}, Lcom/google/android/gm/template/Tokenizer;->store(I)V

    goto :goto_0

    .line 103
    :cond_9
    invoke-direct {p0, v1}, Lcom/google/android/gm/template/Tokenizer;->flushTo(Ljava/lang/StringBuilder;)V

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public nextLiteralFragment()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 118
    iget v3, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    if-eqz v3, :cond_0

    .line 119
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nextLiteralFragment: buffer not flushed: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v2, sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result v0

    .local v0, i:I
    if-eq v0, v5, :cond_2

    .line 128
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    const/16 v3, 0x7d

    if-ne v0, v3, :cond_1

    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 132
    .local v1, length:I
    sget v3, Lcom/google/android/gm/template/Tokenizer;->END_LITERAL_LENGTH:I

    if-lt v1, v3, :cond_1

    const-string v3, "{/literal}"

    sget v4, Lcom/google/android/gm/template/Tokenizer;->END_LITERAL_LENGTH:I

    sub-int v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    .end local v1           #length:I
    :cond_2
    if-ne v0, v5, :cond_3

    .line 141
    new-instance v3, Lcom/google/android/gm/template/SyntaxError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unterminated literal fragment: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gm/template/Tokenizer;->mLine:I

    iget v6, p0, Lcom/google/android/gm/template/Tokenizer;->mColumn:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v3

    .line 145
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sget v5, Lcom/google/android/gm/template/Tokenizer;->END_LITERAL_LENGTH:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public nextToken()Lcom/google/android/gm/template/Token;
    .locals 4

    .prologue
    .line 162
    iget v1, p0, Lcom/google/android/gm/template/Tokenizer;->mLength:I

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextToken: buffer not flushed: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->flush()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/template/Tokenizer;->read()I

    move-result v0

    .line 171
    .local v0, currentChar:I
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 175
    const/4 v1, 0x0

    .line 194
    :goto_0
    return-object v1

    .line 178
    :cond_1
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gm/template/Tokenizer;->readWord(I)Lcom/google/android/gm/template/Token;

    move-result-object v1

    goto :goto_0

    .line 183
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    invoke-direct {p0, v0}, Lcom/google/android/gm/template/Tokenizer;->readNumber(I)Lcom/google/android/gm/template/Token;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_4
    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x27

    if-ne v0, v1, :cond_6

    .line 190
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/gm/template/Tokenizer;->readString(I)Lcom/google/android/gm/template/Token;

    move-result-object v1

    goto :goto_0

    .line 194
    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/gm/template/Tokenizer;->readSymbol(I)Lcom/google/android/gm/template/Token;

    move-result-object v1

    goto :goto_0
.end method
