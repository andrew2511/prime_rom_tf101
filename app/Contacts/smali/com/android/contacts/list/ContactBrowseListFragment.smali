.class public abstract Lcom/android/contacts/list/ContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelaySelection:Z

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mHandler:Landroid/os/Handler;

.field private mLastSelectedPosition:I

.field protected mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

.field private mPersistentSelectionPrefix:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;

.field private mRefreshingContactUri:Z

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mSelectedContactUri:Landroid/net/Uri;

.field private mSelectionPersistenceRequested:Z

.field private mSelectionRequired:Z

.field private mSelectionToScreenRequested:Z

.field private mSelectionVerified:Z

.field private mSmoothScrollRequested:Z

.field private mStartedLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 92
    const-string v0, "defaultContactBrowserSelection"

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactBrowseListFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method private checkSelection()V
    .locals 15

    .prologue
    const/4 v14, -0x6

    const/4 v13, 0x0

    .line 405
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    if-eqz v2, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v2, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isLoadingDirectoryList()Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    .line 418
    .local v1, adapter:Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v1, :cond_0

    .line 422
    const/4 v9, 0x1

    .line 423
    .local v9, directoryLoading:Z
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v7

    .line 424
    .local v7, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v7, :cond_2

    .line 425
    invoke-virtual {v1, v10}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v11

    .line 426
    .local v11, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v2, v11, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v2, :cond_5

    .line 427
    move-object v0, v11

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    move-object v8, v0

    .line 428
    .local v8, directory:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v8}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 429
    invoke-virtual {v8}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v9

    .line 435
    .end local v8           #directory:Lcom/android/contacts/list/DirectoryPartition;
    .end local v11           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_2
    if-nez v9, :cond_0

    .line 439
    iget-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 442
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactPosition()I

    move-result v12

    .line 443
    .local v12, selectedPosition:I
    const/4 v2, -0x1

    if-eq v12, v2, :cond_6

    .line 444
    iput v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 483
    :goto_2
    iput-boolean v13, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 484
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 486
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    if-eqz v2, :cond_3

    .line 487
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    .line 488
    iput-boolean v13, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    .line 491
    :cond_3
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    if-eqz v2, :cond_4

    .line 492
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->requestSelectionToScreen()V

    .line 495
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 497
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v2}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    goto :goto_0

    .line 424
    .end local v12           #selectedPosition:I
    .restart local v11       #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 446
    .end local v11           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .restart local v12       #selectedPosition:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 447
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    if-eqz v2, :cond_a

    .line 448
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectFirstFoundContactAfterDelay()V

    .line 449
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v2}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    goto/16 :goto_0

    .line 454
    :cond_7
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v2, :cond_9

    .line 460
    iput-boolean v13, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 463
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v2, v2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v2, v14, :cond_8

    .line 465
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto/16 :goto_0

    .line 468
    :cond_8
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    goto/16 :goto_0

    .line 471
    :cond_9
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v2, v2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v2, v14, :cond_a

    .line 475
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    goto/16 :goto_0

    .line 479
    :cond_a
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectDefaultContact()V

    goto :goto_2
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/contacts/list/ContactBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPersistentSelectionKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    .line 669
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyInvalidSelection()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onInvalidSelection()V

    .line 615
    :cond_0
    return-void
.end method

.method private parseSelectedContactUri()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 344
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 345
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v3, "directory"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, directoryParam:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v2, v5

    :goto_0
    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    .line 349
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 351
    .local v1, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 352
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    .line 370
    .end local v0           #directoryParam:Ljava/lang/String;
    .end local v1           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 347
    .restart local v0       #directoryParam:Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 355
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_3

    .line 357
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 358
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 360
    :cond_3
    const-string v2, "ContactList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported contact URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 362
    iput-wide v5, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 366
    .end local v0           #directoryParam:Ljava/lang/String;
    :cond_4
    iput-wide v5, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    .line 367
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 368
    iput-wide v5, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1
.end method

.method private restoreFilter()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 660
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 663
    :cond_0
    return-void
.end method

.method private restoreSelectedUri(Z)V
    .locals 7
    .parameter "willReloadData"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 642
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 647
    .local v6, selectedUri:Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    .line 648
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0

    .line 650
    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0
.end method

.method private saveFilter()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 656
    return-void
.end method

.method private saveSelectedUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 630
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 631
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 632
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 636
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 634
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private setSelectedContactUri(Landroid/net/Uri;ZZZZ)V
    .locals 6
    .parameter "uri"
    .parameter "required"
    .parameter "smoothScroll"
    .parameter "persistent"
    .parameter "willReloadData"

    .prologue
    .line 316
    iput-boolean p3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 319
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 321
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 322
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 323
    iput-boolean p4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    .line 324
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 325
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    .line 327
    if-nez p5, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 331
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v0, :cond_2

    .line 332
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 334
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 339
    .end local v0           #adapter:Lcom/android/contacts/list/ContactListAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    .line 341
    :cond_3
    return-void
.end method


# virtual methods
.method public addToFavorites(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onAddToFavoritesAction(Landroid/net/Uri;)V

    .line 599
    :cond_0
    return-void
.end method

.method public callContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onCallContactAction(Landroid/net/Uri;)V

    .line 607
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 6

    .prologue
    .line 374
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 376
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 377
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 383
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_0

    .line 385
    :cond_2
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    goto :goto_0
.end method

.method public deleteContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onDeleteContactAction(Landroid/net/Uri;)V

    .line 595
    :cond_0
    return-void
.end method

.method public editContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onEditContactAction(Landroid/net/Uri;)V

    .line 591
    :cond_0
    return-void
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getSelectedContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 161
    new-instance v0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mQueryHandler:Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;

    .line 162
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 163
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreFilter()V

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 165
    return-void
.end method

.method protected onContactUriQueryFinished(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    .line 258
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 259
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    .line 260
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->checkSelection()V

    .line 261
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 393
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 397
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    .line 398
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 402
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    const-string v0, "selectedUri"

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    const-string v0, "selectionVerified"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    const-string v0, "lastSelected"

    iget v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    return-void
.end method

.method protected refreshSelectedContactUri()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mQueryHandler:Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mQueryHandler:Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->cancelOperation(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    .line 243
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-wide v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mQueryHandler:Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->runQuery()V

    goto :goto_0
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 571
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 572
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 574
    :cond_0
    return-void
.end method

.method public reloadDataAndSetSelectedUri(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    .line 563
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 564
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    .line 565
    return-void
.end method

.method public removeFromFavorites(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onRemoveFromFavoritesAction(Landroid/net/Uri;)V

    .line 603
    :cond_0
    return-void
.end method

.method protected requestSelectionToScreen()V
    .locals 4

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactPosition()I

    move-result v1

    .line 542
    .local v1, selectedPosition:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/AutoScrollListView;

    .line 544
    .local v0, listView:Lcom/android/contacts/widget/AutoScrollListView;
    invoke-virtual {v0}, Lcom/android/contacts/widget/AutoScrollListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, v1

    iget-boolean v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/widget/AutoScrollListView;->requestPositionToScreen(IZ)V

    .line 546
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 548
    .end local v0           #listView:Lcom/android/contacts/widget/AutoScrollListView;
    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 210
    if-nez p1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 215
    const-string v0, "selectedUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 216
    const-string v0, "selectionVerified"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 217
    const-string v0, "lastSelected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 218
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    goto :goto_0
.end method

.method protected selectDefaultContact()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, contactUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    .line 524
    .local v6, adapter:Lcom/android/contacts/list/ContactListAdapter;
    iget v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 525
    invoke-virtual {v6}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v7

    .line 526
    .local v7, count:I
    iget v8, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 527
    .local v8, pos:I
    if-lt v8, v7, :cond_0

    if-lez v7, :cond_0

    .line 528
    const/4 v0, 0x1

    sub-int v8, v7, v0

    .line 530
    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 533
    .end local v7           #count:I
    .end local v8           #pos:I
    :cond_1
    if-nez v1, :cond_2

    .line 534
    invoke-virtual {v6}, Lcom/android/contacts/list/ContactListAdapter;->getFirstContactUri()Landroid/net/Uri;

    move-result-object v1

    .line 537
    :cond_2
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 538
    return-void
.end method

.method public selectFirstFoundContactAfterDelay()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 508
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 509
    .local v6, handler:Landroid/os/Handler;
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v7

    .line 512
    .local v7, queryString:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 514
    const-wide/16 v0, 0x1f4

    invoke-virtual {v6, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 179
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 3
    .parameter "filter"
    .parameter "restoreSelectedUri"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :cond_2
    const-string v0, "ContactList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 194
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveFilter()V

    .line 195
    if-eqz p2, :cond_3

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto :goto_0
.end method

.method public setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    .line 578
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 0
    .parameter "queryString"
    .parameter "delaySelection"

    .prologue
    .line 295
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    .line 296
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 297
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 170
    if-nez p1, :cond_0

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 173
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 175
    :cond_1
    return-void
.end method

.method public setSelectedContactUri(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    .line 290
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 291
    return-void
.end method

.method public smsContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSmsContactAction(Landroid/net/Uri;)V

    .line 611
    :cond_0
    return-void
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 559
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 560
    return-void
.end method

.method public viewContact(Landroid/net/Uri;)V
    .locals 6
    .parameter "contactUri"

    .prologue
    const/4 v2, 0x0

    .line 585
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 586
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onViewContactAction(Landroid/net/Uri;)V

    .line 587
    :cond_0
    return-void
.end method
