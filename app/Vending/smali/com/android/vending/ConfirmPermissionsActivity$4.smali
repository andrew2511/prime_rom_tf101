.class Lcom/android/vending/ConfirmPermissionsActivity$4;
.super Ljava/lang/Object;
.source "ConfirmPermissionsActivity.java"

# interfaces
.implements Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/ConfirmPermissionsActivity;->updateIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/ConfirmPermissionsActivity;

.field final synthetic val$assetIndex:I


# direct methods
.method constructor <init>(Lcom/android/vending/ConfirmPermissionsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/vending/ConfirmPermissionsActivity$4;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    iput p2, p0, Lcom/android/vending/ConfirmPermissionsActivity$4;->val$assetIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadFailure(Lcom/android/vending/model/Asset;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "asset"
    .parameter "t"

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed loading image for asset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public onImageLoadSuccess(Lcom/android/vending/model/Asset;)V
    .locals 2
    .parameter "asset"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity$4;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    iget-object v0, v0, Lcom/android/vending/ConfirmPermissionsActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/ConfirmPermissionsActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/vending/ConfirmPermissionsActivity$4$1;-><init>(Lcom/android/vending/ConfirmPermissionsActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    return-void
.end method
