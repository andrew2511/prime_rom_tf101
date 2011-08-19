.class public Lgov/nist/javax/sip/parser/MaxForwardsParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "MaxForwardsParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "contentLength"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 52
    sget-boolean v3, Lgov/nist/javax/sip/parser/MaxForwardsParser;->debug:Z

    if-eqz v3, :cond_9

    .line 53
    const-string v3, "MaxForwardsParser.enter"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->dbg_enter(Ljava/lang/String;)V

    .line 55
    :cond_9
    :try_start_9
    new-instance v0, Lgov/nist/javax/sip/header/MaxForwards;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MaxForwards;-><init>()V

    .line 56
    .local v0, contentLength:Lgov/nist/javax/sip/header/MaxForwards;
    const/16 v3, 0x81f

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->headerName(I)V

    .line 57
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MaxForwardsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    .line 59
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MaxForwardsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 60
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MaxForwardsParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_41
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_9 .. :try_end_2c} :catch_36
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_2c} :catch_4c

    .line 67
    sget-boolean v3, Lgov/nist/javax/sip/parser/MaxForwardsParser;->debug:Z

    if-eqz v3, :cond_35

    .line 68
    const-string v3, "MaxForwardsParser.leave"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->dbg_leave(Ljava/lang/String;)V

    .line 61
    :cond_35
    return-object v0

    .line 62
    .end local v0           #contentLength:Lgov/nist/javax/sip/header/MaxForwards;
    .end local v2           #number:Ljava/lang/String;
    :catch_36
    move-exception v3

    move-object v1, v3

    .line 63
    .local v1, ex:Ljavax/sip/InvalidArgumentException;
    :try_start_38
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_41

    .line 67
    .end local v1           #ex:Ljavax/sip/InvalidArgumentException;
    :catchall_41
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/MaxForwardsParser;->debug:Z

    if-eqz v4, :cond_4b

    .line 68
    const-string v4, "MaxForwardsParser.leave"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->dbg_leave(Ljava/lang/String;)V

    .line 67
    :cond_4b
    throw v3

    .line 64
    :catch_4c
    move-exception v3

    move-object v1, v3

    .line 65
    .local v1, ex:Ljava/lang/NumberFormatException;
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_41
.end method
