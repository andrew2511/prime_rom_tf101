.class final Lcom/google/android/finsky/utils/IntentUtils$1;
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
    .line 101
    .local p1, x0:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public buildViewCollectionIntent(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 2
    .parameter "pm"

    .prologue
    .line 107
    const-string v1, "com.google.android.apps.books"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$1;->setDefaultFlags(Landroid/content/Intent;)V

    .line 110
    const-string v1, "authAccount"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils$1;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 5
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 125
    sget-object v2, Lcom/google/android/finsky/config/G;->readBookUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 127
    .local v1, uri:Landroid/net/Uri$Builder;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.google.android.apps.books"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const v2, 0x10004000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    const-string v2, "authAccount"

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/IntentUtils$1;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 134
    const-string v2, "books:addToMyEBooks"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    return-object v0
.end method

.method public buildViewSampleIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 2
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils$1;->buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    return-object v0
.end method
