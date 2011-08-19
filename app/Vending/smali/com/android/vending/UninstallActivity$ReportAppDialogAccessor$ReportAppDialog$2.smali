.class Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$2;
.super Ljava/lang/Object;
.source "UninstallActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;-><init>(Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

.field final synthetic val$this$1:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$2;->this$2:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

    iput-object p2, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$2;->val$this$1:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$2;->this$2:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 396
    .local v0, button:Landroid/widget/Button;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 397
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 398
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$2;->this$2:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->mCurrentComment:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 405
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 408
    return-void
.end method
