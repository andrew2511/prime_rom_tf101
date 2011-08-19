.class final Lcom/google/android/finsky/utils/IntentUtils$4;
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
    .line 225
    .local p1, x0:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public buildManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 3
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils$4;->buildViewCollectionIntent(Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "download_video_id"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    return-object v0
.end method

.method public buildViewCollectionIntent(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 2
    .parameter "pm"

    .prologue
    .line 237
    const-string v1, "com.google.android.videos"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$4;->setDefaultFlags(Landroid/content/Intent;)V

    .line 240
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    const-string v1, "authAccount"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils$4;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 242
    return-object v0
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 3
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 258
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getYouTubeWatchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 259
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.videos.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    .local v0, intent:Landroid/content/Intent;
    const v2, 0x10004000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    const-string v2, "authAccount"

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/IntentUtils$4;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 262
    return-object v0
.end method
