.class Lcom/android/vending/UninstallActivity$UninstallApplicationLoader;
.super Lcom/android/vending/BaseActivity$AssetInfoLoader;
.source "UninstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/UninstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallApplicationLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/UninstallActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/UninstallActivity;Ljava/lang/String;Lcom/android/vending/AssetItemAdapter;)V
    .locals 1
    .parameter
    .parameter "assetId"
    .parameter "assetAdapter"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$UninstallApplicationLoader;->this$0:Lcom/android/vending/UninstallActivity;

    .line 335
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/vending/BaseActivity$AssetInfoLoader;-><init>(Lcom/android/vending/BaseActivity;Ljava/lang/String;Lcom/android/vending/AssetItemAdapter;Z)V

    .line 336
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Lcom/android/vending/BaseActivity$AssetInfoLoader;->displayResults()V

    .line 341
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$UninstallApplicationLoader;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v0}, Lcom/android/vending/UninstallActivity;->access$600(Lcom/android/vending/UninstallActivity;)V

    .line 342
    return-void
.end method
