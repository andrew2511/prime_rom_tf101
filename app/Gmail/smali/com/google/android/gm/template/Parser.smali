.class public Lcom/google/android/gm/template/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/template/Parser$1;
    }
.end annotation


# instance fields
.field private mCurrentToken:Lcom/google/android/gm/template/Token;

.field private final mTokenizer:Lcom/google/android/gm/template/Tokenizer;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .parameter "reader"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/google/android/gm/template/Tokenizer;

    invoke-direct {v0, p1}, Lcom/google/android/gm/template/Tokenizer;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    .line 24
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    .line 25
    return-void
.end method

.method private checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 625
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/template/Parser;->checkOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    new-instance v0, Lcom/google/android/gm/template/SyntaxError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/gm/template/Token;->getToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Lcom/google/android/gm/template/Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    if-nez v2, :cond_0

    const-string v2, "end of file"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v2}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v3}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    goto :goto_0

    .line 630
    :cond_1
    return-void
.end method

.method private checkOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z
    .locals 1
    .parameter "type"
    .parameter "value"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    iget-object v0, v0, Lcom/google/android/gm/template/Token;->mType:Lcom/google/android/gm/template/Token$Type;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/template/Token$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    iget-object v0, v0, Lcom/google/android/gm/template/Token;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private peekExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;
    .locals 5
    .parameter "type"

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Parser;->peekOptionalToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 567
    new-instance v1, Lcom/google/android/gm/template/SyntaxError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    if-nez v3, :cond_0

    const-string v3, "end of file"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v3}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v4}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    goto :goto_0

    .line 571
    :cond_1
    return-object v0
.end method

.method private peekOptionalToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    iget-object v0, v0, Lcom/google/android/gm/template/Token;->mType:Lcom/google/android/gm/template/Token$Type;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/template/Token$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    iget-object v0, v0, Lcom/google/android/gm/template/Token;->mValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;
    .locals 5
    .parameter "type"

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Parser;->readOptionalToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 535
    new-instance v1, Lcom/google/android/gm/template/SyntaxError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    if-nez v3, :cond_0

    const-string v3, "end of file"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v3}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v4}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    goto :goto_0

    .line 539
    :cond_1
    return-object v0
.end method

.method private readNextToken()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v0}, Lcom/google/android/gm/template/Tokenizer;->nextToken()Lcom/google/android/gm/template/Token;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    .line 649
    return-void
.end method

.method private readOptionalToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/google/android/gm/template/Parser;->peekOptionalToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    .line 554
    :cond_0
    return-object v0
.end method

.method private skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 594
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/template/Parser;->skipOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    new-instance v0, Lcom/google/android/gm/template/SyntaxError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/gm/template/Token;->getToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Lcom/google/android/gm/template/Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    if-nez v2, :cond_0

    const-string v2, "end of file"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v2}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v3}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    goto :goto_0

    .line 599
    :cond_1
    return-void
.end method

.method private skipOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z
    .locals 1
    .parameter "type"
    .parameter "value"

    .prologue
    .line 610
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/template/Parser;->checkOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v0

    .line 611
    .local v0, match:Z
    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    .line 614
    :cond_0
    return v0
.end method


# virtual methods
.method public parse()Lcom/google/android/gm/template/Template;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    const-string v1, "template"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v1, "}"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseTemplateCommand()Lcom/google/android/gm/template/Template;

    move-result-object v0

    goto :goto_0
.end method

.method parseAtomicExpression()Lcom/google/android/gm/template/Expression;
    .locals 7

    .prologue
    .line 424
    iget-object v3, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    if-nez v3, :cond_0

    .line 425
    new-instance v3, Lcom/google/android/gm/template/SyntaxError;

    const-string v4, "Expression expected"

    iget-object v5, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v5}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v6}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v3

    .line 430
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    iget-object v2, v3, Lcom/google/android/gm/template/Token;->mValue:Ljava/lang/String;

    .line 431
    .local v2, value:Ljava/lang/String;
    sget-object v3, Lcom/google/android/gm/template/Parser$1;->$SwitchMap$com$google$android$gm$template$Token$Type:[I

    iget-object v4, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    iget-object v4, v4, Lcom/google/android/gm/template/Token;->mType:Lcom/google/android/gm/template/Token$Type;

    invoke-virtual {v4}, Lcom/google/android/gm/template/Token$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 472
    new-instance v3, Lcom/google/android/gm/template/SyntaxError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v5}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v6}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v3

    .line 434
    :pswitch_0
    :try_start_0
    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gm/template/Constant;->getConstant(J)Lcom/google/android/gm/template/Constant;

    move-result-object v1

    .line 441
    .local v1, expression:Lcom/google/android/gm/template/Expression;
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    :goto_1
    move-object v3, v1

    .line 476
    .end local v1           #expression:Lcom/google/android/gm/template/Expression;
    :goto_2
    return-object v3

    .line 436
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 437
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gm/template/Constant;->getConstant(D)Lcom/google/android/gm/template/Constant;

    move-result-object v1

    .restart local v1       #expression:Lcom/google/android/gm/template/Expression;
    goto :goto_0

    .line 439
    .end local v1           #expression:Lcom/google/android/gm/template/Expression;
    :cond_2
    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gm/template/Constant;->getConstant(J)Lcom/google/android/gm/template/Constant;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #expression:Lcom/google/android/gm/template/Expression;
    goto :goto_0

    .line 442
    .end local v1           #expression:Lcom/google/android/gm/template/Expression;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 443
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/google/android/gm/template/SyntaxError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected number, found \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v5}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v6}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v3

    .line 449
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :pswitch_1
    invoke-static {v2}, Lcom/google/android/gm/template/Constant;->getConstant(Ljava/lang/String;)Lcom/google/android/gm/template/Constant;

    move-result-object v1

    .line 450
    .restart local v1       #expression:Lcom/google/android/gm/template/Expression;
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    goto :goto_1

    .line 454
    .end local v1           #expression:Lcom/google/android/gm/template/Expression;
    :pswitch_2
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 455
    sget-object v1, Lcom/google/android/gm/template/Constant;->TRUE:Lcom/google/android/gm/template/Constant;

    .line 463
    .restart local v1       #expression:Lcom/google/android/gm/template/Expression;
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    goto :goto_1

    .line 456
    .end local v1           #expression:Lcom/google/android/gm/template/Expression;
    :cond_3
    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 457
    sget-object v1, Lcom/google/android/gm/template/Constant;->FALSE:Lcom/google/android/gm/template/Constant;

    .restart local v1       #expression:Lcom/google/android/gm/template/Expression;
    goto :goto_3

    .line 458
    .end local v1           #expression:Lcom/google/android/gm/template/Expression;
    :cond_4
    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 459
    sget-object v1, Lcom/google/android/gm/template/Constant;->NULL:Lcom/google/android/gm/template/Constant;

    .restart local v1       #expression:Lcom/google/android/gm/template/Expression;
    goto :goto_3

    .line 461
    .end local v1           #expression:Lcom/google/android/gm/template/Expression;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseFunctionExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v3

    goto :goto_2

    .line 467
    :pswitch_3
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v4, "$"

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseReferenceExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v1

    .line 469
    .restart local v1       #expression:Lcom/google/android/gm/template/Expression;
    goto/16 :goto_1

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method parseCallCommand()Lcom/google/android/gm/template/Call;
    .locals 6

    .prologue
    .line 267
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    const-string v4, "call"

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 268
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v3}, Lcom/google/android/gm/template/Parser;->readExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, name:Ljava/lang/String;
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    const-string v4, "data"

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 270
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v4, "="

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 271
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->STRING:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v3}, Lcom/google/android/gm/template/Parser;->readExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, data:Ljava/lang/String;
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v4, "}"

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 275
    const-string v3, "all"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move-object v2, v3

    .line 279
    .local v2, reference:Lcom/google/android/gm/template/Expression;
    :goto_0
    new-instance v3, Lcom/google/android/gm/template/Call;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gm/template/Call;-><init>(Ljava/lang/String;Lcom/google/android/gm/template/Expression;)V

    return-object v3

    .line 275
    .end local v2           #reference:Lcom/google/android/gm/template/Expression;
    :cond_0
    new-instance v3, Lcom/google/android/gm/template/Parser;

    new-instance v4, Ljava/io/StringReader;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/google/android/gm/template/Parser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Lcom/google/android/gm/template/Parser;->parseReferenceExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method parseCommand()Lcom/google/android/gm/template/Command;
    .locals 3

    .prologue
    .line 55
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v2, "{"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v2, "/"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/template/Parser;->skipOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseEndCommand()Lcom/google/android/gm/template/End;

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 62
    :cond_0
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v1}, Lcom/google/android/gm/template/Parser;->peekOptionalToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, value:Ljava/lang/String;
    const-string v1, "lb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    .line 65
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v2, "}"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/google/android/gm/template/Literal;->LB:Lcom/google/android/gm/template/Literal;

    goto :goto_0

    .line 67
    :cond_1
    const-string v1, "rb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    .line 69
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v2, "}"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/google/android/gm/template/Literal;->RB:Lcom/google/android/gm/template/Literal;

    goto :goto_0

    .line 71
    :cond_2
    const-string v1, "literal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    .line 73
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v2, "}"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseLiteralCommand()Lcom/google/android/gm/template/Literal;

    move-result-object v1

    goto :goto_0

    .line 75
    :cond_3
    const-string v1, "template"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    .line 77
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v2, "}"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseTemplateCommand()Lcom/google/android/gm/template/Template;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_4
    const-string v1, "if"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseIfCommand()Lcom/google/android/gm/template/If;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_5
    const-string v1, "elseif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseElseIfCommand()Lcom/google/android/gm/template/ElseIf;

    move-result-object v1

    goto :goto_0

    .line 83
    :cond_6
    const-string v1, "else"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseElseCommand()Lcom/google/android/gm/template/Else;

    move-result-object v1

    goto/16 :goto_0

    .line 85
    :cond_7
    const-string v1, "call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseCallCommand()Lcom/google/android/gm/template/Call;

    move-result-object v1

    goto/16 :goto_0

    .line 87
    :cond_8
    const-string v1, "foreach"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseForEachCommand()Lcom/google/android/gm/template/ForEach;

    move-result-object v1

    goto/16 :goto_0

    .line 93
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parsePrintCommand()Lcom/google/android/gm/template/Print;

    move-result-object v1

    goto/16 :goto_0
.end method

.method parseComparisonExpression()Lcom/google/android/gm/template/Expression;
    .locals 6

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseUnaryExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v0

    .line 375
    .local v0, expression:Lcom/google/android/gm/template/Expression;
    iget-object v2, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    if-nez v2, :cond_0

    move-object v2, v0

    .line 388
    :goto_0
    return-object v2

    .line 381
    :cond_0
    sget-object v2, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v2}, Lcom/google/android/gm/template/Parser;->peekExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, symbol:Ljava/lang/String;
    const-string v2, "?"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "|"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "}"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v2, v0

    .line 384
    goto :goto_0

    .line 385
    :cond_2
    const-string v2, "=="

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "!="

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 387
    :cond_3
    sget-object v2, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v2, v1}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 388
    new-instance v2, Lcom/google/android/gm/template/Comparison;

    const-string v3, "=="

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/google/android/gm/template/Comparison$Type;->EQUALS:Lcom/google/android/gm/template/Comparison$Type;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseUnaryExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gm/template/Comparison;-><init>(Lcom/google/android/gm/template/Comparison$Type;Lcom/google/android/gm/template/Expression;Lcom/google/android/gm/template/Expression;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/google/android/gm/template/Comparison$Type;->NOT_EQUALS:Lcom/google/android/gm/template/Comparison$Type;

    goto :goto_1

    .line 393
    :cond_5
    new-instance v2, Lcom/google/android/gm/template/SyntaxError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected symbol: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v4}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v5}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v2
.end method

.method parseElseCommand()Lcom/google/android/gm/template/Else;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    const-string v1, "else"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v1, "}"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/google/android/gm/template/Else;

    invoke-direct {v0}, Lcom/google/android/gm/template/Else;-><init>()V

    return-object v0
.end method

.method parseElseIfCommand()Lcom/google/android/gm/template/ElseIf;
    .locals 3

    .prologue
    .line 238
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    const-string v2, "elseif"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v0

    .line 240
    .local v0, condition:Lcom/google/android/gm/template/Expression;
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v2, "}"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/google/android/gm/template/ElseIf;

    invoke-direct {v1, v0}, Lcom/google/android/gm/template/ElseIf;-><init>(Lcom/google/android/gm/template/Expression;)V

    return-object v1
.end method

.method parseEndCommand()Lcom/google/android/gm/template/End;
    .locals 3

    .prologue
    .line 107
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v1}, Lcom/google/android/gm/template/Parser;->readExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, commandName:Ljava/lang/String;
    sget-object v1, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v2, "}"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 109
    new-instance v1, Lcom/google/android/gm/template/End;

    invoke-direct {v1, v0}, Lcom/google/android/gm/template/End;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method parseExpression()Lcom/google/android/gm/template/Expression;
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseTernaryExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v0

    return-object v0
.end method

.method parseForEachCommand()Lcom/google/android/gm/template/ForEach;
    .locals 10

    .prologue
    .line 291
    sget-object v6, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    const-string v7, "foreach"

    invoke-direct {p0, v6, v7}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 292
    sget-object v6, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v7, "$"

    invoke-direct {p0, v6, v7}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 293
    sget-object v6, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v6}, Lcom/google/android/gm/template/Parser;->readExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, variableName:Ljava/lang/String;
    sget-object v6, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    const-string v7, "in"

    invoke-direct {p0, v6, v7}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v1

    .line 296
    .local v1, listExpression:Lcom/google/android/gm/template/Expression;
    sget-object v6, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v7, "}"

    invoke-direct {p0, v6, v7}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 298
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v3, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/template/Node;>;"
    :cond_0
    sget-object v6, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v7, "{"

    invoke-direct {p0, v6, v7}, Lcom/google/android/gm/template/Parser;->checkOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 302
    iget-object v6, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v6}, Lcom/google/android/gm/template/Tokenizer;->nextFragment()Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, textFragment:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    .line 304
    if-eqz v4, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 305
    new-instance v6, Lcom/google/android/gm/template/Fragment;

    invoke-direct {v6, v4}, Lcom/google/android/gm/template/Fragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v4           #textFragment:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseCommand()Lcom/google/android/gm/template/Command;

    move-result-object v2

    .line 309
    .local v2, node:Lcom/google/android/gm/template/Node;
    if-eqz v2, :cond_3

    .line 310
    instance-of v6, v2, Lcom/google/android/gm/template/End;

    if-eqz v6, :cond_2

    const-string v7, "foreach"

    move-object v0, v2

    check-cast v0, Lcom/google/android/gm/template/End;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gm/template/End;->getCommandName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 311
    new-instance v6, Lcom/google/android/gm/template/ForEach;

    invoke-direct {v6, v5, v1, v3}, Lcom/google/android/gm/template/ForEach;-><init>(Ljava/lang/String;Lcom/google/android/gm/template/Expression;Ljava/util/ArrayList;)V

    return-object v6

    .line 313
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_3
    if-nez v2, :cond_0

    .line 319
    new-instance v6, Lcom/google/android/gm/template/SyntaxError;

    const-string v7, "Unterminated foreach command"

    iget-object v8, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v8}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v9}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v6
.end method

.method parseFunctionExpression()Lcom/google/android/gm/template/Expression;
    .locals 7

    .prologue
    .line 486
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v3}, Lcom/google/android/gm/template/Parser;->readExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, functionName:Ljava/lang/String;
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v4, "("

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 488
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v4, "$"

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 489
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v3}, Lcom/google/android/gm/template/Parser;->readExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, variableName:Ljava/lang/String;
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v4, ")"

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 493
    :try_start_0
    new-instance v3, Lcom/google/android/gm/template/Function;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gm/template/Function;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 494
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 495
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/google/android/gm/template/SyntaxError;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v5}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v6}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v3
.end method

.method parseIfCommand()Lcom/google/android/gm/template/If;
    .locals 9

    .prologue
    .line 195
    sget-object v5, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    const-string v6, "if"

    invoke-direct {p0, v5, v6}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v2

    .line 197
    .local v2, condition:Lcom/google/android/gm/template/Expression;
    sget-object v5, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v6, "}"

    invoke-direct {p0, v5, v6}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 199
    new-instance v5, Lcom/google/android/gm/template/If$Builder;

    invoke-direct {v5}, Lcom/google/android/gm/template/If$Builder;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/android/gm/template/If$Builder;->addCondition(Lcom/google/android/gm/template/Expression;)Lcom/google/android/gm/template/If$Builder;

    move-result-object v1

    .line 203
    .local v1, builder:Lcom/google/android/gm/template/If$Builder;
    :cond_0
    sget-object v5, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v6, "{"

    invoke-direct {p0, v5, v6}, Lcom/google/android/gm/template/Parser;->checkOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 204
    iget-object v5, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v5}, Lcom/google/android/gm/template/Tokenizer;->nextFragment()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, textFragment:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    .line 206
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 207
    new-instance v5, Lcom/google/android/gm/template/Fragment;

    invoke-direct {v5, v4}, Lcom/google/android/gm/template/Fragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gm/template/If$Builder;->addNode(Lcom/google/android/gm/template/Node;)Lcom/google/android/gm/template/If$Builder;

    .line 210
    .end local v4           #textFragment:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseCommand()Lcom/google/android/gm/template/Command;

    move-result-object v3

    .line 211
    .local v3, node:Lcom/google/android/gm/template/Node;
    if-eqz v3, :cond_2

    .line 212
    instance-of v5, v3, Lcom/google/android/gm/template/ElseIf;

    if-eqz v5, :cond_3

    .line 213
    move-object v0, v3

    check-cast v0, Lcom/google/android/gm/template/ElseIf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gm/template/ElseIf;->getCondition()Lcom/google/android/gm/template/Expression;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gm/template/If$Builder;->addCondition(Lcom/google/android/gm/template/Expression;)Lcom/google/android/gm/template/If$Builder;

    .line 222
    :cond_2
    :goto_0
    if-nez v3, :cond_0

    .line 225
    new-instance v5, Lcom/google/android/gm/template/SyntaxError;

    const-string v6, "Unterminated if command"

    iget-object v7, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v7}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v8}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v5

    .line 214
    :cond_3
    instance-of v5, v3, Lcom/google/android/gm/template/Else;

    if-eqz v5, :cond_4

    .line 215
    invoke-virtual {v1}, Lcom/google/android/gm/template/If$Builder;->addDefault()Lcom/google/android/gm/template/If$Builder;

    goto :goto_0

    .line 216
    :cond_4
    instance-of v5, v3, Lcom/google/android/gm/template/End;

    if-eqz v5, :cond_5

    const-string v6, "if"

    move-object v0, v3

    check-cast v0, Lcom/google/android/gm/template/End;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gm/template/End;->getCommandName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 217
    invoke-virtual {v1}, Lcom/google/android/gm/template/If$Builder;->build()Lcom/google/android/gm/template/If;

    move-result-object v5

    return-object v5

    .line 219
    :cond_5
    invoke-virtual {v1, v3}, Lcom/google/android/gm/template/If$Builder;->addNode(Lcom/google/android/gm/template/Node;)Lcom/google/android/gm/template/If$Builder;

    goto :goto_0
.end method

.method parseLiteralCommand()Lcom/google/android/gm/template/Literal;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lcom/google/android/gm/template/Literal;

    new-instance v1, Lcom/google/android/gm/template/Fragment;

    iget-object v2, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v2}, Lcom/google/android/gm/template/Tokenizer;->nextLiteralFragment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gm/template/Fragment;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gm/template/Literal;-><init>(Lcom/google/android/gm/template/Fragment;)V

    return-object v0
.end method

.method parsePrintCommand()Lcom/google/android/gm/template/Print;
    .locals 7

    .prologue
    .line 168
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    const-string v4, "print"

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->skipOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v0

    .line 170
    .local v0, expression:Lcom/google/android/gm/template/Expression;
    const/4 v2, 0x1

    .line 171
    .local v2, isAutoescape:Z
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v4, "|"

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->skipOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v3}, Lcom/google/android/gm/template/Parser;->readExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, flag:Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "noAutoescape"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    :cond_0
    const/4 v2, 0x0

    .line 180
    .end local v1           #flag:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v4, "}"

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/template/Parser;->checkExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 182
    new-instance v3, Lcom/google/android/gm/template/Print;

    invoke-direct {v3, v0, v2}, Lcom/google/android/gm/template/Print;-><init>(Lcom/google/android/gm/template/Expression;Z)V

    return-object v3

    .line 176
    .restart local v1       #flag:Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/google/android/gm/template/SyntaxError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v5}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v6}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v3
.end method

.method parseReferenceExpression()Lcom/google/android/gm/template/Expression;
    .locals 4

    .prologue
    .line 509
    sget-object v2, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v2}, Lcom/google/android/gm/template/Parser;->readExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, name:Ljava/lang/String;
    sget-object v2, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v3, "."

    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/template/Parser;->skipOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v0, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_0
    sget-object v2, Lcom/google/android/gm/template/Token$Type;->WORD:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v2}, Lcom/google/android/gm/template/Parser;->readExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v2, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v3, "."

    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/template/Parser;->skipOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    new-instance v2, Lcom/google/android/gm/template/Reference;

    invoke-direct {v2, v0}, Lcom/google/android/gm/template/Reference;-><init>(Ljava/util/ArrayList;)V

    .line 520
    .end local v0           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v1}, Lcom/google/android/gm/template/Variable;->getVariable(Ljava/lang/String;)Lcom/google/android/gm/template/Variable;

    move-result-object v2

    goto :goto_0
.end method

.method parseTemplateCommand()Lcom/google/android/gm/template/Template;
    .locals 8

    .prologue
    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v2, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/template/Node;>;"
    :cond_0
    sget-object v4, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v5, "{"

    invoke-direct {p0, v4, v5}, Lcom/google/android/gm/template/Parser;->checkOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    iget-object v4, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v4}, Lcom/google/android/gm/template/Tokenizer;->nextFragment()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, textFragment:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/gm/template/Parser;->readNextToken()V

    .line 127
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    new-instance v4, Lcom/google/android/gm/template/Fragment;

    invoke-direct {v4, v3}, Lcom/google/android/gm/template/Fragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v3           #textFragment:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseCommand()Lcom/google/android/gm/template/Command;

    move-result-object v1

    .line 132
    .local v1, node:Lcom/google/android/gm/template/Node;
    if-eqz v1, :cond_3

    .line 133
    instance-of v4, v1, Lcom/google/android/gm/template/End;

    if-eqz v4, :cond_2

    const-string v5, "template"

    move-object v0, v1

    check-cast v0, Lcom/google/android/gm/template/End;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/template/End;->getCommandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    new-instance v4, Lcom/google/android/gm/template/Template;

    invoke-direct {v4, v2}, Lcom/google/android/gm/template/Template;-><init>(Ljava/util/ArrayList;)V

    return-object v4

    .line 136
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_3
    if-nez v1, :cond_0

    .line 142
    new-instance v4, Lcom/google/android/gm/template/SyntaxError;

    const-string v5, "Unterminated template"

    iget-object v6, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v6}, Lcom/google/android/gm/template/Tokenizer;->getLine()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gm/template/Parser;->mTokenizer:Lcom/google/android/gm/template/Tokenizer;

    invoke-virtual {v7}, Lcom/google/android/gm/template/Tokenizer;->getColumn()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gm/template/SyntaxError;-><init>(Ljava/lang/String;II)V

    throw v4
.end method

.method parseTernaryExpression()Lcom/google/android/gm/template/Expression;
    .locals 6

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseComparisonExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v0

    .line 343
    .local v0, expression:Lcom/google/android/gm/template/Expression;
    iget-object v4, p0, Lcom/google/android/gm/template/Parser;->mCurrentToken:Lcom/google/android/gm/template/Token;

    if-nez v4, :cond_0

    move-object v4, v0

    .line 362
    :goto_0
    return-object v4

    .line 349
    :cond_0
    sget-object v4, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    invoke-direct {p0, v4}, Lcom/google/android/gm/template/Parser;->peekExpectedToken(Lcom/google/android/gm/template/Token$Type;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, symbol:Ljava/lang/String;
    const-string v4, "|"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "}"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v4, v0

    .line 353
    goto :goto_0

    .line 357
    :cond_2
    sget-object v4, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v5, "?"

    invoke-direct {p0, v4, v5}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseComparisonExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v3

    .line 359
    .local v3, trueExpression:Lcom/google/android/gm/template/Expression;
    sget-object v4, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v5, ":"

    invoke-direct {p0, v4, v5}, Lcom/google/android/gm/template/Parser;->skipExpectedToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseComparisonExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v1

    .line 362
    .local v1, falseExpression:Lcom/google/android/gm/template/Expression;
    new-instance v4, Lcom/google/android/gm/template/Ternary;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gm/template/Ternary;-><init>(Lcom/google/android/gm/template/Expression;Lcom/google/android/gm/template/Expression;Lcom/google/android/gm/template/Expression;)V

    goto :goto_0
.end method

.method parseUnaryExpression()Lcom/google/android/gm/template/Expression;
    .locals 2

    .prologue
    .line 404
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v1, "-"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/template/Parser;->skipOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Lcom/google/android/gm/template/UnaryMinus;

    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseAtomicExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gm/template/UnaryMinus;-><init>(Lcom/google/android/gm/template/Expression;)V

    .line 412
    :goto_0
    return-object v0

    .line 407
    :cond_0
    sget-object v0, Lcom/google/android/gm/template/Token$Type;->SYMBOL:Lcom/google/android/gm/template/Token$Type;

    const-string v1, "!"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/template/Parser;->skipOptionalToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    new-instance v0, Lcom/google/android/gm/template/UnaryNot;

    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseAtomicExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gm/template/UnaryNot;-><init>(Lcom/google/android/gm/template/Expression;)V

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/template/Parser;->parseAtomicExpression()Lcom/google/android/gm/template/Expression;

    move-result-object v0

    goto :goto_0
.end method
