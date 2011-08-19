.class public Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PPreferredServiceParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "pps"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 55
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
    .line 94
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    if-eqz v5, :cond_9

    .line 95
    const-string v5, "PPreferredServiceParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 99
    :cond_9
    :try_start_9
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x860

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 100
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 101
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 102
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 104
    new-instance v2, Lgov/nist/javax/sip/header/ims/PPreferredService;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PPreferredService;-><init>()V

    .line 105
    .local v2, pps:Lgov/nist/javax/sip/header/ims/PPreferredService;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, urn:Ljava/lang/String;
    const-string v5, "urn:urn-7:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 108
    const-string v5, "3gpp-service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 110
    const-string v5, "3gpp-service."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v5, v6

    .line 112
    .local v3, serviceID:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_6f

    move-result v5

    if-eqz v5, :cond_6b

    .line 114
    :try_start_51
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN should atleast have one sub-service"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_6f
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_51 .. :try_end_59} :catch_59

    .line 115
    :catch_59
    move-exception v5

    move-object v1, v5

    .line 117
    .local v1, e:Ljavax/sip/InvalidArgumentException;
    :try_start_5b
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .line 145
    .end local v1           #e:Ljavax/sip/InvalidArgumentException;
    .end local v3           #serviceID:Ljava/lang/String;
    :cond_5e
    :goto_5e
    invoke-super {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_6f

    .line 149
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    if-eqz v5, :cond_6a

    .line 150
    const-string v5, "PPreferredServiceParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 146
    :cond_6a
    return-object v2

    .line 120
    .restart local v3       #serviceID:Ljava/lang/String;
    :cond_6b
    :try_start_6b
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/ims/PPreferredService;->setSubserviceIdentifiers(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_5e

    .line 149
    .end local v2           #pps:Lgov/nist/javax/sip/header/ims/PPreferredService;
    .end local v3           #serviceID:Ljava/lang/String;
    .end local v4           #urn:Ljava/lang/String;
    :catchall_6f
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    if-eqz v6, :cond_79

    .line 150
    const-string v6, "PPreferredServiceParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 149
    :cond_79
    throw v5

    .line 122
    .restart local v2       #pps:Lgov/nist/javax/sip/header/ims/PPreferredService;
    .restart local v4       #urn:Ljava/lang/String;
    :cond_7a
    :try_start_7a
    const-string v5, "3gpp-application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 124
    const-string v5, "3gpp-application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v0, v5, v6

    .line 125
    .local v0, appID:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_94
    .catchall {:try_start_7a .. :try_end_94} :catchall_6f

    move-result v5

    if-eqz v5, :cond_a5

    .line 127
    :try_start_97
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN should atleast have one sub-application"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_6f
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_97 .. :try_end_9f} :catch_9f

    .line 128
    :catch_9f
    move-exception v5

    move-object v1, v5

    .line 129
    .restart local v1       #e:Ljavax/sip/InvalidArgumentException;
    :try_start_a1
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    goto :goto_5e

    .line 132
    .end local v1           #e:Ljavax/sip/InvalidArgumentException;
    :cond_a5
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ims/PPreferredService;->setApplicationIdentifiers(Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_6f

    goto :goto_5e

    .line 137
    .end local v0           #appID:Ljava/lang/String;
    :cond_a9
    :try_start_a9
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN is not well formed"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_6f
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_a9 .. :try_end_b1} :catch_b1

    .line 139
    :catch_b1
    move-exception v5

    move-object v1, v5

    .line 140
    .restart local v1       #e:Ljavax/sip/InvalidArgumentException;
    :try_start_b3
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_6f

    goto :goto_5e
.end method
