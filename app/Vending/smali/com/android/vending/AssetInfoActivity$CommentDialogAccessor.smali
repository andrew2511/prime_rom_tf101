.class Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;
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
    name = "CommentDialogAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2377
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2394
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2377
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 2379
    new-instance v0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;-><init>(Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;Landroid/content/Context;)V

    return-object v0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2383
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 2387
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 2385
    return-void
.end method
