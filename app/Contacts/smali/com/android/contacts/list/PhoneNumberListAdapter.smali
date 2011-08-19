.class public Lcom/android/contacts/list/PhoneNumberListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "PhoneNumberListAdapter.java"


# static fields
.field protected static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlternativeDisplayNameColumnIndex:I

.field private mDisplayNameColumnIndex:I

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/PhoneNumberListAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 67
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 68
    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 114
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
    .line 188
    iget v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mDisplayNameColumnIndex:I

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isNameHighlightingEnabled()Z

    move-result v1

    iget v2, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IZI)V

    .line 190
    const/16 v0, 0x8

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    .line 191
    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, label:Ljava/lang/CharSequence;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 167
    .local v2, type:I
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, customLabel:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 172
    .end local v0           #customLabel:Ljava/lang/String;
    .end local v2           #type:I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 174
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x7

    .line 194
    const-wide/16 v0, 0x0

    .line 195
    .local v0, photoId:J
    invoke-interface {p2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;J)V

    .line 200
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 179
    .local v0, placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    iget-boolean v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 180
    iget-boolean v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 185
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :goto_2
    return-void

    .restart local v0       #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_0
    move-object v1, v3

    .line 179
    goto :goto_0

    .line 180
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 182
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_2
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 2
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 156
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    move-object v1, v0

    .line 157
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, v1, p4}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 158
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 159
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 160
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 161
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 7
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, query:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 81
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    :goto_0
    const-string v3, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 92
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/contacts/list/PhoneNumberListAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 105
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #query:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getSortOrder()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 107
    const-string v3, "sort_key"

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 111
    :goto_2
    return-void

    .line 84
    .end local v2           #uri:Landroid/net/Uri;
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    .restart local v1       #query:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 94
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #query:Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 97
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    invoke-static {v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 102
    sget-object v3, Lcom/android/contacts/list/PhoneNumberListAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_3
    const-string v3, "sort_key_alt"

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "position"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 140
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 141
    .local v1, id:J
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 147
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getTextWithHighlightingFactory()Lcom/android/contacts/widget/TextWithHighlightingFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setTextWithHighlightingFactory(Lcom/android/contacts/widget/TextWithHighlightingFactory;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 151
    return-object v0
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 4
    .parameter "displayOrder"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 125
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iput v2, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mDisplayNameColumnIndex:I

    .line 128
    iput v3, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mAlternativeDisplayNameColumnIndex:I

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iput v3, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mDisplayNameColumnIndex:I

    .line 131
    iput v2, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mAlternativeDisplayNameColumnIndex:I

    goto :goto_0
.end method
