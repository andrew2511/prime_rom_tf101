.class Lorg/apache/http/impl/conn/SingleClientConnManager$1;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/SingleClientConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;

.field final synthetic val$route:Lorg/apache/http/conn/routing/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;

    iput-object p2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    iput-object p3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .registers 1

    .prologue
    .line 185
    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .registers 7
    .parameter "timeout"
    .parameter "tunit"

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;

    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    iget-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->val$state:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v0

    return-object v0
.end method
