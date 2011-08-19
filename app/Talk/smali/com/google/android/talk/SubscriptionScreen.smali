.class public Lcom/google/android/talk/SubscriptionScreen;
.super Landroid/app/Activity;
.source "SubscriptionScreen.java"


# instance fields
.field private mAccountId:J

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mNickname:Ljava/lang/String;

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/SubscriptionScreen;)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/talk/SubscriptionScreen;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/SubscriptionScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/SubscriptionScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/SubscriptionScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/talk/SubscriptionScreen;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/talk/SubscriptionScreen;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/talk/SubscriptionScreen;Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/talk/SubscriptionScreen;->makeDialog(Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/SubscriptionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/talk/SubscriptionScreen;->serviceStateChanged()V

    return-void
.end method

.method private dismissSubscriptionNotifications(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 206
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mAccountId:J

    invoke-interface {p1, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationsForAccount(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {p0}, Lcom/google/android/talk/SubscriptionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->getImSessionFromActivityIntent(Landroid/content/Intent;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method private loadAvatar()V
    .locals 7

    .prologue
    .line 121
    new-instance v0, Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v2, p0, Lcom/google/android/talk/SubscriptionScreen;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/SubscriptionScreen;->mUsername:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    .line 123
    .local v0, contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    new-instance v1, Lcom/google/android/talk/SubscriptionScreen$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/SubscriptionScreen$3;-><init>(Lcom/google/android/talk/SubscriptionScreen;Lcom/google/android/talk/ContactInfoQuery;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 134
    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 135
    return-void
.end method

.method private makeDialog(Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;
    .locals 10
    .parameter "d"

    .prologue
    const/4 v9, 0x1

    .line 54
    new-instance v3, Lcom/google/android/talk/SubscriptionScreen$1;

    invoke-direct {v3, p0}, Lcom/google/android/talk/SubscriptionScreen$1;-><init>(Lcom/google/android/talk/SubscriptionScreen;)V

    .line 80
    .local v3, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x3

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 82
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 84
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04000e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, dialogContentView:Landroid/view/View;
    const v4, 0x7f100009

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    const v4, 0x7f100032

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c0074

    invoke-virtual {p0, v5}, Lcom/google/android/talk/SubscriptionScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/talk/SubscriptionScreen;->mUsername:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0073

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0088

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c008a

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0089

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/android/talk/SubscriptionScreen$2;

    invoke-direct {v5, p0}, Lcom/google/android/talk/SubscriptionScreen$2;-><init>(Lcom/google/android/talk/SubscriptionScreen;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/SubscriptionScreen$4;

    invoke-direct {v2, p0}, Lcom/google/android/talk/SubscriptionScreen$4;-><init>(Lcom/google/android/talk/SubscriptionScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->addServiceStateChangedCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method private serviceStateChanged()V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 195
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/talk/SubscriptionScreen;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    if-nez v1, :cond_1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/SubscriptionScreen;->finish()V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_1
    iput-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 201
    invoke-direct {p0, v0}, Lcom/google/android/talk/SubscriptionScreen;->dismissSubscriptionNotifications(Lcom/google/android/gtalkservice/IGTalkService;)V

    goto :goto_0
.end method

.method private unregisterForServiceStateChanged()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeServiceStateChangedCallback(Landroid/os/Handler;)V

    .line 177
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/talk/SubscriptionScreen;->resolveIntent()V

    .line 112
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mApp:Lcom/google/android/talk/TalkApp;

    .line 113
    invoke-direct {p0}, Lcom/google/android/talk/SubscriptionScreen;->registerForServiceStateChanged()V

    .line 115
    invoke-direct {p0}, Lcom/google/android/talk/SubscriptionScreen;->loadAvatar()V

    .line 116
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 141
    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 142
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eq v1, v0, :cond_2

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->handleDisconnectedService()V

    .line 144
    invoke-direct {p0}, Lcom/google/android/talk/SubscriptionScreen;->registerForServiceStateChanged()V

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 152
    :cond_1
    return-void

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/SubscriptionScreen;->serviceStateChanged()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 158
    invoke-direct {p0}, Lcom/google/android/talk/SubscriptionScreen;->unregisterForServiceStateChanged()V

    .line 160
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/SubscriptionScreen;->finish()V

    .line 165
    return-void
.end method

.method resolveIntent()V
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/android/talk/SubscriptionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mUsername:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/talk/SubscriptionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/SubscriptionScreen;->mAccountId:J

    .line 183
    return-void
.end method
