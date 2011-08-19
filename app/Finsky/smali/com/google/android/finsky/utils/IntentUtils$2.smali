.class final Lcom/google/android/finsky/utils/IntentUtils$2;
.super Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/IntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    .local p1, x0:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private addAccountParameter(Landroid/net/Uri$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 150
    invoke-static {}, Lcom/google/android/finsky/api/AccountHandler;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, account:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 152
    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public buildViewCollectionIntent(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 4
    .parameter "pm"

    .prologue
    .line 158
    sget-object v2, Lcom/google/android/finsky/config/G;->myEBooksUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 159
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils$2;->addAccountParameter(Landroid/net/Uri$Builder;)V

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/google/android/finsky/utils/IntentUtils$2;->setDefaultFlags(Landroid/content/Intent;)V

    .line 162
    return-object v1
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 5
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 167
    sget-object v2, Lcom/google/android/finsky/config/G;->readBookUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 169
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils$2;->addAccountParameter(Landroid/net/Uri$Builder;)V

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/google/android/finsky/utils/IntentUtils$2;->setDefaultFlags(Landroid/content/Intent;)V

    .line 172
    return-object v1
.end method
