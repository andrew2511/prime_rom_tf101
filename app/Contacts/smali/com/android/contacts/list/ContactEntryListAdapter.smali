.class public abstract Lcom/android/contacts/list/ContactEntryListAdapter;
.super Lcom/android/contacts/widget/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# instance fields
.field private mDataRestrictedByCallingPackage:Z

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mLoading:Z

.field private mNameHighlightingEnabled:Z

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

.field private mUpperCaseQueryString:[C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    .line 71
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 73
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mLoading:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartitions()V

    .line 81
    return-void
.end method

.method private getPartitionByDirectoryId(J)I
    .locals 5
    .parameter "id"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 108
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 110
    .local v2, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 111
    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .end local v2           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    move v3, v1

    .line 116
    :goto_1
    return v3

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 388
    if-nez p1, :cond_0

    .line 389
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 402
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 394
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, sections:[Ljava/lang/String;
    const-string v3, "address_book_index_counts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 398
    .local v1, counts:[I
    new-instance v3, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-direct {v3, v2, v1}, Lcom/android/contacts/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    .line 400
    .end local v1           #counts:[I
    .end local v2           #sections:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 95
    return-void
.end method

.method protected applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 2
    .parameter "builder"

    .prologue
    .line 293
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDataRestrictedByCallingPackage:Z

    if-nez v1, :cond_0

    move-object v1, p1

    .line 303
    .end local p0
    :goto_0
    return-object v1

    .line 297
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, callingPackage:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    const-string v1, "requesting_package"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 303
    goto :goto_0
.end method

.method protected applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDataRestrictedByCallingPackage:Z

    if-nez v0, :cond_0

    move-object v0, p1

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public areAllPartitionsEmpty()Z
    .locals 3

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 455
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 456
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    const/4 v2, 0x0

    .line 460
    :goto_1
    return v2

    .line 455
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 19
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 492
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v13

    .line 493
    .local v13, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v14, v13, Lcom/android/contacts/list/DirectoryPartition;

    if-nez v14, :cond_0

    .line 527
    :goto_0
    return-void

    .line 497
    :cond_0
    move-object v0, v13

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    move-object v9, v0

    .line 498
    .local v9, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v9}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v6

    .line 499
    .local v6, directoryId:J
    const v14, 0x7f070029

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 500
    .local v12, labelTextView:Landroid/widget/TextView;
    const v14, 0x7f070072

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 501
    .local v11, displayNameTextView:Landroid/widget/TextView;
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-eqz v14, :cond_1

    const-wide/16 v14, 0x1

    cmp-long v14, v6, v14

    if-nez v14, :cond_2

    .line 502
    :cond_1
    const v14, 0x7f0c0185

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 503
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :goto_1
    const v14, 0x7f070071

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 514
    .local v5, countText:Landroid/widget/TextView;
    invoke-virtual {v9}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 515
    const v14, 0x7f0c0171

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 505
    .end local v5           #countText:Landroid/widget/TextView;
    :cond_2
    const v14, 0x7f0c0184

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 506
    invoke-virtual {v9}, Lcom/android/contacts/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 507
    .local v8, directoryName:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object v10, v8

    .line 510
    .local v10, displayName:Ljava/lang/String;
    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 507
    .end local v10           #displayName:Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    goto :goto_2

    .line 517
    .end local v8           #directoryName:Ljava/lang/String;
    .restart local v5       #countText:Landroid/widget/TextView;
    :cond_4
    if-nez p3, :cond_5

    const/4 v14, 0x0

    move v4, v14

    .line 518
    .local v4, count:I
    :goto_3
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-eqz v14, :cond_6

    const-wide/16 v14, 0x1

    cmp-long v14, v6, v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v14

    if-lt v4, v14, :cond_6

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f0c005f

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 517
    .end local v4           #count:I
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    move v4, v14

    goto :goto_3

    .line 523
    .restart local v4       #count:I
    :cond_6
    const v14, 0x7f0c0060

    const v15, 0x7f0e0005

    move-object/from16 v0, p0

    move v1, v4

    move v2, v14

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQuantityText(III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 365
    .local v0, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_2

    .line 366
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .end local v0           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 369
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    .line 373
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 376
    invoke-direct {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    .line 316
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 318
    .local v1, directoryIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 319
    .local v7, idColumnIndex:I
    const-string v11, "directoryType"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 320
    .local v2, directoryTypeColumnIndex:I
    const-string v11, "displayName"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 321
    .local v3, displayNameColumnIndex:I
    const-string v11, "photoSupport"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 325
    .local v10, photoSupportColumnIndex:I
    const/4 v11, -0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 326
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 327
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 328
    .local v5, id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-direct {p0, v5, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 330
    new-instance v8, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    .line 331
    .local v8, partition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v8, v5, v6}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    .line 332
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 333
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 334
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 335
    .local v9, photoSupport:I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_1

    const/4 v11, 0x3

    if-ne v9, v11, :cond_2

    :cond_1
    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v8, v11}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 337
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_0

    .line 335
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 342
    .end local v5           #id:J
    .end local v8           #partition:Lcom/android/contacts/list/DirectoryPartition;
    .end local v9           #photoSupport:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 343
    .local v0, count:I
    move v4, v0

    .local v4, i:I
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_5

    .line 344
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    .line 345
    .local v8, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v11, v8, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v11, :cond_4

    .line 346
    check-cast v8, Lcom/android/contacts/list/DirectoryPartition;

    .end local v8           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v8}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v5

    .line 347
    .restart local v5       #id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 348
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_2

    .line 353
    .end local v5           #id:J
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->invalidate()V

    .line 354
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 355
    return-void
.end method

.method public clearPartitions()V
    .locals 6

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    .line 146
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 147
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v4

    .line 148
    .local v4, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v5, v4, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v5, :cond_0

    .line 149
    move-object v0, v4

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    move-object v2, v0

    .line 150
    .local v2, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 146
    .end local v2           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v4           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->clearPartitions()V

    .line 154
    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 467
    const/4 v1, -0x1

    .line 468
    .local v1, defaultPartitionIndex:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 469
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 470
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 471
    .local v3, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .end local v3           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 473
    move v1, v2

    .line 477
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 478
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    .line 479
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 481
    :cond_1
    return-void

    .line 469
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 307
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    .line 309
    return-void
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 98
    new-instance v0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-direct {v0, v3, v3}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    .line 99
    .local v0, partition:Lcom/android/contacts/list/DirectoryPartition;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 102
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 103
    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 85
    new-instance v0, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getItemViewType(II)I
    .locals 3
    .parameter "partitionIndex"
    .parameter "position"

    .prologue
    .line 413
    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->getItemViewType(II)I

    move-result v1

    .line 414
    .local v1, type:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 415
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 416
    .local v0, placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    iget-boolean v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_0

    move v2, v1

    .line 418
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :goto_0
    return v2

    .line 416
    .restart local v0       #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_1
    move v2, v1

    .line 418
    goto :goto_0
.end method

.method protected getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method public getQuantityText(III)Ljava/lang/String;
    .locals 4
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 531
    if-nez p1, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 536
    :goto_0
    return-object v1

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, format:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method protected getTextWithHighlightingFactory()Lcom/android/contacts/widget/TextWithHighlightingFactory;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

    return-object v0
.end method

.method public getUpperCaseQueryString()[C
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 437
    :goto_0
    return v0

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 433
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mLoading:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 435
    goto :goto_0

    .line 437
    :cond_2
    invoke-super {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 4

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 443
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 444
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 445
    .local v2, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .end local v2           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    const/4 v3, 0x1

    .line 450
    :goto_1
    return v3

    .line 443
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isNameHighlightingEnabled()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mNameHighlightingEnabled:Z

    return v0
.end method

.method public isPhotoSupported(I)Z
    .locals 2
    .parameter "partitionIndex"

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 542
    .local v0, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_0

    .line 543
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .end local v0           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    .line 545
    :goto_0
    return v1

    .restart local v0       #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 486
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 487
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDataReload()V
    .locals 7

    .prologue
    .line 126
    const/4 v4, 0x0

    .line 127
    .local v4, notify:Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    .line 128
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v5

    .line 130
    .local v5, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v6, v5, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v6, :cond_1

    .line 131
    move-object v0, v5

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    move-object v2, v0

    .line 132
    .local v2, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v6

    if-nez v6, :cond_0

    .line 133
    const/4 v4, 0x1

    .line 135
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 128
    .end local v2           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v5           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_2
    if-eqz v4, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 141
    :cond_3
    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0
    .parameter "displayOrder"

    .prologue
    .line 202
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    .line 203
    return-void
.end method

.method public setDataRestrictedByCallingPackage(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDataRestrictedByCallingPackage:Z

    .line 275
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 194
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 195
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 186
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    .line 187
    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0
    .parameter "displayPhotos"

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    .line 243
    return-void
.end method

.method public setEmptyListEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 251
    return-void
.end method

.method public setNameHighlightingEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mNameHighlightingEnabled:Z

    .line 215
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0
    .parameter "photoLoader"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    .line 231
    return-void
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "pinnedHeaderView"
    .parameter "title"

    .prologue
    .line 90
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setSectionHeader(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .parameter "queryString"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .parameter "quickContactEnabled"

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    .line 267
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    .line 162
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    .line 259
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .parameter "sortOrder"

    .prologue
    .line 210
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    .line 211
    return-void
.end method

.method public setTextWithHighlightingFactory(Lcom/android/contacts/widget/TextWithHighlightingFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

    .line 223
    return-void
.end method
