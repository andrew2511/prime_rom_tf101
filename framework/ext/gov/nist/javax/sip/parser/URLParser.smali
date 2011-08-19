.class public Lgov/nist/javax/sip/parser/URLParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "URLParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 4
    .parameter "lexer"

    .prologue
    .line 54
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 55
    iput-object p1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    .line 56
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "sip_urlLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 49
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 50
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "sip_urlLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    .line 51
    return-void
.end method

.method private base_phone_number()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    .local v1, s:Ljava/lang/StringBuffer;
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_e

    .line 377
    const-string v3, "base_phone_number"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 379
    :cond_e
    const/4 v0, 0x0

    .line 380
    .local v0, lc:I
    :goto_f
    :try_start_f
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 381
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 382
    .local v2, w:C
    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_34

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_34

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_34

    const/16 v3, 0x28

    if-eq v2, v3, :cond_34

    const/16 v3, 0x29

    if-ne v2, v3, :cond_40

    .line 387
    :cond_34
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 390
    :cond_40
    if-lez v0, :cond_50

    .line 395
    .end local v2           #w:C
    :cond_42
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_f .. :try_end_45} :catchall_68

    move-result-object v3

    .line 397
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_4f

    .line 398
    const-string v4, "base_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 395
    :cond_4f
    return-object v3

    .line 393
    .restart local v2       #w:C
    :cond_50
    :try_start_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_68

    .line 397
    .end local v2           #w:C
    :catchall_68
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_72

    .line 398
    const-string v4, "base_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 397
    :cond_72
    throw v3
.end method

.method private final global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .registers 8
    .parameter "inBrackets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 474
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_9

    .line 475
    const-string v4, "global_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 477
    :cond_9
    :try_start_9
    new-instance v2, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    .line 478
    .local v2, tn:Lgov/nist/javax/sip/address/TelephoneNumber;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, nv:Lgov/nist/core/NameValueList;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 481
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, b:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 484
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 485
    .local v3, tok:C
    const/16 v4, 0x3b

    if-ne v3, v4, :cond_43

    if-eqz p1, :cond_43

    .line 486
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 487
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    move-result-object v1

    .line 488
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_4d

    .line 493
    .end local v3           #tok:C
    :cond_43
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_4c

    .line 494
    const-string v4, "global_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 491
    :cond_4c
    return-object v2

    .line 493
    .end local v0           #b:Ljava/lang/String;
    .end local v1           #nv:Lgov/nist/core/NameValueList;
    .end local v2           #tn:Lgov/nist/javax/sip/address/TelephoneNumber;
    :catchall_4d
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_57

    .line 494
    const-string v5, "global_phone_number"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 493
    :cond_57
    throw v4
.end method

.method protected static isMark(C)Z
    .registers 2
    .parameter "next"

    .prologue
    .line 59
    sparse-switch p0, :sswitch_data_8

    .line 71
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 69
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 59
    nop

    :sswitch_data_8
    .sparse-switch
        0x21 -> :sswitch_5
        0x27 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2d -> :sswitch_5
        0x2e -> :sswitch_5
        0x5f -> :sswitch_5
        0x7e -> :sswitch_5
    .end sparse-switch
.end method

.method protected static isReserved(C)Z
    .registers 2
    .parameter "next"

    .prologue
    .line 177
    sparse-switch p0, :sswitch_data_8

    .line 190
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 188
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 177
    nop

    :sswitch_data_8
    .sparse-switch
        0x24 -> :sswitch_5
        0x26 -> :sswitch_5
        0x2b -> :sswitch_5
        0x2c -> :sswitch_5
        0x2f -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x3f -> :sswitch_5
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method protected static isReservedNoSlash(C)Z
    .registers 2
    .parameter "next"

    .prologue
    .line 80
    sparse-switch p0, :sswitch_data_8

    .line 91
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 89
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 80
    nop

    :sswitch_data_8
    .sparse-switch
        0x24 -> :sswitch_5
        0x26 -> :sswitch_5
        0x2b -> :sswitch_5
        0x2c -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3f -> :sswitch_5
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method protected static isUnreserved(C)Z
    .registers 2
    .parameter "next"

    .prologue
    .line 76
    invoke-static {p0}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lgov/nist/javax/sip/parser/URLParser;->isMark(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected static isUserUnreserved(C)Z
    .registers 2
    .parameter "la"

    .prologue
    .line 99
    sparse-switch p0, :sswitch_data_8

    .line 111
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 109
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 99
    nop

    :sswitch_data_8
    .sparse-switch
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x26 -> :sswitch_5
        0x2b -> :sswitch_5
        0x2c -> :sswitch_5
        0x2f -> :sswitch_5
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x3f -> :sswitch_5
    .end sparse-switch
.end method

.method private local_number()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 408
    .local v2, s:Ljava/lang/StringBuffer;
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_e

    .line 409
    const-string v3, "local_number"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 411
    :cond_e
    const/4 v1, 0x0

    .line 412
    .local v1, lc:I
    :goto_f
    :try_start_f
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 413
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 414
    .local v0, la:C
    const/16 v3, 0x2a

    if-eq v0, v3, :cond_3c

    const/16 v3, 0x23

    if-eq v0, v3, :cond_3c

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_3c

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_3c

    const/16 v3, 0x28

    if-eq v0, v3, :cond_3c

    const/16 v3, 0x29

    if-eq v0, v3, :cond_3c

    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 422
    :cond_3c
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 423
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 425
    :cond_48
    if-lez v1, :cond_58

    .line 430
    .end local v0           #la:C
    :cond_4a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_70

    move-result-object v3

    .line 432
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_57

    .line 433
    const-string v4, "local_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 430
    :cond_57
    return-object v3

    .line 428
    .restart local v0       #la:C
    :cond_58
    :try_start_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexepcted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_70

    .line 432
    .end local v0           #la:C
    :catchall_70
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_7a

    .line 433
    const-string v4, "local_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 432
    :cond_7a
    throw v3
.end method

.method private local_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .registers 8
    .parameter "inBrackets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 499
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_9

    .line 500
    const-string v4, "local_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 501
    :cond_9
    new-instance v2, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    .line 502
    .local v2, tn:Lgov/nist/javax/sip/address/TelephoneNumber;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, nv:Lgov/nist/core/NameValueList;
    const/4 v0, 0x0

    .line 506
    .local v0, b:Ljava/lang/String;
    :try_start_14
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->local_number()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 508
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 509
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 510
    .local v3, tok:Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_4a

    move-result v4

    packed-switch v4, :pswitch_data_56

    .line 527
    .end local v3           #tok:Lgov/nist/core/Token;
    :cond_30
    :goto_30
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_39

    .line 528
    const-string v4, "local_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 530
    :cond_39
    return-object v2

    .line 513
    .restart local v3       #tok:Lgov/nist/core/Token;
    :pswitch_3a
    if-eqz p1, :cond_30

    .line 514
    :try_start_3c
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 515
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    move-result-object v1

    .line 516
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_4a

    goto :goto_30

    .line 527
    .end local v3           #tok:Lgov/nist/core/Token;
    :catchall_4a
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_54

    .line 528
    const-string v5, "local_phone_number"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 527
    :cond_54
    throw v4

    .line 510
    nop

    :pswitch_data_56
    .packed-switch 0x3b
        :pswitch_3a
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 814
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sip:alice@example.com"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "sips:alice@examples.com"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "sip:3Zqkv5dajqaaas0tCjCxT0xH2ZEuEMsFl0xoasip%3A%2B3519116786244%40siplab.domain.com@213.0.115.163:7070"

    aput-object v5, v2, v4

    .line 818
    .local v2, test:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    array-length v4, v2

    if-ge v0, v4, :cond_74

    .line 820
    new-instance v1, Lgov/nist/javax/sip/parser/URLParser;

    aget-object v4, v2, v0

    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    .line 822
    .local v1, p:Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/URLParser;->parse()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    .line 823
    .local v3, uri:Lgov/nist/javax/sip/address/GenericURI;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri type returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 824
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is SipUri? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/GenericURI;->isSipURI()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 827
    .end local v1           #p:Lgov/nist/javax/sip/parser/URLParser;
    .end local v3           #uri:Lgov/nist/javax/sip/address/GenericURI;
    :cond_74
    return-void
.end method

.method private phone_context()Lgov/nist/core/NameValue;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 570
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 572
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 574
    .local v0, la:C
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_37

    .line 575
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, value:Ljava/lang/String;
    :goto_2f
    new-instance v3, Lgov/nist/core/NameValue;

    const-string v4, "phone-context"

    invoke-direct {v3, v4, v2, v5}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v3

    .line 577
    .end local v2           #value:Ljava/lang/String;
    :cond_37
    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 578
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-result-object v1

    .line 579
    .local v1, t:Lgov/nist/core/Token;
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    .line 580
    .restart local v2       #value:Ljava/lang/String;
    goto :goto_2f

    .line 581
    .end local v1           #t:Lgov/nist/core/Token;
    .end local v2           #value:Ljava/lang/String;
    :cond_4a
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phone-context:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private tel_parameters()Lgov/nist/core/NameValueList;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 534
    new-instance v1, Lgov/nist/core/NameValueList;

    invoke-direct {v1}, Lgov/nist/core/NameValueList;-><init>()V

    .line 540
    .local v1, nvList:Lgov/nist/core/NameValueList;
    :goto_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, pname:Ljava/lang/String;
    const-string v4, "phone-context"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 544
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->phone_context()Lgov/nist/core/NameValue;

    move-result-object v0

    .line 554
    .local v0, nv:Lgov/nist/core/NameValue;
    :goto_17
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 556
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_4b

    .line 557
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_7

    .line 546
    .end local v0           #nv:Lgov/nist/core/NameValue;
    :cond_2a
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_43

    .line 547
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 548
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, value:Ljava/lang/String;
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, v2, v3, v6}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 550
    .restart local v0       #nv:Lgov/nist/core/NameValue;
    goto :goto_17

    .line 551
    .end local v0           #nv:Lgov/nist/core/NameValue;
    .end local v3           #value:Ljava/lang/String;
    :cond_43
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v4, ""

    invoke-direct {v0, v2, v4, v7}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .restart local v0       #nv:Lgov/nist/core/NameValue;
    goto :goto_17

    .line 559
    :cond_4b
    return-object v1
.end method

.method private uriParam()Lgov/nist/core/NameValue;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 153
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_9

    .line 154
    const-string v4, "uriParam"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 156
    :cond_9
    :try_start_9
    const-string v3, ""

    .line 157
    .local v3, pvalue:Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, pname:Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 159
    .local v1, next:C
    const/4 v0, 0x1

    .line 160
    .local v0, isFlagParam:Z
    const/16 v4, 0x3d

    if-ne v1, v4, :cond_26

    .line 161
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 162
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v3

    .line 163
    const/4 v0, 0x0

    .line 165
    :cond_26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3f

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_4b

    move-result v4

    if-nez v4, :cond_3f

    .line 168
    :cond_34
    const/4 v4, 0x0

    .line 171
    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_3e

    .line 172
    const-string v5, "uriParam"

    :goto_3b
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 169
    :cond_3e
    return-object v4

    :cond_3f
    :try_start_3f
    new-instance v4, Lgov/nist/core/NameValue;

    invoke-direct {v4, v2, v3, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4b

    .line 171
    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_3e

    .line 172
    const-string v5, "uriParam"

    goto :goto_3b

    .line 171
    .end local v0           #isFlagParam:Z
    .end local v1           #next:C
    .end local v2           #pname:Ljava/lang/String;
    .end local v3           #pvalue:Ljava/lang/String;
    :catchall_4b
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_55

    .line 172
    const-string v5, "uriParam"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 171
    :cond_55
    throw v4
.end method


# virtual methods
.method protected escaped()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 214
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_9

    .line 215
    const-string v4, "escaped"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 217
    :cond_9
    :try_start_9
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v3, retval:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 219
    .local v0, next:C
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 220
    .local v1, next1:C
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 221
    .local v2, next2:C
    const/16 v4, 0x25

    if-ne v0, v4, :cond_50

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 224
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 225
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_57

    move-result-object v4

    .line 232
    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_4f

    .line 233
    const-string v5, "escaped"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 230
    :cond_4f
    return-object v4

    .line 229
    :cond_50
    :try_start_50
    const-string v4, "escaped"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_57

    .line 232
    .end local v0           #next:C
    .end local v1           #next1:C
    .end local v2           #next2:C
    .end local v3           #retval:Ljava/lang/StringBuffer;
    :catchall_57
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_61

    .line 233
    const-string v5, "escaped"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 232
    :cond_61
    throw v4
.end method

.method protected hvalue()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 696
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 697
    .local v2, retval:Ljava/lang/StringBuffer;
    :goto_5
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 698
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 700
    .local v1, la:C
    const/4 v0, 0x0

    .line 701
    .local v0, isValidChar:Z
    sparse-switch v1, :sswitch_data_3e

    .line 720
    :goto_18
    if-nez v0, :cond_20

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 721
    :cond_20
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 722
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 718
    :sswitch_2a
    const/4 v0, 0x1

    goto :goto_18

    .line 723
    :cond_2c
    const/16 v3, 0x25

    if-ne v1, v3, :cond_38

    .line 724
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->escaped()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 728
    .end local v0           #isValidChar:Z
    .end local v1           #la:C
    :cond_38
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 701
    nop

    :sswitch_data_3e
    .sparse-switch
        0x21 -> :sswitch_2a
        0x22 -> :sswitch_2a
        0x24 -> :sswitch_2a
        0x28 -> :sswitch_2a
        0x29 -> :sswitch_2a
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2a
        0x2d -> :sswitch_2a
        0x2e -> :sswitch_2a
        0x2f -> :sswitch_2a
        0x3a -> :sswitch_2a
        0x3f -> :sswitch_2a
        0x5b -> :sswitch_2a
        0x5d -> :sswitch_2a
        0x5f -> :sswitch_2a
        0x7e -> :sswitch_2a
    .end sparse-switch
.end method

.method protected isEscaped()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    :try_start_2
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_2b

    move-result v1

    if-eqz v1, :cond_29

    move v1, v4

    .line 209
    :goto_28
    return v1

    :cond_29
    move v1, v3

    .line 205
    goto :goto_28

    .line 208
    :catch_2b
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/Exception;
    move v1, v3

    .line 209
    goto :goto_28
.end method

.method protected mark()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 238
    sget-boolean v1, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v1, :cond_9

    .line 239
    const-string v1, "mark"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 241
    :cond_9
    :try_start_9
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 242
    .local v0, next:C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isMark(C)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 243
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 244
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v0, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_38

    .line 248
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_30

    .line 249
    const-string v2, "mark"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 244
    :cond_30
    return-object v1

    .line 246
    :cond_31
    :try_start_31
    const-string v1, "mark"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_38

    .line 248
    .end local v0           #next:C
    :catchall_38
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_42

    .line 249
    const-string v2, "mark"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 248
    :cond_42
    throw v1
.end method

.method protected paramNameOrValue()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    .line 129
    .local v2, startIdx:I
    :goto_6
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 130
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 131
    .local v1, next:C
    const/4 v0, 0x0

    .line 132
    .local v0, isValidChar:Z
    sparse-switch v1, :sswitch_data_48

    .line 142
    :goto_19
    if-nez v0, :cond_21

    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 143
    :cond_21
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_6

    .line 140
    :sswitch_28
    const/4 v0, 0x1

    goto :goto_19

    .line 144
    :cond_2a
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 145
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_6

    .line 149
    .end local v0           #isValidChar:Z
    .end local v1           #next:C
    :cond_37
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 132
    :sswitch_data_48
    .sparse-switch
        0x24 -> :sswitch_28
        0x26 -> :sswitch_28
        0x2b -> :sswitch_28
        0x2f -> :sswitch_28
        0x3a -> :sswitch_28
        0x5b -> :sswitch_28
        0x5d -> :sswitch_28
    .end sparse-switch
.end method

.method public parse()Lgov/nist/javax/sip/address/GenericURI;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 807
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public final parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .registers 6
    .parameter "inBrackets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 447
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_9

    .line 448
    const-string v2, "telephone_subscriber"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 449
    :cond_9
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v3, "charLexer"

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 451
    :try_start_10
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 452
    .local v0, c:C
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_29

    .line 453
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_64

    move-result-object v1

    .line 467
    .local v1, tn:Lgov/nist/javax/sip/address/TelephoneNumber;
    :goto_1f
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_28

    .line 468
    const-string v2, "telephone_subscriber"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 465
    :cond_28
    return-object v1

    .line 454
    .end local v1           #tn:Lgov/nist/javax/sip/address/TelephoneNumber;
    :cond_29
    :try_start_29
    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v2

    if-nez v2, :cond_47

    const/16 v2, 0x23

    if-eq v0, v2, :cond_47

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_47

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_47

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_47

    const/16 v2, 0x28

    if-eq v0, v2, :cond_47

    const/16 v2, 0x29

    if-ne v0, v2, :cond_4c

    .line 462
    :cond_47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->local_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object v1

    .restart local v1       #tn:Lgov/nist/javax/sip/address/TelephoneNumber;
    goto :goto_1f

    .line 464
    .end local v1           #tn:Lgov/nist/javax/sip/address/TelephoneNumber;
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_64
    .catchall {:try_start_29 .. :try_end_64} :catchall_64

    .line 467
    .end local v0           #c:C
    :catchall_64
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_6e

    .line 468
    const-string v3, "telephone_subscriber"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 467
    :cond_6e
    throw v2
.end method

.method protected password()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 779
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    .line 781
    .local v2, startIdx:I
    :goto_6
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 782
    .local v1, la:C
    const/4 v0, 0x0

    .line 783
    .local v0, isValidChar:Z
    sparse-switch v1, :sswitch_data_40

    .line 791
    :goto_11
    if-nez v0, :cond_19

    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 792
    :cond_19
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_6

    .line 789
    :sswitch_20
    const/4 v0, 0x1

    goto :goto_11

    .line 793
    :cond_22
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 794
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_6

    .line 800
    :cond_2f
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 783
    :sswitch_data_40
    .sparse-switch
        0x24 -> :sswitch_20
        0x26 -> :sswitch_20
        0x2b -> :sswitch_20
        0x2c -> :sswitch_20
        0x3d -> :sswitch_20
    .end sparse-switch
.end method

.method public peekScheme()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 676
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v1

    .line 677
    .local v1, tokens:[Lgov/nist/core/Token;
    array-length v2, v1

    if-nez v2, :cond_c

    .line 678
    const/4 v2, 0x0

    .line 680
    :goto_b
    return-object v2

    .line 679
    :cond_c
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    .local v0, scheme:Ljava/lang/String;
    move-object v2, v0

    .line 680
    goto :goto_b
.end method

.method protected qheader()Lgov/nist/core/NameValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 688
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 690
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->hvalue()Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, value:Ljava/lang/String;
    new-instance v2, Lgov/nist/core/NameValue;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v2
.end method

.method protected reserved()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 196
    .local v0, next:C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isReserved(C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 197
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 198
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 200
    :cond_21
    const-string v1, "reserved"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
.end method

.method public sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    .registers 15
    .parameter "inBrackets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3a

    .line 606
    sget-boolean v10, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v10, :cond_b

    .line 607
    const-string v10, "sipURL"

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 608
    :cond_b
    new-instance v5, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v5}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    .line 610
    .local v5, retval:Lgov/nist/javax/sip/address/SipUri;
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 611
    .local v2, nextToken:Lgov/nist/core/Token;
    const/16 v7, 0x803

    .line 612
    .local v7, sipOrSips:I
    const-string v6, "sip"

    .line 613
    .local v6, scheme:Ljava/lang/String;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v10

    const/16 v11, 0x858

    if-ne v10, v11, :cond_26

    .line 615
    const/16 v7, 0x858

    .line 616
    const-string v6, "sips"

    .line 620
    :cond_26
    :try_start_26
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 621
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 622
    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/address/SipUri;->setScheme(Ljava/lang/String;)V

    .line 623
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->markInputPosition()I

    move-result v8

    .line 624
    .local v8, startOfUser:I
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->user()Ljava/lang/String;

    move-result-object v9

    .line 625
    .local v9, userOrHost:Ljava/lang/String;
    const/4 v4, 0x0

    .line 628
    .local v4, passOrPort:Ljava/lang/String;
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->lookAhead()C

    move-result v10

    if-ne v10, v12, :cond_52

    .line 629
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 630
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->password()Ljava/lang/String;

    move-result-object v4

    .line 634
    :cond_52
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->lookAhead()C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_dc

    .line 635
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 636
    invoke-virtual {v5, v9}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    .line 637
    if-eqz v4, :cond_6a

    invoke-virtual {v5, v4}, Lgov/nist/javax/sip/address/SipUri;->setUserPassword(Ljava/lang/String;)V

    .line 643
    :cond_6a
    :goto_6a
    new-instance v0, Lgov/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v10

    invoke-direct {v0, v10}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    .line 644
    .local v0, hnp:Lgov/nist/core/HostNameParser;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v1

    .line 645
    .local v1, hp:Lgov/nist/core/HostPort;
    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/address/SipUri;->setHostPort(Lgov/nist/core/HostPort;)V

    .line 647
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v11, "charLexer"

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 648
    :cond_82
    :goto_82
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-eqz v10, :cond_97

    .line 650
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v10

    const/16 v11, 0x3b

    if-ne v10, v11, :cond_97

    if-nez p1, :cond_ed

    .line 657
    :cond_97
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-eqz v10, :cond_d2

    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_d2

    .line 658
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 659
    :goto_b0
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-eqz v10, :cond_d2

    .line 660
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->qheader()Lgov/nist/core/NameValue;

    move-result-object v3

    .line 661
    .local v3, parms:Lgov/nist/core/NameValue;
    invoke-virtual {v5, v3}, Lgov/nist/javax/sip/address/SipUri;->setQHeader(Lgov/nist/core/NameValue;)V

    .line 662
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-eqz v10, :cond_fd

    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_cd
    .catchall {:try_start_26 .. :try_end_cd} :catchall_e2

    move-result v10

    const/16 v11, 0x26

    if-eq v10, v11, :cond_fd

    .line 670
    .end local v3           #parms:Lgov/nist/core/NameValue;
    :cond_d2
    sget-boolean v10, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v10, :cond_db

    .line 671
    const-string v10, "sipURL"

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 668
    :cond_db
    return-object v5

    .line 640
    .end local v0           #hnp:Lgov/nist/core/HostNameParser;
    .end local v1           #hp:Lgov/nist/core/HostPort;
    :cond_dc
    :try_start_dc
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10, v8}, Lgov/nist/core/LexerCore;->rewindInputPosition(I)V
    :try_end_e1
    .catchall {:try_start_dc .. :try_end_e1} :catchall_e2

    goto :goto_6a

    .line 670
    .end local v4           #passOrPort:Ljava/lang/String;
    .end local v8           #startOfUser:I
    .end local v9           #userOrHost:Ljava/lang/String;
    :catchall_e2
    move-exception v10

    sget-boolean v11, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v11, :cond_ec

    .line 671
    const-string v11, "sipURL"

    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 670
    :cond_ec
    throw v10

    .line 652
    .restart local v0       #hnp:Lgov/nist/core/HostNameParser;
    .restart local v1       #hp:Lgov/nist/core/HostPort;
    .restart local v4       #passOrPort:Ljava/lang/String;
    .restart local v8       #startOfUser:I
    .restart local v9       #userOrHost:Ljava/lang/String;
    :cond_ed
    :try_start_ed
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 653
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->uriParam()Lgov/nist/core/NameValue;

    move-result-object v3

    .line 654
    .restart local v3       #parms:Lgov/nist/core/NameValue;
    if-eqz v3, :cond_82

    invoke-virtual {v5, v3}, Lgov/nist/javax/sip/address/SipUri;->setUriParameter(Lgov/nist/core/NameValue;)V

    goto :goto_82

    .line 665
    :cond_fd
    iget-object v10, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_103
    .catchall {:try_start_ed .. :try_end_103} :catchall_e2

    goto :goto_b0
.end method

.method public telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;
    .registers 6
    .parameter "inBrackets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x839

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 592
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 593
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object v1

    .line 594
    .local v1, tn:Lgov/nist/javax/sip/address/TelephoneNumber;
    new-instance v0, Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelURLImpl;-><init>()V

    .line 595
    .local v0, telUrl:Lgov/nist/javax/sip/address/TelURLImpl;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/TelURLImpl;->setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V

    .line 596
    return-object v0
.end method

.method protected unreserved()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 117
    .local v0, next:C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 118
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 119
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :cond_18
    const-string v1, "unreserved"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
.end method

.method public uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;
    .registers 11
    .parameter "inBrackets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3a

    .line 336
    sget-boolean v6, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v6, :cond_b

    .line 337
    const-string v6, "uriReference"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 338
    :cond_b
    const/4 v1, 0x0

    .line 339
    .local v1, retval:Lgov/nist/javax/sip/address/GenericURI;
    iget-object v6, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v4

    .line 340
    .local v4, tokens:[Lgov/nist/core/Token;
    const/4 v6, 0x0

    aget-object v2, v4, v6

    .line 341
    .local v2, t1:Lgov/nist/core/Token;
    const/4 v6, 0x1

    aget-object v3, v4, v6

    .line 344
    .local v3, t2:Lgov/nist/core/Token;
    :try_start_19
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x803

    if-eq v6, v7, :cond_29

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x858

    if-ne v6, v7, :cond_4f

    .line 346
    :cond_29
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    if-ne v6, v8, :cond_3d

    .line 347
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_44

    move-result-object v1

    .line 364
    :goto_33
    sget-boolean v6, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v6, :cond_3c

    .line 365
    const-string v6, "uriReference"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 367
    :cond_3c
    return-object v1

    .line 349
    :cond_3d
    :try_start_3d
    const-string v6, "Expecting \':\'"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_44

    .line 364
    .end local v1           #retval:Lgov/nist/javax/sip/address/GenericURI;
    :catchall_44
    move-exception v6

    sget-boolean v7, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v7, :cond_4e

    .line 365
    const-string v7, "uriReference"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 364
    :cond_4e
    throw v6

    .line 350
    .restart local v1       #retval:Lgov/nist/javax/sip/address/GenericURI;
    :cond_4f
    :try_start_4f
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x839

    if-ne v6, v7, :cond_69

    .line 351
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    if-ne v6, v8, :cond_62

    .line 352
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;

    move-result-object v1

    goto :goto_33

    .line 354
    :cond_62
    const-string v6, "Expecting \':\'"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6

    .line 356
    :cond_69
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uricString()Ljava/lang/String;
    :try_end_6c
    .catchall {:try_start_4f .. :try_end_6c} :catchall_44

    move-result-object v5

    .line 358
    .local v5, urlString:Ljava/lang/String;
    :try_start_6d
    new-instance v1, Lgov/nist/javax/sip/address/GenericURI;

    .end local v1           #retval:Lgov/nist/javax/sip/address/GenericURI;
    invoke-direct {v1, v5}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_44
    .catch Ljava/text/ParseException; {:try_start_6d .. :try_end_72} :catch_73

    .restart local v1       #retval:Lgov/nist/javax/sip/address/GenericURI;
    goto :goto_33

    .line 359
    .end local v1           #retval:Lgov/nist/javax/sip/address/GenericURI;
    :catch_73
    move-exception v6

    move-object v0, v6

    .line 360
    .local v0, ex:Ljava/text/ParseException;
    :try_start_75
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_44
.end method

.method protected uric()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 254
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_a

    .line 255
    const-string v3, "uric"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 258
    :cond_a
    :try_start_a
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 259
    .local v1, la:C
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 260
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 261
    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_6b

    move-result-object v3

    .line 275
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_2a

    .line 276
    const-string v4, "uric"

    :goto_27
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 272
    .end local v1           #la:C
    :cond_2a
    :goto_2a
    return-object v3

    .line 262
    .restart local v1       #la:C
    :cond_2b
    :try_start_2b
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isReserved(C)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 263
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 264
    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3a} :catch_6b

    move-result-object v3

    .line 275
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_2a

    .line 276
    const-string v4, "uric"

    goto :goto_27

    .line 265
    :cond_42
    :try_start_42
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 266
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->charAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, retval:Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_55} :catch_6b

    .line 275
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_5e

    .line 276
    const-string v3, "uric"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_5e
    move-object v3, v2

    .line 268
    goto :goto_2a

    .line 275
    .end local v2           #retval:Ljava/lang/String;
    :cond_60
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_69

    .line 276
    const-string v3, "uric"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_69
    move-object v3, v5

    .line 270
    goto :goto_2a

    .line 271
    .end local v1           #la:C
    :catch_6b
    move-exception v3

    move-object v0, v3

    .line 275
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_76

    .line 276
    const-string v3, "uric"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_76
    move-object v3, v5

    .line 272
    goto :goto_2a

    .line 275
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_78
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_82

    .line 276
    const-string v4, "uric"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 275
    :cond_82
    throw v3
.end method

.method protected uricNoSlash()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 282
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_a

    .line 283
    const-string v3, "uricNoSlash"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 286
    :cond_a
    :try_start_a
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 287
    .local v1, la:C
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 288
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->charAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, retval:Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_78
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_24} :catch_6b

    .line 303
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_2d

    .line 304
    const-string v3, "uricNoSlash"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2d
    move-object v3, v2

    .line 300
    .end local v1           #la:C
    .end local v2           #retval:Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-object v3

    .line 291
    .restart local v1       #la:C
    :cond_2f
    :try_start_2f
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 292
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 293
    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_78
    .catch Ljava/text/ParseException; {:try_start_2f .. :try_end_3e} :catch_6b

    move-result-object v3

    .line 303
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_2e

    .line 304
    const-string v4, "uricNoSlash"

    :goto_45
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2e

    .line 294
    :cond_49
    :try_start_49
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isReservedNoSlash(C)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 295
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 296
    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_78
    .catch Ljava/text/ParseException; {:try_start_49 .. :try_end_58} :catch_6b

    move-result-object v3

    .line 303
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_2e

    .line 304
    const-string v4, "uricNoSlash"

    goto :goto_45

    .line 303
    :cond_60
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_69

    .line 304
    const-string v3, "uricNoSlash"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_69
    move-object v3, v5

    .line 298
    goto :goto_2e

    .line 299
    .end local v1           #la:C
    :catch_6b
    move-exception v3

    move-object v0, v3

    .line 303
    .local v0, ex:Ljava/text/ParseException;
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_76

    .line 304
    const-string v3, "uricNoSlash"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_76
    move-object v3, v5

    .line 300
    goto :goto_2e

    .line 303
    .end local v0           #ex:Ljava/text/ParseException;
    :catchall_78
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_82

    .line 304
    const-string v4, "uricNoSlash"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 303
    :cond_82
    throw v3
.end method

.method protected uricString()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 309
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 311
    .local v4, retval:Ljava/lang/StringBuffer;
    :goto_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uric()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, next:Ljava/lang/String;
    if-nez v3, :cond_2b

    .line 313
    iget-object v5, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 316
    .local v2, la:C
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_2f

    .line 317
    new-instance v0, Lgov/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v5

    invoke-direct {v0, v5}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    .line 318
    .local v0, hnp:Lgov/nist/core/HostNameParser;
    invoke-virtual {v0, v6}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v1

    .line 319
    .local v1, hp:Lgov/nist/core/HostPort;
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 324
    .end local v0           #hnp:Lgov/nist/core/HostNameParser;
    .end local v1           #hp:Lgov/nist/core/HostPort;
    .end local v2           #la:C
    :cond_2b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 326
    .restart local v2       #la:C
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected urlString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 738
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 739
    .local v1, retval:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v3, "charLexer"

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 741
    :goto_d
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 742
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 744
    .local v0, la:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2f

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2f

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2f

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_2f

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_34

    .line 753
    .end local v0           #la:C
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 750
    .restart local v0       #la:C
    :cond_34
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 751
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d
.end method

.method protected user()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 757
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_9

    .line 758
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 760
    :cond_9
    :try_start_9
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v1

    .line 761
    .local v1, startIdx:I
    :goto_f
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 762
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 763
    .local v0, la:C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isUserUnreserved(C)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 764
    :cond_2a
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_31

    goto :goto_f

    .line 772
    .end local v0           #la:C
    .end local v1           #startIdx:I
    :catchall_31
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_3b

    .line 773
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 772
    :cond_3b
    throw v2

    .line 765
    .restart local v0       #la:C
    .restart local v1       #startIdx:I
    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 766
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_f

    .line 770
    .end local v0           #la:C
    :cond_49
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_31

    move-result-object v2

    .line 772
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_62

    .line 773
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 770
    :cond_62
    return-object v2
.end method
