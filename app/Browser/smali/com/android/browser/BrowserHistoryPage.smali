.class public Lcom/android/browser/BrowserHistoryPage;
.super Landroid/app/Fragment;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;,
        Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;,
        Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;,
        Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;,
        Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;,
        Lcom/android/browser/BrowserHistoryPage$HistoryQuery;,
        Lcom/android/browser/BrowserHistoryPage$IconReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

.field mCallbacks:Lcom/android/browser/BookmarksHistoryCallbacks;

.field private mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mChildList:Landroid/widget/ListView;

.field mChildWrapper:Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

.field mContextHeader:Lcom/android/browser/HistoryItem;

.field mDisableNewWindow:Z

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mGroupList:Landroid/widget/ListView;

.field final mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;

.field mMostVisitsLimit:Ljava/lang/String;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 95
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHistoryPage$IconReceiver;-><init>(Lcom/android/browser/BrowserHistoryPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    .line 262
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHistoryPage$1;-><init>(Lcom/android/browser/BrowserHistoryPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 273
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHistoryPage$2;-><init>(Lcom/android/browser/BrowserHistoryPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 516
    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserHistoryPage;)Landroid/app/FragmentBreadCrumbs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 121
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method static newInstance(Lcom/android/browser/BookmarksHistoryCallbacks;Landroid/os/Bundle;)Lcom/android/browser/BrowserHistoryPage;
    .locals 1
    .parameter "cb"
    .parameter "args"

    .prologue
    .line 125
    new-instance v0, Lcom/android/browser/BrowserHistoryPage;

    invoke-direct {v0}, Lcom/android/browser/BrowserHistoryPage;-><init>()V

    .line 126
    .local v0, bhp:Lcom/android/browser/BrowserHistoryPage;
    iput-object p0, v0, Lcom/android/browser/BrowserHistoryPage;->mCallbacks:Lcom/android/browser/BookmarksHistoryCallbacks;

    .line 127
    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserHistoryPage;->setArguments(Landroid/os/Bundle;)V

    .line 128
    return-object v0
.end method


# virtual methods
.method checkIfEmpty()V
    .locals 5

    .prologue
    const v4, 0x7f100049

    const v3, 0x1020004

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-static {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->access$000(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-static {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->access$100(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 385
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 387
    .local v2, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v2, :cond_0

    move v5, v7

    .line 426
    :goto_0
    return v5

    .line 390
    :cond_0
    iget-object v1, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/browser/HistoryItem;

    .line 391
    .local v1, historyItem:Lcom/android/browser/HistoryItem;
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, url:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 394
    .local v0, activity:Landroid/app/Activity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 426
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_0

    .line 396
    :sswitch_0
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage;->mCallbacks:Lcom/android/browser/BookmarksHistoryCallbacks;

    invoke-interface {v5, v4, v7}, Lcom/android/browser/BookmarksHistoryCallbacks;->onUrlSelected(Ljava/lang/String;Z)V

    move v5, v6

    .line 397
    goto :goto_0

    .line 399
    :sswitch_1
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage;->mCallbacks:Lcom/android/browser/BookmarksHistoryCallbacks;

    invoke-interface {v5, v4, v6}, Lcom/android/browser/BookmarksHistoryCallbacks;->onUrlSelected(Ljava/lang/String;Z)V

    move v5, v6

    .line 400
    goto :goto_0

    .line 402
    :sswitch_2
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 403
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v0, v5, v4, v3}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v5, v6

    .line 408
    goto :goto_0

    .line 406
    :cond_1
    invoke-static {v0, v3, v4}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 410
    :sswitch_3
    const v5, 0x7f09007b

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 412
    goto :goto_0

    .line 414
    :sswitch_4
    invoke-direct {p0, v4}, Lcom/android/browser/BrowserHistoryPage;->copy(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 415
    goto :goto_0

    .line 417
    :sswitch_5
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    move v5, v6

    .line 418
    goto :goto_0

    .line 420
    :sswitch_6
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    const v5, 0x7f090051

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 422
    goto :goto_0

    .line 394
    :sswitch_data_0
    .sparse-switch
        0x7f1000a1 -> :sswitch_0
        0x7f1000a2 -> :sswitch_1
        0x7f1000a5 -> :sswitch_3
        0x7f1000a6 -> :sswitch_4
        0x7f1000a7 -> :sswitch_5
        0x7f1000a8 -> :sswitch_6
        0x7f1000e6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserHistoryPage;->setHasOptionsMenu(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "disable_new_window"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/BrowserHistoryPage;->mDisableNewWindow:Z

    .line 224
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 225
    .local v1, mvlimit:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mMostVisitsLimit:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v11, 0x0

    .line 346
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 349
    .local v2, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 350
    .local v5, parent:Landroid/app/Activity;
    invoke-virtual {v5}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 351
    .local v3, inflater:Landroid/view/MenuInflater;
    const v9, 0x7f0f0009

    invoke-virtual {v3, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 353
    iget-object v1, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/browser/HistoryItem;

    .line 356
    .local v1, historyItem:Lcom/android/browser/HistoryItem;
    iget-object v9, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    if-nez v9, :cond_3

    .line 357
    new-instance v9, Lcom/android/browser/HistoryItem;

    invoke-direct {v9, v5, v11}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;Z)V

    iput-object v9, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    .line 361
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v1, v9}, Lcom/android/browser/HistoryItem;->copyTo(Lcom/android/browser/HistoryItem;)V

    .line 362
    iget-object v9, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 365
    iget-boolean v9, p0, Lcom/android/browser/BrowserHistoryPage;->mDisableNewWindow:Z

    if-eqz v9, :cond_1

    .line 366
    const v9, 0x7f1000a2

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 369
    :cond_1
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 370
    const v9, 0x7f1000e6

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 371
    .local v4, item:Landroid/view/MenuItem;
    const v9, 0x7f09004c

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 374
    .end local v4           #item:Landroid/view/MenuItem;
    :cond_2
    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 375
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v8, send:Landroid/content/Intent;
    const-string v9, "text/plain"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const/high16 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 378
    .local v7, ri:Landroid/content/pm/ResolveInfo;
    const v9, 0x7f1000a5

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-eqz v7, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 380
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 381
    return-void

    .line 358
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v7           #ri:Landroid/content/pm/ResolveInfo;
    .end local v8           #send:Landroid/content/Intent;
    :cond_3
    iget-object v9, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v9}, Lcom/android/browser/HistoryItem;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 359
    iget-object v9, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v9}, Lcom/android/browser/HistoryItem;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    .restart local v7       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v8       #send:Landroid/content/Intent;
    :cond_4
    move v10, v11

    .line 378
    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 22
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
    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 135
    .local v21, prefs:Landroid/content/SharedPreferences;
    const-string v4, "acct_type"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 136
    .local v18, accountType:Ljava/lang/String;
    const-string v4, "acct_name"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 137
    .local v17, accountName:Ljava/lang/String;
    sget-object v4, Landroid/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    .line 138
    .local v19, combinedBuilder:Landroid/net/Uri$Builder;
    const-string v4, "acct_type"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    const-string v4, "acct_name"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 161
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 143
    :pswitch_0
    const-string v9, "date DESC"

    .line 144
    .local v9, sort:Ljava/lang/String;
    const-string v7, "visits > 0"

    .line 145
    .local v7, where:Ljava/lang/String;
    new-instance v3, Landroid/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/browser/BrowserHistoryPage$HistoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v3, loader:Landroid/content/CursorLoader;
    move-object/from16 v20, v3

    .line 157
    .end local v3           #loader:Landroid/content/CursorLoader;
    .end local v9           #sort:Ljava/lang/String;
    .local v20, loader:Ljava/lang/Object;
    :goto_0
    return-object v20

    .line 151
    .end local v7           #where:Ljava/lang/String;
    .end local v20           #loader:Ljava/lang/Object;
    :pswitch_1
    const-string v4, "limit"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserHistoryPage;->mMostVisitsLimit:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 154
    .local v12, uri:Landroid/net/Uri;
    const-string v7, "visits > 0"

    .line 155
    .restart local v7       #where:Ljava/lang/String;
    new-instance v3, Landroid/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v11

    sget-object v13, Lcom/android/browser/BrowserHistoryPage$HistoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "visits DESC"

    move-object v10, v3

    move-object v14, v7

    invoke-direct/range {v10 .. v16}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3       #loader:Landroid/content/CursorLoader;
    move-object/from16 v20, v3

    .line 157
    .restart local v20       #loader:Ljava/lang/Object;
    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 291
    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 292
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 231
    const v2, 0x7f040015

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    .line 232
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v3, 0x7f100048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 233
    .local v1, stub:Landroid/view/ViewStub;
    const v2, 0x7f04001f

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 234
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 235
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    .line 236
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v3, 0x7f100055

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 237
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/app/FragmentBreadCrumbs;

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    .line 238
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, v5}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 239
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 240
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 241
    new-instance v2, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;-><init>(Lcom/android/browser/BrowserHistoryPage;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    .line 242
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;

    iget-object v4, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-direct {v3, v4}, Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;-><init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 244
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 245
    new-instance v2, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-direct {v2, v3}, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;-><init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mChildWrapper:Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

    .line 246
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    .line 247
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mChildWrapper:Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserHistoryPage;->registerForContextMenu(Landroid/view/View;)V

    .line 250
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v3, 0x7f100056

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 251
    .local v0, prefs:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v5, v6, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 255
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 258
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryView;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    invoke-virtual {v2, v3}, Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;->addListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 259
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 284
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryView;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    invoke-virtual {v0, v1}, Lcom/android/browser/CombinedBookmarkHistoryView$IconListenerSet;->removeListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 286
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 287
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "data"
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
    .line 187
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 190
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserHistoryPage;->selectGroup(I)V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->checkIfEmpty()V

    .line 210
    :goto_0
    return-void

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->changeMostVisitedCursor(Landroid/database/Cursor;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->checkIfEmpty()V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserHistoryPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 214
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 320
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 298
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 299
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;

    iget-object v4, p0, Lcom/android/browser/BrowserHistoryPage;->mCallbacks:Lcom/android/browser/BookmarksHistoryCallbacks;

    invoke-direct {v1, v3, v4}, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;-><init>(Landroid/content/ContentResolver;Lcom/android/browser/BookmarksHistoryCallbacks;)V

    .line 300
    .local v1, clear:Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f09007c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0900c3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09001a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09001b

    new-instance v6, Lcom/android/browser/BrowserHistoryPage$3;

    invoke-direct {v6, p0, v1}, Lcom/android/browser/BrowserHistoryPage$3;-><init>(Lcom/android/browser/BrowserHistoryPage;Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 313
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 314
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 315
    const/4 v4, 0x1

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x7f1000e4
        :pswitch_0
    .end packed-switch
.end method

.method selectGroup(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1, v1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    int-to-long v4, p1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 170
    return-void
.end method
