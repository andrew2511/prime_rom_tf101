.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactBrowseListFragment;
.source "DefaultContactBrowseListFragment.java"


# instance fields
.field private mCounterHeaderView:Landroid/view/View;

.field private mSearchHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;-><init>()V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 42
    return-void
.end method

.method private checkHeaderViewVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 84
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_1
    return-void

    .line 85
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 54
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 59
    const v0, 0x7f040013

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 68
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, headerContainer:Landroid/widget/FrameLayout;
    const v1, 0x7f04004d

    invoke-virtual {p1, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 71
    const v1, 0x7f040045

    invoke-virtual {p1, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    .line 72
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 74
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 75
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 1
    .parameter "position"
    .parameter "id"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    .line 47
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 80
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 81
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 13
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const v12, 0x7f0c005e

    const v8, 0x7f0700ad

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz p2, :cond_3

    .line 97
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 98
    .local v1, count:I
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 99
    .local v6, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0003

    invoke-virtual {v7, v8, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, format:Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v1           #count:I
    .end local v4           #format:Ljava/lang/String;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 104
    .restart local v1       #count:I
    .restart local v6       #textView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    .line 105
    .local v2, filter:Lcom/android/contacts/list/ContactListFilter;
    if-eqz v2, :cond_2

    iget v7, v2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    move v3, v7

    .line 107
    .local v3, filterType:I
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 126
    :pswitch_0
    const v7, 0x7f0c005b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 105
    .end local v3           #filterType:I
    :cond_2
    const/4 v7, -0x2

    move v3, v7

    goto :goto_1

    .line 109
    .restart local v3       #filterType:I
    :pswitch_1
    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v2, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {p0, v12, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :pswitch_2
    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v2, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {p0, v12, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :pswitch_3
    const v7, 0x7f0c005a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 120
    :pswitch_4
    const v7, 0x7f0c005d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 123
    :pswitch_5
    const v7, 0x7f0c005c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 131
    .end local v1           #count:I
    .end local v2           #filter:Lcom/android/contacts/list/ContactListFilter;
    .end local v3           #filterType:I
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 132
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 138
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_5
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 142
    .restart local v6       #textView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const v8, 0x7f07005b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 144
    .local v5, progress:Landroid/widget/ProgressBar;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->isLoading()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 145
    const v7, 0x7f0c0171

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 146
    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    :goto_2
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 148
    :cond_6
    const v7, 0x7f0c0060

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 149
    invoke-virtual {v5, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 107
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
