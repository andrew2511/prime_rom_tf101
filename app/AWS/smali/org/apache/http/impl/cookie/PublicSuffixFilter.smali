.class public Lorg/apache/http/impl/cookie/PublicSuffixFilter;
.super Ljava/lang/Object;
.source "PublicSuffixFilter.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# instance fields
.field private exceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suffixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/cookie/CookieAttributeHandler;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    .line 62
    return-void
.end method

.method private isForPublicSuffix(Lorg/apache/http/cookie/Cookie;)Z
    .locals 6
    .parameter "cookie"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, domain:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    invoke-static {v0}, Lorg/apache/http/client/utils/Punycode;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 121
    :goto_0
    return v2

    .line 110
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 113
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_0

    .line 115
    :cond_3
    const-string v2, "*."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_4
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 117
    .local v1, nextdot:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    :goto_1
    move v2, v4

    .line 121
    goto :goto_0

    .line 118
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_1
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1
    .parameter "cookie"
    .parameter "origin"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->isForPublicSuffix(Lorg/apache/http/cookie/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .parameter "cookie"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setExceptions(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, exceptions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    .line 81
    return-void
.end method

.method public setPublicSuffixes(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, suffixes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    .line 72
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 1
    .parameter "cookie"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 97
    return-void
.end method
