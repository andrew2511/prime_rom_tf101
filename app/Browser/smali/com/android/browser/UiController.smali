.class public interface abstract Lcom/android/browser/UiController;
.super Ljava/lang/Object;
.source "UiController.java"

# interfaces
.implements Lcom/android/browser/BookmarksHistoryCallbacks;


# virtual methods
.method public abstract attachSubWindow(Lcom/android/browser/Tab;)V
.end method

.method public abstract bookmarkCurrentPage(JZ)V
.end method

.method public abstract bookmarksOrHistoryPicker(Z)V
.end method

.method public abstract closeCurrentTab()V
.end method

.method public abstract closeTab(Lcom/android/browser/Tab;)V
.end method

.method public abstract endActionMode()V
.end method

.method public abstract getCurrentTopWebView()Landroid/webkit/WebView;
.end method

.method public abstract getCurrentWebView()Landroid/webkit/WebView;
.end method

.method public abstract getTabControl()Lcom/android/browser/TabControl;
.end method

.method public abstract getTabs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi()Lcom/android/browser/UI;
.end method

.method public abstract handleNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract hideCustomView()V
.end method

.method public abstract isInCustomActionMode()Z
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract openIncognitoTab()Lcom/android/browser/Tab;
.end method

.method public abstract openTabToHomePage()Lcom/android/browser/Tab;
.end method

.method public abstract registerOptionsMenuHandler(Lcom/android/browser/OptionsMenuHandler;)V
.end method

.method public abstract removeActiveTabsPage(Z)V
.end method

.method public abstract removeComboView()V
.end method

.method public abstract removeSubWindow(Lcom/android/browser/Tab;)V
.end method

.method public abstract shareCurrentPage()V
.end method

.method public abstract shouldShowErrorConsole()Z
.end method

.method public abstract startSearch(Ljava/lang/String;)V
.end method

.method public abstract startVoiceSearch()V
.end method

.method public abstract stopLoading()V
.end method

.method public abstract switchToTab(I)Z
.end method

.method public abstract unregisterOptionsMenuHandler(Lcom/android/browser/OptionsMenuHandler;)V
.end method
