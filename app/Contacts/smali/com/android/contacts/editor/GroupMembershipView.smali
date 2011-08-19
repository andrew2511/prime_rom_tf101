.class public Lcom/android/contacts/editor/GroupMembershipView;
.super Landroid/widget/LinearLayout;
.source "GroupMembershipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultGroupId:J

.field private mDefaultGroupVisibilityKnown:Z

.field private mDefaultGroupVisible:Z

.field private mFavoritesGroupId:J

.field private mGroupList:Landroid/widget/TextView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mKind:Lcom/android/contacts/model/AccountType$DataKind;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method private createNewGroup()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method private hasMembership(J)Z
    .locals 7
    .parameter "groupId"

    .prologue
    const/4 v6, 0x1

    .line 306
    iget-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    .line 321
    :goto_0
    return v4

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 313
    .local v3, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 314
    const-string v4, "data1"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 315
    .local v2, id:Ljava/lang/Long;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    move v4, v6

    .line 316
    goto :goto_0

    .line 321
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:Ljava/lang/Long;
    .end local v3           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isGroupChecked(J)Z
    .locals 5
    .parameter "groupId"

    .prologue
    .line 295
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 296
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 297
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 298
    .local v2, item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 299
    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v3

    .line 302
    .end local v2           #item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :goto_1
    return v3

    .line 296
    .restart local v2       #item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v2           #item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateView()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x4

    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 133
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 135
    :cond_0
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    const/4 v0, 0x0

    .line 140
    .local v0, accountHasGroups:Z
    iput-wide v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 141
    iput-wide v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v5, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v8, -0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 145
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 146
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, accountName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, accountType:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 149
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 150
    .local v3, groupId:J
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v7, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_5

    .line 152
    iput-wide v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 162
    :goto_2
    iget-wide v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v7, v3, v7

    if-eqz v7, :cond_3

    iget-wide v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v7, v3, v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 164
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, title:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 166
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 153
    .end local v6           #title:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v7, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_6

    .line 155
    iput-wide v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    goto :goto_2

    .line 157
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 173
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #groupId:J
    :cond_7
    if-nez v0, :cond_8

    .line 174
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    goto/16 :goto_0

    .line 178
    :cond_8
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-nez v7, :cond_9

    .line 179
    const v7, 0x7f070086

    invoke-virtual {p0, v7}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    .line 180
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_9
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_a

    .line 185
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    const-string v8, " "

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 191
    iget-boolean v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    if-nez v7, :cond_1

    .line 193
    iget-wide v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v7, v7, v11

    if-eqz v7, :cond_b

    iget-wide v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    invoke-direct {p0, v7, v8}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v7

    if-nez v7, :cond_b

    move v7, v10

    :goto_4
    iput-boolean v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    .line 194
    iput-boolean v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    goto/16 :goto_0

    .line 187
    :cond_a
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_b
    move v7, v9

    .line 193
    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "v"

    .prologue
    .line 200
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v9}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 201
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v9}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 240
    .end local p1
    :goto_0
    return-void

    .line 205
    .restart local p1
    :cond_0
    new-instance v9, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f040025

    invoke-direct {v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 208
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v10, -0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 209
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 210
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, accountName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, accountType:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 213
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 214
    .local v4, groupId:J
    iget-wide v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v9, v4, v9

    if-eqz v9, :cond_1

    iget-wide v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v9, v4, v9

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    if-eqz v9, :cond_1

    .line 216
    :cond_2
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v10, 0x3

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, title:Ljava/lang/String;
    invoke-direct {p0, v4, v5}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v2

    .line 218
    .local v2, checked:Z
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v10, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct {v10, v4, v5, v8, v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v9, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 223
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #checked:Z
    .end local v4           #groupId:J
    .end local v8           #title:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v10, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const-wide/16 v11, 0x85

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0c019f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v9, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 226
    new-instance v9, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 227
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 228
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 230
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v9}, Landroid/widget/ListPopupWindow;->show()V

    .line 232
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v9}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 233
    .local v7, listView:Landroid/widget/ListView;
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 234
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    .line 235
    .local v3, count:I
    const/4 v6, 0x0

    .end local p1
    .local v6, i:I
    :goto_2
    if-ge v6, v3, :cond_4

    .line 236
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9, v6}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v6, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 235
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 239
    :cond_4
    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 245
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 249
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
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
    .line 253
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v9, v0

    .line 254
    .local v9, list:Landroid/widget/ListView;
    iget-object v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v10}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 256
    .local v1, count:I
    const/4 v10, 0x1

    sub-int v10, v1, v10

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 257
    const/4 v10, 0x1

    sub-int v10, v1, v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 258
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->createNewGroup()V

    .line 292
    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :goto_0
    return-void

    .line 262
    .restart local p1       #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_0
    const/4 v6, 0x0

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 263
    iget-object v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v10, v6}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v9, v6}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v10

    invoke-virtual {p1, v10}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 262
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 267
    :cond_1
    iget-object v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v11, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v11}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 268
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v2, :cond_4

    .line 269
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 270
    .local v3, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_2

    .line 271
    const-string v10, "data1"

    invoke-virtual {v3, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 272
    .local v4, groupId:Ljava/lang/Long;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    if-eqz v10, :cond_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/contacts/editor/GroupMembershipView;->isGroupChecked(J)Z

    move-result v10

    if-nez v10, :cond_2

    .line 275
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 282
    .end local v3           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v4           #groupId:Ljava/lang/Long;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_6

    .line 283
    iget-object v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v10, v6}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 284
    .local v8, item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    invoke-virtual {v8}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v4

    .line 285
    .local v4, groupId:J
    invoke-virtual {v8}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v10

    if-nez v10, :cond_5

    .line 286
    iget-object v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    invoke-static {v10, v11}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 287
    .restart local v3       #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v10, "data1"

    invoke-virtual {v3, v10, v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    .line 282
    .end local v3           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 291
    .end local v4           #groupId:J
    .end local v8           #item:Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 0
    .parameter "groupMetaData"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    .line 120
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 121
    return-void
.end method

.method public setKind(Lcom/android/contacts/model/AccountType$DataKind;)V
    .locals 3
    .parameter "kind"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    .line 114
    const v1, 0x7f070085

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, kindTitle:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/model/AccountType$DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 125
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 126
    .local v0, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    .line 127
    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    .line 129
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 130
    return-void
.end method
