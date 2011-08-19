.class public Lcom/android/browser/preferences/ImportWizard;
.super Landroid/app/DialogFragment;
.source "ImportWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field mAccounts:[Landroid/accounts/Account;

.field mConfirmation:Landroid/widget/TextView;

.field mCurrentPage:I

.field mDialog:Landroid/app/AlertDialog;

.field mImportOrDelete:Landroid/widget/ListView;

.field mNegativeButton:Landroid/widget/Button;

.field mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

.field mPositiveButton:Landroid/widget/Button;

.field mSelectAccount:Landroid/widget/ListView;

.field mSelectAccountDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance([Landroid/accounts/Account;)Lcom/android/browser/preferences/ImportWizard;
    .locals 3
    .parameter "accounts"

    .prologue
    .line 83
    new-instance v1, Lcom/android/browser/preferences/ImportWizard;

    invoke-direct {v1}, Lcom/android/browser/preferences/ImportWizard;-><init>()V

    .line 84
    .local v1, wizard:Lcom/android/browser/preferences/ImportWizard;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "accounts"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 86
    invoke-virtual {v1, v0}, Lcom/android/browser/preferences/ImportWizard;->setArguments(Landroid/os/Bundle;)V

    .line 87
    return-object v1
.end method


# virtual methods
.method public createView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 141
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040005

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, root:Landroid/view/View;
    const v4, 0x7f100013

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/browser/view/EventRedirectingFrameLayout;

    iput-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    .line 143
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    invoke-virtual {v4}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 144
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "no pages in wizard!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    :cond_0
    if-eqz p1, :cond_1

    .line 147
    const-string v4, "wizard.current_page"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    .line 151
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/ImportWizard;->setupPage1(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/ImportWizard;->setupPage2(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/ImportWizard;->setupPage3(Landroid/os/Bundle;)V

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    invoke-virtual {v4}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 155
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    invoke-virtual {v4, v0}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, v:Landroid/view/View;
    iget v4, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    if-gt v0, v4, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->preparePage()V

    .line 158
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    .end local v0           #i:I
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iput v6, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    goto :goto_0

    .line 160
    .restart local v0       #i:I
    .restart local v3       #v:Landroid/view/View;
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 163
    .end local v3           #v:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    iget v5, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    invoke-virtual {v4, v5}, Lcom/android/browser/view/EventRedirectingFrameLayout;->setTargetChild(I)V

    .line 164
    return-object v2
.end method

.method done()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 328
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 329
    .local v7, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v9

    iget-object v2, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 330
    .local v2, accountName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->shouldDeleteBookmarks()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 332
    sget-object v9, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "parent=1 AND account_name IS NULL"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 340
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v12}, Landroid/provider/BrowserContract$Settings;->setSyncEnabled(Landroid/content/Context;Z)V

    .line 341
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "acct_type"

    const-string v11, "com.google"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "acct_name"

    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 347
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "accounts"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, [Landroid/accounts/Account;

    move-object v0, v9

    check-cast v0, [Landroid/accounts/Account;

    move-object v3, v0

    .line 348
    .local v3, accounts:[Landroid/accounts/Account;
    move-object v4, v3

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v4, v5

    .line 349
    .local v1, account:Landroid/accounts/Account;
    const-string v9, "com.android.browser"

    invoke-static {v1, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_0

    .line 351
    const-string v9, "com.android.browser"

    invoke-static {v1, v9, v12}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 352
    const-string v9, "com.android.browser"

    invoke-static {v1, v9, v12}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 348
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 336
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #accounts:[Landroid/accounts/Account;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    invoke-virtual {p0, v8, v2}, Lcom/android/browser/preferences/ImportWizard;->migrateBookmarks(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .restart local v3       #accounts:[Landroid/accounts/Account;
    .restart local v4       #arr$:[Landroid/accounts/Account;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->dismiss()V

    .line 357
    return-void
.end method

.method getAdjustedCheckedItemPosition(Landroid/widget/ListView;)I
    .locals 2
    .parameter "list"

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 246
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 249
    :cond_0
    return v0
.end method

.method getSelectedAccount()Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mAccounts:[Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccount:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/ImportWizard;->getAdjustedCheckedItemPosition(Landroid/widget/ListView;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method migrateBookmarks(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 10
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    .line 380
    const/4 v6, 0x0

    .line 383
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "account_name =? AND sync3 =?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    const-string v5, "bookmark_bar"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 389
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 390
    .local v9, values:Landroid/content/ContentValues;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 397
    const-string v0, "sync3"

    const-string v1, "google_chrome"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "title"

    const-string v1, "Google Chrome"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "position"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v0, "folder"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 401
    const-string v0, "dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 402
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 410
    const-string v0, "sync3"

    const-string v1, "google_chrome_bookmarks"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "title"

    const-string v1, "Bookmarks"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v0, "position"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v0, "folder"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 415
    const-string v0, "dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 416
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "parent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 423
    const-string v0, "sync3"

    const-string v1, "bookmark_bar"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v0, "title"

    const-string v1, "Bookmarks Bar"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v0, "position"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    const-string v0, "folder"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 428
    const-string v0, "dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 429
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "parent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 436
    const-string v0, "sync3"

    const-string v1, "other_bookmarks"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "title"

    const-string v1, "Other Bookmarks"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "position"

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    const-string v0, "folder"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 441
    const-string v0, "dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 442
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "parent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "parent"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_name IS NULL AND parent=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 457
    const-string v0, "account_type"

    const-string v1, "com.google"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v0, "account_name"

    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_name IS NULL AND _id<>1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :try_start_1
    const-string v0, "com.android.browser"

    invoke-virtual {p1, v0, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 488
    .end local v8           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_1
    :goto_1
    return-void

    .line 467
    .restart local v8       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 468
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "BookmarkImportWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create root folder for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 488
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 470
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 471
    .local v7, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v0, "BookmarkImportWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create root folder for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 475
    .end local v7           #e:Landroid/content/OperationApplicationException;
    .end local v8           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    :try_start_4
    const-string v0, "parent"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 476
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "parent=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 481
    const-string v0, "account_type"

    const-string v1, "com.google"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v0, "account_name"

    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "account_name IS NULL AND _id<>1"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 488
    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method next()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    iget v0, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    invoke-virtual {v1}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 307
    iget v0, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    .line 308
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->preparePage()V

    .line 309
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    iget v1, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    iget v1, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/browser/view/EventRedirectingFrameLayout;->setTargetChild(I)V

    .line 311
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mNegativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->prev()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->updateNavigation()V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->dismiss()V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->updateNavigation()V

    goto :goto_0

    .line 371
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->done()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    check-cast v0, [Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mAccounts:[Landroid/accounts/Account;

    .line 94
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/ImportWizard;->createView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/preferences/ImportWizard$1;

    invoke-direct {v1, p0}, Lcom/android/browser/preferences/ImportWizard$1;-><init>(Lcom/android/browser/preferences/ImportWizard;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mDialog:Landroid/app/AlertDialog;

    .line 117
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/browser/preferences/ImportWizard$2;

    invoke-direct {v1, p0}, Lcom/android/browser/preferences/ImportWizard$2;-><init>(Lcom/android/browser/preferences/ImportWizard;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 263
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->validate()V

    .line 264
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "wizard.current_page"

    iget v1, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v0, "wizard.import_or_delete"

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard;->mImportOrDelete:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string v0, "wizard.selected_account"

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccount:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    return-void
.end method

.method preparePage()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 219
    iget v2, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    packed-switch v2, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->shouldDeleteBookmarks()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccountDescription:Landroid/widget/TextView;

    const v3, 0x7f09015e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccountDescription:Landroid/widget/TextView;

    const v3, 0x7f09015d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 232
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->shouldDeleteBookmarks()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09015f

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, confirmationMessage:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/browser/preferences/ImportWizard;->mConfirmation:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    .end local v1           #confirmationMessage:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090160

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #confirmationMessage:Ljava/lang/String;
    goto :goto_1

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method prev()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 317
    iget v0, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    iget v1, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget v0, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    .line 320
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    iget v1, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/browser/view/EventRedirectingFrameLayout;->setTargetChild(I)V

    move v0, v2

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setupAnimations()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 294
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    invoke-virtual {v4}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v0, v4

    .line 295
    .local v0, animX:F
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    .line 296
    .local v3, transitioner:Landroid/animation/LayoutTransition;
    const-string v4, "translationX"

    new-array v5, v6, [F

    aput v0, v5, v8

    aput v7, v5, v9

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 298
    .local v1, appearing:Landroid/animation/ObjectAnimator;
    const-string v4, "translationX"

    new-array v5, v6, [F

    aput v7, v5, v8

    aput v0, v5, v9

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 300
    .local v2, disappearing:Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v6, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 301
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 302
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    invoke-virtual {v4, v3}, Lcom/android/browser/view/EventRedirectingFrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 303
    return-void
.end method

.method setupPage1(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 168
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    const v5, 0x7f100014

    invoke-virtual {v4, v5}, Lcom/android/browser/view/EventRedirectingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mImportOrDelete:Landroid/widget/ListView;

    .line 170
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mImportOrDelete:Landroid/widget/ListView;

    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 172
    .local v3, res:Landroid/content/res/Resources;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f090166

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const v4, 0x7f090161

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    .line 176
    .local v1, choices:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040006

    invoke-direct {v0, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 178
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mImportOrDelete:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    const-string v4, "wizard.import_or_delete"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 181
    .local v2, position:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mImportOrDelete:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->clearChoices()V

    .line 187
    .end local v2           #position:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mImportOrDelete:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    return-void

    .line 184
    .restart local v2       #position:I
    :cond_1
    iget-object v4, p0, Lcom/android/browser/preferences/ImportWizard;->mImportOrDelete:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method setupPage2(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 191
    iget-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    const v6, 0x7f100016

    invoke-virtual {v5, v6}, Lcom/android/browser/view/EventRedirectingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccount:Landroid/widget/ListView;

    .line 192
    iget-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    const v6, 0x7f100015

    invoke-virtual {v5, v6}, Lcom/android/browser/view/EventRedirectingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccountDescription:Landroid/widget/TextView;

    .line 195
    iget-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccount:Landroid/widget/ListView;

    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 197
    .local v4, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mAccounts:[Landroid/accounts/Account;

    array-length v5, v5

    new-array v0, v5, [Ljava/lang/String;

    .line 198
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mAccounts:[Landroid/accounts/Account;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 199
    iget-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mAccounts:[Landroid/accounts/Account;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v0, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f040006

    invoke-direct {v1, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 203
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccount:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    iget-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccount:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccount:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 205
    if-eqz p1, :cond_1

    .line 206
    const-string v5, "wizard.selected_account"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 207
    .local v3, position:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccount:Landroid/widget/ListView;

    invoke-virtual {v5, v3, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 211
    .end local v3           #position:I
    :cond_1
    iget-object v5, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccount:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    return-void
.end method

.method setupPage3(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    const v1, 0x7f100017

    invoke-virtual {v0, v1}, Lcom/android/browser/view/EventRedirectingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mConfirmation:Landroid/widget/TextView;

    .line 216
    return-void
.end method

.method shouldDeleteBookmarks()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 257
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mImportOrDelete:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/ImportWizard;->getAdjustedCheckedItemPosition(Landroid/widget/ListView;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateNavigation()V
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mNegativeButton:Landroid/widget/Button;

    const v1, 0x7f090164

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 272
    :goto_0
    iget v0, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard;->mPages:Lcom/android/browser/view/EventRedirectingFrameLayout;

    invoke-virtual {v1}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 277
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/preferences/ImportWizard;->validate()V

    .line 278
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mNegativeButton:Landroid/widget/Button;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method validate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 281
    iget v0, p0, Lcom/android/browser/preferences/ImportWizard;->mCurrentPage:I

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mPositiveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard;->mImportOrDelete:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    if-eq v1, v2, :cond_0

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard;->mPositiveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard;->mSelectAccount:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    if-eq v1, v2, :cond_1

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
