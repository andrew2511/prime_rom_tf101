.class final Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$10;
.super Ljava/lang/Object;
.source "GetItemsWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;->getNewGetItemsDescriber(Lcom/amazon/kcp/application/models/internal/TodoModel;Ljava/lang/String;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$todoItemLoader:Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$10;->val$todoItemLoader:Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$10;->val$todoItemLoader:Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;

    iput-object p1, v0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice$TodoItemLoader;->type:Ljava/lang/String;

    .line 395
    return-void
.end method
