.class public Lcom/android/contacts/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation


# static fields
.field public static mPath:Landroid/net/Uri;

.field public static mVCardShare:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static doImport(Landroid/content/Context;ILandroid/accounts/Account;)V
    .locals 0
    .parameter "context"
    .parameter "resId"
    .parameter "account"

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 153
    :pswitch_0
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x7f0c00ab
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doImportFromSdCard(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    if-eqz p1, :cond_0

    .line 178
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    :cond_0
    sget-boolean v1, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    if-eqz v1, :cond_1

    .line 183
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    sget-object v1, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 186
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    .line 187
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    .line 188
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void
.end method

.method public static doImportFromSim(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, importIntent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    if-eqz p1, :cond_0

    .line 167
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :cond_0
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SimContacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-static {p0, p1, v0, v0}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 9
    .parameter "context"
    .parameter "resId"
    .parameter "onClickListener"
    .parameter "onCancelListener"

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v5

    .line 91
    .local v5, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 93
    .local v3, writableAccountList:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    const-string v1, "AccountSelectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number of available accounts: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000c

    invoke-direct {v7, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 100
    .local v7, dialogContext:Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 102
    .local v4, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/util/AccountSelectionUtil$1;

    const v2, 0x1090004

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/util/AccountSelectionUtil$1;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/model/AccountTypeManager;)V

    .line 131
    .local v0, accountAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Landroid/accounts/Account;>;"
    if-nez p2, :cond_0

    .line 132
    new-instance v6, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 134
    .local v6, accountSelectedListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    move-object p2, v6

    .line 136
    .end local v6           #accountSelectedListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    :cond_0
    if-nez p3, :cond_1

    .line 137
    new-instance p3, Lcom/android/contacts/util/AccountSelectionUtil$2;

    .end local p3
    invoke-direct {p3}, Lcom/android/contacts/util/AccountSelectionUtil$2;-><init>()V

    .line 143
    .restart local p3
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0104

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
