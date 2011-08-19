.class public Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "SessionExpiresParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
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
    .line 66
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Session-Expires: 30\n"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "Session-Expires: 45;refresher=uac\n"

    aput-object v5, v2, v4

    .line 71
    .local v2, to:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v4, v2

    if-ge v0, v4, :cond_7f

    .line 72
    new-instance v3, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;

    aget-object v4, v2, v0

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, tp:Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/extensions/SessionExpires;

    .line 74
    .local v1, t:Lgov/nist/javax/sip/header/extensions/SessionExpires;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/SessionExpires;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ntime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/SessionExpires;->getExpires()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    const-string v4, "refresher"

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/extensions/SessionExpires;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7c

    .line 77
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refresher="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "refresher"

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/extensions/SessionExpires;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 80
    .end local v1           #t:Lgov/nist/javax/sip/header/extensions/SessionExpires;
    .end local v3           #tp:Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;
    :cond_7f
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v3, Lgov/nist/javax/sip/header/extensions/SessionExpires;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/extensions/SessionExpires;-><init>()V

    .line 38
    .local v3, se:Lgov/nist/javax/sip/header/extensions/SessionExpires;
    sget-boolean v4, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->debug:Z

    if-eqz v4, :cond_e

    .line 39
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->dbg_enter(Ljava/lang/String;)V

    .line 41
    :cond_e
    const/16 v4, 0x855

    :try_start_10
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->headerName(I)V

    .line 43
    iget-object v4, p0, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_3b

    move-result-object v2

    .line 46
    .local v2, nextId:Ljava/lang/String;
    :try_start_19
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, delta:I
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/extensions/SessionExpires;->setExpires(I)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_20} :catch_32
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_19 .. :try_end_20} :catch_46

    .line 54
    :try_start_20
    iget-object v4, p0, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 55
    invoke-super {p0, v3}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_3b

    .line 59
    sget-boolean v4, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->debug:Z

    if-eqz v4, :cond_31

    .line 60
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->dbg_leave(Ljava/lang/String;)V

    .line 56
    :cond_31
    return-object v3

    .line 48
    .end local v0           #delta:I
    :catch_32
    move-exception v4

    move-object v1, v4

    .line 49
    .local v1, ex:Ljava/lang/NumberFormatException;
    :try_start_34
    const-string v4, "bad integer format"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3b

    .line 59
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .end local v2           #nextId:Ljava/lang/String;
    :catchall_3b
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->debug:Z

    if-eqz v5, :cond_45

    .line 60
    const-string v5, "parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->dbg_leave(Ljava/lang/String;)V

    .line 59
    :cond_45
    throw v4

    .line 50
    .restart local v2       #nextId:Ljava/lang/String;
    :catch_46
    move-exception v4

    move-object v1, v4

    .line 51
    .local v1, ex:Ljavax/sip/InvalidArgumentException;
    :try_start_48
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_3b
.end method
