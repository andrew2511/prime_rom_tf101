.class final Lcom/google/android/finsky/utils/IntentUtils$3;
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
    .line 177
    .local p1, x0:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private buildItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "pm"
    .parameter "doc"
    .parameter "action"

    .prologue
    .line 194
    const-string v1, "com.android.vending"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 195
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$3;->setDefaultFlags(Landroid/content/Intent;)V

    .line 197
    const-string v1, "account"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils$3;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 198
    const-string v1, "asset_package"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    return-object v0
.end method


# virtual methods
.method public buildManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 1
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 216
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/utils/IntentUtils$3;->buildItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public buildViewCollectionIntent(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 2
    .parameter "pm"

    .prologue
    .line 186
    const-string v1, "com.android.vending"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$3;->setDefaultFlags(Landroid/content/Intent;)V

    .line 189
    const-string v1, "account"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils$3;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 190
    return-object v0
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 2
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 204
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 208
    const-string v1, "android.intent.action.RUN"

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/finsky/utils/IntentUtils$3;->buildItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 210
    :cond_0
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$3;->setDefaultFlags(Landroid/content/Intent;)V

    .line 211
    return-object v0
.end method
