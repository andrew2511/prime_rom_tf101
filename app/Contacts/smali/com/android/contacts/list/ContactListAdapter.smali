.class public abstract Lcom/android/contacts/list/ContactListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "ContactListAdapter.java"


# static fields
.field protected static final FILTER_PROJECTION:[Ljava/lang/String;

.field protected static final PROJECTION_CONTACT:[Ljava/lang/String;

.field protected static final PROJECTION_DATA:[Ljava/lang/String;


# instance fields
.field private mAlternativeDisplayNameColumnIndex:I

.field private mDisplayNameColumnIndex:I

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    .line 54
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->PROJECTION_DATA:[Ljava/lang/String;

    .line 69
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter;->FILTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 112
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 113
    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 277
    iget v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isNameHighlightingEnabled()Z

    move-result v1

    iget v2, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IZI)V

    .line 279
    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    .line 280
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x7

    .line 244
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListAdapter;->isPhotoSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 262
    :goto_0
    return-void

    .line 250
    :cond_0
    const-wide/16 v0, 0x0

    .line 251
    .local v0, photoId:J
    invoke-interface {p3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 252
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 255
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;J)V

    goto :goto_0

    .line 258
    :cond_2
    const/16 v4, 0x8

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, photoUriString:Ljava/lang/String;
    if-nez v3, :cond_3

    const/4 v4, 0x0

    move-object v2, v4

    .line 260
    .local v2, photoUri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_0

    .line 259
    .end local v2           #photoUri:Landroid/net/Uri;
    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v2, v4

    goto :goto_1
.end method

.method protected bindPresence(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 283
    const/4 v0, 0x5

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showPresence(Landroid/database/Cursor;II)V

    .line 285
    return-void
.end method

.method protected bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x7

    .line 266
    const-wide/16 v0, 0x0

    .line 267
    .local v0, photoId:J
    invoke-interface {p3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v2

    .line 272
    .local v2, quickContact:Landroid/widget/QuickContactBadge;
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;J)V

    .line 274
    return-void
.end method

.method protected bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 288
    const/16 v0, 0xc

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    .line 289
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 235
    .local v0, placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    iget-boolean v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 236
    iget-boolean v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 241
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :goto_2
    return-void

    .restart local v0       #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_0
    move-object v1, v3

    .line 235
    goto :goto_0

    .line 236
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 238
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_2
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "position"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 184
    .local v1, partitionIndex:I
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 185
    .local v0, item:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 9
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 189
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 190
    .local v0, contactId:J
    const/16 v6, 0x9

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 192
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {p0}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 193
    .local v2, directoryId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 194
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 197
    :cond_0
    return-object v5
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getFirstContactUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v3

    .line 351
    .local v3, partitionCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .line 353
    .local v2, partition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 358
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    .line 369
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #partition:Lcom/android/contacts/list/DirectoryPartition;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getHasPhoneNumber(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedContactDirectoryId()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    return-wide v0
.end method

.method public getSelectedContactId()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    return-wide v0
.end method

.method public getSelectedContactLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedContactPosition()I
    .locals 14

    .prologue
    .line 292
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-nez v10, :cond_0

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 293
    const/4 v10, -0x1

    .line 342
    :goto_0
    return v10

    .line 296
    :cond_0
    const/4 v2, 0x0

    .line 297
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 298
    .local v8, partitionIndex:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v7

    .line 299
    .local v7, partitionCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_1

    .line 300
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    .line 301
    .local v6, partition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 302
    move v8, v3

    .line 306
    .end local v6           #partition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_1
    const/4 v10, -0x1

    if-ne v8, v10, :cond_3

    .line 307
    const/4 v10, -0x1

    goto :goto_0

    .line 299
    .restart local v6       #partition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 310
    .end local v6           #partition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    .line 311
    if-nez v2, :cond_4

    .line 312
    const/4 v10, -0x1

    goto :goto_0

    .line 315
    :cond_4
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 316
    const/4 v5, -0x1

    .line 317
    .local v5, offset:I
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 318
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 319
    const/16 v10, 0x9

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, lookupKey:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 321
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 334
    .end local v4           #lookupKey:Ljava/lang/String;
    :cond_6
    :goto_2
    const/4 v10, -0x1

    if-ne v5, v10, :cond_9

    .line 335
    const/4 v10, -0x1

    goto :goto_0

    .line 325
    :cond_7
    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 327
    :cond_8
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 328
    .local v0, contactId:J
    iget-wide v10, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    cmp-long v10, v0, v10

    if-nez v10, :cond_5

    .line 329
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 330
    goto :goto_2

    .line 338
    .end local v0           #contactId:J
    :cond_9
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->getPositionForPartition(I)I

    move-result v10

    add-int v9, v10, v5

    .line 339
    .local v9, position:I
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactListAdapter;->hasHeader(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 340
    add-int/lit8 v9, v9, 0x1

    :cond_a
    move v10, v9

    .line 342
    goto/16 :goto_0
.end method

.method public isContactStarred(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectedContact(ILandroid/database/Cursor;)Z
    .locals 9
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 208
    .local v0, directoryId:J
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactDirectoryId()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    move v3, v7

    .line 217
    :goto_0
    return v3

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, lookupKey:Ljava/lang/String;
    if-eqz v2, :cond_1

    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v8

    .line 214
    goto :goto_0

    .line 217
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactId()J

    move-result-wide v3

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v3, v8

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 224
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 225
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getTextWithHighlightingFactory()Lcom/android/contacts/widget/TextWithHighlightingFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setTextWithHighlightingFactory(Lcom/android/contacts/widget/TextWithHighlightingFactory;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->isSelectionVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 229
    return-object v0
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 3
    .parameter "displayOrder"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 168
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 170
    iput v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    .line 171
    iput v2, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iput v2, p0, Lcom/android/contacts/list/ContactListAdapter;->mDisplayNameColumnIndex:I

    .line 174
    iput v1, p0, Lcom/android/contacts/list/ContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/contacts/list/ContactListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 128
    return-void
.end method

.method public setSelectedContact(JLjava/lang/String;J)V
    .locals 0
    .parameter "selectedDirectoryId"
    .parameter "lookupKey"
    .parameter "contactId"

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    .line 144
    iput-object p3, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 145
    iput-wide p4, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    .line 146
    return-void
.end method
