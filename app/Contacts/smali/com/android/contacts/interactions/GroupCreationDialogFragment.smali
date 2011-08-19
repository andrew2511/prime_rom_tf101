.class public Lcom/android/contacts/interactions/GroupCreationDialogFragment;
.super Lcom/android/contacts/interactions/GroupNameDialogFragment;
.source "GroupCreationDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fragmentManager"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 37
    new-instance v1, Lcom/android/contacts/interactions/GroupCreationDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;-><init>()V

    .line 38
    .local v1, dialog:Lcom/android/contacts/interactions/GroupCreationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "accountType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "accountName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    const-string v2, "createGroup"

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected getTitleResourceId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0c019e

    return v0
.end method

.method protected initializeGroupLabelEditText(Landroid/widget/EditText;)V
    .locals 0
    .parameter "editText"

    .prologue
    .line 47
    return-void
.end method

.method protected onCompleted(Ljava/lang/String;)V
    .locals 7
    .parameter "groupLabel"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 57
    .local v3, arguments:Landroid/os/Bundle;
    const-string v4, "accountType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, accountType:Ljava/lang/String;
    const-string v4, "accountName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 61
    .local v2, activity:Landroid/app/Activity;
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "android.intent.action.EDIT"

    invoke-static {v2, v4, p1, v5, v6}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    return-void
.end method
