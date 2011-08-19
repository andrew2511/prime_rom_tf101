.class Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;
.super Ljava/lang/Object;
.source "SyncDisabledDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 39
    iget-object v2, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 40
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 42
    .local v0, account:Landroid/accounts/Account;
    const-string v2, "com.google.android.apps.books"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 43
    const v2, 0x7f0b0068

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 46
    iget-object v2, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->access$000(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V

    .line 47
    return-void
.end method
