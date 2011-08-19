.class final Lcom/amazon/kcp/internal/webservices/DetailsWebservice$13;
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
    .line 380
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$13;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 385
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$13;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->setAvailableForDevice(Z)V

    .line 399
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$13;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->setAvailableForDevice(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
