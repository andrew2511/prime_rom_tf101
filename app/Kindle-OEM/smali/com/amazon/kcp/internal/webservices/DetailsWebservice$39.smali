.class final Lcom/amazon/kcp/internal/webservices/DetailsWebservice$39;
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
    .line 815
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$39;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$39;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->setHasSample(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_1
    return-void

    .line 820
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
