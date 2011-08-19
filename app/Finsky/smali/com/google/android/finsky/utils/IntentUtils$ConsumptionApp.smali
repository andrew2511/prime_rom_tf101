.class abstract Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/IntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ConsumptionApp"
.end annotation


# instance fields
.field private mUrlHandlerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, urlHandlerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->mUrlHandlerClass:Ljava/lang/Class;

    .line 63
    return-void
.end method

.method protected static final addAccountExtra(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "intent"
    .parameter "key"

    .prologue
    .line 82
    invoke-static {}, Lcom/google/android/finsky/api/AccountHandler;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :cond_0
    return-void
.end method

.method protected static final setDefaultFlags(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 89
    const/high16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    return-void
.end method


# virtual methods
.method public buildManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 1
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public abstract buildViewCollectionIntent(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
.end method

.method public abstract buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
.end method

.method public buildViewSampleIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 1
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getUrlHandlerClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->mUrlHandlerClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
