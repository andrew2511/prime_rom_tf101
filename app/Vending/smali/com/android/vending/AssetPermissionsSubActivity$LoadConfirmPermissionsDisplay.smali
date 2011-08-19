.class Lcom/android/vending/AssetPermissionsSubActivity$LoadConfirmPermissionsDisplay;
.super Lcom/android/vending/BaseActivity$AssetInfoLoader;
.source "AssetPermissionsSubActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetPermissionsSubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadConfirmPermissionsDisplay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetPermissionsSubActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetPermissionsSubActivity;Ljava/lang/String;Lcom/android/vending/AssetItemAdapter;)V
    .locals 1
    .parameter
    .parameter "assetId"
    .parameter "assetAdapter"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/vending/AssetPermissionsSubActivity$LoadConfirmPermissionsDisplay;->this$0:Lcom/android/vending/AssetPermissionsSubActivity;

    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/vending/BaseActivity$AssetInfoLoader;-><init>(Lcom/android/vending/BaseActivity;Ljava/lang/String;Lcom/android/vending/AssetItemAdapter;Z)V

    .line 181
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/vending/BaseActivity$AssetInfoLoader;->displayResults()V

    .line 186
    iget-object v0, p0, Lcom/android/vending/AssetPermissionsSubActivity$LoadConfirmPermissionsDisplay;->this$0:Lcom/android/vending/AssetPermissionsSubActivity;

    invoke-static {v0}, Lcom/android/vending/AssetPermissionsSubActivity;->access$100(Lcom/android/vending/AssetPermissionsSubActivity;)V

    .line 187
    return-void
.end method
