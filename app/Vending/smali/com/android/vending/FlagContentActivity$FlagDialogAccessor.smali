.class Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;
.super Ljava/lang/Object;
.source "FlagContentActivity.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/FlagContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlagDialogAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/FlagContentActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/FlagContentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/FlagContentActivity;Lcom/android/vending/FlagContentActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;-><init>(Lcom/android/vending/FlagContentActivity;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;

    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;-><init>(Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;Landroid/content/Context;)V

    return-object v0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 231
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 232
    .local v1, alertDialog:Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v2}, Lcom/android/vending/FlagContentActivity;->access$000(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->flagPromptStringResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 233
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 238
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 236
    return-void
.end method
