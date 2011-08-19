.class final Lcom/amazon/kcp/internal/webservices/DetailsWebservice$4;
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
.field final synthetic val$model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$4;->val$model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$4;->val$model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->setLoaded()V

    .line 250
    return-void
.end method
