.class public Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965CommentUrlAttributeHandler.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1
    .parameter "cookie"
    .parameter "origin"

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "commenturl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 53
    instance-of v2, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v2, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/SetCookie2;

    move-object v1, v0

    .line 55
    .local v1, cookie2:Lorg/apache/http/cookie/SetCookie2;
    invoke-interface {v1, p2}, Lorg/apache/http/cookie/SetCookie2;->setCommentURL(Ljava/lang/String;)V

    .line 57
    .end local v1           #cookie2:Lorg/apache/http/cookie/SetCookie2;
    :cond_0
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 0
    .parameter "cookie"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 61
    return-void
.end method
