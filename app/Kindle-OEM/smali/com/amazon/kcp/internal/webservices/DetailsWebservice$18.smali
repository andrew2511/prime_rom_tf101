.class final Lcom/amazon/kcp/internal/webservices/DetailsWebservice$18;
.super Ljava/lang/Object;
.source "DetailsWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/BookDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$18;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 511
    if-eqz p1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$18;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->setMerchantName(Ljava/lang/String;)V

    .line 515
    :cond_0
    return-void
.end method
