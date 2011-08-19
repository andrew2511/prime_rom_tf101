.class Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;
.super Landroid/app/AlertDialog;
.source "UninstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportAppDialog"
.end annotation


# instance fields
.field protected mCurrentComment:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;


# direct methods
.method public constructor <init>(Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->this$1:Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;

    .line 369
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 370
    const v2, 0x7f04003c

    iget-object v3, p1, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v2, v3}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 372
    .local v1, flagMessageView:Landroid/view/View;
    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 374
    .local v0, commentBox:Landroid/widget/TextView;
    const v2, 0x7f020036

    invoke-virtual {p0, v2}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->setIcon(I)V

    .line 375
    const v2, 0x7f070164

    invoke-virtual {p0, v2}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->setTitle(I)V

    .line 376
    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->setView(Landroid/view/View;)V

    .line 377
    const/4 v2, -0x1

    const v3, 0x7f07002e

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$1;-><init>(Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;Landroid/widget/TextView;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 390
    const/4 v3, -0x2

    const v2, 0x7f07002c

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 392
    new-instance v2, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog$2;-><init>(Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 410
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 431
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 432
    const-string v2, "reportAppDialogIcicleKeyComment"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, comment:Ljava/lang/String;
    const v2, 0x7f0800d5

    invoke-virtual {p0, v2}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 434
    .local v1, commentBox:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    return-void

    .line 437
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 439
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 424
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 425
    .local v0, icicle:Landroid/os/Bundle;
    const-string v1, "reportAppDialogIcicleKeyComment"

    iget-object v2, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->mCurrentComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-object v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 414
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 417
    const v1, 0x7f0800d5

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 418
    .local v0, commentBox:Landroid/widget/TextView;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 420
    return-void
.end method
