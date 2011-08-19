.class Lcom/android/vending/ConfirmPermissionsActivity$4$1;
.super Ljava/lang/Object;
.source "ConfirmPermissionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/ConfirmPermissionsActivity$4;->onImageLoadSuccess(Lcom/android/vending/model/Asset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/ConfirmPermissionsActivity$4;


# direct methods
.method constructor <init>(Lcom/android/vending/ConfirmPermissionsActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/vending/ConfirmPermissionsActivity$4$1;->this$1:Lcom/android/vending/ConfirmPermissionsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/vending/ConfirmPermissionsActivity$4$1;->this$1:Lcom/android/vending/ConfirmPermissionsActivity$4;

    iget-object v0, v0, Lcom/android/vending/ConfirmPermissionsActivity$4;->this$0:Lcom/android/vending/ConfirmPermissionsActivity;

    iget-object v1, p0, Lcom/android/vending/ConfirmPermissionsActivity$4$1;->this$1:Lcom/android/vending/ConfirmPermissionsActivity$4;

    iget v1, v1, Lcom/android/vending/ConfirmPermissionsActivity$4;->val$assetIndex:I

    invoke-static {v0, v1}, Lcom/android/vending/ConfirmPermissionsActivity;->access$500(Lcom/android/vending/ConfirmPermissionsActivity;I)V

    .line 234
    return-void
.end method
