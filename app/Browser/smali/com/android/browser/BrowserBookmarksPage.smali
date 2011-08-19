.class public Lcom/android/browser/BrowserBookmarksPage;
.super Landroid/app/Fragment;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/webkit/WebIconDatabase$IconListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/browser/BreadCrumbView$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;,
        Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/view/View$OnCreateContextMenuListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/webkit/WebIconDatabase$IconListener;",
        "Lcom/android/browser/BreadCrumbView$Controller;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

.field mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

.field mCanceled:Z

.field private mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mCrumbBackButton:Z

.field mCrumbMaxVisible:I

.field mCrumbVisibility:I

.field mCrumbs:Lcom/android/browser/BreadCrumbView;

.field mCurrentView:I

.field mDisableNewWindow:Z

.field mEmptyView:Landroid/view/View;

.field mEnableContextMenu:Z

.field mGrid:Landroid/widget/GridView;

.field mHeader:Landroid/view/View;

.field mHeaderContainer:Landroid/view/ViewGroup;

.field mList:Landroid/widget/ListView;

.field mRoot:Landroid/view/View;

.field mShowRootFolder:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mShowRootFolder:Z

    .line 104
    iput v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbVisibility:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbMaxVisible:I

    .line 106
    iput-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbBackButton:Z

    .line 254
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$1;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 696
    return-void
.end method

.method private canGoBack()Z
    .locals 2

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, c:Lcom/android/browser/BreadCrumbView$Crumb;
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v1}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v0

    .line 669
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/browser/BreadCrumbView$Crumb;->canGoBack:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 544
    .local v0, cm:Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 545
    return-void
.end method

.method static createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 448
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, url:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, title:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {p1, v4}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 451
    .local v2, touchIcon:Landroid/graphics/Bitmap;
    const/4 v4, 0x3

    invoke-static {p1, v4}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 452
    .local v0, favicon:Landroid/graphics/Bitmap;
    invoke-static {p0, v3, v1, v2, v0}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v4

    return-object v4
.end method

.method private displayRemoveBookmarkDialog(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 526
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v5, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    .line 527
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 528
    .local v2, id:J
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 530
    .local v0, context:Landroid/content/Context;
    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    .line 531
    return-void
.end method

.method private editBookmark(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 501
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v1, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    .line 503
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 504
    const-string v3, "title"

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v3, "url"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 509
    if-eqz v3, :cond_0

    .line 510
    const-string v4, "favicon"

    array-length v5, v3

    invoke-static {v3, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 513
    :cond_0
    const-string v3, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 515
    const-string v3, "parent"

    const/16 v4, 0x8

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 517
    const-string v3, "bookmark"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 518
    const-string v2, "is_folder"

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_1

    move v1, v7

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->startActivity(Landroid/content/Intent;)V

    .line 521
    return-void

    :cond_1
    move v1, v6

    .line 518
    goto :goto_0
.end method

.method static getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 247
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 248
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 249
    const/4 v1, 0x0

    .line 251
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getDefaultView()I
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getUrl(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "c"

    .prologue
    .line 538
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadFolder(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 635
    .local v1, manager:Landroid/app/LoaderManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BookmarksLoader;

    .line 637
    .local v0, loader:Lcom/android/browser/BookmarksLoader;
    invoke-virtual {v0, p1}, Lcom/android/browser/BookmarksLoader;->setUri(Landroid/net/Uri;)V

    .line 638
    invoke-virtual {v0}, Lcom/android/browser/BookmarksLoader;->forceLoad()V

    .line 639
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v3}, Lcom/android/browser/BreadCrumbView;->getTopLevel()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/android/browser/BookmarksPageCallbacks;->onFolderChanged(ILandroid/net/Uri;)V

    .line 642
    :cond_0
    return-void
.end method

.method private loadUrl(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v1, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/browser/BookmarksPageCallbacks;->onBookmarkSelected(Landroid/database/Cursor;Z)Z

    .line 459
    :cond_0
    return-void
.end method

.method static newInstance(Lcom/android/browser/BookmarksPageCallbacks;Landroid/os/Bundle;Landroid/view/ViewGroup;)Lcom/android/browser/BrowserBookmarksPage;
    .locals 1
    .parameter "cb"
    .parameter "args"
    .parameter "headerContainer"

    .prologue
    .line 110
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {v0}, Lcom/android/browser/BrowserBookmarksPage;-><init>()V

    .line 111
    .local v0, bbp:Lcom/android/browser/BrowserBookmarksPage;
    iput-object p0, v0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    .line 112
    iput-object p2, v0, Lcom/android/browser/BrowserBookmarksPage;->mHeaderContainer:Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksPage;->setArguments(Landroid/os/Bundle;)V

    .line 114
    return-object v0
.end method

.method private openInNewWindow(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 462
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v4, :cond_0

    .line 463
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 464
    .local v0, c:Landroid/database/Cursor;
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_1

    move v3, v6

    .line 465
    .local v3, isFolder:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 466
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 467
    .local v1, id:J
    new-instance v4, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;-><init>(Lcom/android/browser/BrowserBookmarksPage;J)V

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 472
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #id:J
    .end local v3           #isFolder:Z
    :cond_0
    :goto_1
    return-void

    .restart local v0       #c:Landroid/database/Cursor;
    :cond_1
    move v3, v5

    .line 464
    goto :goto_0

    .line 469
    .restart local v3       #isFolder:Z
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    invoke-interface {v4, v0}, Lcom/android/browser/BookmarksPageCallbacks;->onOpenInNewWindow(Landroid/database/Cursor;)Z

    goto :goto_1
.end method

.method private populateBookmarkItem(Landroid/database/Cursor;Lcom/android/browser/BookmarkItem;Z)V
    .locals 7
    .parameter "cursor"
    .parameter "item"
    .parameter "isFolder"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 308
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 309
    if-eqz p3, :cond_0

    .line 310
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020038

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 314
    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;-><init>(Landroid/content/Context;Lcom/android/browser/BookmarkItem;)V

    new-array v3, v4, [Ljava/lang/Long;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    :goto_0
    return-void

    .line 317
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 319
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 321
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryView;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setupBookmarkView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 596
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentView:I

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksAdapter;->selectView(I)V

    .line 597
    iget v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentView:I

    packed-switch v0, :pswitch_data_0

    .line 615
    :goto_0
    return-void

    .line 599
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 600
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eq v0, v1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 607
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 608
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eq v0, v1, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method canEdit(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 303
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, unique:Ljava/lang/String;
    const-string v1, "other_bookmarks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFolderId()J
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    .line 166
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 167
    .local v1, manager:Landroid/app/LoaderManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BookmarksLoader;

    .line 170
    .local v0, loader:Lcom/android/browser/BookmarksLoader;
    invoke-virtual {v0}, Lcom/android/browser/BookmarksLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 171
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 173
    :try_start_0
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 178
    :goto_0
    return-wide v4

    .line 174
    :catch_0
    move-exception v2

    .local v2, nfx:Ljava/lang/NumberFormatException;
    move-wide v4, v5

    .line 175
    goto :goto_0

    .end local v2           #nfx:Ljava/lang/NumberFormatException;
    :cond_0
    move-wide v4, v5

    .line 178
    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v0}, Lcom/android/browser/BreadCrumbView;->popView()V

    .line 660
    const/4 v0, 0x1

    .line 662
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 563
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 564
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0c0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 565
    .local v0, horizontalSpacing:I
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 566
    const v4, 0x7f0c0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 567
    .local v1, paddingLeftRight:I
    const v4, 0x7f0c0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 568
    .local v2, paddingTop:I
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 570
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 571
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 183
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 186
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    if-eqz v6, :cond_0

    move v6, v7

    .line 243
    :goto_0
    return v6

    .line 189
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 192
    .local v3, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1

    move v6, v7

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 241
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 198
    :sswitch_0
    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(I)V

    :goto_1
    move v6, v10

    .line 243
    goto :goto_0

    .line 201
    :sswitch_1
    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->editBookmark(I)V

    goto :goto_1

    .line 204
    :sswitch_2
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    .line 205
    .local v1, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 208
    .end local v1           #c:Landroid/database/Cursor;
    :sswitch_3
    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveBookmarkDialog(I)V

    goto :goto_1

    .line 211
    :sswitch_4
    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->openInNewWindow(I)V

    goto :goto_1

    .line 214
    :sswitch_5
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 215
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v2, v8}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v2, v9}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v0, v6, v7, v8, v9}, Lcom/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 223
    .end local v2           #cursor:Landroid/database/Cursor;
    :sswitch_6
    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->copy(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 226
    :sswitch_7
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    const v6, 0x7f090051

    invoke-static {v0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 232
    :sswitch_8
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 233
    .restart local v2       #cursor:Landroid/database/Cursor;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, name:Ljava/lang/String;
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, url:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v0, v6, v5, v4}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x7f1000a1 -> :sswitch_0
        0x7f1000a2 -> :sswitch_4
        0x7f1000a3 -> :sswitch_1
        0x7f1000a4 -> :sswitch_2
        0x7f1000a5 -> :sswitch_5
        0x7f1000a6 -> :sswitch_6
        0x7f1000a7 -> :sswitch_3
        0x7f1000a8 -> :sswitch_7
        0x7f1000e6 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 334
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setHasOptionsMenu(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 337
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    .line 338
    return-void

    .line 337
    :cond_0
    const-string v1, "disable_new_window"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 13
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 273
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v7, v0

    .line 274
    .local v7, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v9, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v10, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v9, v10}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 275
    .local v3, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->canEdit(Landroid/database/Cursor;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 300
    :cond_0
    return-void

    .line 278
    :cond_1
    const/4 v9, 0x6

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_3

    move v8, v11

    .line 281
    .local v8, isFolder:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 282
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 283
    .local v6, inflater:Landroid/view/MenuInflater;
    const v9, 0x7f0f0001

    invoke-virtual {v6, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 284
    if-eqz v8, :cond_4

    .line 285
    const v9, 0x7f1000a9

    invoke-interface {p1, v9, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 292
    :cond_2
    :goto_1
    new-instance v4, Lcom/android/browser/BookmarkItem;

    invoke-direct {v4, v1}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .line 293
    .local v4, header:Lcom/android/browser/BookmarkItem;
    invoke-direct {p0, v3, v4, v8}, Lcom/android/browser/BrowserBookmarksPage;->populateBookmarkItem(Landroid/database/Cursor;Lcom/android/browser/BookmarkItem;Z)V

    .line 294
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 296
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v2

    .line 297
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v2, :cond_0

    .line 298
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #count:I
    .end local v4           #header:Lcom/android/browser/BookmarkItem;
    .end local v5           #i:I
    .end local v6           #inflater:Landroid/view/MenuInflater;
    .end local v8           #isFolder:Z
    :cond_3
    move v8, v12

    .line 278
    goto :goto_0

    .line 287
    .restart local v1       #activity:Landroid/app/Activity;
    .restart local v6       #inflater:Landroid/view/MenuInflater;
    .restart local v8       #isFolder:Z
    :cond_4
    const v9, 0x7f1000a0

    invoke-interface {p1, v9, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 288
    iget-boolean v9, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    if-eqz v9, :cond_2

    .line 289
    const v9, 0x7f1000a2

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 119
    packed-switch p1, :pswitch_data_0

    .line 136
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown loader id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 123
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v5, "acct_type"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, accountType:Ljava/lang/String;
    const-string v5, "acct_name"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, accountName:Ljava/lang/String;
    new-instance v2, Lcom/android/browser/BookmarksLoader;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v1, v0}, Lcom/android/browser/BookmarksLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v2, bl:Lcom/android/browser/BookmarksLoader;
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    if-eqz v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v5}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 129
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {v2, v4}, Lcom/android/browser/BookmarksLoader;->setUri(Landroid/net/Uri;)V

    .line 133
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    return-object v2

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 264
    const/high16 v1, 0x7f0f

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const v1, 0x7f10009b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 267
    .local v0, item:Landroid/view/MenuItem;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 269
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 345
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f040008

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    .line 346
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    .line 348
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v6, 0x7f10001c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    .line 349
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v5, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 350
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 351
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const/high16 v6, 0x7f10

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    .line 352
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 353
    iget-boolean v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserBookmarksPage;->setEnableContextMenu(Z)V

    .line 356
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mHeaderContainer:Landroid/view/ViewGroup;

    .line 357
    .local v1, hc:Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 358
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v6, 0x7f10001b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #hc:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 359
    .restart local v1       #hc:Landroid/view/ViewGroup;
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 361
    :cond_0
    const v5, 0x7f040009

    invoke-virtual {p1, v5, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mHeader:Landroid/view/View;

    .line 362
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 363
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mHeader:Landroid/view/View;

    const v6, 0x7f10001d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/browser/BreadCrumbView;

    iput-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    .line 364
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v5, p0}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 365
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbBackButton:Z

    invoke-virtual {v5, v6}, Lcom/android/browser/BreadCrumbView;->setUseBackButton(Z)V

    .line 366
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    iget v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbMaxVisible:I

    invoke-virtual {v5, v6}, Lcom/android/browser/BreadCrumbView;->setMaxVisible(I)V

    .line 367
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    iget v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbVisibility:I

    invoke-virtual {v5, v6}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 368
    const v5, 0x7f090062

    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserBookmarksPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    sget-object v6, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-virtual {v5, v3, v7, v6}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    .line 370
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v5, :cond_1

    .line 371
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    sget-object v6, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-interface {v5, v8, v6}, Lcom/android/browser/BookmarksPageCallbacks;->onFolderChanged(ILandroid/net/Uri;)V

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 375
    .local v2, lm:Landroid/app/LoaderManager;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 377
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 378
    const-string v5, "bookmarks_view"

    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->getDefaultView()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentView:I

    .line 380
    new-instance v5, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentView:I

    invoke-direct {v5, v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    .line 381
    const/4 v5, 0x0

    invoke-virtual {v2, v8, v5, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 384
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryView;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;->addListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 386
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    return-object v5
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 399
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 401
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 402
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mHeaderContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mHeaderContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v1, v3}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 406
    iput-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    .line 407
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 408
    iput-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    .line 409
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryView;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;->removeListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 410
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    if-eqz v4, :cond_1

    .line 424
    const-string v4, "browser"

    const-string v5, "item clicked when dismissing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 429
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move v1, v4

    .line 430
    .local v1, isFolder:Z
    :goto_1
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    invoke-interface {v4, v0, v1}, Lcom/android/browser/BookmarksPageCallbacks;->onBookmarkSelected(Landroid/database/Cursor;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 435
    :cond_2
    if-eqz v1, :cond_0

    .line 436
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, title:Ljava/lang/String;
    sget-object v4, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-static {v4, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 439
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    if-eqz v4, :cond_3

    .line 441
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v4, v2, v3}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    .line 443
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->loadFolder(Landroid/net/Uri;)V

    goto :goto_0

    .line 429
    .end local v1           #isFolder:Z
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/16 v2, 0x8

    .line 141
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 144
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->setupBookmarkView()V

    goto :goto_1

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserBookmarksPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 163
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 646
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 654
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 648
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->selectView(I)V

    move v0, v1

    .line 649
    goto :goto_0

    .line 651
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->selectView(I)V

    move v0, v1

    .line 652
    goto :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x7f10009d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 549
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 557
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 551
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->selectView(I)V

    move v0, v1

    .line 552
    goto :goto_0

    .line 554
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->selectView(I)V

    move v0, v1

    .line 555
    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x7f10009d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 575
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 576
    const v0, 0x7f10009e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentView:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move v1, v3

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 577
    const v0, 0x7f10009d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentView:I

    if-eq v1, v3, :cond_1

    move v1, v3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 578
    return-void

    :cond_0
    move v1, v4

    .line 576
    goto :goto_0

    :cond_1
    move v1, v4

    .line 577
    goto :goto_1
.end method

.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "url"
    .parameter "icon"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetChanged()V

    .line 417
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 752
    const-string v2, "acct_name"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "acct_type"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v2, v3}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 754
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v2}, Lcom/android/browser/BreadCrumbView;->clear()V

    .line 755
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 756
    .local v0, lm:Landroid/app/LoaderManager;
    invoke-virtual {v0, v5, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 757
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v2, p0}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 758
    const v2, 0x7f090062

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    .line 760
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v2, :cond_1

    .line 761
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-interface {v2, v5, v3}, Lcom/android/browser/BookmarksPageCallbacks;->onFolderChanged(ILandroid/net/Uri;)V

    .line 764
    .end local v0           #lm:Landroid/app/LoaderManager;
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onTop(ILjava/lang/Object;)V
    .locals 2
    .parameter "level"
    .parameter "data"

    .prologue
    .line 622
    move-object v0, p2

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    .line 623
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 625
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    .line 627
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->loadFolder(Landroid/net/Uri;)V

    .line 628
    return-void
.end method

.method selectView(I)V
    .locals 4
    .parameter "view"

    .prologue
    .line 581
    iget v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentView:I

    if-ne p1, v2, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iput p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentView:I

    .line 585
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 586
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 587
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bookmarks_view"

    iget v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentView:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 589
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->setupBookmarkView()V

    goto :goto_0
.end method

.method public setBreadCrumbMaxVisible(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 743
    iput p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbMaxVisible:I

    .line 744
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbMaxVisible:I

    invoke-virtual {v0, v1}, Lcom/android/browser/BreadCrumbView;->setMaxVisible(I)V

    .line 747
    :cond_0
    return-void
.end method

.method public setBreadCrumbUseBackButton(Z)V
    .locals 2
    .parameter "use"

    .prologue
    .line 736
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbBackButton:Z

    .line 737
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCrumbBackButton:Z

    invoke-virtual {v0, v1}, Lcom/android/browser/BreadCrumbView;->setUseBackButton(Z)V

    .line 740
    :cond_0
    return-void
.end method

.method public setCallbackListener(Lcom/android/browser/BookmarksPageCallbacks;)V
    .locals 0
    .parameter "callbackListener"

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    .line 674
    return-void
.end method

.method public setEnableContextMenu(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 677
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    .line 678
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 679
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->registerForContextMenu(Landroid/view/View;)V

    .line 686
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 687
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    if-eqz v0, :cond_3

    .line 688
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->registerForContextMenu(Landroid/view/View;)V

    .line 694
    :cond_1
    :goto_1
    return-void

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->unregisterForContextMenu(Landroid/view/View;)V

    .line 683
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLongClickable(Z)V

    goto :goto_0

    .line 690
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->unregisterForContextMenu(Landroid/view/View;)V

    .line 691
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    goto :goto_1
.end method
