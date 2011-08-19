.class public Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "StoreCredentialsModel.java"


# instance fields
.field private cookieList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

.field private listCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel$1;-><init>(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->listCallback:Lcom/amazon/foundation/ICallback;

    .line 31
    new-instance v0, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-direct {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->cookieList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->cookieList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->listCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->onListModified()V

    return-void
.end method

.method private onListModified()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 57
    return-void
.end method


# virtual methods
.method public empty()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->empty()V

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->cookieList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->empty()V

    .line 42
    return-void
.end method

.method public getCookieList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->cookieList:Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    return-object v0
.end method
