.class Lcom/android/vending/Assets$1;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "Assets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/Assets;->install(Lcom/android/vending/model/Asset;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/Assets;

.field final synthetic val$asset:Lcom/android/vending/model/Asset;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vending/Assets;Lcom/android/vending/model/Asset;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/vending/Assets$1;->this$0:Lcom/android/vending/Assets;

    iput-object p2, p0, Lcom/android/vending/Assets$1;->val$asset:Lcom/android/vending/model/Asset;

    iput-object p3, p0, Lcom/android/vending/Assets$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 4
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 35
    if-eqz p2, :cond_0

    .line 36
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    new-instance v1, Lcom/android/vending/GetAssetAsynchRequest;

    iget-object v2, p0, Lcom/android/vending/Assets$1;->val$asset:Lcom/android/vending/model/Asset;

    iget-object v3, p0, Lcom/android/vending/Assets$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/vending/GetAssetAsynchRequest;-><init>(Lcom/android/vending/model/Asset;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/vending/Assets$1;->val$context:Landroid/content/Context;

    const v1, 0x7f070066

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
