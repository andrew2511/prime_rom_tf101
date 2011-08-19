.class public Lcom/android/contacts/list/JoinContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "JoinContactListAdapter.java"


# instance fields
.field private mAllContactsListShown:Z

.field private mShowAllContactsViewType:I

.field private mTargetContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setIndexedPartition(I)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setDirectorySearchMode(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getViewTypeCount()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mShowAllContactsViewType:I

    .line 63
    return-void
.end method

.method private inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "layoutId"
    .parameter "parent"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->addPartition(ZZ)V

    .line 72
    invoke-virtual {p0, v1, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->addPartition(ZZ)V

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 76
    return-void
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 186
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 3
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 207
    packed-switch p2, :pswitch_data_0

    .line 226
    :goto_0
    :pswitch_0
    return-void

    .line 209
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    move-object v1, v0

    .line 210
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 212
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0

    .line 219
    .end local v1           #view:Lcom/android/contacts/list/ContactListItemView;
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    move-object v1, v0

    .line 220
    .restart local v1       #view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, v1, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 221
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 222
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 2
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->configureDefaultPartition(ZZ)V

    .line 147
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 10
    .parameter "cursorLoader"
    .parameter "directoryId"

    .prologue
    const/4 v9, 0x1

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/JoinContactLoader;

    move-object v4, v0

    .line 85
    .local v4, loader:Lcom/android/contacts/list/JoinContactLoader;
    iget-boolean v5, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mAllContactsListShown:Z

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/JoinContactLoader;->setLoadSuggestionsAndAllContacts(Z)V

    .line 87
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 88
    .local v2, builder:Landroid/net/Uri$Builder;
    iget-wide v5, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    const-string v5, "suggestions"

    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, filter:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    :cond_0
    const-string v5, "limit"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/JoinContactLoader;->setSuggestionUri(Landroid/net/Uri;)V

    .line 101
    sget-object v5, Lcom/android/contacts/list/JoinContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/JoinContactLoader;->setProjection([Ljava/lang/String;)V

    .line 102
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/list/JoinContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "directory"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 106
    .local v1, allContactsUri:Landroid/net/Uri;
    invoke-virtual {v4, v1}, Lcom/android/contacts/list/JoinContactLoader;->setUri(Landroid/net/Uri;)V

    .line 107
    const-string v5, "_id!=?"

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/JoinContactLoader;->setSelection(Ljava/lang/String;)V

    .line 108
    new-array v5, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/JoinContactLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getSortOrder()I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 110
    const-string v5, "sort_key"

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/JoinContactLoader;->setSortOrder(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v5, "sort_key_alt"

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/JoinContactLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 237
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 238
    .local v0, contactId:J
    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public getItemViewType(II)I
    .locals 1
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 156
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 157
    iget v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mShowAllContactsViewType:I

    .line 159
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactListAdapter;->getItemViewType(II)I

    move-result v0

    goto :goto_0
.end method

.method public getShowAllContactsLabelCursor()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 229
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/contacts/list/JoinContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 230
    .local v0, matrixCursor:Landroid/database/MatrixCursor;
    sget-object v2, Lcom/android/contacts/list/JoinContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/Object;

    .line 231
    .local v1, row:[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 232
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/contacts/list/ContactListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const v2, 0x7f070070

    const v1, 0x7f04002d

    .line 165
    packed-switch p2, :pswitch_data_0

    .line 180
    :pswitch_0
    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .line 167
    .restart local p0
    :pswitch_1
    invoke-direct {p0, v1, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    const v1, 0x7f0c002e

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, v0

    .line 170
    goto :goto_0

    .line 173
    .end local v0           #view:Landroid/view/View;
    .restart local p0
    :pswitch_2
    invoke-direct {p0, v1, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 174
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    const v1, 0x7f0c002f

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, v0

    .line 176
    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 191
    packed-switch p2, :pswitch_data_0

    .line 198
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 194
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_1
    const v0, 0x7f04002e

    invoke-direct {p0, v0, p5}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAllContactsListShown(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mAllContactsListShown:Z

    .line 127
    return-void
.end method

.method public setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 131
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mAllContactsListShown:Z

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getShowAllContactsLabelCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_0
.end method

.method public setTargetContactId(J)V
    .locals 0
    .parameter "targetContactId"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    .line 80
    return-void
.end method
