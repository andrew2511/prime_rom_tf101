.class Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RatingDialogAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2491
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2508
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2491
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 2493
    new-instance v0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;-><init>(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;Landroid/content/Context;)V

    return-object v0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2497
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 2501
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 2499
    return-void
.end method
