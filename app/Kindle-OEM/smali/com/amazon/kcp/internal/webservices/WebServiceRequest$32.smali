.class Lcom/amazon/kcp/internal/webservices/WebServiceRequest$32;
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
    .line 541
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$32;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$32;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-static {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->access$002(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$32;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-static {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->access$102(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    return-void
.end method
