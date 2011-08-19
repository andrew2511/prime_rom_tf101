.class Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$4;
.super Ljava/lang/Object;
.source "HttpWebConnectorRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->retrieveHeaderFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

.field final synthetic val$callback:Lcom/amazon/foundation/IStringCallback;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Lcom/amazon/foundation/IStringCallback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$4;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    iput-object p2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$4;->val$callback:Lcom/amazon/foundation/IStringCallback;

    iput-object p3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$4;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$4;->val$callback:Lcom/amazon/foundation/IStringCallback;

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$4;->val$value:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IStringCallback;->execute(Ljava/lang/String;)V

    .line 665
    return-void
.end method
