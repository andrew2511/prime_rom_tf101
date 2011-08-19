.class final Ljavax/net/ssl/SSLSocketFactory$1;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocketFactory$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 7

    .prologue
    .line 57
    const-string v3, "ssl.SocketFactory.provider"

    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/SSLSocketFactory;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->access$000()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 60
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_1d

    .line 61
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 64
    :cond_1d
    :try_start_1d
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->access$000()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 65
    .local v2, sfc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/net/SocketFactory;

    invoke-static {p0}, Ljavax/net/ssl/SSLSocketFactory;->access$102(Ljavax/net/SocketFactory;)Ljavax/net/SocketFactory;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2f} :catch_31

    .line 72
    .end local v0           #cl:Ljava/lang/ClassLoader;
    .end local v2           #sfc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2f
    :goto_2f
    const/4 v3, 0x0

    return-object v3

    .line 66
    .restart local v0       #cl:Ljava/lang/ClassLoader;
    :catch_31
    move-exception v3

    move-object v1, v3

    .line 68
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SSLSocketFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem creating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v1}, Ljavax/net/ssl/SSLSocketFactory;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f
.end method
