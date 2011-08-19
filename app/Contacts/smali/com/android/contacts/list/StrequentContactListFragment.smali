.class public Lcom/android/contacts/list/StrequentContactListFragment;
.super Lcom/android/contacts/list/ContactBrowseListFragment;
.source "StrequentContactListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFrequentlyContactedContactsIncluded:Z

.field private mStarredContactsIncluded:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/android/contacts/list/StrequentContactListFragment;->mStarredContactsIncluded:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/contacts/list/StrequentContactListFragment;->mFrequentlyContactedContactsIncluded:Z

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/StrequentContactListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/StrequentContactListFragment;->setPhotoLoaderEnabled(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->configureAdapter()V

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/list/StrequentContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/StrequentContactListAdapter;

    .line 83
    .local v0, adapter:Lcom/android/contacts/list/StrequentContactListAdapter;
    if-eqz v0, :cond_0

    .line 84
    iget-boolean v1, p0, Lcom/android/contacts/list/StrequentContactListFragment;->mStarredContactsIncluded:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/StrequentContactListAdapter;->setStarredContactsIncluded(Z)V

    .line 85
    iget-boolean v1, p0, Lcom/android/contacts/list/StrequentContactListFragment;->mFrequentlyContactedContactsIncluded:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/StrequentContactListAdapter;->setFrequentlyContactedContactsIncluded(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/contacts/list/StrequentContactListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 68
    new-instance v0, Lcom/android/contacts/list/StrequentContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/StrequentContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020019

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/StrequentContactListAdapter;-><init>(Landroid/content/Context;I)V

    .line 70
    .local v0, adapter:Lcom/android/contacts/list/StrequentContactListAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/StrequentContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 71
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/StrequentContactListAdapter;->setDisplayPhotos(Z)V

    .line 72
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/StrequentContactListAdapter;->setQuickContactEnabled(Z)V

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/contacts/list/StrequentContactListAdapter;->setCallButtonListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 91
    const v0, 0x7f040013

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected isNameHighlighingEnabled()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 102
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 104
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 105
    .local v2, position:I
    invoke-virtual {p0}, Lcom/android/contacts/list/StrequentContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 106
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/StrequentContactListFragment;->callContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
    .end packed-switch
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/list/StrequentContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 63
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/StrequentContactListFragment;->viewContact(Landroid/net/Uri;)V

    .line 64
    return-void
.end method
