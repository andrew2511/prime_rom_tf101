.class Lcom/amazon/kcp/internal/webservices/WebServiceRequest$2;
.super Ljava/lang/Object;
.source "WebServiceRequest.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addWebserviceErrorDescription()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$2;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$2;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$2;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->access$000(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$2;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-static {v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->access$100(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->access$200(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
