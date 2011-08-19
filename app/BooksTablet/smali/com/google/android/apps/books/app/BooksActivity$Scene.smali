.class public interface abstract Lcom/google/android/apps/books/app/BooksActivity$Scene;
.super Ljava/lang/Object;
.source "BooksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Scene"
.end annotation


# virtual methods
.method public abstract acceptNewPosition(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;)V
.end method

.method public abstract addVolumeToMyEBooks(Landroid/accounts/Account;Ljava/lang/String;)V
.end method

.method public abstract authenticationFinished(Landroid/content/Intent;Ljava/lang/Exception;I)V
.end method

.method public abstract findReaderSettingsFragment()Lcom/google/android/apps/books/app/ReaderSettingsFragment;
.end method

.method public abstract findStaticViewById(I)Landroid/view/View;
.end method

.method public abstract finishedPickingAccount(Landroid/accounts/Account;)V
.end method

.method public abstract getActionBar()Landroid/app/ActionBar;
.end method

.method public abstract hintHomeLoaded()V
.end method

.method public abstract isHomeVisited()Z
.end method

.method public abstract isSettingsVisible()Z
.end method

.method public abstract moveToHome()V
.end method

.method public abstract moveToHomeAllowingStateLoss()V
.end method

.method public abstract moveToReader(Ljava/lang/String;ZZZ)V
.end method

.method public abstract onExternalStorageException()V
.end method

.method public abstract openAuthenticatedUrl(Ljava/lang/String;)V
.end method

.method public abstract openInternalUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract pickAccount()V
.end method

.method public abstract populateActionBar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract reset()V
.end method

.method public abstract showConcurrentAccessDeniedDialog(I)V
.end method

.method public abstract showError(Landroid/os/Bundle;)V
.end method

.method public abstract showHelp(ZLandroid/os/Bundle;)V
.end method

.method public abstract showNewPositionAvailableDialog(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showSettings(Z)V
.end method

.method public abstract startAboutVolume(Ljava/lang/String;)V
.end method

.method public abstract startBuyVolume(Ljava/lang/String;)V
.end method

.method public abstract startForcedSync()V
.end method

.method public abstract startSearch(Ljava/lang/String;)V
.end method

.method public abstract startShare(Ljava/lang/String;Ljava/lang/CharSequence;)V
.end method

.method public abstract startShop()V
.end method

.method public abstract updateNightMode()V
.end method
