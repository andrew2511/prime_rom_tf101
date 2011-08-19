.class final Ljavax/net/ssl/SSLServerSocketFactory$1;
.super Ljava/lang/Object;
.source "SSLServerSocketFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/net/ssl/SSLServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;
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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocketFactory$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 5

    .prologue
    .line 51
    const-string v2, "ssl.ServerSocketFactory.provider"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/SSLServerSocketFactory;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    invoke-static {}, Ljavax/net/ssl/SSLServerSocketFactory;->access$000()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 54
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_1d

    .line 55
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 58
    :cond_1d
    :try_start_1d
    invoke-static {}, Ljavax/net/ssl/SSLServerSocketFactory;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, ssfc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/net/ServerSocketFactory;

    invoke-static {p0}, Ljavax/net/ssl/SSLServerSocketFactory;->access$102(Ljavax/net/ServerSocketFactory;)Ljavax/net/ServerSocketFactory;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2f} :catch_31

    .line 63
    .end local v0           #cl:Ljava/lang/ClassLoader;
    .end local v1           #ssfc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    return-object v2

    .line 60
    .restart local v0       #cl:Ljava/lang/ClassLoader;
    :catch_31
    move-exception v2

    goto :goto_2f
.end method
