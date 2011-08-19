.class public Lgov/nist/javax/sip/parser/PriorityParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PriorityParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "priority"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 52
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
    .line 99
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Priority: 8;a\n"

    aput-object v5, v1, v4

    .line 103
    .local v1, p:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    array-length v4, v1

    if-ge v0, v4, :cond_38

    .line 104
    new-instance v2, Lgov/nist/javax/sip/parser/PriorityParser;

    aget-object v4, v1, v0

    invoke-direct {v2, v4}, Lgov/nist/javax/sip/parser/PriorityParser;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, parser:Lgov/nist/javax/sip/parser/PriorityParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/PriorityParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Priority;

    .line 107
    .local v3, prio:Lgov/nist/javax/sip/header/Priority;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Priority;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 109
    .end local v2           #parser:Lgov/nist/javax/sip/parser/PriorityParser;
    .end local v3           #prio:Lgov/nist/javax/sip/header/Priority;
    :cond_38
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
    .line 69
    sget-boolean v1, Lgov/nist/javax/sip/parser/PriorityParser;->debug:Z

    if-eqz v1, :cond_9

    .line 70
    const-string v1, "PriorityParser.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/PriorityParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/Priority;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Priority;-><init>()V

    .line 73
    .local v0, priority:Lgov/nist/javax/sip/header/Priority;
    const/16 v1, 0x821

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/PriorityParser;->headerName(I)V

    .line 75
    const-string v1, "Priority"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Priority;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PriorityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PriorityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Priority;->setPriority(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PriorityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 88
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PriorityParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_3c

    .line 92
    sget-boolean v1, Lgov/nist/javax/sip/parser/PriorityParser;->debug:Z

    if-eqz v1, :cond_3b

    .line 93
    const-string v1, "PriorityParser.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/PriorityParser;->dbg_leave(Ljava/lang/String;)V

    .line 90
    :cond_3b
    return-object v0

    .line 92
    :catchall_3c
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/PriorityParser;->debug:Z

    if-eqz v2, :cond_46

    .line 93
    const-string v2, "PriorityParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/PriorityParser;->dbg_leave(Ljava/lang/String;)V

    .line 92
    :cond_46
    throw v1
.end method
