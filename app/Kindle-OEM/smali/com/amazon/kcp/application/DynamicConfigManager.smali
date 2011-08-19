.class public Lcom/amazon/kcp/application/DynamicConfigManager;
.super Ljava/lang/Object;
.source "DynamicConfigManager.java"


# static fields
.field public static final CDE_NOSSL_URL_SCFG_KEY:Ljava/lang/String; = "url.cde.nossl"

.field public static final CDE_URL_SCFG_KEY:Ljava/lang/String; = "url.cde"

.field public static final DET_URL_SCFG_KEY:Ljava/lang/String; = "url.det"

.field public static final FIRS_URL_SCFG_KEY:Ljava/lang/String; = "url.firs"

.field public static final KCP_KINDLE_DETAIL_URL_KEY:Ljava/lang/String; = "kcpKindleStoreConf.detailUrl"

.field public static final KCP_KINDLE_PURCHASE_URL_KEY:Ljava/lang/String; = "kcpKindleStoreConf.purchaseUrl"

.field private static final KCP_KINDLE_STORE_CONF_KEY:Ljava/lang/String; = "kcpKindleStoreConf"

.field public static final KCP_KINDLE_STORE_URL_KEY:Ljava/lang/String; = "kcpKindleStoreConf.storeUrl"

.field public static final TODO_URL_SCFG_KEY:Ljava/lang/String; = "url.todo"

.field public static final WEBSITE_SECURE_URL_SCFG_KEY:Ljava/lang/String; = "url.website.secure"

.field public static final WEBSITE_URL_SCFG_KEY:Ljava/lang/String; = "url.website"

.field private static final defaults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/amazon/kcp/application/DynamicConfigManager;


# instance fields
.field private secureStorage:Lcom/amazon/kcp/application/ISecureStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->instance:Lcom/amazon/kcp/application/DynamicConfigManager;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    .line 47
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    const-string v1, "url.website"

    const-string v2, "http://www.amazon.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    const-string v1, "url.website.secure"

    const-string v2, "https://www.amazon.com/gp/aw/kindle/storefront"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    const-string v1, "url.det"

    const-string v2, "https://det-ta-g7g.amazon.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    const-string v1, "url.firs"

    const-string v2, "https://firs-ta-g7g.amazon.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    const-string v1, "url.cde"

    const-string v2, "https://cde-ta-g7g.amazon.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    const-string v1, "url.todo"

    const-string v2, "https://todo-ta-g7g.amazon.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    const-string v1, "url.cde.nossl"

    const-string v2, "https://cde-ta-g7g.amazon.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    const-string v1, "kcpKindleStoreConf.storeUrl"

    const-string v2, "https://www.amazon.com/gp/kindle/kcp/tos.html?w=${width}&h=${height}&dpi=${dpi}&deviceType=${deviceType}&osv=${osVersion}&eid=${eid}&tag=${tag}&linkCode=${linkCode}"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    const-string v1, "kcpKindleStoreConf.purchaseUrl"

    const-string v2, "https://www.amazon.com/gp/kindle/kcp/tos.html?w=${width}&h=${height}&dpi=${dpi}&deviceType=${deviceType}&osv=${osVersion}&asin=${asin}&action=buy&eid=${eid}&tag=${tag}&linkCode=${linkCode}"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    const-string v1, "kcpKindleStoreConf.detailUrl"

    const-string v2, "https://www.amazon.com/gp/kindle/kcp/tos.html?w=${width}&h=${height}&dpi=${dpi}&deviceType=${deviceType}&osv=${osVersion}&asin=${asin}&action=detail&eid=${eid}&tag=${tag}&linkCode=${linkCode}"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/amazon/kcp/application/DynamicConfigManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/DynamicConfigManager$1;-><init>(Lcom/amazon/kcp/application/DynamicConfigManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 81
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kcp/application/DynamicConfigManager;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->instance:Lcom/amazon/kcp/application/DynamicConfigManager;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/amazon/kcp/application/DynamicConfigManager;

    invoke-direct {v0}, Lcom/amazon/kcp/application/DynamicConfigManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->instance:Lcom/amazon/kcp/application/DynamicConfigManager;

    .line 93
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/DynamicConfigManager;->instance:Lcom/amazon/kcp/application/DynamicConfigManager;

    return-object v0
.end method


# virtual methods
.method public clearConfigUrls()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "url.website"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "url.website.secure"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "url.det"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "url.firs"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "url.cde"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "url.todo"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "url.cde.nossl"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "kcpKindleStoreConf.storeUrl"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "kcpKindleStoreConf.purchaseUrl"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v1, "kcpKindleStoreConf.detailUrl"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 192
    return-void
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/amazon/kcp/application/DynamicConfigManager;->defaults:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    .line 123
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public injectSecureStorage(Lcom/amazon/kcp/application/ISecureStorage;)V
    .locals 0
    .parameter "secureStorage"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 104
    return-void
.end method

.method public loadServerConfigOverrides(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 139
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 172
    :goto_0
    return v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kcp/application/DynamicConfigParser;->parse(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 153
    :goto_1
    if-eqz v2, :cond_1

    .line 159
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 161
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding dynamic config key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v4, p0, Lcom/amazon/kcp/application/DynamicConfigManager;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-interface {v4, v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v0

    goto :goto_1

    .line 172
    :cond_1
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0
.end method
