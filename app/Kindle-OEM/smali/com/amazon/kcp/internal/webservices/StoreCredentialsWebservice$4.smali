.class final Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$4;
.super Ljava/lang/Object;
.source "StoreCredentialsWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice;->getStoreCredentialsDescriber(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$storeCookieNode:Lcom/amazon/kcp/store/models/internal/StoreCookie;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/StoreCookie;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$4;->val$storeCookieNode:Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$4;->val$storeCookieNode:Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->setCookieValue(Ljava/lang/String;)V

    .line 143
    return-void
.end method
