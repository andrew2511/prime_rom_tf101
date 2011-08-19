.class final Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$2;
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

.field final synthetic val$storeCookieNode:Lcom/amazon/kcp/store/models/internal/StoreCookie;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;Lcom/amazon/kcp/store/models/internal/StoreCookie;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$2;->val$model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    iput-object p2, p0, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$2;->val$storeCookieNode:Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$2;->val$model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->getCookieList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$2;->val$storeCookieNode:Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cloneModel()Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->add(Lcom/amazon/kcp/internal/webservices/WebServiceModel;)V

    .line 119
    return-void
.end method
