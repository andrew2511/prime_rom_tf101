.class public Lcom/android/email/activity/MoveMessageToDialog;
.super Landroid/app/DialogFragment;
.source "MoveMessageToDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;,
        Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;,
        Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;,
        Lcom/android/email/activity/MoveMessageToDialog$Callback;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mAdapter:Lcom/android/email/activity/MailboxesAdapter;

.field private mDestroyed:Z

.field private mMessageIds:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 217
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MoveMessageToDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MoveMessageToDialog;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MoveMessageToDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/email/activity/MoveMessageToDialog;->dismissAsync()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MoveMessageToDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/MoveMessageToDialog;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAccountId:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    return-object v0
.end method

.method private dismissAsync()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/email/activity/MoveMessageToDialog$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MoveMessageToDialog$1;-><init>(Lcom/android/email/activity/MoveMessageToDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method private getCallback()Lcom/android/email/activity/MoveMessageToDialog$Callback;
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 134
    .local v0, targetFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 136
    check-cast v0, Lcom/android/email/activity/MoveMessageToDialog$Callback;

    .end local v0           #targetFragment:Landroid/app/Fragment;
    move-object v1, v0

    .line 139
    .end local p0
    :goto_0
    return-object v1

    .restart local v0       #targetFragment:Landroid/app/Fragment;
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/activity/MoveMessageToDialog$Callback;

    move-object v1, p0

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Activity;[JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;
    .locals 3
    .parameter "parent"
    .parameter "messageIds"
    .parameter "callbackFragment"

    .prologue
    .line 77
    array-length v2, p1

    if-nez v2, :cond_0

    .line 78
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 80
    :cond_0
    new-instance v1, Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {v1}, Lcom/android/email/activity/MoveMessageToDialog;-><init>()V

    .line 81
    .local v1, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "message_ids"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 83
    invoke-virtual {v1, v0}, Lcom/android/email/activity/MoveMessageToDialog;->setArguments(Landroid/os/Bundle;)V

    .line 84
    if-eqz p2, :cond_1

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/email/activity/MoveMessageToDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 87
    :cond_1
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 126
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v2, p2}, Lcom/android/email/activity/MailboxesAdapter;->getItemId(I)J

    move-result-wide v0

    .line 128
    .local v0, mailboxId:J
    invoke-direct {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getCallback()Lcom/android/email/activity/MoveMessageToDialog$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    invoke-interface {v2, v0, v1, v3}, Lcom/android/email/activity/MoveMessageToDialog$Callback;->onMoveToMailboxSelected(J[J)V

    .line 129
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->dismiss()V

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    .line 94
    const/4 v0, 0x0

    const v1, 0x103006e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->setStyle(II)V

    .line 95
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 112
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/android/email/activity/MailboxesAdapter$EmptyCallback;

    invoke-direct {v5}, Lcom/android/email/activity/MailboxesAdapter$EmptyCallback;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/android/email/activity/MailboxesAdapter;-><init>(Landroid/content/Context;ILcom/android/email/activity/MailboxesAdapter$Callback;)V

    iput-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    .line 115
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/16 v3, 0x3e9

    new-instance v4, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;

    invoke-direct {v4, p0, v6}, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;-><init>(Lcom/android/email/activity/MoveMessageToDialog;Lcom/android/email/activity/MoveMessageToDialog$1;)V

    invoke-virtual {v2, v3, v6, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 121
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mDestroyed:Z

    .line 100
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 101
    return-void
.end method
