.class public Lcom/android/browser/AddBookmarkPage;
.super Landroid/app/Activity;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/browser/BreadCrumbView$Controller;
.implements Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AddBookmarkPage$CustomListView;,
        Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;,
        Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;,
        Lcom/android/browser/AddBookmarkPage$FolderAdapter;,
        Lcom/android/browser/AddBookmarkPage$Folder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/browser/BreadCrumbView$Controller;",
        "Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;"
    }
.end annotation


# instance fields
.field private final LOADER_ID_ALL_FOLDERS:I

.field private final LOADER_ID_CHECK_FOR_DUPE:I

.field private final LOADER_ID_FIND_FOLDER_BY_ID:I

.field private final LOADER_ID_FIND_ROOT:I

.field private final LOADER_ID_FOLDER_CONTENTS:I

.field private final LOADER_ID_MOST_RECENTLY_SAVED_BOOKMARK:I

.field private final LOGTAG:Ljava/lang/String;

.field private mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

.field private mAddNewFolder:Landroid/view/View;

.field private mAddSeparator:Landroid/view/View;

.field private mAddress:Landroid/widget/EditText;

.field private mButton:Landroid/widget/TextView;

.field private mCancelButton:Landroid/view/View;

.field private mCrumbHolder:Landroid/view/View;

.field private mCrumbs:Lcom/android/browser/BreadCrumbView;

.field private mCurrentFolder:J

.field private mDefaultView:Landroid/view/View;

.field private mEditingExisting:Z

.field private mEditingFolder:Z

.field private mFakeTitle:Landroid/widget/TextView;

.field private mFakeTitleHolder:Landroid/view/View;

.field private mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

.field private mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

.field private mFolderCancel:Landroid/view/View;

.field private mFolderNamer:Landroid/widget/EditText;

.field private mFolderNamerHolder:Landroid/view/View;

.field private mFolderSelector:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field private mIsFolderNamerShowing:Z

.field private mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

.field private mMap:Landroid/os/Bundle;

.field private mOriginalUrl:Ljava/lang/String;

.field private mRemoveLink:Landroid/view/View;

.field private mRootFolder:J

.field private mSaveToHomeScreen:Z

.field private mTitle:Landroid/widget/EditText;

.field private mTopLevelLabel:Landroid/widget/TextView;

.field private mTouchIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->LOGTAG:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_FOLDER_CONTENTS:I

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_ALL_FOLDERS:I

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_FIND_ROOT:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_CHECK_FOR_DUPE:I

    .line 90
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_MOST_RECENTLY_SAVED_BOOKMARK:I

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_FIND_FOLDER_BY_ID:I

    .line 1076
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/AddBookmarkPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/browser/AddBookmarkPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method private addFolderToCurrent(Ljava/lang/String;)J
    .locals 9
    .parameter "name"

    .prologue
    const/4 v8, 0x1

    .line 350
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v6, "folder"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    invoke-direct {p0, p0}, Lcom/android/browser/AddBookmarkPage;->getAccountNameAndType(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, accountInfo:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 356
    const-string v6, "account_type"

    aget-object v7, v0, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v6, "account_name"

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v6, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v6}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v3

    .line 361
    .local v3, data:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 362
    check-cast v3, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v3           #data:Ljava/lang/Object;
    iget-wide v1, v3, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 366
    .local v1, currentFolder:J
    :goto_0
    const-string v6, "parent"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 369
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 370
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 372
    :goto_1
    return-wide v6

    .line 364
    .end local v1           #currentFolder:J
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v3       #data:Ljava/lang/Object;
    :cond_1
    iget-wide v1, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .restart local v1       #currentFolder:J
    goto :goto_0

    .line 372
    .end local v3           #data:Ljava/lang/Object;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_2
    const-wide/16 v6, -0x1

    goto :goto_1
.end method

.method private completeOrCancelFolderNaming(Z)V
    .locals 6
    .parameter "cancel"

    .prologue
    const/4 v5, 0x0

    .line 336
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/AddBookmarkPage;->addFolderToCurrent(Ljava/lang/String;)J

    move-result-wide v0

    .line 339
    .local v0, id:J
    invoke-direct {p0, v2, v0, v1}, Lcom/android/browser/AddBookmarkPage;->descendInto(Ljava/lang/String;J)V

    .line 341
    .end local v0           #id:J
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->setShowFolderNamer(Z)V

    .line 342
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 344
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v4}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 346
    return-void
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 916
    new-instance v0, Lcom/android/browser/AddBookmarkPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$1;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    .line 945
    :cond_0
    return-void
.end method

.method private descendInto(Ljava/lang/String;J)V
    .locals 2
    .parameter "foldername"
    .parameter "id"

    .prologue
    .line 388
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    new-instance v1, Lcom/android/browser/AddBookmarkPage$Folder;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/browser/AddBookmarkPage$Folder;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    .line 390
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    .line 392
    :cond_0
    return-void
.end method

.method private getAccountNameAndType(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 846
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 847
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "acct_name"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "acct_type"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 852
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    goto :goto_0
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 141
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private getUriForFolder(J)Landroid/net/Uri;
    .locals 4
    .parameter "folder"

    .prologue
    .line 146
    iget-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 147
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    .line 151
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    invoke-direct {p0, p0}, Lcom/android/browser/AddBookmarkPage;->getAccountNameAndType(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, accountInfo:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 153
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v1, v2, v3}, Lcom/android/browser/BookmarksLoader;->addAccount(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    :cond_0
    return-object v1

    .line 149
    .end local v0           #accountInfo:[Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    invoke-static {p1, p2}, Landroid/provider/BrowserContract$Bookmarks;->buildFolderUri(J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method private onCurrentFolderFound()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 814
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 815
    .local v0, manager:Landroid/app/LoaderManager;
    iget-wide v1, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v3, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 817
    invoke-virtual {v0, v5, v6, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 821
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v2, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v2, :cond_1

    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    .line 837
    :cond_0
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 838
    return-void

    .line 821
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 823
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->setShowBookmarkIcon(Z)V

    .line 824
    iget-boolean v1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    if-nez v1, :cond_3

    .line 827
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 829
    :cond_3
    iget-boolean v1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v1, v5}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_1
.end method

.method private onRootFolderFound(J)V
    .locals 4
    .parameter "root"

    .prologue
    .line 789
    iput-wide p1, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .line 790
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 791
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    iput-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 793
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->setupTopCrumb()V

    .line 794
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "check_for_dupe"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 796
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->onCurrentFolderFound()V

    .line 803
    :goto_0
    return-void

    .line 801
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private setShowBookmarkIcon(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 179
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .line 180
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 181
    return-void

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v0, v2

    .line 179
    goto :goto_0
.end method

.method private setShowFolderNamer(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eq p1, v0, :cond_0

    .line 628
    iput-boolean p1, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    .line 629
    if-eqz p1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->addFooterView(Landroid/view/View;)V

    .line 637
    :goto_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 638
    if-eqz p1, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setSelection(I)V

    .line 642
    :cond_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private setupTopCrumb()V
    .locals 6

    .prologue
    .line 806
    const v1, 0x7f090062

    invoke-virtual {p0, v1}, Lcom/android/browser/AddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/browser/AddBookmarkPage$Folder;

    iget-wide v4, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    invoke-direct {v3, v0, v4, v5}, Lcom/android/browser/AddBookmarkPage$Folder;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    .line 810
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 811
    return-void
.end method

.method private showRemoveButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 781
    const v0, 0x7f100026

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 782
    const v0, 0x7f100027

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    .line 783
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    return-void
.end method

.method private switchToDefaultView(Z)V
    .locals 11
    .parameter "changedFolder"

    .prologue
    const/4 v10, 0x0

    const/16 v5, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 201
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 205
    if-eqz p1, :cond_3

    .line 206
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v4}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v1

    .line 207
    .local v1, data:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 208
    move-object v0, v1

    check-cast v0, Lcom/android/browser/AddBookmarkPage$Folder;

    move-object v2, v0

    .line 209
    .local v2, folder:Lcom/android/browser/AddBookmarkPage$Folder;
    iget-wide v4, v2, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    iput-wide v4, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 210
    iget-wide v4, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v6, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 214
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v5, :cond_1

    move v5, v8

    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    .line 247
    .end local v1           #data:Ljava/lang/Object;
    .end local v2           #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    .end local p0
    :cond_0
    :goto_1
    return-void

    .restart local v1       #data:Ljava/lang/Object;
    .restart local v2       #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    .restart local p0
    :cond_1
    move v5, v9

    .line 214
    goto :goto_0

    .line 216
    :cond_2
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v4}, Lcom/android/browser/addbookmark/FolderSpinner;->getSelectedView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/browser/AddBookmarkPage$Folder;->Name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 222
    .end local v1           #data:Ljava/lang/Object;
    .end local v2           #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    .restart local p0
    :cond_3
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v4, :cond_4

    .line 223
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v4, v8}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_1

    .line 225
    :cond_4
    iget-wide v4, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v6, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 226
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v5, :cond_5

    move v5, v8

    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_1

    :cond_5
    move v5, v9

    goto :goto_2

    .line 228
    :cond_6
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v4}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v1

    .line 229
    .restart local v1       #data:Ljava/lang/Object;
    if-eqz v1, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/android/browser/AddBookmarkPage$Folder;

    move-object v4, v0

    iget-wide v4, v4, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    iget-wide v6, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 233
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v4}, Lcom/android/browser/addbookmark/FolderSpinner;->getSelectedView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    check-cast v1, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v1           #data:Ljava/lang/Object;
    iget-object v4, v1, Lcom/android/browser/AddBookmarkPage$Folder;->Name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 237
    .restart local v1       #data:Ljava/lang/Object;
    .restart local p0
    :cond_7
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v4}, Lcom/android/browser/BreadCrumbView;->clear()V

    .line 238
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->setupTopCrumb()V

    .line 239
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    .line 240
    .local v3, manager:Landroid/app/LoaderManager;
    invoke-virtual {v3, v9, v10, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 241
    invoke-virtual {v3, v8, v10, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method

.method private switchToFolderSelector()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setSelection(I)V

    .line 379
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    return-void
.end method


# virtual methods
.method moveCursorToFolder(Landroid/database/Cursor;JI)V
    .locals 5
    .parameter "cursor"
    .parameter "folderToFind"
    .parameter "idIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 605
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "No folders in the database!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 610
    :cond_0
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 611
    .local v0, folder:J
    cmp-long v2, v0, p2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 612
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 613
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder(id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") holding this bookmark does not exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 616
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 251
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    if-ne p1, v4, :cond_3

    .line 252
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 254
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v4, :cond_1

    .line 255
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iput-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    .line 259
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->switchToDefaultView(Z)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->save()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->finish()V

    goto :goto_0

    .line 264
    :cond_3
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    if-ne p1, v4, :cond_6

    .line 265
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v4, :cond_4

    .line 266
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_0

    .line 267
    :cond_4
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 268
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->switchToDefaultView(Z)V

    goto :goto_0

    .line 270
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->finish()V

    goto :goto_0

    .line 272
    :cond_6
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    if-ne p1, v4, :cond_7

    .line 273
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_0

    .line 274
    :cond_7
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    if-ne p1, v4, :cond_8

    .line 275
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->setShowFolderNamer(Z)V

    .line 276
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    const v5, 0x7f09003c

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(I)V

    .line 277
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 278
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 280
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 283
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 284
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 285
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    if-ne p1, v4, :cond_0

    .line 286
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    if-nez v4, :cond_9

    .line 287
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Remove button should not be shown for new bookmarks"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 290
    :cond_9
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 291
    .local v0, id:J
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 292
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 293
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4, p0, v3}, Lcom/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 677
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 678
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->requestWindowFeature(I)Z

    .line 680
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 682
    const v9, 0x7f04000d

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->setContentView(I)V

    .line 684
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 686
    .local v8, window:Landroid/view/Window;
    const/4 v6, 0x0

    .line 687
    .local v6, title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 689
    .local v7, url:Ljava/lang/String;
    const v9, 0x7f100025

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    .line 691
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    if-eqz v9, :cond_1

    .line 692
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "bookmark"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 693
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_4

    .line 694
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "is_folder"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    .line 695
    iput-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 696
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 697
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    const v10, 0x7f090048

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 698
    iget-boolean v9, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v9, :cond_3

    .line 699
    const v9, 0x7f10002b

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 711
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 712
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "url"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .end local v7           #url:Ljava/lang/String;
    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    .line 713
    .restart local v7       #url:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "touch_icon_url"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    .line 714
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "parent"

    const-wide/16 v11, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 717
    .end local v2           #b:Landroid/os/Bundle;
    :cond_1
    const v9, 0x7f100002

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    .line 718
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 720
    const v9, 0x7f10002d

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    .line 721
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 723
    const v9, 0x7f100032

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    .line 724
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    const v9, 0x7f100033

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    .line 727
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    const v9, 0x7f10002f

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/browser/addbookmark/FolderSpinner;

    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    .line 730
    new-instance v9, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    iget-boolean v10, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    invoke-direct {v9, v10}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;-><init>(Z)V

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    .line 731
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-object v10, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v9, v10}, Lcom/android/browser/addbookmark/FolderSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 732
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v9, p0}, Lcom/android/browser/addbookmark/FolderSpinner;->setOnSetSelectionListener(Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;)V

    .line 734
    const v9, 0x7f100029

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    .line 735
    const v9, 0x7f100030

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    .line 737
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04001b

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    .line 738
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    const v10, 0x7f10004e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    .line 739
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 740
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    const v10, 0x7f10004f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    .line 741
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    const v9, 0x7f100023

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    .line 744
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    const v9, 0x7f100022

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    .line 747
    const v9, 0x7f10001d

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/browser/BreadCrumbView;

    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    .line 748
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/browser/BreadCrumbView;->setUseBackButton(Z)V

    .line 749
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v9, p0}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 750
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020038

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 751
    const v9, 0x7f100021

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    .line 752
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/browser/BreadCrumbView;->setMaxVisible(I)V

    .line 754
    new-instance v9, Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-direct {v9, p0, p0}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    .line 755
    const/high16 v9, 0x7f10

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/browser/AddBookmarkPage$CustomListView;

    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    .line 756
    const v9, 0x7f100031

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 757
    .local v3, empty:Landroid/view/View;
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v9, v3}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setEmptyView(Landroid/view/View;)V

    .line 758
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v10, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v9, v10}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 759
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v9, p0}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 760
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v10, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v9, v10}, Lcom/android/browser/AddBookmarkPage$CustomListView;->addEditText(Landroid/widget/EditText;)V

    .line 762
    const v9, 0x7f100024

    invoke-virtual {p0, v9}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    .line 764
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->isInTouchMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 765
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->requestFocus()Z

    .line 768
    :cond_2
    invoke-direct {p0, p0}, Lcom/android/browser/AddBookmarkPage;->getAccountNameAndType(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, accountInfo:[Ljava/lang/String;
    if-nez v0, :cond_6

    .line 770
    const-wide/16 v9, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/browser/AddBookmarkPage;->onRootFolderFound(J)V

    .line 778
    :goto_2
    return-void

    .line 701
    .end local v0           #accountInfo:[Ljava/lang/String;
    .end local v3           #empty:Landroid/view/View;
    .restart local v2       #b:Landroid/os/Bundle;
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->showRemoveButton()V

    goto/16 :goto_0

    .line 704
    :cond_4
    iget-object v9, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "gravity"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 705
    .local v4, gravity:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 706
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 707
    .local v5, l:Landroid/view/WindowManager$LayoutParams;
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 708
    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 730
    .end local v2           #b:Landroid/os/Bundle;
    .end local v4           #gravity:I
    .end local v5           #l:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 772
    .restart local v0       #accountInfo:[Ljava/lang/String;
    .restart local v3       #empty:Landroid/view/View;
    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 773
    .local v1, args:Landroid/os/Bundle;
    const-string v9, "acct_name"

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v9, "acct_type"

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 23
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
    .line 397
    packed-switch p1, :pswitch_data_0

    .line 482
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Asking for nonexistant loader!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 399
    :pswitch_0
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "parent"

    aput-object v4, v6, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v6, v3

    .line 404
    .local v6, projection:[Ljava/lang/String;
    new-instance v3, Landroid/content/CursorLoader;

    invoke-static/range {p0 .. p0}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    const-string v7, "url = ?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v8, v4

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_0
    return-object v3

    .line 411
    .end local v6           #projection:[Ljava/lang/String;
    :pswitch_1
    const-string v3, "acct_name"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 412
    .local v21, name:Ljava/lang/String;
    const-string v3, "acct_type"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 414
    .local v22, type:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v6, v3

    .line 415
    .restart local v6       #projection:[Ljava/lang/String;
    const-string v7, "sync3=? AND account_name=? AND account_type=?"

    .line 418
    .local v7, selection:Ljava/lang/String;
    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bookmark_bar"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    aput-object v21, v8, v3

    const/4 v3, 0x2

    aput-object v22, v8, v3

    .line 423
    .local v8, selArgs:[Ljava/lang/String;
    new-instance v3, Landroid/content/CursorLoader;

    sget-object v5, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    .end local v6           #projection:[Ljava/lang/String;
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selArgs:[Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/String;
    :pswitch_2
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v6, v3

    .line 434
    .restart local v6       #projection:[Ljava/lang/String;
    new-instance v9, Landroid/content/CursorLoader;

    invoke-static/range {p0 .. p0}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v12, v6

    invoke-direct/range {v9 .. v15}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v9

    goto :goto_0

    .line 442
    .end local v6           #projection:[Ljava/lang/String;
    :pswitch_3
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "parent"

    aput-object v4, v6, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v6, v3

    const/4 v3, 0x3

    const-string v4, "folder"

    aput-object v4, v6, v3

    .line 448
    .restart local v6       #projection:[Ljava/lang/String;
    new-instance v9, Landroid/content/CursorLoader;

    invoke-static/range {p0 .. p0}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v11

    const-string v13, "folder != 0"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v12, v6

    invoke-direct/range {v9 .. v15}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v9

    goto/16 :goto_0

    .line 455
    .end local v6           #projection:[Ljava/lang/String;
    :pswitch_4
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v6, v3

    const/4 v3, 0x2

    const-string v4, "folder"

    aput-object v4, v6, v3

    .line 460
    .restart local v6       #projection:[Ljava/lang/String;
    const-string v13, "folder != 0"

    .line 461
    .local v13, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND _id != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v4, v0

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 465
    :cond_0
    new-instance v9, Landroid/content/CursorLoader;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    move-wide v3, v0

    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-direct {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->getUriForFolder(J)Landroid/net/Uri;

    move-result-object v11

    const/4 v14, 0x0

    const-string v15, "_id ASC"

    move-object/from16 v10, p0

    move-object v12, v6

    invoke-direct/range {v9 .. v15}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v9

    goto/16 :goto_0

    .line 472
    .end local v6           #projection:[Ljava/lang/String;
    .end local v13           #where:Ljava/lang/String;
    :pswitch_5
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "parent"

    aput-object v4, v6, v3

    .line 475
    .restart local v6       #projection:[Ljava/lang/String;
    new-instance v14, Landroid/content/CursorLoader;

    invoke-static/range {p0 .. p0}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v16

    const-string v18, "folder = 0"

    const/16 v19, 0x0

    const-string v20, "created DESC"

    move-object/from16 v15, p0

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v20}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v14

    goto/16 :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 186
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    if-nez p2, :cond_0

    .line 189
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 190
    invoke-direct {p0, v1}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    :cond_0
    move v0, v2

    .line 197
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
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
    .line 621
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 623
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4, p5}, Lcom/android/browser/AddBookmarkPage;->descendInto(Ljava/lang/String;J)V

    .line 624
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 27
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
    .line 488
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Loader;->getId()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 585
    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :goto_0
    return-void

    .line 490
    .restart local p1       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 492
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->showRemoveButton()V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const v26, 0x7f090048

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(I)V

    .line 495
    const-string v25, "parent"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 497
    .local v10, index:I
    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 498
    const-string v25, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 500
    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 501
    .local v23, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 502
    const-string v25, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 504
    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 505
    .local v7, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string v26, "_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 507
    .end local v7           #id:J
    .end local v10           #index:I
    .end local v23           #title:Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->onCurrentFolderFound()V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v25

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 512
    :pswitch_1
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 513
    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 517
    .local v20, root:J
    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->onRootFolderFound(J)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 515
    .end local v20           #root:J
    :cond_1
    const-wide/16 v20, 0x1

    .restart local v20       #root:J
    goto :goto_1

    .line 521
    .end local v20           #root:J
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 524
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v13

    .line 525
    .local v13, manager:Landroid/app/LoaderManager;
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 527
    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 528
    .local v11, lastUsedFolder:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    move-wide/from16 v25, v0

    cmp-long v25, v11, v25

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    move-wide/from16 v25, v0

    cmp-long v25, v11, v25

    if-eqz v25, :cond_2

    const-wide/16 v25, 0x0

    cmp-long v25, v11, v25

    if-eqz v25, :cond_2

    .line 532
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 533
    .local v5, b:Landroid/os/Bundle;
    const-string v25, "_id"

    move-object v0, v5

    move-object/from16 v1, v25

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 534
    const/16 v25, 0x5

    move-object v0, v13

    move/from16 v1, v25

    move-object v2, v5

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 537
    .end local v5           #b:Landroid/os/Bundle;
    .end local v11           #lastUsedFolder:J
    :cond_2
    const/16 v25, 0x4

    move-object v0, v13

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 540
    .end local v13           #manager:Landroid/app/LoaderManager;
    :pswitch_4
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 541
    const-string v25, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 543
    .restart local v7       #id:J
    const-string v25, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 545
    .restart local v23       #title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide v1, v7

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->addRecentFolder(JLjava/lang/String;)V

    .line 547
    .end local v7           #id:J
    .end local v23           #title:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v25

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 550
    :pswitch_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    move-wide/from16 v17, v0

    .line 551
    .local v17, parent:J
    const-string v25, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 553
    .local v9, idIndex:I
    const-string v25, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 555
    .local v24, titleIndex:I
    const-string v25, "parent"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 560
    .local v19, parentIndex:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v25

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/browser/AddBookmarkPage;->moveCursorToFolder(Landroid/database/Cursor;JI)V

    .line 563
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 564
    .local v15, omniparent:J
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 565
    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    .local v6, folderStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/browser/AddBookmarkPage$Folder;>;"
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    move-wide/from16 v25, v0

    cmp-long v25, v17, v25

    if-eqz v25, :cond_5

    const-wide/16 v25, 0x0

    cmp-long v25, v17, v25

    if-eqz v25, :cond_5

    cmp-long v25, v17, v15

    if-eqz v25, :cond_5

    .line 568
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v17

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/browser/AddBookmarkPage;->moveCursorToFolder(Landroid/database/Cursor;JI)V

    .line 569
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 570
    .local v14, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    move-wide/from16 v25, v0

    cmp-long v25, v17, v25

    if-nez v25, :cond_4

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/addbookmark/FolderSpinner;->getSelectedView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :cond_4
    new-instance v25, Lcom/android/browser/AddBookmarkPage$Folder;

    move-object/from16 v0, v25

    move-object v1, v14

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/AddBookmarkPage$Folder;-><init>(Ljava/lang/String;J)V

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 575
    goto :goto_2

    .line 576
    .end local v14           #name:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_6

    .line 577
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/browser/AddBookmarkPage$Folder;

    .line 578
    .local v22, thisFolder:Lcom/android/browser/AddBookmarkPage$Folder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage$Folder;->Name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    goto :goto_3

    .line 580
    .end local v22           #thisFolder:Lcom/android/browser/AddBookmarkPage$Folder;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/AddBookmarkPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
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
    .line 588
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 593
    :goto_0
    return-void

    .line 590
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSetSelection(J)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 302
    long-to-int v0, p1

    .line 303
    .local v0, intId:I
    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iget-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    iput-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 306
    iput-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    goto :goto_0

    .line 310
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    goto :goto_0

    .line 313
    :pswitch_2
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->switchToFolderSelector()V

    goto :goto_0

    .line 316
    :pswitch_3
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v2}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->recentFolderId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 317
    iput-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 322
    .local v1, manager:Landroid/app/LoaderManager;
    invoke-virtual {v1, v5, v6, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 323
    invoke-virtual {v1, v4, v6, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTop(ILjava/lang/Object;)V
    .locals 9
    .parameter "level"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 160
    if-nez p2, :cond_0

    .line 172
    :goto_0
    return-void

    .line 161
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/browser/AddBookmarkPage$Folder;

    move-object v3, v0

    .line 162
    .local v3, folderData:Lcom/android/browser/AddBookmarkPage$Folder;
    iget-wide v1, v3, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 163
    .local v1, folder:J
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    .line 164
    .local v5, manager:Landroid/app/LoaderManager;
    invoke-virtual {v5, v8}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v4

    check-cast v4, Landroid/content/CursorLoader;

    .line 166
    .local v4, loader:Landroid/content/CursorLoader;
    invoke-direct {p0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->getUriForFolder(J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 167
    invoke-virtual {v4}, Landroid/content/CursorLoader;->forceLoad()V

    .line 168
    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v6, :cond_1

    .line 169
    invoke-direct {p0, v7}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 171
    :cond_1
    if-ne p1, v7, :cond_2

    move v6, v7

    :goto_1
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->setShowBookmarkIcon(Z)V

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_1
.end method

.method save()Z
    .locals 12

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 951
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 953
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 955
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v8

    .line 958
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v8

    .line 959
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 960
    if-nez v1, :cond_0

    if-eqz v3, :cond_5

    iget-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v5, :cond_5

    .line 961
    :cond_0
    if-eqz v1, :cond_1

    .line 962
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    const v1, 0x7f090052

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 964
    :cond_1
    if-eqz v3, :cond_2

    .line 965
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f090053

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    move v0, v7

    .line 1070
    :goto_2
    return v0

    :cond_3
    move v1, v7

    .line 957
    goto :goto_0

    :cond_4
    move v3, v7

    .line 958
    goto :goto_1

    .line 970
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 971
    iget-boolean v3, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v3, :cond_11

    .line 976
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "javascript:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 977
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 979
    invoke-static {v1}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 983
    if-eqz v3, :cond_6

    .line 984
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f090055

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 985
    goto :goto_2

    .line 989
    :cond_6
    :try_start_1
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, v0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 993
    :try_start_2
    invoke-virtual {v1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 994
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f090054

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v7

    .line 1001
    goto :goto_2

    .line 990
    :catch_1
    move-exception v0

    .line 991
    :try_start_3
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_7
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    :goto_3
    move-object v3, v0

    .line 1005
    :goto_4
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v0, :cond_8

    .line 1006
    iput-boolean v7, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 1009
    :cond_8
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1011
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    if-eqz v0, :cond_b

    .line 1012
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1013
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1014
    const-string v5, "title"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v2, "parent"

    iget-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1016
    iget-boolean v2, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v2, :cond_9

    .line 1017
    const-string v2, "url"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    if-nez v4, :cond_9

    .line 1019
    const-string v2, "thumbnail"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1022
    :cond_9
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 1023
    new-instance v2, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;

    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;-><init>(Landroid/content/Context;J)V

    new-array v0, v8, [Landroid/content/ContentValues;

    aput-object v1, v0, v7

    invoke-virtual {v2, v0}, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1025
    :cond_a
    invoke-virtual {p0, v10}, Lcom/android/browser/AddBookmarkPage;->setResult(I)V

    :goto_5
    move v0, v8

    .line 1070
    goto/16 :goto_2

    .line 1029
    :cond_b
    if-eqz v4, :cond_c

    .line 1030
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1032
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "favicon"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 1039
    :goto_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1040
    const-string v6, "title"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v6, "url"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v6, "favicon"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1044
    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v6, :cond_e

    .line 1045
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    if-eqz v1, :cond_d

    if-eqz v4, :cond_d

    .line 1046
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1048
    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1049
    new-instance v1, Lcom/android/browser/DownloadTouchIcon;

    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v4, "user_agent"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;)V

    .line 1051
    new-array v0, v8, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    aput-object v2, v0, v7

    invoke-virtual {v1, v0}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1067
    :goto_7
    invoke-virtual {p0, v10}, Lcom/android/browser/AddBookmarkPage;->setResult(I)V

    .line 1068
    const-string v0, "bookmarkview"

    invoke-static {v3, v0}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move-object v0, v9

    move-object v1, v9

    .line 1036
    goto :goto_6

    .line 1053
    :cond_d
    invoke-static {p0, v3, v2, v9, v0}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7

    .line 1057
    :cond_e
    const-string v0, "thumbnail"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1058
    const-string v0, "remove_thumbnail"

    if-nez v4, :cond_f

    move v1, v8

    :goto_8
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1059
    const-string v0, "touch_icon_url"

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1062
    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1064
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;

    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p0, v4, v0}, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1065
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_7

    :cond_f
    move v1, v7

    .line 1058
    goto :goto_8

    :cond_10
    move-object v0, v1

    goto/16 :goto_3

    :cond_11
    move-object v3, v1

    goto/16 :goto_4
.end method
