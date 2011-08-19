.class final Lcom/amazon/kcp/internal/webservices/DetailsWebservice$40;
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

.field final synthetic val$simBook:Lcom/amazon/kcp/store/models/internal/BookInfo;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/BookDetails;Lcom/amazon/kcp/store/models/internal/BookInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$40;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    iput-object p2, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$40;->val$simBook:Lcom/amazon/kcp/store/models/internal/BookInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$40;->val$book:Lcom/amazon/kcp/store/models/internal/BookDetails;

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$40;->val$simBook:Lcom/amazon/kcp/store/models/internal/BookInfo;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/BookInfo;->cloneInfoModel()Lcom/amazon/kcp/store/models/internal/BookInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->addSim(Lcom/amazon/kcp/store/models/internal/BookInfo;)V

    .line 848
    return-void
.end method
