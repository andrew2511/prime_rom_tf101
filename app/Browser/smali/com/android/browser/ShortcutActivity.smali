.class public Lcom/android/browser/ShortcutActivity;
.super Landroid/app/Activity;
.source "ShortcutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/browser/BookmarksPageCallbacks;


# instance fields
.field private mBookmarks:Lcom/android/browser/BrowserBookmarksPage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/browser/ShortcutActivity;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksPage;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 73
    :cond_0
    return-void
.end method

.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .locals 2
    .parameter "c"
    .parameter "isFolder"

    .prologue
    .line 54
    if-eqz p2, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 60
    :goto_0
    return v1

    .line 57
    :cond_0
    invoke-static {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ShortcutActivity;->setResult(ILandroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/browser/ShortcutActivity;->finish()V

    .line 60
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/ShortcutActivity;->finish()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x7f100033
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/browser/ShortcutActivity;->setDefaultKeyMode(I)V

    .line 37
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Lcom/android/browser/ShortcutActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/browser/ShortcutActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f10001a

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BrowserBookmarksPage;

    iput-object v1, p0, Lcom/android/browser/ShortcutActivity;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    .line 40
    iget-object v1, p0, Lcom/android/browser/ShortcutActivity;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->setEnableContextMenu(Z)V

    .line 41
    iget-object v1, p0, Lcom/android/browser/ShortcutActivity;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->setBreadCrumbMaxVisible(I)V

    .line 42
    iget-object v1, p0, Lcom/android/browser/ShortcutActivity;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->setBreadCrumbUseBackButton(Z)V

    .line 43
    iget-object v1, p0, Lcom/android/browser/ShortcutActivity;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1, p0}, Lcom/android/browser/BrowserBookmarksPage;->setCallbackListener(Lcom/android/browser/BookmarksPageCallbacks;)V

    .line 44
    const v1, 0x7f100033

    invoke-virtual {p0, v1}, Lcom/android/browser/ShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, cancel:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onFolderChanged(ILandroid/net/Uri;)V
    .locals 0
    .parameter "level"
    .parameter "uri"

    .prologue
    .line 77
    return-void
.end method

.method public onOpenInNewWindow(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
