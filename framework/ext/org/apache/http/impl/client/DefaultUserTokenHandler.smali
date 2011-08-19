.class public Lorg/apache/http/impl/client/DefaultUserTokenHandler;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandler.java"

# interfaces
.implements Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;
    .registers 4
    .parameter "authState"

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    .line 79
    .local v1, scheme:Lorg/apache/http/auth/AuthScheme;
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 80
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    .line 81
    .local v0, creds:Lorg/apache/http/auth/Credentials;
    if-eqz v0, :cond_1d

    .line 82
    invoke-interface {v0}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v2

    .line 85
    .end local v0           #creds:Lorg/apache/http/auth/Credentials;
    :goto_1c
    return-object v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 8
    .parameter "context"

    .prologue
    .line 50
    const/4 v4, 0x0

    .line 52
    .local v4, userPrincipal:Ljava/security/Principal;
    const-string v5, "http.auth.target-scope"

    invoke-interface {p1, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/auth/AuthState;

    .line 54
    .local v3, targetAuthState:Lorg/apache/http/auth/AuthState;
    if-eqz v3, :cond_1d

    .line 55
    invoke-static {v3}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;

    move-result-object v4

    .line 56
    if-nez v4, :cond_1d

    .line 57
    const-string v5, "http.auth.proxy-scope"

    invoke-interface {p1, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/auth/AuthState;

    .line 59
    .local v1, proxyAuthState:Lorg/apache/http/auth/AuthState;
    invoke-static {v1}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;

    move-result-object v4

    .line 63
    .end local v1           #proxyAuthState:Lorg/apache/http/auth/AuthState;
    :cond_1d
    if-nez v4, :cond_37

    .line 64
    const-string v5, "http.connection"

    invoke-interface {p1, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedClientConnection;

    .line 66
    .local v0, conn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 67
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 68
    .local v2, sslsession:Ljavax/net/ssl/SSLSession;
    if-eqz v2, :cond_37

    .line 69
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v4

    .line 74
    .end local v0           #conn:Lorg/apache/http/conn/ManagedClientConnection;
    .end local v2           #sslsession:Ljavax/net/ssl/SSLSession;
    :cond_37
    return-object v4
.end method
