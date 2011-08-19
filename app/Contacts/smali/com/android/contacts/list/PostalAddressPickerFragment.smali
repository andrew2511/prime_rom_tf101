.class public Lcom/android/contacts/list/PostalAddressPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PostalAddressPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setQuickContactEnabled(Z)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 36
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setDirectorySearchMode(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    new-instance v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 60
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setDisplayPhotos(Z)V

    .line 67
    .end local v0           #adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    :goto_0
    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, adapter:Lcom/android/contacts/list/LegacyPostalAddressListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 66
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 73
    const v0, 0x7f040013

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    .line 48
    .local v0, adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PostalAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    .line 53
    .end local v0           #adapter:Lcom/android/contacts/list/PostalAddressListAdapter;
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    .line 51
    .local v0, adapter:Lcom/android/contacts/list/LegacyPostalAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->getContactMethodUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public pickPostalAddress(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnPostalAddressPickerActionListener;->onPickPostalAddressAction(Landroid/net/Uri;)V

    .line 78
    return-void
.end method

.method public setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    .line 42
    return-void
.end method
