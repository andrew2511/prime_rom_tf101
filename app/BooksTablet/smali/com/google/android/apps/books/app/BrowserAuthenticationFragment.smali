.class public Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;
.super Landroid/app/Fragment;
.source "BrowserAuthenticationFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public finished(Landroid/content/Intent;Ljava/lang/Exception;)V
    .locals 4
    .parameter "intent"
    .parameter "exception"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v2

    .line 63
    .local v2, scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->access$200(Landroid/os/Bundle;)I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->authenticationFinished(Landroid/content/Intent;Ljava/lang/Exception;I)V

    .line 66
    .end local v2           #scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 67
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 73
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 74
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->access$000(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->access$100(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;-><init>(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$Client;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
