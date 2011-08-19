.class public Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;
.super Landroid/app/Activity;
.source "ConnectionAuthErrorDialog.java"


# instance fields
.field private mAccountId:J

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDialog:Landroid/app/Dialog;

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 77
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$3;-><init>(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->bindService()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->loginSession()V

    return-void
.end method

.method private bindService()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 126
    return-void
.end method

.method private loginSession()V
    .locals 6

    .prologue
    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mAccountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mUsername:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mAccountId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 132
    .local v0, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v0, :cond_0

    .line 133
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mUsername:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gtalkservice/IImSession;->login(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 137
    .local v1, re:Landroid/os/RemoteException;
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ConnectionAuthErrorDialog] login failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 51
    const v2, 0x7f080067

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 52
    const v2, 0x7f080068

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 54
    new-instance v1, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$1;-><init>(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;)V

    .line 64
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x7f080069

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    const v2, 0x7f08006a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 68
    new-instance v2, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$2;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$2;-><init>(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mAccountId:J

    .line 94
    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mUsername:Ljava/lang/String;

    .line 95
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ConnectionAuthErrorDialog]: mAccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mUsername="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->makeDialog()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mDialog:Landroid/app/Dialog;

    .line 102
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 103
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 108
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 113
    return-void
.end method
