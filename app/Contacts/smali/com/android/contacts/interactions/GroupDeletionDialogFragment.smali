.class public Lcom/android/contacts/interactions/GroupDeletionDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupDeletionDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;JLjava/lang/String;)V
    .locals 3
    .parameter "fragmentManager"
    .parameter "groupId"
    .parameter "label"

    .prologue
    .line 37
    new-instance v1, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;-><init>()V

    .line 38
    .local v1, dialog:Lcom/android/contacts/interactions/GroupDeletionDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "groupId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    const-string v2, "label"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    const-string v2, "deleteGroup"

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected deleteGroup()V
    .locals 5

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, arguments:Landroid/os/Bundle;
    const-string v3, "groupId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 70
    .local v1, groupId:J
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/android/contacts/ContactSaveService;->createGroupDeletionIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c01a2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c01a1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/interactions/GroupDeletionDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment$1;-><init>(Lcom/android/contacts/interactions/GroupDeletionDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
