.class public Lcom/android/contacts/interactions/GroupRenamingDialogFragment;
.super Lcom/android/contacts/interactions/GroupNameDialogFragment;
.source "GroupRenamingDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;JLjava/lang/String;)V
    .locals 3
    .parameter "fragmentManager"
    .parameter "groupId"
    .parameter "label"

    .prologue
    .line 34
    new-instance v1, Lcom/android/contacts/interactions/GroupRenamingDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/interactions/GroupRenamingDialogFragment;-><init>()V

    .line 35
    .local v1, dialog:Lcom/android/contacts/interactions/GroupRenamingDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "groupId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    const-string v2, "label"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/GroupRenamingDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    const-string v2, "renameGroup"

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/interactions/GroupRenamingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getTitleResourceId()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f0c01a0

    return v0
.end method

.method protected initializeGroupLabelEditText(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupRenamingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 49
    :cond_0
    return-void
.end method

.method protected onCompleted(Ljava/lang/String;)V
    .locals 5
    .parameter "groupLabel"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupRenamingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, arguments:Landroid/os/Bundle;
    const-string v3, "groupId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 61
    .local v1, groupId:J
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupRenamingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupRenamingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1, v2, p1}, Lcom/android/contacts/ContactSaveService;->createGroupRenameIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    return-void
.end method
