.class Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;
.super Landroid/app/AlertDialog;
.source "FlagContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlagDialog"
.end annotation


# instance fields
.field protected mCurrentComment:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;


# direct methods
.method public constructor <init>(Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->this$1:Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;

    .line 252
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 253
    const v2, 0x7f04003c

    iget-object v3, p1, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v2, v3}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 255
    .local v1, flagMessageView:Landroid/view/View;
    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    .local v0, commentBox:Landroid/widget/TextView;
    const v2, 0x7f020036

    invoke-virtual {p0, v2}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->setIcon(I)V

    .line 258
    iget-object v2, p1, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v2}, Lcom/android/vending/FlagContentActivity;->access$000(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->flagPromptStringResId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->setTitle(I)V

    .line 259
    invoke-virtual {p0, v1}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->setView(Landroid/view/View;)V

    .line 260
    const/4 v2, -0x1

    const v3, 0x7f07002e

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$1;-><init>(Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;Landroid/widget/TextView;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 267
    const/4 v3, -0x2

    const v2, 0x7f07002c

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 269
    new-instance v2, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$2;-><init>(Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 286
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 308
    const-string v2, "flagDialogIcicleKeyComment"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, comment:Ljava/lang/String;
    const v2, 0x7f0800d5

    invoke-virtual {p0, v2}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 310
    .local v1, commentBox:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    return-void

    .line 313
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 315
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 301
    .local v0, icicle:Landroid/os/Bundle;
    const-string v1, "flagDialogIcicleKeyComment"

    iget-object v2, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->mCurrentComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-object v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 293
    const v1, 0x7f0800d5

    invoke-virtual {p0, v1}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 294
    .local v0, commentBox:Landroid/widget/TextView;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    return-void
.end method
