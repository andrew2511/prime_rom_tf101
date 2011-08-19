.class final Lcom/amazon/kcp/internal/webservices/WebServiceRequest$38;
.super Ljava/lang/Object;
.source "WebServiceRequest.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$38;->val$request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebServiceRequest$38;->val$request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->terminate()V

    .line 870
    return-void
.end method
