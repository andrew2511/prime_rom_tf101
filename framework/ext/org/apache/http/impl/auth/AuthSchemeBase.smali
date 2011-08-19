.class public abstract Lorg/apache/http/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lorg/apache/http/auth/AuthScheme;


# instance fields
.field private proxy:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public isProxy()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    return v0
.end method

.method protected abstract parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .registers 12
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 72
    if-nez p1, :cond_a

    .line 73
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Header may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 75
    :cond_a
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, authheader:Ljava/lang/String;
    const-string v7, "WWW-Authenticate"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 77
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    .line 86
    :goto_19
    instance-of v7, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v7, :cond_63

    .line 87
    move-object v0, p1

    check-cast v0, Lorg/apache/http/FormattedHeader;

    move-object v7, v0

    invoke-interface {v7}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v3

    .line 88
    .local v3, buffer:Lorg/apache/http/util/CharArrayBuffer;
    check-cast p1, Lorg/apache/http/FormattedHeader;

    .end local p1
    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v5

    .line 98
    .local v5, pos:I
    :goto_2b
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    if-ge v5, v7, :cond_7f

    invoke-virtual {v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 78
    .end local v3           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v5           #pos:I
    .restart local p1
    :cond_3e
    const-string v7, "Proxy-Authenticate"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 79
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    goto :goto_19

    .line 81
    :cond_4a
    new-instance v7, Lorg/apache/http/auth/MalformedChallengeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected header name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 90
    :cond_63
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, s:Ljava/lang/String;
    if-nez v6, :cond_71

    .line 92
    new-instance v7, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v8, "Header value is null"

    invoke-direct {v7, v8}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 94
    :cond_71
    new-instance v3, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v3, v7}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 95
    .restart local v3       #buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v3, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 96
    const/4 v5, 0x0

    .restart local v5       #pos:I
    goto :goto_2b

    .line 101
    .end local v6           #s:Ljava/lang/String;
    .end local p1
    :cond_7f
    move v2, v5

    .line 102
    .local v2, beginIndex:I
    :goto_80
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    if-ge v5, v7, :cond_93

    invoke-virtual {v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_93

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    .line 105
    :cond_93
    move v4, v5

    .line 106
    .local v4, endIndex:I
    invoke-virtual {v3, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 107
    .restart local v6       #s:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_bb

    .line 108
    new-instance v7, Lorg/apache/http/auth/MalformedChallengeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid scheme identifier: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 111
    :cond_bb
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    invoke-virtual {p0, v3, v5, v7}, Lorg/apache/http/impl/auth/AuthSchemeBase;->parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 112
    return-void
.end method
