.class Lcom/google/android/finsky/utils/IntentUtils$GenericConsumptionApp;
.super Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/IntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericConsumptionApp"
.end annotation


# instance fields
.field private final mPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, urlHandlerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>(Ljava/lang/Class;)V

    .line 300
    iput-object p2, p0, Lcom/google/android/finsky/utils/IntentUtils$GenericConsumptionApp;->mPackage:Ljava/lang/String;

    .line 301
    return-void
.end method


# virtual methods
.method public buildViewCollectionIntent(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 2
    .parameter "pm"

    .prologue
    .line 305
    iget-object v1, p0, Lcom/google/android/finsky/utils/IntentUtils$GenericConsumptionApp;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$GenericConsumptionApp;->setDefaultFlags(Landroid/content/Intent;)V

    .line 308
    return-object v0
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 3
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/google/android/finsky/utils/IntentUtils$GenericConsumptionApp;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 314
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$GenericConsumptionApp;->setDefaultFlags(Landroid/content/Intent;)V

    .line 316
    const-string v1, "id"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    return-object v0
.end method
