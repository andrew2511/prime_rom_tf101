.class Lcom/amazon/kcp/internal/webservices/WebServiceRequest$24;
.super Ljava/lang/Object;
.source "WebServiceRequest.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


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
    .line 442
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$24;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$24;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-static {v0, p1}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->access$002(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    return-void
.end method
