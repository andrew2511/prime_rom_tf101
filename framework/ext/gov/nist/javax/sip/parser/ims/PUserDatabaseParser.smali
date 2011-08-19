.class public Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PUserDatabaseParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "databaseName"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private parseheader(Lgov/nist/javax/sip/header/ims/PUserDatabase;)V
    .registers 6
    .parameter "userDatabase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, dbname:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 98
    :cond_c
    :goto_c
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 100
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v1

    .line 101
    .local v1, next:C
    const/16 v2, 0x3e

    if-eq v1, v2, :cond_c

    const/16 v2, 0xa

    if-eq v1, v2, :cond_c

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 107
    .end local v1           #next:C
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->setDatabaseName(Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 110
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 73
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    if-eqz v1, :cond_9

    .line 74
    const-string v1, "PUserDatabase.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_enter(Ljava/lang/String;)V

    .line 77
    :cond_9
    :try_start_9
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x85d

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 79
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 80
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    new-instance v0, Lgov/nist/javax/sip/header/ims/PUserDatabase;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;-><init>()V

    .line 83
    .local v0, userDatabase:Lgov/nist/javax/sip/header/ims/PUserDatabase;
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->parseheader(Lgov/nist/javax/sip/header/ims/PUserDatabase;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_33

    .line 88
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    if-eqz v1, :cond_32

    .line 89
    const-string v1, "PUserDatabase.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_leave(Ljava/lang/String;)V

    .line 85
    :cond_32
    return-object v0

    .line 88
    .end local v0           #userDatabase:Lgov/nist/javax/sip/header/ims/PUserDatabase;
    :catchall_33
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    if-eqz v2, :cond_3d

    .line 89
    const-string v2, "PUserDatabase.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_leave(Ljava/lang/String;)V

    .line 88
    :cond_3d
    throw v1
.end method
