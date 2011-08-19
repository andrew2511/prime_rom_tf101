.class public Lgov/nist/javax/sip/parser/MimeVersionParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "MimeVersionParser.java"


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
    .parameter "mimeVersion"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
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
    .line 67
    sget-boolean v4, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    if-eqz v4, :cond_9

    .line 68
    const-string v4, "MimeVersionParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_9
    new-instance v2, Lgov/nist/javax/sip/header/MimeVersion;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/MimeVersion;-><init>()V

    .line 71
    .local v2, mimeVersion:Lgov/nist/javax/sip/header/MimeVersion;
    const/16 v4, 0x80c

    :try_start_10
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->headerName(I)V

    .line 73
    const-string v4, "MIME-Version"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setHeaderName(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_5a

    .line 76
    :try_start_18
    iget-object v4, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, majorVersion:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setMajorVersion(I)V

    .line 78
    iget-object v4, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, minorVersion:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setMinorVersion(I)V
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_5a
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_18 .. :try_end_39} :catch_4f

    .line 85
    :try_start_39
    iget-object v4, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    iget-object v4, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_5a

    .line 91
    sget-boolean v4, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    if-eqz v4, :cond_4e

    .line 92
    const-string v4, "MimeVersionParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    .line 89
    :cond_4e
    return-object v2

    .line 82
    .end local v1           #majorVersion:Ljava/lang/String;
    .end local v3           #minorVersion:Ljava/lang/String;
    :catch_4f
    move-exception v4

    move-object v0, v4

    .line 83
    .local v0, ex:Ljavax/sip/InvalidArgumentException;
    :try_start_51
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5a

    .line 91
    .end local v0           #ex:Ljavax/sip/InvalidArgumentException;
    :catchall_5a
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    if-eqz v5, :cond_64

    .line 92
    const-string v5, "MimeVersionParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    .line 91
    :cond_64
    throw v4
.end method
