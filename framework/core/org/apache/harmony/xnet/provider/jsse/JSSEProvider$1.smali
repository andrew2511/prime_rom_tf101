.class Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;
.super Ljava/lang/Object;
.source "JSSEProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "SSLContext.SSL"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "SSLContext.SSLv3"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "SSLContext.TLS"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "SSLContext.TLSv1"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "KeyManagerFactory.X509"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "TrustManagerFactory.X509"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method
