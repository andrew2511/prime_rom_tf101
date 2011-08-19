.class public Lgov/nist/javax/sip/parser/ContentLanguageParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ContentLanguageParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "contentLanguage"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2c

    .line 67
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentLanguageParser;->debug:Z

    if-eqz v4, :cond_b

    .line 68
    const-string v4, "ContentLanguageParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_b
    new-instance v2, Lgov/nist/javax/sip/header/ContentLanguageList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ContentLanguageList;-><init>()V

    .line 72
    .local v2, list:Lgov/nist/javax/sip/header/ContentLanguageList;
    const/16 v4, 0x81b

    :try_start_12
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->headerName(I)V

    .line 74
    :cond_15
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_92

    .line 75
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 79
    .local v3, token:Lgov/nist/core/Token;
    new-instance v0, Lgov/nist/javax/sip/header/ContentLanguage;

    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lgov/nist/javax/sip/header/ContentLanguage;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, cl:Lgov/nist/javax/sip/header/ContentLanguage;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 81
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentLanguageList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 83
    :goto_43
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_15

    .line 84
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 85
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 86
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 87
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 88
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 89
    new-instance v0, Lgov/nist/javax/sip/header/ContentLanguage;

    .end local v0           #cl:Lgov/nist/javax/sip/header/ContentLanguage;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lgov/nist/javax/sip/header/ContentLanguage;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v0       #cl:Lgov/nist/javax/sip/header/ContentLanguage;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 91
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentLanguageList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_7b
    .catchall {:try_start_12 .. :try_end_7b} :catchall_87
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_7b} :catch_7c

    goto :goto_43

    .line 96
    .end local v0           #cl:Lgov/nist/javax/sip/header/ContentLanguage;
    .end local v3           #token:Lgov/nist/core/Token;
    :catch_7c
    move-exception v4

    move-object v1, v4

    .line 97
    .local v1, ex:Ljava/text/ParseException;
    :try_start_7e
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_87

    .line 99
    .end local v1           #ex:Ljava/text/ParseException;
    :catchall_87
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/ContentLanguageParser;->debug:Z

    if-eqz v5, :cond_91

    .line 100
    const-string v5, "ContentLanguageParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->dbg_leave(Ljava/lang/String;)V

    .line 99
    :cond_91
    throw v4

    :cond_92
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentLanguageParser;->debug:Z

    if-eqz v4, :cond_9b

    .line 100
    const-string v4, "ContentLanguageParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->dbg_leave(Ljava/lang/String;)V

    .line 95
    :cond_9b
    return-object v2
.end method
