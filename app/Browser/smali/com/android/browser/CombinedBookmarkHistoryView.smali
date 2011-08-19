.class public Lcom/android/browser/CombinedBookmarkHistoryView;
.super Landroid/widget/LinearLayout;
.source "CombinedBookmarkHistoryView.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/browser/OptionsMenuHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;
    }
.end annotation


# static fields
.field private static sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActivity:Landroid/app/Activity;

.field private mBookmarkCallbackWrapper:Lcom/android/browser/BookmarksPageCallbacks;

.field mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

.field mBookmarksHeader:Landroid/view/ViewGroup;

.field mCurrentFragment:I

.field private mExtras:Landroid/os/Bundle;

.field mHistory:Lcom/android/browser/BrowserHistoryPage;

.field mTabBookmarks:Landroid/app/ActionBar$Tab;

.field mTabHistory:Landroid/app/ActionBar$Tab;

.field private mUiController:Lcom/android/browser/UiController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;ILandroid/os/Bundle;)V
    .locals 8
    .parameter "activity"
    .parameter "controller"
    .parameter "startingFragment"
    .parameter "extras"

    .prologue
    const/4 v7, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput v7, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mCurrentFragment:I

    .line 192
    new-instance v2, Lcom/android/browser/CombinedBookmarkHistoryView$2;

    invoke-direct {v2, p0}, Lcom/android/browser/CombinedBookmarkHistoryView$2;-><init>(Lcom/android/browser/CombinedBookmarkHistoryView;)V

    iput-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarkCallbackWrapper:Lcom/android/browser/BookmarksPageCallbacks;

    .line 120
    iput-object p2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mUiController:Lcom/android/browser/UiController;

    .line 121
    iput-object p1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActivity:Landroid/app/Activity;

    .line 122
    iput-object p4, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mExtras:Landroid/os/Bundle;

    .line 123
    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    .line 125
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04000a

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    .local v0, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarksHeader:Landroid/view/ViewGroup;

    .line 132
    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarksHeader:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/16 v6, 0x10

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/browser/CombinedBookmarkHistoryView;->initFragments(Landroid/os/Bundle;)V

    .line 142
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 146
    new-instance v2, Lcom/android/browser/CombinedBookmarkHistoryView$1;

    invoke-direct {v2, p0}, Lcom/android/browser/CombinedBookmarkHistoryView$1;-><init>(Lcom/android/browser/CombinedBookmarkHistoryView;)V

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/browser/CombinedBookmarkHistoryView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    invoke-virtual {p0, p3}, Lcom/android/browser/CombinedBookmarkHistoryView;->setupActionBar(I)V

    .line 156
    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2, p0}, Lcom/android/browser/UiController;->registerOptionsMenuHandler(Lcom/android/browser/OptionsMenuHandler;)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/CombinedBookmarkHistoryView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/CombinedBookmarkHistoryView;)Lcom/android/browser/UiController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mUiController:Lcom/android/browser/UiController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/CombinedBookmarkHistoryView;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/browser/CombinedBookmarkHistoryView;->sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    invoke-direct {v0}, Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;-><init>()V

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryView;->sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    .line 114
    :cond_0
    sget-object v0, Lcom/android/browser/CombinedBookmarkHistoryView;->sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    return-object v0
.end method

.method private initFragments(Landroid/os/Bundle;)V
    .locals 2
    .parameter "extras"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarkCallbackWrapper:Lcom/android/browser/BookmarksPageCallbacks;

    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarksHeader:Landroid/view/ViewGroup;

    invoke-static {v0, p1, v1}, Lcom/android/browser/BrowserBookmarksPage;->newInstance(Lcom/android/browser/BookmarksPageCallbacks;Landroid/os/Bundle;Landroid/view/ViewGroup;)Lcom/android/browser/BrowserBookmarksPage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    .line 226
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setBreadCrumbMaxVisible(I)V

    .line 227
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setBreadCrumbUseBackButton(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mUiController:Lcom/android/browser/UiController;

    invoke-static {v0, p1}, Lcom/android/browser/BrowserHistoryPage;->newInstance(Lcom/android/browser/BookmarksHistoryCallbacks;Landroid/os/Bundle;)Lcom/android/browser/BrowserHistoryPage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mHistory:Lcom/android/browser/BrowserHistoryPage;

    .line 229
    return-void
.end method

.method private loadFragment(ILandroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "id"
    .parameter "ft"

    .prologue
    const v1, 0x7f10001e

    .line 232
    iget v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mCurrentFragment:I

    if-ne v0, p1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 234
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {p2, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 244
    :goto_1
    iput p1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mCurrentFragment:I

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mHistory:Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {p2, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method onBackPressed()Z
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mCurrentFragment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksPage;->onBackPressed()Z

    move-result v0

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    iget v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mCurrentFragment:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 187
    .local v0, fm:Landroid/app/FragmentManager;
    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mUiController:Lcom/android/browser/UiController;

    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mHistory:Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v2}, Lcom/android/browser/BrowserHistoryPage;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/BrowserHistoryPage;->newInstance(Lcom/android/browser/BookmarksHistoryCallbacks;Landroid/os/Bundle;)Lcom/android/browser/BrowserHistoryPage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mHistory:Lcom/android/browser/BrowserHistoryPage;

    .line 188
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f10001e

    iget-object v3, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mHistory:Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 190
    .end local v0           #fm:Landroid/app/FragmentManager;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 249
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 250
    iget v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mCurrentFragment:I

    if-eqz v2, :cond_1

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 253
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 254
    .local v1, transaction:Landroid/app/FragmentTransaction;
    iget v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mCurrentFragment:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 255
    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 259
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0           #fm:Landroid/app/FragmentManager;
    .end local v1           #transaction:Landroid/app/FragmentTransaction;
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mCurrentFragment:I

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2, p0}, Lcom/android/browser/UiController;->unregisterOptionsMenuHandler(Lcom/android/browser/OptionsMenuHandler;)V

    .line 269
    return-void

    .line 256
    .restart local v0       #fm:Landroid/app/FragmentManager;
    .restart local v1       #transaction:Landroid/app/FragmentTransaction;
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mCurrentFragment:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mHistory:Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 260
    .end local v0           #fm:Landroid/app/FragmentManager;
    .end local v1           #transaction:Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 341
    iget v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mCurrentFragment:I

    packed-switch v0, :pswitch_data_0

    move v0, v4

    .line 347
    :goto_0
    return v0

    .line 324
    :sswitch_0
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/UI;->onBackKey()Z

    move v0, v3

    .line 325
    goto :goto_0

    .line 327
    :sswitch_1
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mUiController:Lcom/android/browser/UiController;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/android/browser/UiController;->onUrlSelected(Ljava/lang/String;Z)V

    move v0, v3

    .line 329
    goto :goto_0

    .line 331
    :sswitch_2
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mUiController:Lcom/android/browser/UiController;

    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1}, Lcom/android/browser/BrowserBookmarksPage;->getFolderId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, v4}, Lcom/android/browser/UiController;->bookmarkCurrentPage(JZ)V

    move v0, v3

    .line 332
    goto :goto_0

    .line 334
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    const-string v1, "currentPage"

    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v3

    .line 338
    goto :goto_0

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksPage;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mHistory:Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserHistoryPage;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10009b -> :sswitch_2
        0x7f10009c -> :sswitch_1
        0x7f10009f -> :sswitch_3
    .end sparse-switch

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 293
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mTabBookmarks:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_1

    .line 298
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/browser/CombinedBookmarkHistoryView;->loadFragment(ILandroid/app/FragmentTransaction;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mTabHistory:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_0

    .line 300
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/android/browser/CombinedBookmarkHistoryView;->loadFragment(ILandroid/app/FragmentTransaction;)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 307
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method setupActionBar(I)V
    .locals 6
    .parameter "startingFragment"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 167
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 168
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mTabBookmarks:Landroid/app/ActionBar$Tab;

    .line 169
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mTabBookmarks:Landroid/app/ActionBar$Tab;

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 170
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mTabBookmarks:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 171
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mTabBookmarks:Landroid/app/ActionBar$Tab;

    if-ne v4, p1, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 172
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mTabHistory:Landroid/app/ActionBar$Tab;

    .line 173
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mTabHistory:Landroid/app/ActionBar$Tab;

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 174
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mTabHistory:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 175
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mTabHistory:Landroid/app/ActionBar$Tab;

    if-ne v5, p1, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 176
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mBookmarksHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 178
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 171
    goto :goto_1

    :cond_2
    move v2, v3

    .line 175
    goto :goto_2
.end method
