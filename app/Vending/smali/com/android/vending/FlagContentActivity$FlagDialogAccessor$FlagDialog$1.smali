.class Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$1;
.super Ljava/lang/Object;
.source "FlagContentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;-><init>(Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;

.field final synthetic val$commentBox:Landroid/widget/TextView;

.field final synthetic val$this$1:Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$1;->this$2:Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;

    iput-object p2, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$1;->val$this$1:Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;

    iput-object p3, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$1;->val$commentBox:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$1;->this$2:Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;

    iget-object v0, v0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->this$1:Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;

    iget-object v0, v0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;->this$0:Lcom/android/vending/FlagContentActivity;

    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$1;->val$commentBox:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/FlagContentActivity;->access$1002(Lcom/android/vending/FlagContentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog$1;->this$2:Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;

    iget-object v0, v0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor$FlagDialog;->this$1:Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;

    iget-object v0, v0, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v0}, Lcom/android/vending/FlagContentActivity;->access$300(Lcom/android/vending/FlagContentActivity;)V

    .line 265
    return-void
.end method
