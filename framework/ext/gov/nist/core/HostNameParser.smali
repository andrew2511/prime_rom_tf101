.class public Lgov/nist/core/HostNameParser;
.super Lgov/nist/core/ParserCore;
.source "HostNameParser.java"


# static fields
.field private static Lexer:Lgov/nist/core/LexerCore;

.field private static final VALID_DOMAIN_LABEL_CHAR:[C


# instance fields
.field private stripAddressScopeZones:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    return-void

    nop

    :array_a
    .array-data 0x2
        0xfdt 0xfft
        0x2dt 0x0t
        0x2et 0x0t
    .end array-data
.end method

.method public constructor <init>(Lgov/nist/core/LexerCore;)V
    .registers 3
    .parameter "lexer"

    .prologue
    .line 75
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 76
    iput-object p1, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 77
    const-string v0, "charLexer"

    invoke-virtual {p1, v0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 79
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "hname"

    .prologue
    .line 65
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 66
    new-instance v0, Lgov/nist/core/LexerCore;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 68
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 70
    return-void
.end method

.method private isIPv6Address(Ljava/lang/String;)Z
    .registers 11
    .parameter "uriHeader"

    .prologue
    const/16 v8, 0x3a

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 225
    sget-object v5, Lgov/nist/core/HostNameParser;->Lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3f

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 229
    .local v2, hostEnd:I
    sget-object v5, Lgov/nist/core/HostNameParser;->Lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 230
    .local v4, semiColonIndex:I
    if-eq v2, v6, :cond_1a

    if-eq v4, v6, :cond_1b

    if-le v2, v4, :cond_1b

    .line 232
    :cond_1a
    move v2, v4

    .line 236
    :cond_1b
    if-ne v2, v6, :cond_21

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 240
    :cond_21
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, host:Ljava/lang/String;
    sget-object v5, Lgov/nist/core/HostNameParser;->Lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 244
    .local v0, firstColonIndex:I
    if-ne v0, v6, :cond_2f

    move v5, v7

    .line 252
    :goto_2e
    return v5

    .line 247
    :cond_2f
    sget-object v5, Lgov/nist/core/HostNameParser;->Lexer:Lgov/nist/core/LexerCore;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 249
    .local v3, secondColonIndex:I
    if-ne v3, v6, :cond_3b

    move v5, v7

    .line 250
    goto :goto_2e

    .line 252
    :cond_3b
    const/4 v5, 0x1

    goto :goto_2e
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 320
    const/4 v5, 0x7

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "foo.bar.com:1234"

    aput-object v6, v2, v5

    const-string v5, "proxima.chaplin.bt.co.uk"

    aput-object v5, v2, v7

    const/4 v5, 0x2

    const-string v6, "129.6.55.181:2345"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, ":1234"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "foo.bar.com:         1234"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "foo.bar.com     :      1234   "

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "MIK_S:1234"

    aput-object v6, v2, v5

    .line 331
    .local v2, hostNames:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_27
    array-length v5, v2

    if-ge v4, v5, :cond_7a

    .line 333
    :try_start_2a
    new-instance v1, Lgov/nist/core/HostNameParser;

    aget-object v5, v2, v4

    invoke-direct {v1, v5}, Lgov/nist/core/HostNameParser;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, hnp:Lgov/nist/core/HostNameParser;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v3

    .line 335
    .local v3, hp:Lgov/nist/core/HostPort;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/text/ParseException; {:try_start_2a .. :try_end_58} :catch_5b

    .line 331
    .end local v1           #hnp:Lgov/nist/core/HostNameParser;
    .end local v3           #hp:Lgov/nist/core/HostPort;
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 336
    :catch_5b
    move-exception v5

    move-object v0, v5

    .line 337
    .local v0, ex:Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception text = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_58

    .line 341
    .end local v0           #ex:Ljava/text/ParseException;
    :cond_7a
    return-void
.end method


# virtual methods
.method protected consumeDomainLabel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 86
    sget-boolean v0, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v0, :cond_9

    .line 87
    const-string v0, "domainLabel"

    invoke-virtual {p0, v0}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    .line 89
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    sget-object v1, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1a

    .line 91
    sget-boolean v0, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v0, :cond_19

    .line 92
    const-string v0, "domainLabel"

    invoke-virtual {p0, v0}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 94
    :cond_19
    return-void

    .line 91
    :catchall_1a
    move-exception v0

    sget-boolean v1, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v1, :cond_24

    .line 92
    const-string v1, "domainLabel"

    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 91
    :cond_24
    throw v0
.end method

.method public host()Lgov/nist/core/Host;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 172
    sget-boolean v2, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v2, :cond_9

    .line 173
    const-string v2, "host"

    invoke-virtual {p0, v2}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    .line 178
    :cond_9
    :try_start_9
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_4e

    .line 179
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->ipv6Reference()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, hostname:Ljava/lang/String;
    :goto_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_ac

    .line 200
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Missing host name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_43

    .line 206
    .end local v0           #hostname:Ljava/lang/String;
    :catchall_43
    move-exception v2

    sget-boolean v3, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v3, :cond_4d

    .line 207
    const-string v3, "host"

    invoke-virtual {p0, v3}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 206
    :cond_4d
    throw v2

    .line 182
    :cond_4e
    :try_start_4e
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lgov/nist/core/HostNameParser;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 184
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v1

    .line 185
    .local v1, startPtr:I
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x2

    new-array v3, v3, [C

    fill-array-data v3, :array_bc

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V

    .line 187
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0       #hostname:Ljava/lang/String;
    goto :goto_18

    .line 194
    .end local v0           #hostname:Ljava/lang/String;
    .end local v1           #startPtr:I
    :cond_91
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v1

    .line 195
    .restart local v1       #startPtr:I
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->consumeDomainLabel()V

    .line 196
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #hostname:Ljava/lang/String;
    goto/16 :goto_18

    .line 204
    .end local v1           #startPtr:I
    :cond_ac
    new-instance v2, Lgov/nist/core/Host;

    invoke-direct {v2, v0}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_4e .. :try_end_b1} :catchall_43

    .line 206
    sget-boolean v3, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v3, :cond_ba

    .line 207
    const-string v3, "host"

    invoke-virtual {p0, v3}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 204
    :cond_ba
    return-object v2

    .line 185
    nop

    :array_bc
    .array-data 0x2
        0xfdt 0xfft
        0x3at 0x0t
    .end array-data
.end method

.method public hostPort(Z)Lgov/nist/core/HostPort;
    .registers 11
    .parameter "allowWS"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 262
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_9

    .line 263
    const-string v5, "hostPort"

    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    .line 265
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->host()Lgov/nist/core/Host;

    move-result-object v0

    .line 266
    .local v0, host:Lgov/nist/core/Host;
    new-instance v1, Lgov/nist/core/HostPort;

    invoke-direct {v1}, Lgov/nist/core/HostPort;-><init>()V

    .line 267
    .local v1, hp:Lgov/nist/core/HostPort;
    invoke-virtual {v1, v0}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 269
    if-eqz p1, :cond_1c

    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 270
    :cond_1c
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 271
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 272
    .local v2, la:C
    sparse-switch v2, :sswitch_data_bc

    .line 305
    :cond_2e
    if-nez p1, :cond_85

    .line 306
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Illegal character in hostname:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_60
    .catchall {:try_start_9 .. :try_end_60} :catchall_60

    .line 314
    .end local v0           #host:Lgov/nist/core/Host;
    .end local v1           #hp:Lgov/nist/core/HostPort;
    .end local v2           #la:C
    :catchall_60
    move-exception v5

    sget-boolean v6, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v6, :cond_6a

    .line 315
    const-string v6, "hostPort"

    invoke-virtual {p0, v6}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 314
    :cond_6a
    throw v5

    .line 275
    .restart local v0       #host:Lgov/nist/core/Host;
    .restart local v1       #hp:Lgov/nist/core/HostPort;
    .restart local v2       #la:C
    :sswitch_6b
    :try_start_6b
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 276
    if-eqz p1, :cond_78

    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_60

    .line 278
    :cond_78
    :try_start_78
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, port:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lgov/nist/core/HostPort;->setPort(I)V
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_60
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_85} :catch_8f

    .line 314
    .end local v2           #la:C
    .end local v4           #port:Ljava/lang/String;
    :cond_85
    :goto_85
    :sswitch_85
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_8e

    .line 315
    const-string v5, "hostPort"

    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 312
    :cond_8e
    return-object v1

    .line 280
    .restart local v2       #la:C
    :catch_8f
    move-exception v5

    move-object v3, v5

    .line 281
    .local v3, nfe:Ljava/lang/NumberFormatException;
    :try_start_91
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :Error parsing port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 300
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :sswitch_b6
    iget-boolean v5, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z
    :try_end_b8
    .catchall {:try_start_91 .. :try_end_b8} :catchall_60

    if-eqz v5, :cond_2e

    goto :goto_85

    .line 272
    nop

    :sswitch_data_bc
    .sparse-switch
        0x9 -> :sswitch_85
        0xa -> :sswitch_85
        0xd -> :sswitch_85
        0x20 -> :sswitch_85
        0x25 -> :sswitch_b6
        0x2c -> :sswitch_85
        0x2f -> :sswitch_85
        0x3a -> :sswitch_6b
        0x3b -> :sswitch_85
        0x3e -> :sswitch_85
        0x3f -> :sswitch_85
    .end sparse-switch
.end method

.method protected ipv6Reference()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x2e

    const/16 v6, 0x5d

    .line 97
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v2, retval:Ljava/lang/StringBuffer;
    sget-boolean v4, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v4, :cond_14

    .line 99
    const-string v4, "ipv6Reference"

    invoke-virtual {p0, v4}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    .line 103
    :cond_14
    :try_start_14
    iget-boolean v4, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    if-eqz v4, :cond_c0

    .line 104
    :goto_18
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 105
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 108
    .local v0, la:C
    invoke-static {v0}, Lgov/nist/core/LexerCore;->isHexDigit(C)Z

    move-result v4

    if-nez v4, :cond_35

    if-eq v0, v7, :cond_35

    if-eq v0, v8, :cond_35

    const/16 v4, 0x5b

    if-ne v0, v4, :cond_4a

    .line 110
    :cond_35
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3f

    goto :goto_18

    .line 166
    .end local v0           #la:C
    :catchall_3f
    move-exception v4

    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_49

    .line 167
    const-string v5, "ipv6Reference"

    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 166
    :cond_49
    throw v4

    .line 112
    .restart local v0       #la:C
    :cond_4a
    if-ne v0, v6, :cond_63

    .line 113
    :try_start_4c
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_3f

    move-result-object v4

    .line 166
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_62

    .line 167
    const-string v5, "ipv6Reference"

    :goto_5f
    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 156
    :cond_62
    return-object v4

    .line 116
    :cond_63
    const/16 v4, 0x25

    if-ne v0, v4, :cond_7b

    .line 118
    :try_start_67
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 120
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, rest:Ljava/lang/String;
    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a0

    .line 162
    .end local v0           #la:C
    .end local v1           #rest:Ljava/lang/String;
    :cond_7b
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Illegal Host name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 129
    .restart local v0       #la:C
    .restart local v1       #rest:Ljava/lang/String;
    :cond_a0
    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 131
    .local v3, stripLen:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_7b

    .line 136
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 137
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_b8
    .catchall {:try_start_67 .. :try_end_b8} :catchall_3f

    move-result-object v4

    .line 166
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_62

    .line 167
    const-string v5, "ipv6Reference"

    goto :goto_5f

    .line 146
    .end local v0           #la:C
    .end local v1           #rest:Ljava/lang/String;
    .end local v3           #stripLen:I
    :cond_c0
    :goto_c0
    :try_start_c0
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 148
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 149
    .restart local v0       #la:C
    invoke-static {v0}, Lgov/nist/core/LexerCore;->isHexDigit(C)Z

    move-result v4

    if-nez v4, :cond_dd

    if-eq v0, v7, :cond_dd

    if-eq v0, v8, :cond_dd

    const/16 v4, 0x5b

    if-ne v0, v4, :cond_e7

    .line 151
    :cond_dd
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c0

    .line 153
    :cond_e7
    if-ne v0, v6, :cond_7b

    .line 154
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_f5
    .catchall {:try_start_c0 .. :try_end_f5} :catchall_3f

    move-result-object v4

    .line 166
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_62

    .line 167
    const-string v5, "ipv6Reference"

    goto/16 :goto_5f
.end method
