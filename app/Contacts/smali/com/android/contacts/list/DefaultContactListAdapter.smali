.class public Lcom/android/contacts/list/DefaultContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 4
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 148
    if-nez p4, :cond_1

    .line 207
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 152
    .restart local p0
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, selection:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 205
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .restart local p0
    :pswitch_1
    const-string v2, "starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 175
    :pswitch_2
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :pswitch_3
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 187
    :pswitch_4
    const-string v2, "_id IN (SELECT DISTINCT contact_id FROM raw_contacts WHERE account_type=?   AND account_name=?)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    :pswitch_5
    const-string v2, "mimetype=? AND data1=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-wide v2, p4, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 4
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 211
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    move-object v1, v0

    .line 213
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getUpperCaseQueryString()[C

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 219
    :cond_0
    invoke-virtual {p0, v1, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 227
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 228
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPresence(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 235
    :goto_2
    return-void

    :cond_1
    move-object v2, v3

    .line 213
    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 62
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, query:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 65
    const-string v2, ""

    .line 67
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 72
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 73
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 96
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 97
    const-string v3, "sort_key"

    .line 102
    .local v3, sortOrder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 103
    return-void

    .line 75
    .end local v3           #sortOrder:Ljava/lang/String;
    .restart local v2       #query:Ljava/lang/String;
    :cond_1
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 76
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    .line 80
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    :cond_2
    const-string v4, "snippet_args"

    const-string v5, "\u0001,\u0001,\u2026,5"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 86
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 87
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->FILTER_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #query:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 91
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 92
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 99
    :cond_4
    const-string v3, "sort_key_alt"

    .restart local v3       #sortOrder:Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 139
    if-eqz p4, :cond_0

    iget v0, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    sget-object v0, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_DATA:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 8
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x6

    .line 106
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 107
    .local v1, uri:Landroid/net/Uri;
    if-eqz p4, :cond_0

    .line 108
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 109
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 120
    :cond_0
    :goto_0
    cmp-long v2, p2, v6

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 125
    :cond_1
    if-eqz p4, :cond_2

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-eq v2, v3, :cond_2

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v2, v5, :cond_2

    .line 128
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 132
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 135
    return-void

    .line 110
    :cond_3
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v2, v5, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, lookupKey:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 113
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSelectedContactId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
