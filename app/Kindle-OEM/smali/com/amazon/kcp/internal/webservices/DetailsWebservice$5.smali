.class final Lcom/amazon/kcp/internal/webservices/DetailsWebservice$5;
.super Ljava/lang/Object;
.source "DetailsWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/DetailsWebservice;->getNewDetailsDescriber(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

.field final synthetic val$model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/CDetailsModel;Lcom/amazon/kcp/store/models/internal/BookDetails;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$5;->val$model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    iput-object p2, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$5;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$5;->val$model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$5;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->cloneModel()Lcom/amazon/kcp/store/models/internal/BookDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->add(Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V

    .line 261
    return-void
.end method
