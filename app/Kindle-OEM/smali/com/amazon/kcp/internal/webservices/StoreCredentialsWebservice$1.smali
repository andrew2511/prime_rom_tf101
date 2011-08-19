.class final Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$1;
.super Ljava/lang/Object;
.source "StoreCredentialsWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice;->getStoreCredentialsDescriber(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$1;->val$model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$1;->val$model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->getCookieList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->setLoaded()V

    .line 107
    return-void
.end method
