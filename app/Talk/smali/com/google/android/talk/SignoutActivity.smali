.class public Lcom/google/android/talk/SignoutActivity;
.super Landroid/app/Activity;
.source "SignoutActivity.java"


# instance fields
.field private ACCOUNT_SELECTION:[Ljava/lang/String;

.field private mAccountId:J

.field private mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mHandler:Landroid/os/Handler;

.field private mLogLevel:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/google/android/talk/SignoutActivity;->ACCOUNT_SELECTION:[Ljava/lang/String;

    .line 42
    iput v2, p0, Lcom/google/android/talk/SignoutActivity;->mLogLevel:I

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/SignoutActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/SignoutActivity;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/talk/SignoutActivity;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/talk/SignoutActivity;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/talk/SignoutActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/talk/SignoutActivity;->signOut()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/SignoutActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/talk/SignoutActivity;->mLogLevel:I

    return v0
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 130
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Signout] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method private signOut()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 98
    :try_start_0
    iget v3, p0, Lcom/google/android/talk/SignoutActivity;->mLogLevel:I

    if-lt v3, v6, :cond_0

    const-string v3, "signOut"

    invoke-static {v3}, Lcom/google/android/talk/SignoutActivity;->log(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/SignoutActivity;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    iget-wide v4, p0, Lcom/google/android/talk/SignoutActivity;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    .line 102
    .local v1, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v1, :cond_1

    .line 103
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v2

    .line 104
    .local v2, status:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 106
    iget v3, p0, Lcom/google/android/talk/SignoutActivity;->mLogLevel:I

    if-lt v3, v6, :cond_1

    .line 107
    const-string v3, "signOut: already signed out"

    invoke-static {v3}, Lcom/google/android/talk/SignoutActivity;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2           #status:Lcom/google/android/gtalkservice/Presence;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    .line 118
    .end local v1           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :goto_1
    return-void

    .line 110
    .restart local v1       #imSession:Lcom/google/android/gtalkservice/IImSession;
    .restart local v2       #status:Lcom/google/android/gtalkservice/Presence;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->logout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    .end local v1           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v2           #status:Lcom/google/android/gtalkservice/Presence;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 114
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "talk"

    const-string v4, "signout: caught "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    throw v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v2

    iput v2, p0, Lcom/google/android/talk/SignoutActivity;->mLogLevel:I

    .line 52
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 53
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 54
    .local v1, data:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 55
    const-string v2, "talk"

    const-string v3, "Need account data to sign in"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/google/android/talk/SignoutActivity;->ACCOUNT_SELECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 68
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 69
    :cond_2
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SignoutActivity] No data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 74
    :cond_3
    :try_start_1
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/SignoutActivity;->mAccountId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_4
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v6

    .line 81
    .local v6, app:Lcom/google/android/talk/TalkApp;
    iget-object v2, p0, Lcom/google/android/talk/SignoutActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/talk/SignoutActivity$1;

    invoke-direct {v3, p0, v6}, Lcom/google/android/talk/SignoutActivity$1;-><init>(Lcom/google/android/talk/SignoutActivity;Lcom/google/android/talk/TalkApp;)V

    invoke-virtual {v6, v2, v3}, Lcom/google/android/talk/TalkApp;->addServiceStateChangedCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 76
    .end local v6           #app:Lcom/google/android/talk/TalkApp;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    .line 127
    return-void
.end method
