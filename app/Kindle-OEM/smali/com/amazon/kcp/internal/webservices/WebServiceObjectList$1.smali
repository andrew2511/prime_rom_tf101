.class Lcom/amazon/kcp/internal/webservices/WebServiceObjectList$1;
.super Ljava/lang/Object;
.source "WebServiceObjectList.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->add(Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

.field final synthetic val$item:Lcom/amazon/kcp/internal/webservices/WebServiceModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList$1;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    iput-object p2, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList$1;->val$item:Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList$1;->this$0:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList$1;->val$item:Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    invoke-static {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->access$000(Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V

    .line 118
    return-void
.end method
