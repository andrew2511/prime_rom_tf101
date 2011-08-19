.class public Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
.super Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.source "ServerSessionContext.java"


# instance fields
.field private persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;-><init>(II)V

    .line 40
    return-void
.end method


# virtual methods
.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .registers 6
    .parameter "sessionId"

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 51
    .local v1, session:Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_9

    move-object v2, v1

    .line 67
    :goto_8
    return-object v2

    .line 56
    :cond_9
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    if-eqz v2, :cond_27

    .line 57
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    invoke-interface {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object v0

    .line 58
    .local v0, data:[B
    if-eqz v0, :cond_27

    .line 59
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_27

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 61
    invoke-super {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    move-object v2, v1

    .line 62
    goto :goto_8

    .end local v0           #data:[B
    :cond_27
    move-object v2, v3

    .line 67
    goto :goto_8
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .registers 4
    .parameter "session"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 75
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    if-eqz v1, :cond_12

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 77
    .local v0, data:[B
    if-eqz v0, :cond_12

    .line 78
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    invoke-interface {v1, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 81
    .end local v0           #data:[B
    :cond_12
    return-void
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .registers 2
    .parameter "session"

    .prologue
    .line 46
    return-void
.end method

.method public setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V
    .registers 2
    .parameter "persistentCache"

    .prologue
    .line 43
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    .line 44
    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->setSessionTimeout(I)V

    return-void
.end method
