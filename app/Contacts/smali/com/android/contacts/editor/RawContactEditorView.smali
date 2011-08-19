.class public Lcom/android/contacts/editor/RawContactEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactEditorView.java"


# instance fields
.field private mAddFieldButton:Landroid/widget/Button;

.field private mAutoAddToDefaultGroup:Z

.field private mFields:Landroid/view/ViewGroup;

.field private mGroupMembershipKind:Lcom/android/contacts/model/AccountType$DataKind;

.field private mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mHeaderAccountName:Landroid/widget/TextView;

.field private mHeaderAccountType:Landroid/widget/TextView;

.field private mHeaderIcon:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mName:Lcom/android/contacts/editor/StructuredNameEditorView;

.field private mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

.field private mPhoneticNameAdded:Z

.field private mRawContactId:J

.field private mState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/RawContactEditorView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    return-void
.end method

.method private addToDefaultGroupIfNeeded()V
    .locals 12

    .prologue
    .line 277
    iget-boolean v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-nez v8, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const/4 v4, 0x0

    .line 283
    .local v4, hasGroupMembership:Z
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 284
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v2, :cond_3

    .line 285
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 286
    .local v7, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v8, "data1"

    invoke-virtual {v7, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 287
    .local v6, id:Ljava/lang/Long;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 288
    const/4 v4, 0x1

    .line 294
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #id:Ljava/lang/Long;
    .end local v7           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    if-nez v4, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getDefaultGroupId()J

    move-result-wide v0

    .line 296
    .local v0, defaultGroupId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 297
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/AccountType$DataKind;

    invoke-static {v8, v9}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 298
    .local v3, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v8, "data1"

    invoke-virtual {v3, v8, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private getDefaultGroupId()J
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 308
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, accountType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_name"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, accountName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 311
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 312
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, type:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 315
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 316
    .local v2, groupId:J
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    move-wide v6, v2

    .line 322
    .end local v2           #groupId:J
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    :goto_0
    return-wide v6

    :cond_1
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method private showAddInformationPopupWindow()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v2, fields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/editor/KindSectionView;>;"
    new-instance v6, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-direct {v6, v9, v10}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 354
    .local v6, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    .line 355
    .local v5, menu:Landroid/view/Menu;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_5

    .line 356
    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 357
    .local v1, child:Landroid/view/View;
    instance-of v9, v1, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v9, :cond_0

    .line 358
    move-object v0, v1

    check-cast v0, Lcom/android/contacts/editor/KindSectionView;

    move-object v7, v0

    .line 360
    .local v7, sectionView:Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {v7}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v4

    .line 361
    .local v4, kind:Lcom/android/contacts/model/AccountType$DataKind;
    iget-boolean v9, v4, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    if-nez v9, :cond_1

    invoke-virtual {v7}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v9

    if-eqz v9, :cond_1

    .line 355
    .end local v4           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local v7           #sectionView:Lcom/android/contacts/editor/KindSectionView;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    .restart local v4       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .restart local v7       #sectionView:Lcom/android/contacts/editor/KindSectionView;
    :cond_1
    const-string v9, "#displayName"

    iget-object v10, v4, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 368
    const-string v9, "#phoneticName"

    iget-object v10, v4, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v9}, Lcom/android/contacts/editor/PhoneticNameEditorView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    .line 376
    :cond_2
    invoke-virtual {v7}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v9

    iget v8, v9, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    .line 377
    .local v8, typeMax:I
    invoke-virtual {v7}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v9

    if-lt v9, v8, :cond_3

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 378
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/contacts/editor/KindSectionView;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v11, v9, v11, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 379
    :cond_4
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    .end local v1           #child:Landroid/view/View;
    .end local v4           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local v7           #sectionView:Lcom/android/contacts/editor/KindSectionView;
    .end local v8           #typeMax:I
    :cond_5
    new-instance v9, Lcom/android/contacts/editor/RawContactEditorView$2;

    invoke-direct {v9, p0, v2}, Lcom/android/contacts/editor/RawContactEditorView$2;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v9}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 397
    invoke-virtual {v6}, Landroid/widget/PopupMenu;->show()V

    .line 398
    return-void
.end method

.method private updatePhoneticNameVisibility()V
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 337
    .local v0, showByDefault:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->hasData()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    return-object v0
.end method

.method public getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 130
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    .local v0, photoSize:I
    const v1, 0x7f07009d

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/StructuredNameEditorView;

    iput-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    .line 133
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/StructuredNameEditorView;->setMinimumHeight(I)V

    .line 134
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/StructuredNameEditorView;->setDeletable(Z)V

    .line 136
    const v1, 0x7f07009e

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/PhoneticNameEditorView;

    iput-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    .line 138
    const v1, 0x7f0700a1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    .line 140
    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHeaderIcon:Landroid/widget/ImageView;

    .line 141
    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHeaderAccountType:Landroid/widget/TextView;

    .line 142
    const v1, 0x7f07007a

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHeaderAccountName:Landroid/widget/TextView;

    .line 144
    const v1, 0x7f0700a2

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    .line 145
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/contacts/editor/RawContactEditorView$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/RawContactEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method public setAutoAddToDefaultGroup(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 268
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    .line 98
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setEnabled(Z)V

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 112
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 113
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_4

    .line 118
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 121
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 1
    .parameter "groupMetaData"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    .line 260
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 261
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 264
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 12
    .parameter "state"
    .parameter "type"
    .parameter "vig"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 163
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 166
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p3, p1, v0, v1, v2}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->setId(I)V

    .line 171
    const-string v0, "vnd.android.cursor.item/name"

    invoke-static {p1, p2, v0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v11

    .line 175
    .local v11, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v0, "account_name"

    invoke-virtual {v11, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, accountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 177
    .local v7, accountType:Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 180
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHeaderAccountName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c015c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHeaderAccountType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c015b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHeaderIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    const-string v0, "_id"

    invoke-virtual {v11, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 190
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-static {p1, p2, v0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 191
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-virtual {p2, v0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->setHasPhotoEditor(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEditorTextSize(I)V

    .line 197
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    .line 204
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p2, v0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/AccountType$DataKind;

    .line 205
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/AccountType$DataKind;

    if-eqz v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040027

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    .line 208
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/AccountType$DataKind;

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->setKind(Lcom/android/contacts/model/AccountType$DataKind;)V

    .line 209
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 213
    :cond_4
    invoke-virtual {p2}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType$DataKind;

    .line 215
    .local v1, kind:Lcom/android/contacts/model/AccountType$DataKind;
    iget-boolean v0, v1, Lcom/android/contacts/model/AccountType$DataKind;->editable:Z

    if-eqz v0, :cond_5

    .line 217
    iget-object v9, v1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    .line 218
    .local v9, mimeType:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    invoke-virtual {p1, v9}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 221
    .local v2, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string v1, "#displayName"

    .end local v1           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-virtual {p2, v1}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 224
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const-string v1, "#phoneticName"

    invoke-virtual {p2, v1}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto :goto_2

    .line 191
    .end local v2           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #mimeType:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 227
    .restart local v1       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #mimeType:Ljava/lang/String;
    :cond_7
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 229
    invoke-virtual {p1, v9}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 230
    .restart local v2       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto :goto_2

    .line 231
    .end local v2           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_8
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_5

    .line 233
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setState(Lcom/android/contacts/model/EntityDelta;)V

    goto :goto_2

    .line 237
    :cond_9
    iget-object v0, v1, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 238
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040028

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/editor/KindSectionView;

    .line 240
    .local v10, section:Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 241
    const/4 v0, 0x0

    invoke-virtual {v10, v1, p1, v0, p3}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 242
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 246
    .end local v1           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #section:Lcom/android/contacts/editor/KindSectionView;
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    :cond_b
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    .line 252
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 254
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method
