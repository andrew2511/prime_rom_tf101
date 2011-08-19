.class final Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$3;
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

.field final synthetic val$todoItemLoader:Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/models/internal/TodoModel;Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$3;->val$model:Lcom/amazon/kcp/application/models/internal/TodoModel;

    iput-object p2, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$3;->val$todoItemLoader:Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$3;->val$model:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoModel;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$3;->val$todoItemLoader:Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;

    invoke-virtual {v1}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->getConcreteTodoItemInstance()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->add(Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V

    .line 324
    return-void
.end method
