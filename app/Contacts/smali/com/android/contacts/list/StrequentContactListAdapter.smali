.class public Lcom/android/contacts/list/StrequentContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "StrequentContactListAdapter.java"


# instance fields
.field private mCallButtonId:I

.field private mCallButtonListener:Landroid/view/View$OnClickListener;

.field private mFrequentSeparatorPos:I

.field private mFrequentlyContactedContactsIncluded:Z

.field private mIsPhone:Z

.field private mSeparatorView:Landroid/widget/TextView;

.field private mStarredContactsIncluded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "callButtonId"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    .line 49
    iput p2, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mCallButtonId:I

    .line 50
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 3
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 202
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    move-object v1, v0

    .line 204
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/StrequentContactListAdapter;->isSelectionVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/StrequentContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 208
    :cond_0
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/StrequentContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/contacts/list/StrequentContactListAdapter;->isQuickContactEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/StrequentContactListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 214
    :goto_0
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/StrequentContactListAdapter;->bindPresence(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 217
    iget-boolean v2, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mIsPhone:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p4}, Lcom/android/contacts/list/StrequentContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    iget v2, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mCallButtonId:I

    invoke-virtual {v1, v2, p4}, Lcom/android/contacts/list/ContactListItemView;->showCallButton(II)V

    .line 222
    :goto_1
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/StrequentContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->hideCallButton()V

    goto :goto_1
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 5
    .parameter "partition"
    .parameter "cursor"

    .prologue
    const/4 v4, -0x1

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 102
    iput v4, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    .line 104
    iget-boolean v3, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mStarredContactsIncluded:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentlyContactedContactsIncluded:Z

    if-eqz v3, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, count:I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 108
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 110
    .local v2, starred:I
    if-nez v2, :cond_1

    .line 111
    if-lez v1, :cond_0

    .line 113
    iput v1, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    .line 120
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #starred:I
    :cond_0
    return-void

    .line 108
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #starred:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 3
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/list/StrequentContactListAdapter;->getSortOrder()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "sort_key"

    move-object v0, v1

    .line 69
    .local v0, sortOrder:Ljava/lang/String;
    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mStarredContactsIncluded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentlyContactedContactsIncluded:Z

    if-eqz v1, :cond_1

    .line 70
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 83
    :goto_1
    sget-object v1, Lcom/android/contacts/list/StrequentContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 85
    return-void

    .line 66
    .end local v0           #sortOrder:Ljava/lang/String;
    :cond_0
    const-string v1, "sort_key_alt"

    move-object v0, v1

    goto :goto_0

    .line 71
    .restart local v0       #sortOrder:Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mStarredContactsIncluded:Z

    if-eqz v1, :cond_2

    .line 72
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 73
    const-string v1, "starred!=0"

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentlyContactedContactsIncluded:Z

    if-eqz v1, :cond_3

    .line 75
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 76
    const-string v1, "times_contacted > 0"

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 77
    const-string v0, "times_contacted DESC"

    goto :goto_1

    .line 79
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Neither StarredContactsIncluded nor FrequentlyContactedContactsIncluded is set"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-super {p0}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    if-ge p1, v0, :cond_1

    .line 146
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 154
    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    if-ge p1, v0, :cond_1

    .line 156
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 158
    :goto_0
    return-wide v0

    :cond_1
    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .line 164
    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    if-ge p1, v0, :cond_1

    .line 166
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getItemViewType(I)I

    move-result v0

    .line 170
    :goto_0
    return v0

    .line 167
    :cond_1
    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 168
    goto :goto_0

    .line 170
    :cond_2
    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/contacts/list/ContactListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 176
    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    if-ge p1, v0, :cond_1

    .line 178
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 179
    :cond_1
    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    if-ne p1, v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mSeparatorView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/android/contacts/list/StrequentContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mSeparatorView:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mSeparatorView:Landroid/widget/TextView;

    const v1, 0x7f0c0092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mSeparatorView:Landroid/widget/TextView;

    goto :goto_0

    .line 187
    :cond_3
    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-super {p0, v0, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/contacts/list/ContactListAdapter;->invalidate()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/list/StrequentContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mIsPhone:Z

    .line 95
    return-void
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentSeparatorPos:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 194
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 196
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mCallButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-object v0
.end method

.method public setCallButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "callButtonListener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mCallButtonListener:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method

.method public setFrequentlyContactedContactsIncluded(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mFrequentlyContactedContactsIncluded:Z

    .line 62
    return-void
.end method

.method public setStarredContactsIncluded(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/contacts/list/StrequentContactListAdapter;->mStarredContactsIncluded:Z

    .line 58
    return-void
.end method
