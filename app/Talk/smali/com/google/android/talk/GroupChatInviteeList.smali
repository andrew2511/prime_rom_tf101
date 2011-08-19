.class public Lcom/google/android/talk/GroupChatInviteeList;
.super Lcom/google/android/talk/GtalkServiceActivity;
.source "GroupChatInviteeList.java"


# instance fields
.field private mAccountId:J

.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field mController:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;

.field mList:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

.field private final mLogLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/talk/GtalkServiceActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mLogLevel:I

    .line 133
    new-instance v0, Lcom/google/android/talk/GroupChatInviteeList$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/GroupChatInviteeList$2;-><init>(Lcom/google/android/talk/GroupChatInviteeList;)V

    iput-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mController:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;

    return-void
.end method

.method private getParticipants(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 103
    const-string v1, "from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, participants:[Ljava/lang/String;
    return-object v0
.end method

.method private initAccount(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedStates"

    .prologue
    const-wide/16 v2, 0x0

    .line 88
    iget-wide v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    .line 91
    iget-wide v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 92
    const-string v0, "accountId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mApp:Lcom/google/android/talk/TalkApp;

    iget-wide v1, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->getAccountInfo(J)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 96
    iget-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->finish()V

    .line 100
    :cond_1
    return-void
.end method

.method private registerOnSessionCreatedListeners()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mList:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    instance-of v0, v0, Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mList:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/GroupChatInviteeList;->addOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method protected createImSession(Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IImSession;
    .locals 4
    .parameter "service"

    .prologue
    .line 37
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    invoke-interface {p1, v1, v2}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 39
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSession: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const v1, 0x103000c

    invoke-virtual {p0, v1}, Lcom/google/android/talk/GroupChatInviteeList;->setTheme(I)V

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f04001a

    invoke-virtual {p0, v1}, Lcom/google/android/talk/GroupChatInviteeList;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/GroupChatInviteeList;->mApp:Lcom/google/android/talk/TalkApp;

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/talk/GroupChatInviteeList;->initAccount(Landroid/os/Bundle;)V

    .line 59
    new-instance v1, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    iget-object v2, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v3, p0, Lcom/google/android/talk/GroupChatInviteeList;->mController:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;

    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/talk/GroupChatInviteeList;->getParticipants(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;-><init>(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/talk/GroupChatInviteeList;->mList:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    .line 62
    invoke-direct {p0}, Lcom/google/android/talk/GroupChatInviteeList;->registerOnSessionCreatedListeners()V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 65
    .local v0, transaction:Landroid/app/FragmentTransaction;
    const v1, 0x7f100026

    iget-object v2, p0, Lcom/google/android/talk/GroupChatInviteeList;->mList:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 66
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 68
    const v1, 0x7f100014

    invoke-virtual {p0, v1}, Lcom/google/android/talk/GroupChatInviteeList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/GroupChatInviteeList$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/GroupChatInviteeList$1;-><init>(Lcom/google/android/talk/GroupChatInviteeList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/google/android/talk/GroupChatInviteeList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 119
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 123
    :cond_0
    return v2
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onStop()V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->finish()V

    .line 79
    return-void
.end method
