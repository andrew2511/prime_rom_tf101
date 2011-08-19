.class Lcom/google/android/apps/books/app/BooksActivity$1$2;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksActivity$1;->addVolumeToMyEBooks(Landroid/accounts/Account;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity$1;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->val$volumeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 667
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iget-object v2, v2, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 668
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 669
    .local v1, ft:Landroid/app/FragmentTransaction;
    const-class v2, Lcom/google/android/apps/books/app/PromptAddVolumeDialog;

    const-string v3, "addToMyEBooks"

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->val$account:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->val$volumeId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$Arguments;->create(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v1, v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$1300(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 672
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 673
    return-void
.end method
