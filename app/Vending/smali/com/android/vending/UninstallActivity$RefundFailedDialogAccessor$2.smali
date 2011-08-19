.class Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$2;
.super Ljava/lang/Object;
.source "UninstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;->create()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$2;->this$1:Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$2;->this$1:Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/UninstallActivity;->setResult(I)V

    .line 305
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$2;->this$1:Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-virtual {v0}, Lcom/android/vending/UninstallActivity;->finish()V

    .line 306
    return-void
.end method
