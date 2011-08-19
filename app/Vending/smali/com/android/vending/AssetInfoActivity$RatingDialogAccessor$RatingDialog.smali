.class Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;
.super Landroid/app/AlertDialog;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RatingDialog"
.end annotation


# instance fields
.field private mCurrentRating:I

.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    .line 2517
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    .line 2518
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2519
    const v2, 0x7f040057

    iget-object v3, p1, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2, v3}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 2521
    .local v1, ratingSetterFrame:Landroid/view/View;
    const v2, 0x7f08010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 2523
    .local v0, ratingBar:Landroid/widget/RatingBar;
    const v2, 0x7f020037

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->setIcon(I)V

    .line 2524
    const v2, 0x7f070178

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->setTitle(I)V

    .line 2525
    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->setView(Landroid/view/View;)V

    .line 2526
    const/4 v2, -0x1

    const v3, 0x7f07002b

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;-><init>(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;Landroid/widget/RatingBar;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2539
    const/4 v2, -0x2

    const v3, 0x7f07002c

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$2;

    invoke-direct {v4, p0, p1}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$2;-><init>(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2544
    new-instance v2, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;-><init>(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 2563
    return-void
.end method

.method static synthetic access$5600(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;Landroid/widget/RatingBar;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2508
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->getRating(Landroid/widget/RatingBar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2508
    iget v0, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->mCurrentRating:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2508
    iput p1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->mCurrentRating:I

    return p1
.end method

.method private getRating(Landroid/widget/RatingBar;)I
    .locals 1
    .parameter "ratingBar"

    .prologue
    .line 2514
    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 2590
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2593
    const v3, 0x7f08010f

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    .line 2594
    .local v2, ratingBar:Landroid/widget/RatingBar;
    const-string v3, "rating"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2595
    .local v1, rating:I
    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 2596
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 2597
    .local v0, button:Landroid/widget/Button;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2598
    if-nez v1, :cond_0

    .line 2599
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2601
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 2582
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 2584
    .local v0, icicle:Landroid/os/Bundle;
    const-string v1, "rating"

    iget v2, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->mCurrentRating:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2585
    return-object v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 2567
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 2569
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v2}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v2

    const-string v3, "rating"

    invoke-virtual {v2, v3}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2570
    .local v0, currentRating:Ljava/lang/Object;
    const v2, 0x7f08010f

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    .line 2571
    .local v1, ratingBar:Landroid/widget/RatingBar;
    if-eqz v0, :cond_0

    .line 2572
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #currentRating:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 2578
    :goto_0
    return-void

    .line 2574
    .restart local v0       #currentRating:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 2575
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
