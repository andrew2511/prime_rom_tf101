.class public Lgov/nist/javax/sip/parser/extensions/MinSEParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "MinSEParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 27
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
    .line 68
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Min-SE: 30\n"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "Min-SE: 45;some-param=somevalue\n"

    aput-object v5, v2, v4

    .line 73
    .local v2, to:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v4, v2

    if-ge v0, v4, :cond_7f

    .line 74
    new-instance v3, Lgov/nist/javax/sip/parser/extensions/MinSEParser;

    aget-object v4, v2, v0

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, tp:Lgov/nist/javax/sip/parser/extensions/MinSEParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/extensions/MinSE;

    .line 76
    .local v1, t:Lgov/nist/javax/sip/header/extensions/MinSE;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/MinSE;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ntime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/MinSE;->getExpires()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    const-string v4, "some-param"

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/extensions/MinSE;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7c

    .line 79
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "some-param="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "some-param"

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/extensions/MinSE;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 82
    .end local v1           #t:Lgov/nist/javax/sip/header/extensions/MinSE;
    .end local v3           #tp:Lgov/nist/javax/sip/parser/extensions/MinSEParser;
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
    .line 41
    new-instance v2, Lgov/nist/javax/sip/header/extensions/MinSE;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/extensions/MinSE;-><init>()V

    .line 42
    .local v2, minse:Lgov/nist/javax/sip/header/extensions/MinSE;
    sget-boolean v4, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->debug:Z

    if-eqz v4, :cond_e

    .line 43
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->dbg_enter(Ljava/lang/String;)V

    .line 45
    :cond_e
    const/16 v4, 0x856

    :try_start_10
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->headerName(I)V

    .line 47
    iget-object v4, p0, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_3b

    move-result-object v3

    .line 49
    .local v3, nextId:Ljava/lang/String;
    :try_start_19
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, delta:I
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/extensions/MinSE;->setExpires(I)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_20} :catch_32
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_19 .. :try_end_20} :catch_46

    .line 56
    :try_start_20
    iget-object v4, p0, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 57
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_3b

    .line 61
    sget-boolean v4, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->debug:Z

    if-eqz v4, :cond_31

    .line 62
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->dbg_leave(Ljava/lang/String;)V

    .line 58
    :cond_31
    return-object v2

    .line 51
    .end local v0           #delta:I
    :catch_32
    move-exception v4

    move-object v1, v4

    .line 52
    .local v1, ex:Ljava/lang/NumberFormatException;
    :try_start_34
    const-string v4, "bad integer format"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3b

    .line 61
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .end local v3           #nextId:Ljava/lang/String;
    :catchall_3b
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->debug:Z

    if-eqz v5, :cond_45

    .line 62
    const-string v5, "parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->dbg_leave(Ljava/lang/String;)V

    .line 61
    :cond_45
    throw v4

    .line 53
    .restart local v3       #nextId:Ljava/lang/String;
    :catch_46
    move-exception v4

    move-object v1, v4

    .line 54
    .local v1, ex:Ljavax/sip/InvalidArgumentException;
    :try_start_48
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_3b
.end method
