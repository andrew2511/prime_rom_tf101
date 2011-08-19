.class final Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$2;
.super Ljava/lang/Object;
.source "GetItemsWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;->getNewGetItemsDescriber(Lcom/amazon/kcp/application/models/internal/TodoModel;Ljava/lang/String;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$model:Lcom/amazon/kcp/application/models/internal/TodoModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/models/internal/TodoModel;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$2;->val$model:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$2;->val$model:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoModel;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->setLoaded()V

    .line 309
    return-void
.end method
