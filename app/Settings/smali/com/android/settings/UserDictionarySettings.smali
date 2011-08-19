.class public Lcom/android/settings/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserDictionarySettings$MyAdapter;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAddedWordAlready:Z

.field private mAutoReturn:Z

.field private mCursor:Landroid/database/Cursor;

.field private mDialogEditingWord:Ljava/lang/String;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UserDictionarySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings/UserDictionarySettings;->mAutoReturn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/UserDictionarySettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/UserDictionarySettings;->onAddOrEditFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/UserDictionarySettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 151
    new-instance v0, Lcom/android/settings/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040054

    iget-object v3, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "word"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/settings/UserDictionarySettings;)V

    return-object v0

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0xfat 0x0t 0xft 0x7ft
    .end array-data
.end method

.method private createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, currentLocale:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale=? OR locale is null"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private deleteWord(Ljava/lang/String;)V
    .locals 5
    .parameter "word"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "word=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 187
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onAddOrEditFinished(Ljava/lang/String;)V
    .locals 4
    .parameter "word"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfa

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t requery on already-closed cursor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    .line 249
    return-void
.end method

.method private showAddOrEditDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "editingWord"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/UserDictionarySettings;->showDialog(I)V

    .line 182
    return-void
.end method

.method private showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "UserDictionarySettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 230
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/UserDictionarySettings;->createCursor()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 105
    iget-object v2, p0, Lcom/android/settings/UserDictionarySettings;->mView:Landroid/view/View;

    const v3, 0x7f0f0074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, emptyView:Landroid/widget/TextView;
    const v2, 0x7f0803e7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 109
    .local v1, listView:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/settings/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 111
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/android/settings/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 115
    if-eqz p1, :cond_0

    .line 116
    const-string v2, "DIALOG_EDITING_WORD"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    .line 117
    const-string v2, "DIALOG_ADDED_WORD"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    .line 119
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 196
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v3, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 198
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04001f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, content:Landroid/view/View;
    const v6, 0x7f0f0050

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 200
    .local v4, editText:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v6, 0x10001

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 205
    iget-object v6, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v6, :cond_0

    const v6, 0x7f0803e4

    :goto_0
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/UserDictionarySettings$2;

    invoke-direct {v8, p0, v4, v0}, Lcom/android/settings/UserDictionarySettings$2;-><init>(Lcom/android/settings/UserDictionarySettings;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/android/settings/UserDictionarySettings$1;

    invoke-direct {v8, p0, v0}, Lcom/android/settings/UserDictionarySettings$1;-><init>(Lcom/android/settings/UserDictionarySettings;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 220
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 222
    return-object v2

    .line 205
    .end local v2           #dialog:Landroid/app/AlertDialog;
    :cond_0
    const v6, 0x7f0803e3

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    const v1, 0x7f0803e2

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020038

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    .local v0, actionItem:Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 96
    const v0, 0x7f040023

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 159
    invoke-direct {p0, p3}, Lcom/android/settings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, word:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0, v0}, Lcom/android/settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "word"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, word:Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/UserDictionarySettings;->mAutoReturn:Z

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, v1}, Lcom/android/settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 133
    .end local v1           #word:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "DIALOG_EDITING_WORD"

    iget-object v1, p0, Lcom/android/settings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "DIALOG_ADDED_WORD"

    iget-boolean v1, p0, Lcom/android/settings/UserDictionarySettings;->mAddedWordAlready:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    return-void
.end method
