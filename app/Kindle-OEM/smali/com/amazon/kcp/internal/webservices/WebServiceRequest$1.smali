.class Lcom/amazon/kcp/internal/webservices/WebServiceRequest$1;
.super Ljava/lang/Object;
.source "WebServiceRequest.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
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
    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$1;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$1;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->terminate()V

    .line 36
    return-void
.end method
