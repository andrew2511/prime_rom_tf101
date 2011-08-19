.class public abstract Lgov/nist/javax/sip/parser/Parser;
.super Lgov/nist/core/ParserCore;
.source "Parser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    return-void
.end method

.method public static final checkToken(Ljava/lang/String;)V
    .registers 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 114
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 115
    :cond_8
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "null or empty token"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 118
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 120
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Invalid character(s) in string (not allowed in \'token\')"

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 118
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 124
    :cond_2d
    return-void
.end method


# virtual methods
.method protected createParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .registers 5
    .parameter "exceptionString"

    .prologue
    .line 45
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected getLexer()Lgov/nist/javax/sip/parser/Lexer;
    .registers 1

    .prologue
    .line 51
    iget-object p0, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/parser/Lexer;

    return-object p0
.end method

.method protected method()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    sget-boolean v2, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    if-eqz v2, :cond_9

    .line 79
    const-string v2, "method"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/Parser;->dbg_enter(Ljava/lang/String;)V

    .line 80
    :cond_9
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v1

    .line 81
    .local v1, tokens:[Lgov/nist/core/Token;
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 82
    .local v0, token:Lgov/nist/core/Token;
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x805

    if-eq v2, v3, :cond_6b

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x806

    if-eq v2, v3, :cond_6b

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x808

    if-eq v2, v3, :cond_6b

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x807

    if-eq v2, v3, :cond_6b

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x804

    if-eq v2, v3, :cond_6b

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x809

    if-eq v2, v3, :cond_6b

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x835

    if-eq v2, v3, :cond_6b

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x836

    if-eq v2, v3, :cond_6b

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x843

    if-eq v2, v3, :cond_6b

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x846

    if-eq v2, v3, :cond_6b

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0xfff

    if-ne v2, v3, :cond_7e

    .line 93
    :cond_6b
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->consume()V

    .line 94
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;
    :try_end_73
    .catchall {:try_start_0 .. :try_end_73} :catchall_85

    move-result-object v2

    .line 99
    sget-boolean v3, Lgov/nist/core/Debug;->debug:Z

    if-eqz v3, :cond_7d

    .line 100
    const-string v3, "method"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    .line 94
    :cond_7d
    return-object v2

    .line 96
    :cond_7e
    :try_start_7e
    const-string v2, "Invalid Method"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_85

    .line 99
    .end local v0           #token:Lgov/nist/core/Token;
    .end local v1           #tokens:[Lgov/nist/core/Token;
    :catchall_85
    move-exception v2

    sget-boolean v3, Lgov/nist/core/Debug;->debug:Z

    if-eqz v3, :cond_8f

    .line 100
    const-string v3, "method"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    .line 99
    :cond_8f
    throw v2
.end method

.method protected sipVersion()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 55
    sget-boolean v1, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    if-eqz v1, :cond_9

    .line 56
    const-string v1, "sipVersion"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->dbg_enter(Ljava/lang/String;)V

    .line 58
    :cond_9
    :try_start_9
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x803

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-result-object v0

    .line 59
    .local v0, tok:Lgov/nist/core/Token;
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 60
    const-string v1, "Expecting SIP"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 61
    :cond_22
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xfff

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 64
    const-string v1, "Expecting SIP/2.0"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 66
    :cond_42
    const-string v1, "SIP/2.0"
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_4e

    .line 68
    sget-boolean v2, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    if-eqz v2, :cond_4d

    .line 69
    const-string v2, "sipVersion"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    .line 66
    :cond_4d
    return-object v1

    .line 68
    .end local v0           #tok:Lgov/nist/core/Token;
    :catchall_4e
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    if-eqz v2, :cond_58

    .line 69
    const-string v2, "sipVersion"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    .line 68
    :cond_58
    throw v1
.end method
