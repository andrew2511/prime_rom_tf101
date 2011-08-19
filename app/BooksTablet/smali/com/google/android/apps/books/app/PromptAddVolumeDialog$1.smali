.class Lcom/google/android/apps/books/app/PromptAddVolumeDialog$1;
.super Ljava/lang/Object;
.source "PromptAddVolumeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/PromptAddVolumeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/PromptAddVolumeDialog;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/PromptAddVolumeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$1;->this$0:Lcom/google/android/apps/books/app/PromptAddVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 59
    iget-object v4, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$1;->this$0:Lcom/google/android/apps/books/app/PromptAddVolumeDialog;

    invoke-virtual {v4}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 60
    .local v1, args:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$1;->this$0:Lcom/google/android/apps/books/app/PromptAddVolumeDialog;

    invoke-virtual {v4}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksActivity;

    .line 61
    .local v0, activity:Lcom/google/android/apps/books/app/BooksActivity;
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 62
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFetchService()Ljava/util/concurrent/Future;

    move-result-object v2

    .line 63
    .local v2, fetchService:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/android/apps/books/service/ContentFetchService;>;"
    new-instance v4, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;

    invoke-static {v1}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$Arguments;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$Arguments;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v2, v5, v6}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;-><init>(Landroid/content/ContentResolver;Ljava/util/concurrent/Future;Landroid/accounts/Account;Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$AddTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    iget-object v4, p0, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$1;->this$0:Lcom/google/android/apps/books/app/PromptAddVolumeDialog;

    invoke-virtual {v4}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog;->dismiss()V

    .line 66
    return-void
.end method
