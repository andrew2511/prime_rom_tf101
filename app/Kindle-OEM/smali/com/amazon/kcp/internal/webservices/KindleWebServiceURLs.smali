.class public Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;
.super Ljava/lang/Object;
.source "KindleWebServiceURLs.java"


# static fields
.field public static WEBSERVICE_DEFAULT_30_SEC_TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x7530

    sput v0, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->WEBSERVICE_DEFAULT_30_SEC_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestSellersURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/NationalBestSellers"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getBrowseInBrowseNodeURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 82
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/SearchByBrowseNode"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getBuyURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 188
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getSecureWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/Buy"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getCustomerReviewsURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 98
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/CustomerReviews"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getDeregisterURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 148
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.firs"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FirsProxy/disownFiona"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getDetailsURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 114
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/ItemDetailPage"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getDownloadBookURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 228
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.cde"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaCDEServiceEngine/FSDownloadContent"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getEditorialReviewsURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 106
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/EditorialReviews"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getEditorsPicksURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 74
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/EditorsPicks"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getGetAnnotationsURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 180
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.cde"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaCDEServiceEngine/getAnnotations"

    const-wide/32 v3, 0x1d4c0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getGetBrowseNodesURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 122
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/GetBrowseNodes"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getGetItemsURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 164
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.todo"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaTodoListProxy/getItems"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getNewAndNoteworthyURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/NewAndNoteworthy"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getRecommendedForYouURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 50
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getSecureWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/Recommendations"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getRegisterURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 138
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.firs"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FirsProxy/registerDevice"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getRemoveTodoURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 172
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.todo"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaTodoListProxy/removeItems"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSearchByAuthorURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 90
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/SearchByAuthor"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSearchURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/Search"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method private static getSecureWebsiteBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const-string v0, "url.website.secure"

    invoke-static {v0}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSendMetricsURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 220
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.det"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/DeviceEventProxy/MessageLogServlet"

    const-wide/32 v3, 0x1d4c0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSidecarURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 239
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.cde"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaCDEServiceEngine/sidecar"

    const-wide/32 v3, 0x1d4c0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSimilaritiesURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 58
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/Similarities"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getStoreCredentialsURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 212
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.firs"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FirsProxy/getStoreCredentials"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getStorefrontURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 130
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/KindleStorefront"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSyncMetadataURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 156
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.todo"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaTodoListProxy/syncMetaData"

    const-wide/32 v3, 0x3a980

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getTopSellersURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 66
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/KindleTopSellers"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getTryURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 196
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getSecureWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/TryASample"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getUnBuyURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 204
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getSecureWebsiteBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/g7g/xml/list/V1/UnBuy"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getUnsignedSidecarURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 247
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, "url.cde"

    invoke-static {v1}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaCDEServiceEngine/sidecar"

    const-wide/32 v3, 0x1d4c0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getUploadWatermarkSnapshotURL()Lcom/amazon/foundation/internal/WebserviceURL;
    .locals 5

    .prologue
    .line 256
    new-instance v0, Lcom/amazon/foundation/internal/WebserviceURL;

    const-string v1, ""

    const-string v2, ""

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/foundation/internal/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method static getUrlOfType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 271
    invoke-static {}, Lcom/amazon/kcp/application/DynamicConfigManager;->getInstance()Lcom/amazon/kcp/application/DynamicConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/DynamicConfigManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWebsiteBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string v0, "url.website"

    invoke-static {v0}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
