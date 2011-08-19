.class Lcom/google/android/apps/books/app/BooksActivity$1$3;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksActivity$1;->showNewPositionAvailableDialog(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$chapterTitle:Ljava/lang/String;

.field final synthetic val$pageTitle:Ljava/lang/String;

.field final synthetic val$position:Lcom/google/android/apps/books/common/Position;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity$1;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$volumeId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$position:Lcom/google/android/apps/books/common/Position;

    iput-object p5, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$chapterTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$pageTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 694
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iget-object v3, v3, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 695
    .local v1, fm:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 696
    .local v2, ft:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$account:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$volumeId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$position:Lcom/google/android/apps/books/common/Position;

    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$chapterTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$pageTitle:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$Arguments;->create(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 698
    .local v0, arguments:Landroid/os/Bundle;
    const-class v3, Lcom/google/android/apps/books/app/NewPositionAvailableFragment;

    const-string v4, "newPositionAvailable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v2, v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$1300(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 700
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 701
    return-void
.end method
