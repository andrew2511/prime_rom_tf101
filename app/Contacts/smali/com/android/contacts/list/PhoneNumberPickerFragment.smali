.class public Lcom/android/contacts/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private mShortcutAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 41
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 76
    .end local v0           #adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, adapter:Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 82
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
    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    .line 60
    .local v0, adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    .line 65
    .end local v0           #adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    .line 63
    .local v0, adapter:Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 110
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .parameter "uri"
    .parameter "shortcutIntent"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public pickPhoneNumber(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1, p1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 92
    :cond_1
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 93
    .local v0, builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 46
    return-void
.end method

.method public setShortcutAction(Ljava/lang/String;)V
    .locals 0
    .parameter "shortcutAction"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "initialQuery"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContactsRequest()Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/ContactsSearchManager;->startSearchForResult(Landroid/app/Activity;Ljava/lang/String;ILcom/android/contacts/list/ContactsRequest;)V

    .line 105
    return-void
.end method
