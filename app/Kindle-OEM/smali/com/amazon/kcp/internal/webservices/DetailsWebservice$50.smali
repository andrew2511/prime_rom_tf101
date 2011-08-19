.class final Lcom/amazon/kcp/internal/webservices/DetailsWebservice$50;
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

.field final synthetic val$review:Lcom/amazon/kcp/store/models/internal/ReviewInfo;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/ReviewInfo;Lcom/amazon/kcp/store/models/internal/BookDetails;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$50;->val$review:Lcom/amazon/kcp/store/models/internal/ReviewInfo;

    iput-object p2, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$50;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$50;->val$review:Lcom/amazon/kcp/store/models/internal/ReviewInfo;

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$50;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->getSampleCustomerReviewCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->setOrdinalNumber(I)V

    .line 1027
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$50;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$50;->val$review:Lcom/amazon/kcp/store/models/internal/ReviewInfo;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/ReviewInfo;->cloneModel()Lcom/amazon/kcp/store/models/internal/ReviewInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->addReview(Lcom/amazon/kcp/store/models/internal/ReviewInfo;)V

    .line 1028
    return-void
.end method
