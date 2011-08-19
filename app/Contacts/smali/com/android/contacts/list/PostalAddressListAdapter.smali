.class public Lcom/android/contacts/list/PostalAddressListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "PostalAddressListAdapter.java"


# static fields
.field static final POSTALS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlternativeDisplayNameColumnIndex:I

.field private mDisplayNameColumnIndex:I

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x7

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

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/PostalAddressListAdapter;->POSTALS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 60
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 61
    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 78
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
    .line 159
    iget v0, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mDisplayNameColumnIndex:I

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->isNameHighlightingEnabled()Z

    move-result v1

    iget v2, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IZI)V

    .line 162
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x6

    .line 165
    const-wide/16 v0, 0x0

    .line 166
    .local v0, photoId:J
    invoke-interface {p2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;J)V

    .line 171
    return-void
.end method

.method protected bindPostalAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, label:Ljava/lang/CharSequence;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 131
    .local v2, type:I
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, customLabel:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 136
    .end local v0           #customLabel:Ljava/lang/String;
    .end local v2           #type:I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 137
    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 138
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 5
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/PostalAddressListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 142
    .local v0, section:I
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getPositionForSection(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 151
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PostalAddressListAdapter;->getPositionForSection(I)I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v2, p2, :cond_1

    .line 152
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 156
    :goto_1
    return-void

    .line 146
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 147
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 2
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 120
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    move-object v1, v0

    .line 121
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, v1, p4}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 122
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 123
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 124
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindPostalAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 125
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 3
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 65
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/contacts/list/PostalAddressListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressListAdapter;->applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 68
    sget-object v1, Lcom/android/contacts/list/PostalAddressListAdapter;->POSTALS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getSortOrder()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 71
    const-string v1, "sort_key"

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v1, "sort_key_alt"

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "position"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PostalAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 105
    .local v0, id:J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 111
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getTextWithHighlightingFactory()Lcom/android/contacts/widget/TextWithHighlightingFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setTextWithHighlightingFactory(Lcom/android/contacts/widget/TextWithHighlightingFactory;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 115
    return-object v0
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 4
    .parameter "displayOrder"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 89
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    iput v2, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mDisplayNameColumnIndex:I

    .line 92
    iput v3, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mAlternativeDisplayNameColumnIndex:I

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iput v3, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mDisplayNameColumnIndex:I

    .line 95
    iput v2, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mAlternativeDisplayNameColumnIndex:I

    goto :goto_0
.end method
