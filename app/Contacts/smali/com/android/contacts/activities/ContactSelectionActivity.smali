.class public Lcom/android/contacts/activities/ContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 69
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureActivityTitle()V
    .locals 3

    .prologue
    const v2, 0x7f0c0010

    .line 142
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 148
    .local v0, actionCode:I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 155
    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 150
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 160
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 165
    :sswitch_3
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 170
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 175
    :sswitch_5
    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 180
    :sswitch_6
    const v1, 0x7f0c000f

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 185
    :sswitch_7
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_0
        0x46 -> :sswitch_2
        0x50 -> :sswitch_1
        0x5a -> :sswitch_4
        0x64 -> :sswitch_7
        0x6e -> :sswitch_3
        0x78 -> :sswitch_5
        0x82 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public configureListFragment()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 275
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 200
    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    .line 263
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :sswitch_0
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 203
    .local v0, fragment:Lcom/android/contacts/list/ContactPickerFragment;
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    .line 204
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setEditMode(Z)V

    .line 205
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 206
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 266
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 268
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 270
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f07002b

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 211
    :sswitch_1
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 212
    .restart local v0       #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setSearchMode(Z)V

    .line 213
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_1

    .line 218
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_2
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 219
    .restart local v0       #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    .line 220
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_1

    :cond_1
    move v1, v3

    .line 219
    goto :goto_2

    .line 225
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_3
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 226
    .restart local v0       #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setSearchMode(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 228
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setShortcutRequested(Z)V

    .line 229
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_1

    .line 234
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_4
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 235
    .local v0, fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_1

    .line 240
    .end local v0           #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_5
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 241
    .restart local v0       #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSearchMode(Z)V

    .line 244
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_1

    .line 249
    .end local v0           #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_6
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 250
    .restart local v0       #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 252
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_1

    .line 257
    .end local v0           #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_7
    new-instance v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;-><init>()V

    .line 258
    .local v0, fragment:Lcom/android/contacts/list/PostalAddressPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_1

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_1
        0x46 -> :sswitch_2
        0x50 -> :sswitch_0
        0x5a -> :sswitch_4
        0x64 -> :sswitch_7
        0x6e -> :sswitch_3
        0x78 -> :sswitch_5
        0x82 -> :sswitch_6
    .end sparse-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 74
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 76
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setupActionListener()V

    .line 78
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070051

    if-ne v0, v1, :cond_0

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 387
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 389
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 352
    .local v0, menuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 356
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string v2, "actionCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 90
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 133
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v1

    .line 97
    .local v1, redirect:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 104
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureActivityTitle()V

    .line 106
    const v2, 0x7f040011

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureListFragment()V

    .line 110
    const v2, 0x7f070050

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 111
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0c0193

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 115
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 116
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 131
    :goto_1
    const v2, 0x7f070051

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 132
    .local v0, cancel:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 121
    .end local v0           #cancel:Landroid/widget/Button;
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/activities/ContactSelectionActivity$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/ContactSelectionActivity$1;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "newText"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 362
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 363
    return v2

    :cond_0
    move v1, v2

    .line 362
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "actionCode"

    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 378
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 379
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 381
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 375
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/ContactPickerFragment;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/ContactPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 290
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V

    goto :goto_0

    .line 288
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 338
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 342
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 345
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 347
    return-void
.end method
