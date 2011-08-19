.class Lcom/android/vending/VendingNotificationManager$1;
.super Ljava/lang/Object;
.source "VendingNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/VendingNotificationManager;->showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/VendingNotificationManager;

.field final synthetic val$assetInfoActivity:Lcom/android/vending/AssetInfoActivity;

.field final synthetic val$dialogMessage:Ljava/lang/String;

.field final synthetic val$dialogTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/VendingNotificationManager;Lcom/android/vending/AssetInfoActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/vending/VendingNotificationManager$1;->this$0:Lcom/android/vending/VendingNotificationManager;

    iput-object p2, p0, Lcom/android/vending/VendingNotificationManager$1;->val$assetInfoActivity:Lcom/android/vending/AssetInfoActivity;

    iput-object p3, p0, Lcom/android/vending/VendingNotificationManager$1;->val$dialogTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/vending/VendingNotificationManager$1;->val$dialogMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/vending/VendingNotificationManager$1;->val$assetInfoActivity:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, p0, Lcom/android/vending/VendingNotificationManager$1;->val$dialogTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/VendingNotificationManager$1;->val$dialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/AssetInfoActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
