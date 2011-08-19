.class public Lcom/google/android/talk/AccountLoginUtils;
.super Ljava/lang/Object;
.source "AccountLoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gtalkservice/IGTalkConnection;Ljava/lang/String;Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/google/android/talk/AccountLoginUtils;->signInForConnection(Lcom/google/android/gtalkservice/IGTalkConnection;Ljava/lang/String;Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;)V

    return-void
.end method

.method public static asyncCreateConnectionForAccount(Lcom/google/android/gtalkservice/IGTalkService;Ljava/lang/String;Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;)V
    .locals 3
    .parameter "service"
    .parameter "username"
    .parameter "connectionStateListener"

    .prologue
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncCreateConnectionForAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/AccountLoginUtils;->log(Ljava/lang/String;)V

    .line 136
    :try_start_0
    new-instance v1, Lcom/google/android/talk/AccountLoginUtils$1;

    invoke-direct {v1, p1, p2}, Lcom/google/android/talk/AccountLoginUtils$1;-><init>(Ljava/lang/String;Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;)V

    invoke-interface {p0, p1, v1}, Lcom/google/android/gtalkservice/IGTalkService;->createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "asyncCreateConnectionForAccount caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static checkForDataAccess(Lcom/google/android/talk/TalkApp;Landroid/app/Activity;)V
    .locals 3
    .parameter "app"
    .parameter "activity"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->isBackgroundDataEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;

    invoke-direct {v0, p1}, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;-><init>(Landroid/app/Activity;)V

    .line 126
    .local v0, dialog:Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "NoBackgroundDataDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 128
    .end local v0           #dialog:Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;
    :cond_0
    return-void
.end method

.method public static clearActiveAccountPrefs(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    const-string v1, "gtalk_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "accountId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return-void
.end method

.method public static isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z
    .locals 6
    .parameter "username"
    .parameter "service"

    .prologue
    .line 92
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gtalkservice/IGTalkService;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 94
    .local v0, connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkConnection;->getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    .line 96
    .local v2, imSession:Lcom/google/android/gtalkservice/IImSession;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v3

    .line 97
    .local v3, state:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v3}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 102
    .end local v0           #connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    .end local v2           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v3           #state:Lcom/google/android/gtalkservice/ConnectionState;
    :goto_0
    return v4

    .line 99
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 100
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### isSignedIn caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/AccountLoginUtils;->log(Ljava/lang/String;)V

    .line 102
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 56
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AccountLoginUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public static setActiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V
    .locals 5
    .parameter "account"
    .parameter "activity"

    .prologue
    .line 60
    invoke-static {p1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    .line 62
    .local v1, talkApp:Lcom/google/android/talk/TalkApp;
    iget-object v2, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp;->setCurrentAccount(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 65
    const-string v2, "gtalk_prefs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "accountId"

    iget-wide v3, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 70
    const-string v2, "username"

    iget-object v3, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    return-void
.end method

.method public static setInactiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp;)V
    .locals 2
    .parameter "account"
    .parameter "app"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/talk/TalkApp;->setInactiveAccount(J)V

    .line 78
    invoke-static {p1}, Lcom/google/android/talk/AccountLoginUtils;->clearActiveAccountPrefs(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public static signIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;)Z
    .locals 4
    .parameter "username"
    .parameter "service"
    .parameter "connectionStateListener"

    .prologue
    .line 109
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gtalkservice/IGTalkService;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 111
    .local v0, connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    if-nez v0, :cond_0

    .line 112
    invoke-static {p1, p0, p2}, Lcom/google/android/talk/AccountLoginUtils;->asyncCreateConnectionForAccount(Lcom/google/android/gtalkservice/IGTalkService;Ljava/lang/String;Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;)V

    .line 113
    const/4 v2, 0x1

    .line 120
    .end local v0           #connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    :goto_0
    return v2

    .line 116
    .restart local v0       #connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    :cond_0
    invoke-static {v0, p0, p2}, Lcom/google/android/talk/AccountLoginUtils;->signInForConnection(Lcom/google/android/gtalkservice/IGTalkConnection;Ljava/lang/String;Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0           #connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 118
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### signin caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/AccountLoginUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static signInForConnection(Lcom/google/android/gtalkservice/IGTalkConnection;Ljava/lang/String;Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;)V
    .locals 8
    .parameter "connection"
    .parameter "username"
    .parameter "connectionStateListener"

    .prologue
    .line 155
    const-string v0, "signInForConnection"

    invoke-static {v0}, Lcom/google/android/talk/AccountLoginUtils;->log(Ljava/lang/String;)V

    .line 158
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gtalkservice/IGTalkConnection;->getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v7

    .line 159
    .local v7, imSession:Lcom/google/android/gtalkservice/IImSession;
    invoke-interface {v7}, Lcom/google/android/gtalkservice/IImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    .line 160
    .local v1, state:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "signInForConnection: already online"

    invoke-static {v0}, Lcom/google/android/talk/AccountLoginUtils;->log(Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x0

    invoke-interface {v7}, Lcom/google/android/gtalkservice/IImSession;->getAccountId()J

    move-result-wide v3

    invoke-interface {v7}, Lcom/google/android/gtalkservice/IImSession;->getUsername()Ljava/lang/String;

    move-result-object v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V

    .line 176
    .end local v1           #state:Lcom/google/android/gtalkservice/ConnectionState;
    .end local v7           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :goto_0
    return-void

    .line 169
    .restart local v1       #state:Lcom/google/android/gtalkservice/ConnectionState;
    .restart local v7       #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_0
    invoke-interface {v7, p2}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signInForConnection: login for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountLoginUtils;->log(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    invoke-interface {v7, p1, v0}, Lcom/google/android/gtalkservice/IImSession;->login(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v1           #state:Lcom/google/android/gtalkservice/ConnectionState;
    .end local v7           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 174
    .local v6, ex:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signInForConnection: caught "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountLoginUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
