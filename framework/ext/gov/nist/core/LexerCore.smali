.class public Lgov/nist/core/LexerCore;
.super Lgov/nist/core/StringTokenizer;
.source "LexerCore.java"


# static fields
.field public static final ALPHA:I = 0x1003

.field static final ALPHADIGIT_VALID_CHARS:C = '\ufffd'

.field static final ALPHA_VALID_CHARS:C = '\uffff'

.field public static final AND:I = 0x26

.field public static final AT:I = 0x40

.field public static final BACKSLASH:I = 0x5c

.field public static final BACK_QUOTE:I = 0x60

.field public static final BAR:I = 0x7c

.field public static final COLON:I = 0x3a

.field public static final DIGIT:I = 0x1002

.field static final DIGIT_VALID_CHARS:C = '\ufffe'

.field public static final DOLLAR:I = 0x24

.field public static final DOT:I = 0x2e

.field public static final DOUBLEQUOTE:I = 0x22

.field public static final END:I = 0x1000

.field public static final EQUALS:I = 0x3d

.field public static final EXCLAMATION:I = 0x21

.field public static final GREATER_THAN:I = 0x3e

.field public static final HAT:I = 0x5e

.field public static final HT:I = 0x9

.field public static final ID:I = 0xfff

.field public static final LESS_THAN:I = 0x3c

.field public static final LPAREN:I = 0x28

.field public static final L_CURLY:I = 0x7b

.field public static final L_SQUARE_BRACKET:I = 0x5b

.field public static final MINUS:I = 0x2d

.field public static final NULL:I = 0x0

.field public static final PERCENT:I = 0x25

.field public static final PLUS:I = 0x2b

.field public static final POUND:I = 0x23

.field public static final QUESTION:I = 0x3f

.field public static final QUOTE:I = 0x27

.field public static final RPAREN:I = 0x29

.field public static final R_CURLY:I = 0x7d

.field public static final R_SQUARE_BRACKET:I = 0x5d

.field public static final SAFE:I = 0xffe

.field public static final SEMICOLON:I = 0x3b

.field public static final SLASH:I = 0x2f

.field public static final SP:I = 0x20

.field public static final STAR:I = 0x2a

.field public static final START:I = 0x800

.field public static final TILDE:I = 0x7e

.field public static final UNDERSCORE:I = 0x5f

.field public static final WHITESPACE:I = 0x1001

.field protected static final globalSymbolTable:Ljava/util/Hashtable;

.field protected static final lexerTables:Ljava/util/Hashtable;


# instance fields
.field protected currentLexer:Ljava/util/Hashtable;

.field protected currentLexerName:Ljava/lang/String;

.field protected currentMatch:Lgov/nist/core/Token;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    .line 93
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    .line 94
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Lgov/nist/core/StringTokenizer;-><init>()V

    .line 130
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 131
    const-string v0, "charLexer"

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "lexerName"
    .parameter "buffer"

    .prologue
    .line 137
    invoke-direct {p0, p2}, Lgov/nist/core/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public static charAsString(C)Ljava/lang/String;
    .registers 2
    .parameter "ch"

    .prologue
    .line 646
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isTokenChar(C)Z
    .registers 3
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 300
    invoke-static {p0}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 315
    :goto_8
    return v0

    .line 301
    :cond_9
    sparse-switch p0, :sswitch_data_10

    .line 315
    const/4 v0, 0x0

    goto :goto_8

    :sswitch_e
    move v0, v1

    .line 313
    goto :goto_8

    .line 301
    :sswitch_data_10
    .sparse-switch
        0x21 -> :sswitch_e
        0x25 -> :sswitch_e
        0x27 -> :sswitch_e
        0x2a -> :sswitch_e
        0x2b -> :sswitch_e
        0x2d -> :sswitch_e
        0x2e -> :sswitch_e
        0x5f -> :sswitch_e
        0x60 -> :sswitch_e
        0x7e -> :sswitch_e
    .end sparse-switch
.end method


# virtual methods
.method public SPorHT()V
    .registers 3

    .prologue
    .line 279
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 280
    .local v0, c:C
    :goto_5
    const/16 v1, 0x20

    if-eq v0, v1, :cond_d

    const/16 v1, 0x9

    if-ne v0, v1, :cond_18

    .line 281
    :cond_d
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 282
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_15
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_15} :catch_17

    move-result v0

    goto :goto_5

    .line 284
    .end local v0           #c:C
    :catch_17
    move-exception v1

    .line 287
    :cond_18
    return-void
.end method

.method protected addKeyword(Ljava/lang/String;I)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    .local v0, val:Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 102
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_16
    return-void
.end method

.method protected addLexer(Ljava/lang/String;)Ljava/util/Hashtable;
    .registers 4
    .parameter "lexerName"

    .prologue
    .line 115
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 116
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    if-nez v0, :cond_1c

    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 118
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1c
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    return-object v0
.end method

.method public byteStringNoComma()Ljava/lang/String;
    .registers 4

    .prologue
    .line 629
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 632
    .local v1, retval:Ljava/lang/StringBuffer;
    :goto_5
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_9} :catch_1f

    move-result v0

    .line 633
    .local v0, next:C
    const/16 v2, 0xa

    if-eq v0, v2, :cond_12

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_17

    .line 642
    .end local v0           #next:C
    :cond_12
    :goto_12
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 636
    .restart local v0       #next:C
    :cond_17
    const/4 v2, 0x1

    :try_start_18
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 637
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1e
    .catch Ljava/text/ParseException; {:try_start_18 .. :try_end_1e} :catch_1f

    goto :goto_5

    .line 640
    .end local v0           #next:C
    :catch_1f
    move-exception v2

    goto :goto_12
.end method

.method public byteStringNoSemicolon()Ljava/lang/String;
    .registers 5

    .prologue
    .line 582
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 585
    .local v2, retval:Ljava/lang/StringBuffer;
    :goto_5
    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_9} :catch_25

    move-result v1

    .line 587
    .local v1, next:C
    if-eqz v1, :cond_18

    const/16 v3, 0xa

    if-eq v1, v3, :cond_18

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_18

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_1d

    .line 597
    :cond_18
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1           #next:C
    :goto_1c
    return-object v3

    .line 590
    .restart local v1       #next:C
    :cond_1d
    const/4 v3, 0x1

    :try_start_1e
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 591
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_24
    .catch Ljava/text/ParseException; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_5

    .line 594
    .end local v1           #next:C
    :catch_25
    move-exception v3

    move-object v0, v3

    .line 595
    .local v0, ex:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1c
.end method

.method public byteStringNoSlash()Ljava/lang/String;
    .registers 5

    .prologue
    .line 606
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 609
    .local v2, retval:Ljava/lang/StringBuffer;
    :goto_5
    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_9} :catch_21

    move-result v1

    .line 611
    .local v1, next:C
    if-eqz v1, :cond_14

    const/16 v3, 0xa

    if-eq v1, v3, :cond_14

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_19

    .line 621
    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1           #next:C
    :goto_18
    return-object v3

    .line 614
    .restart local v1       #next:C
    :cond_19
    const/4 v3, 0x1

    :try_start_1a
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 615
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_20
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_20} :catch_21

    goto :goto_5

    .line 618
    .end local v1           #next:C
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 619
    .local v0, ex:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_18
.end method

.method public charAsString(I)Ljava/lang/String;
    .registers 5
    .parameter "nchars"

    .prologue
    .line 653
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/LexerCore;->ptr:I

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public comment()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 551
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 552
    .local v1, retval:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_10

    .line 553
    const/4 v2, 0x0

    .line 575
    :goto_f
    return-object v2

    .line 554
    :cond_10
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 556
    :goto_14
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    .line 557
    .local v0, next:C
    const/16 v2, 0x29

    if-ne v0, v2, :cond_21

    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 559
    :cond_21
    if-nez v0, :cond_40

    .line 560
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 563
    :cond_40
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_6e

    .line 564
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 565
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    .line 566
    if-nez v0, :cond_6a

    .line 567
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 570
    :cond_6a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 572
    :cond_6e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_14
.end method

.method public consumeValidChars([C)V
    .registers 10
    .parameter "validChars"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 485
    array-length v4, p1

    .line 487
    .local v4, validCharsLength:I
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 488
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 489
    .local v2, nextChar:C
    const/4 v1, 0x0

    .line 490
    .local v1, isValid:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v4, :cond_1c

    .line 491
    aget-char v3, p1, v0

    .line 492
    .local v3, validChar:C
    packed-switch v3, :pswitch_data_3a

    .line 503
    if-ne v2, v3, :cond_34

    move v1, v7

    .line 505
    :goto_1a
    if-eqz v1, :cond_36

    .line 509
    .end local v3           #validChar:C
    :cond_1c
    if-eqz v1, :cond_24

    .line 510
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_3

    .line 516
    .end local v0           #i:I
    .end local v1           #isValid:Z
    .end local v2           #nextChar:C
    :catch_23
    move-exception v5

    .line 519
    :cond_24
    return-void

    .line 494
    .restart local v0       #i:I
    .restart local v1       #isValid:Z
    .restart local v2       #nextChar:C
    .restart local v3       #validChar:C
    :pswitch_25
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v1

    .line 495
    goto :goto_1a

    .line 497
    :pswitch_2a
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v1

    .line 498
    goto :goto_1a

    .line 500
    :pswitch_2f
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_32} :catch_23

    move-result v1

    .line 501
    goto :goto_1a

    :cond_34
    move v1, v6

    .line 503
    goto :goto_1a

    .line 490
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 492
    nop

    :pswitch_data_3a
    .packed-switch 0xfffd
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
    .end packed-switch
.end method

.method public createParseException()Ljava/text/ParseException;
    .registers 4

    .prologue
    .line 759
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    return-object v0
.end method

.method public getNextId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextToken()Lgov/nist/core/Token;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object v0
.end method

.method public getPtr()I
    .registers 2

    .prologue
    .line 747
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    return v0
.end method

.method public getRest()Ljava/lang/String;
    .registers 3

    .prologue
    .line 701
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 702
    const/4 v0, 0x0

    .line 704
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getString(C)Ljava/lang/String;
    .registers 8
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 712
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 714
    .local v2, retval:Ljava/lang/StringBuffer;
    :goto_7
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 718
    .local v0, next:C
    if-nez v0, :cond_2a

    .line 719
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unexpected EOL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 722
    :cond_2a
    if-ne v0, p1, :cond_34

    .line 723
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 741
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 725
    :cond_34
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_65

    .line 726
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 727
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 728
    .local v1, nextchar:C
    if-nez v1, :cond_5e

    .line 729
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unexpected EOL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 733
    :cond_5e
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 734
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 737
    .end local v1           #nextchar:C
    :cond_65
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 738
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7
.end method

.method public lookupToken(I)Ljava/lang/String;
    .registers 5
    .parameter "value"

    .prologue
    .line 106
    const/16 v1, 0x800

    if-le p1, v1, :cond_12

    .line 107
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    .line 110
    :goto_11
    return-object v1

    .line 109
    .restart local p0
    :cond_12
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 110
    .local v0, ch:Ljava/lang/Character;
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method public markInputPosition()I
    .registers 2

    .prologue
    .line 687
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    return v0
.end method

.method public match(I)Lgov/nist/core/Token;
    .registers 14
    .parameter "tok"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1000

    const/16 v10, 0xfff

    const/16 v9, 0xffe

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 205
    sget-boolean v5, Lgov/nist/core/Debug;->parserDebug:Z

    if-eqz v5, :cond_22

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 208
    :cond_22
    const/16 v5, 0x800

    if-le p1, v5, :cond_e6

    if-ge p1, v11, :cond_e6

    .line 209
    if-ne p1, v10, :cond_63

    .line 211
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v5

    if-nez v5, :cond_4d

    .line 212
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nID expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 213
    :cond_4d
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, id:Ljava/lang/String;
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 215
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v2, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 216
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput v10, v5, Lgov/nist/core/Token;->tokenType:I

    .line 274
    .end local v2           #id:Ljava/lang/String;
    :cond_60
    :goto_60
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object v5

    .line 217
    :cond_63
    if-ne p1, v9, :cond_9c

    .line 218
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsSafeToken()Z

    move-result v5

    if-nez v5, :cond_88

    .line 219
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nID expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 220
    :cond_88
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2       #id:Ljava/lang/String;
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 222
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v2, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 223
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput v9, v5, Lgov/nist/core/Token;->tokenType:I

    goto :goto_60

    .line 225
    .end local v2           #id:Ljava/lang/String;
    :cond_9c
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, nexttok:Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 228
    .local v1, cur:Ljava/lang/Integer;
    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_d5

    .line 229
    :cond_b4
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nUnexpected Token : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 232
    :cond_d5
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 233
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v4, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 234
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    goto/16 :goto_60

    .line 236
    .end local v1           #cur:Ljava/lang/Integer;
    .end local v4           #nexttok:Ljava/lang/String;
    :cond_e6
    if-le p1, v11, :cond_16a

    .line 238
    invoke-virtual {p0, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 239
    .local v3, next:C
    const/16 v5, 0x1002

    if-ne p1, v5, :cond_12b

    .line 240
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_113

    .line 241
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nExpecting DIGIT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 242
    :cond_113
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 243
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 245
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    .line 246
    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_60

    .line 248
    :cond_12b
    const/16 v5, 0x1003

    if-ne p1, v5, :cond_60

    .line 249
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v5

    if-nez v5, :cond_152

    .line 250
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nExpecting ALPHA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 251
    :cond_152
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 252
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 254
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    .line 255
    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_60

    .line 261
    .end local v3           #next:C
    :cond_16a
    int-to-char v0, p1

    .line 262
    .local v0, ch:C
    invoke-virtual {p0, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 263
    .restart local v3       #next:C
    if-ne v3, v0, :cond_176

    .line 268
    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_60

    .line 270
    :cond_176
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nExpecting  >>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<<< got >>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<<<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5
.end method

.method public number()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 662
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 664
    .local v2, startIdx:I
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 665
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Unexpected token at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_33
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_33} :catch_33

    .line 678
    :catch_33
    move-exception v3

    move-object v0, v3

    .line 679
    .local v0, ex:Ljava/text/ParseException;
    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v0           #ex:Ljava/text/ParseException;
    :goto_3d
    return-object v3

    .line 669
    :cond_3e
    const/4 v3, 0x1

    :try_start_3f
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 671
    :goto_42
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 672
    .local v1, next:C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 673
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_42

    .line 677
    :cond_52
    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_59
    .catch Ljava/text/ParseException; {:try_start_3f .. :try_end_59} :catch_33

    move-result-object v3

    goto :goto_3d
.end method

.method public peekNextId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 145
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 146
    .local v0, oldPtr:I
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, retval:Ljava/lang/String;
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    iput v2, p0, Lgov/nist/core/LexerCore;->savedPtr:I

    .line 148
    iput v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 149
    return-object v1
.end method

.method public peekNextToken()Lgov/nist/core/Token;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekNextToken(I)[Lgov/nist/core/Token;
    .registers 11
    .parameter "ntokens"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 171
    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 172
    .local v4, old:I
    new-array v5, p1, [Lgov/nist/core/Token;

    .line 173
    .local v5, retval:[Lgov/nist/core/Token;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, p1, :cond_5f

    .line 174
    new-instance v6, Lgov/nist/core/Token;

    invoke-direct {v6}, Lgov/nist/core/Token;-><init>()V

    .line 175
    .local v6, tok:Lgov/nist/core/Token;
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 176
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, id:Ljava/lang/String;
    iput-object v1, v6, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, idUppercase:Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 180
    iget-object v8, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 181
    .local v7, type:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    .line 194
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #idUppercase:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/Integer;
    :goto_32
    aput-object v6, v5, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 183
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #idUppercase:Ljava/lang/String;
    :cond_37
    const/16 v8, 0xfff

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_32

    .line 185
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #idUppercase:Ljava/lang/String;
    :cond_3c
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v3

    .line 186
    .local v3, nextChar:C
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 187
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 188
    const/16 v8, 0x1003

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_32

    .line 189
    :cond_51
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 190
    const/16 v8, 0x1002

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_32

    .line 192
    :cond_5c
    iput v3, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_32

    .line 196
    .end local v3           #nextChar:C
    .end local v6           #tok:Lgov/nist/core/Token;
    :cond_5f
    iget v8, p0, Lgov/nist/core/LexerCore;->ptr:I

    iput v8, p0, Lgov/nist/core/LexerCore;->savedPtr:I

    .line 197
    iput v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 198
    return-object v5
.end method

.method public quotedString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    const/4 v4, 0x1

    .line 526
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    add-int/lit8 v1, v2, 0x1

    .line 527
    .local v1, startIdx:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v3, :cond_10

    .line 528
    const/4 v2, 0x0

    .line 543
    :goto_f
    return-object v2

    .line 529
    :cond_10
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 531
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    .line 532
    .local v0, next:C
    if-ne v0, v3, :cond_23

    .line 543
    iget-object v2, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 535
    :cond_23
    if-nez v0, :cond_42

    .line 536
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 539
    :cond_42
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_13

    .line 540
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_13
.end method

.method public rewindInputPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 694
    iput p1, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 695
    return-void
.end method

.method public selectLexer(Ljava/lang/String;)V
    .registers 2
    .parameter "lexerName"

    .prologue
    .line 126
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public startsId()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 322
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 323
    .local v1, nextChar:C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_9} :catch_b

    move-result v2

    .line 325
    .end local v1           #nextChar:C
    :goto_a
    return v2

    .line 324
    :catch_b
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/text/ParseException;
    move v2, v3

    .line 325
    goto :goto_a
.end method

.method public startsSafeToken()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 332
    .local v1, nextChar:C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_a} :catch_16

    move-result v2

    if-eqz v2, :cond_f

    move v2, v4

    .line 368
    .end local v1           #nextChar:C
    :goto_e
    return v2

    .line 336
    .restart local v1       #nextChar:C
    :cond_f
    sparse-switch v1, :sswitch_data_1a

    move v2, v3

    .line 364
    goto :goto_e

    :sswitch_14
    move v2, v4

    .line 362
    goto :goto_e

    .line 367
    .end local v1           #nextChar:C
    :catch_16
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/text/ParseException;
    move v2, v3

    .line 368
    goto :goto_e

    .line 336
    :sswitch_data_1a
    .sparse-switch
        0x21 -> :sswitch_14
        0x22 -> :sswitch_14
        0x23 -> :sswitch_14
        0x24 -> :sswitch_14
        0x25 -> :sswitch_14
        0x27 -> :sswitch_14
        0x2a -> :sswitch_14
        0x2b -> :sswitch_14
        0x2d -> :sswitch_14
        0x2e -> :sswitch_14
        0x2f -> :sswitch_14
        0x3a -> :sswitch_14
        0x3b -> :sswitch_14
        0x3d -> :sswitch_14
        0x3f -> :sswitch_14
        0x40 -> :sswitch_14
        0x5b -> :sswitch_14
        0x5d -> :sswitch_14
        0x5e -> :sswitch_14
        0x5f -> :sswitch_14
        0x60 -> :sswitch_14
        0x7b -> :sswitch_14
        0x7c -> :sswitch_14
        0x7d -> :sswitch_14
        0x7e -> :sswitch_14
    .end sparse-switch
.end method

.method public ttoken()Ljava/lang/String;
    .registers 6

    .prologue
    .line 373
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 375
    .local v2, startIdx:I
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 376
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 377
    .local v1, nextChar:C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 378
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_2

    .line 384
    .end local v1           #nextChar:C
    :catch_18
    move-exception v3

    move-object v0, v3

    .line 385
    .local v0, ex:Ljava/text/ParseException;
    const/4 v3, 0x0

    .end local v0           #ex:Ljava/text/ParseException;
    :goto_1b
    return-object v3

    .line 383
    :cond_1c
    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_23
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_23} :catch_18

    move-result-object v3

    goto :goto_1b
.end method

.method public ttokenSafe()Ljava/lang/String;
    .registers 7

    .prologue
    .line 431
    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 433
    .local v3, startIdx:I
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 434
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 435
    .local v2, nextChar:C
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 436
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_2

    .line 476
    .end local v2           #nextChar:C
    :catch_18
    move-exception v4

    move-object v0, v4

    .line 477
    .local v0, ex:Ljava/text/ParseException;
    const/4 v4, 0x0

    .end local v0           #ex:Ljava/text/ParseException;
    :goto_1b
    return-object v4

    .line 439
    .restart local v2       #nextChar:C
    :cond_1c
    const/4 v1, 0x0

    .line 440
    .local v1, isValidChar:Z
    sparse-switch v2, :sswitch_data_32

    .line 467
    :goto_20
    if-eqz v1, :cond_29

    .line 468
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_2

    .line 465
    :sswitch_27
    const/4 v1, 0x1

    goto :goto_20

    .line 475
    .end local v1           #isValidChar:Z
    .end local v2           #nextChar:C
    :cond_29
    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_30
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_30} :catch_18

    move-result-object v4

    goto :goto_1b

    .line 440
    :sswitch_data_32
    .sparse-switch
        0x21 -> :sswitch_27
        0x22 -> :sswitch_27
        0x23 -> :sswitch_27
        0x24 -> :sswitch_27
        0x25 -> :sswitch_27
        0x27 -> :sswitch_27
        0x2a -> :sswitch_27
        0x2b -> :sswitch_27
        0x2d -> :sswitch_27
        0x2e -> :sswitch_27
        0x2f -> :sswitch_27
        0x3a -> :sswitch_27
        0x3b -> :sswitch_27
        0x3f -> :sswitch_27
        0x40 -> :sswitch_27
        0x5b -> :sswitch_27
        0x5d -> :sswitch_27
        0x5e -> :sswitch_27
        0x5f -> :sswitch_27
        0x60 -> :sswitch_27
        0x7b -> :sswitch_27
        0x7c -> :sswitch_27
        0x7d -> :sswitch_27
        0x7e -> :sswitch_27
    .end sparse-switch
.end method
