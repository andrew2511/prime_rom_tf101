.class final Lcom/amazon/kcp/internal/webservices/BuyWebservice$3;
.super Ljava/lang/Object;
.source "BuyWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/BuyWebservice;->getNewBuyDescriber(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$model:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/BuyWebservice$3;->val$model:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/BuyWebservice$3;->val$model:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->setOrderID(Ljava/lang/String;)V

    .line 153
    return-void
.end method
