.class Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;->create()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor$1;->this$1:Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor$1;->this$1:Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;

    invoke-static {v0}, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;->access$300(Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2033
    return-void
.end method
