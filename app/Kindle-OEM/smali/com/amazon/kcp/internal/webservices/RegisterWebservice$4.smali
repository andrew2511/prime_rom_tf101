.class final Lcom/amazon/kcp/internal/webservices/RegisterWebservice$4;
.super Ljava/lang/Object;
.source "RegisterWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/RegisterWebservice;->getNewRegisterDescriber(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$4;->val$resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$4;->val$resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setUserDeviceName(Ljava/lang/String;)V

    .line 195
    return-void
.end method
