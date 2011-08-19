.class Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;
.super Ljava/lang/Object;
.source "UninstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$commentBox:Landroid/widget/TextView;

.field final synthetic val$this$1:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;->this$2:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

    iput-object p2, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;->val$this$1:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;

    iput-object p3, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;->val$commentBox:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 380
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    new-instance v1, Lcom/android/vending/UninstallActivity$ReportApplicationRequest;

    iget-object v2, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;->this$2:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

    iget-object v2, v2, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->this$1:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;

    iget-object v2, v2, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    iget-object v2, v2, Lcom/android/vending/UninstallActivity;->mActualAssetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;->val$commentBox:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vending/UninstallActivity$ReportApplicationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 384
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;->this$2:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->this$1:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Lcom/android/vending/UninstallActivity;->displayToast(I)V

    .line 386
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;->this$2:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->this$1:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/UninstallActivity;->setResult(I)V

    .line 387
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;->this$2:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->this$1:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-virtual {v0}, Lcom/android/vending/UninstallActivity;->finish()V

    .line 388
    return-void
.end method
