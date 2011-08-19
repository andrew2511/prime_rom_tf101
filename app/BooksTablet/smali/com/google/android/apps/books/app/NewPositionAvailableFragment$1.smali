.class Lcom/google/android/apps/books/app/NewPositionAvailableFragment$1;
.super Ljava/lang/Object;
.source "NewPositionAvailableFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/NewPositionAvailableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/NewPositionAvailableFragment;

.field final synthetic val$arguments:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/NewPositionAvailableFragment;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$1;->this$0:Lcom/google/android/apps/books/app/NewPositionAvailableFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$1;->val$arguments:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$1;->this$0:Lcom/google/android/apps/books/app/NewPositionAvailableFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$1;->this$0:Lcom/google/android/apps/books/app/NewPositionAvailableFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$1;->val$arguments:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$Arguments;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$1;->val$arguments:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$Arguments;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$1;->val$arguments:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$Arguments;->getPosition(Landroid/os/Bundle;)Lcom/google/android/apps/books/common/Position;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->acceptNewPosition(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;)V

    .line 75
    :cond_0
    return-void
.end method
