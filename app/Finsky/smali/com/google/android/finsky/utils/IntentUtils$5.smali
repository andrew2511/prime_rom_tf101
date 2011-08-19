.class final Lcom/google/android/finsky/utils/IntentUtils$5;
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
    .line 272
    .local p1, x0:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public buildViewCollectionIntent(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 3
    .parameter "pm"

    .prologue
    .line 276
    sget-object v2, Lcom/google/android/finsky/config/G;->myMoviesUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 277
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$5;->setDefaultFlags(Landroid/content/Intent;)V

    .line 279
    return-object v0
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 3
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 284
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getYouTubeWatchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 285
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 286
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$5;->setDefaultFlags(Landroid/content/Intent;)V

    .line 287
    return-object v0
.end method
