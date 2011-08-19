.class public Lcom/android/contacts/interactions/ImportExportInteraction;
.super Ljava/lang/Object;
.source "ImportExportInteraction.java"


# instance fields
.field private final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/ImportExportInteraction;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ImportExportInteraction;->handleImportRequest(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/ImportExportInteraction;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/ImportExportInteraction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/contacts/interactions/ImportExportInteraction;->doShareVisibleContacts()V

    return-void
.end method

.method private createOptionsDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 96
    iget-object v4, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 101
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/interactions/ImportExportInteraction$1;

    iget-object v4, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    const v5, 0x1090011

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/android/contacts/interactions/ImportExportInteraction$1;-><init>(Lcom/android/contacts/interactions/ImportExportInteraction;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 116
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    const v4, 0x7f0c00ab

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 119
    :cond_0
    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    const v4, 0x7f0c00ac

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 122
    :cond_1
    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    const v4, 0x7f0c00ad

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 125
    :cond_2
    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 126
    const v4, 0x7f0c00ae

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 129
    :cond_3
    new-instance v1, Lcom/android/contacts/interactions/ImportExportInteraction$2;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/interactions/ImportExportInteraction$2;-><init>(Lcom/android/contacts/interactions/ImportExportInteraction;Landroid/widget/ArrayAdapter;)V

    .line 158
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c00f4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method private doShareVisibleContacts()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00f7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 195
    :goto_0
    return-void

    .line 176
    :cond_0
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v10, uriListBuilder:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 178
    .local v7, index:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    if-eqz v7, :cond_1

    .line 180
    const/16 v0, 0x3a

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 184
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 188
    .local v9, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "text/x-vcard"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #index:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #uriListBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleImportRequest(I)V
    .locals 6
    .parameter "resId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 202
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 203
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 204
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 205
    .local v2, size:I
    if-le v2, v4, :cond_0

    .line 206
    invoke-virtual {p0, p1, v5}, Lcom/android/contacts/interactions/ImportExportInteraction;->showDialog(ILandroid/os/Bundle;)V

    .line 211
    .end local p0
    :goto_0
    return-void

    .line 210
    .restart local p0
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    if-ne v2, v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/accounts/Account;

    move-object v4, p0

    :goto_1
    invoke-static {v3, p1, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILandroid/accounts/Account;)V

    goto :goto_0

    .restart local p0
    :cond_1
    move-object v4, v5

    goto :goto_1
.end method


# virtual methods
.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 74
    sparse-switch p1, :sswitch_data_0

    move-object v0, v2

    .line 91
    :goto_0
    return-object v0

    .line 76
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/interactions/ImportExportInteraction;->createOptionsDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 80
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 83
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x7f070007 -> :sswitch_2
        0x7f070013 -> :sswitch_0
        0x7f0c00ab -> :sswitch_1
        0x7f0c00ac -> :sswitch_1
    .end sparse-switch
.end method

.method showDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "dialogId"
    .parameter "bundle"

    .prologue
    .line 215
    iget-object p0, p0, Lcom/android/contacts/interactions/ImportExportInteraction;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 216
    return-void
.end method

.method public startInteraction()V
    .locals 2

    .prologue
    .line 70
    const v0, 0x7f070013

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/interactions/ImportExportInteraction;->showDialog(ILandroid/os/Bundle;)V

    .line 71
    return-void
.end method
