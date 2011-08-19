.class public Lorg/apache/commons/httpclient/cookie/IgnoreCookiesSpec;
.super Ljava/lang/Object;
.source "IgnoreCookiesSpec.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "host"
    .parameter "domain"

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 1
    .parameter "cookie"

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatCookieHeader(Lorg/apache/commons/httpclient/Cookie;)Lorg/apache/commons/httpclient/Header;
    .locals 1
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatCookieHeader([Lorg/apache/commons/httpclient/Cookie;)Lorg/apache/commons/httpclient/Header;
    .locals 1
    .parameter "cookies"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 1
    .parameter "cookies"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidDateFormats()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "secure"
    .parameter "cookie"

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public match(Ljava/lang/String;ILjava/lang/String;Z[Lorg/apache/commons/httpclient/Cookie;)[Lorg/apache/commons/httpclient/Cookie;
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "secure"
    .parameter "cookies"

    .prologue
    .line 114
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/httpclient/Cookie;

    return-object v0
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "secure"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/httpclient/Cookie;

    return-object v0
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Header;)[Lorg/apache/commons/httpclient/Cookie;
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "secure"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/httpclient/Cookie;

    return-object v0
.end method

.method public parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V
    .locals 0
    .parameter "attribute"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public pathMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "topmostPath"

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public setValidDateFormats(Ljava/util/Collection;)V
    .locals 0
    .parameter "datepatterns"

    .prologue
    .line 73
    return-void
.end method

.method public validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "secure"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 137
    return-void
.end method
