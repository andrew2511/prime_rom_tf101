.class Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectContentRatingAccessor"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCheckedPosition:I

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mSelectedPosition:I

.field final synthetic this$0:Lcom/android/vending/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/SettingsActivity;Landroid/content/Context;Landroid/widget/ListAdapter;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "adapter"
    .parameter "checkedPosition"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mContext:Landroid/content/Context;

    .line 393
    iput-object p3, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mAdapter:Landroid/widget/ListAdapter;

    .line 394
    iput p4, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    .line 395
    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 398
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700ad

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07002b

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 404
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    .line 405
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 406
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, -0x1

    .line 419
    if-ltz p2, :cond_1

    .line 420
    iput p2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mSelectedPosition:I

    .line 421
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    if-ne p2, v2, :cond_0

    .line 423
    iget v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mSelectedPosition:I

    iput v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    .line 424
    invoke-static {}, Lcom/android/vending/SettingsActivity;->access$300()[Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    .local v0, newContentRating:I
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v1, v0}, Lcom/android/vending/SettingsActivity;->access$400(Lcom/android/vending/SettingsActivity;I)V

    .line 426
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v1}, Lcom/android/vending/SettingsActivity;->access$600(Lcom/android/vending/SettingsActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {}, Lcom/android/vending/SettingsActivity;->access$500()[I

    move-result-object v2

    iget v3, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, -0x1

    .line 439
    iget v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    if-ne v1, v3, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 447
    .local v0, listView:Landroid/widget/ListView;
    iget v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    if-ne v1, v3, :cond_1

    .line 448
    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_1
    iget v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 410
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 416
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 413
    return-void
.end method
