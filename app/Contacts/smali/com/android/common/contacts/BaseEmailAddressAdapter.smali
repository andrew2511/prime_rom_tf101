.class public abstract Lcom/android/common/contacts/BaseEmailAddressAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "BaseEmailAddressAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;,
        Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;,
        Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryListQuery;,
        Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;,
        Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDirectoriesLoaded:Z

.field private mHandler:Landroid/os/Handler;

.field private mPreferredMaxResultCount:I


# direct methods
.method static synthetic access$000(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mDirectoriesLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/common/contacts/BaseEmailAddressAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mDirectoriesLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/common/contacts/BaseEmailAddressAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/common/contacts/BaseEmailAddressAdapter;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createLoadingCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 486
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "searching"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 487
    .local v0, cursor:Landroid/database/MatrixCursor;
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 488
    return-object v0
.end method

.method private hasDuplicates(Landroid/database/Cursor;I)Z
    .locals 3
    .parameter "cursor"
    .parameter "partition"

    .prologue
    const/4 v2, 0x1

    .line 546
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 547
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, emailAddress:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->isDuplicate(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 553
    .end local v0           #emailAddress:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDuplicate(Ljava/lang/String;I)Z
    .locals 6
    .parameter "emailAddress"
    .parameter "excludePartition"

    .prologue
    const/4 v5, 0x1

    .line 561
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v3

    .line 562
    .local v3, partitionCount:I
    const/4 v2, 0x0

    .local v2, partition:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 563
    if-eq v2, p2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->isLoading(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 564
    invoke-virtual {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 565
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 566
    const/4 v4, -0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 567
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 568
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, address:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 577
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :goto_1
    return v4

    .line 562
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isLoading(I)Z
    .locals 1
    .parameter "partitionIndex"

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    iget-boolean v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    return v0
.end method

.method private final makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 581
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "searching"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    const-string v2, ""

    .line 590
    :goto_0
    return-object v2

    .line 585
    :cond_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, displayName:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, emailAddress:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v2, v1

    .line 588
    goto :goto_0

    .line 590
    :cond_2
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "partition"
    .parameter "cursor"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 520
    if-nez p2, :cond_0

    .line 521
    const/4 v4, 0x0

    .line 542
    :goto_0
    return-object v4

    .line 524
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gt v4, v7, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->hasDuplicates(Landroid/database/Cursor;I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, p2

    .line 526
    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x0

    .line 530
    .local v0, count:I
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 531
    .local v3, newCursor:Landroid/database/MatrixCursor;
    const/4 v4, -0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 532
    :cond_2
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v0, v7, :cond_3

    .line 533
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, displayName:Ljava/lang/String;
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, emailAddress:Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->isDuplicate(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 536
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 540
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #emailAddress:Ljava/lang/String;
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    move-object v4, v3

    .line 542
    goto :goto_0
.end method


# virtual methods
.method protected onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 24
    .parameter "constraint"
    .parameter "directoryCursor"
    .parameter "defaultPartitionCursor"

    .prologue
    .line 359
    if-eqz p2, :cond_5

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 361
    .local v15, packageManager:Landroid/content/pm/PackageManager;
    const/16 v18, 0x0

    .line 362
    .local v18, preferredDirectory:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v7, directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 364
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 368
    .local v11, id:J
    const-wide/16 v21, 0x1

    cmp-long v21, v11, v21

    if-eqz v21, :cond_0

    .line 372
    new-instance v17, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    invoke-direct/range {v17 .. v17}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;-><init>()V

    .line 373
    .local v17, partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-wide v0, v11

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryId:J

    .line 374
    const/16 v21, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 375
    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    .line 376
    const/16 v21, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 377
    const/16 v21, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 378
    .local v16, packageName:Ljava/lang/String;
    const/16 v21, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 379
    .local v19, resourceId:I
    if-eqz v16, :cond_1

    if-eqz v19, :cond_1

    .line 381
    :try_start_0
    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v20

    .line 383
    .local v20, resources:Landroid/content/res/Resources;
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 384
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 385
    const-string v21, "BaseEmailAddressAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot resolve directory name: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "@"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v20           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 399
    move-object/from16 v18, v17

    goto/16 :goto_0

    .line 388
    :catch_0
    move-exception v21

    move-object/from16 v8, v21

    .line 389
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "BaseEmailAddressAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot resolve directory name: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "@"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 401
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 405
    .end local v11           #id:J
    .end local v16           #packageName:Ljava/lang/String;
    .end local v17           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    .end local v19           #resourceId:I
    :cond_3
    if-eqz v18, :cond_4

    .line 406
    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 409
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 410
    .restart local v17       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_2

    .line 414
    .end local v7           #directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v15           #packageManager:Landroid/content/pm/PackageManager;
    .end local v17           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    .end local v18           #preferredDirectory:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v5

    .line 415
    .local v5, count:I
    const/4 v13, 0x0

    .line 419
    .local v13, limit:I
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    .line 422
    if-eqz p3, :cond_6

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v21

    if-lez v21, :cond_6

    .line 423
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 426
    :cond_6
    if-nez p3, :cond_8

    const/16 v21, 0x0

    move/from16 v6, v21

    .line 429
    .local v6, defaultPartitionCount:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mPreferredMaxResultCount:I

    move/from16 v21, v0

    sub-int v13, v21, v6

    .line 433
    const/4 v9, 0x1

    .local v9, i:I
    :goto_4
    if-ge v9, v5, :cond_a

    .line 434
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v17

    check-cast v17, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 435
    .restart local v17       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 437
    if-lez v13, :cond_9

    .line 438
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 439
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 440
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 433
    :cond_7
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 426
    .end local v6           #defaultPartitionCount:I
    .end local v9           #i:I
    .end local v17           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v21

    move/from16 v6, v21

    goto :goto_3

    .line 443
    .restart local v6       #defaultPartitionCount:I
    .restart local v9       #i:I
    .restart local v17       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_9
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 444
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 448
    .end local v6           #defaultPartitionCount:I
    .end local v9           #i:I
    .end local v17           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :catchall_0
    move-exception v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    throw v21

    .restart local v6       #defaultPartitionCount:I
    .restart local v9       #i:I
    :cond_a
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    .line 453
    const/4 v9, 0x1

    :goto_6
    if-ge v9, v5, :cond_e

    .line 454
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v17

    check-cast v17, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 455
    .restart local v17       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v9

    move/from16 v3, v23

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 458
    .local v14, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, v21

    move-object v1, v14

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    .line 460
    new-instance v21, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move v2, v9

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;-><init>(Lcom/android/common/contacts/BaseEmailAddressAdapter;IJ)V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    .line 462
    :cond_b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->setLimit(I)V

    .line 463
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    .line 453
    .end local v14           #msg:Landroid/os/Message;
    :cond_c
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 465
    :cond_d
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 467
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 471
    .end local v17           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_e
    return-void
.end method

.method public onPartitionLoadFinished(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V
    .locals 3
    .parameter "constraint"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 494
    invoke-virtual {p0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 499
    .local v0, partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 501
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 502
    invoke-direct {p0, p2, p3}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 513
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_0
    :goto_0
    return-void

    .line 506
    .restart local v0       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_1
    if-eqz p3, :cond_0

    .line 507
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 510
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_2
    if-eqz p3, :cond_0

    .line 511
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method showSearchPendingIfNotComplete(I)V
    .locals 2
    .parameter "partitionIndex"

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 476
    .local v0, partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->createLoadingCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 480
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_0
    return-void
.end method
