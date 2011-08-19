.class public Lcom/google/android/talk/GTalkDiagnostics;
.super Landroid/app/Activity;
.source "GTalkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;
    }
.end annotation


# instance fields
.field private mBoundToService:Z

.field private mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

.field private mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mHandler:Landroid/os/Handler;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mListener:Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDump:Landroid/widget/TextView;

.field private mWantRefresh:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mWantRefresh:Z

    .line 56
    iput-boolean v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mBoundToService:Z

    .line 58
    iput-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 59
    iput-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    .line 60
    iput-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 79
    new-instance v0, Lcom/google/android/talk/GTalkDiagnostics$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/GTalkDiagnostics$1;-><init>(Lcom/google/android/talk/GTalkDiagnostics;)V

    iput-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 103
    new-instance v0, Lcom/google/android/talk/GTalkDiagnostics$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/GTalkDiagnostics$2;-><init>(Lcom/google/android/talk/GTalkDiagnostics;)V

    iput-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/GTalkDiagnostics;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/talk/GTalkDiagnostics;->refresh(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/GTalkDiagnostics;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/GTalkDiagnostics;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/talk/GTalkDiagnostics;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/talk/GTalkDiagnostics;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/talk/GTalkDiagnostics;->initSession()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/GTalkDiagnostics;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mServiceDump:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/talk/GTalkDiagnostics;Lcom/google/android/gtalkservice/IGTalkConnection;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/talk/GTalkDiagnostics;)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/talk/GTalkDiagnostics;Lcom/google/android/gtalkservice/IImSession;)Lcom/google/android/gtalkservice/IImSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/talk/GTalkDiagnostics;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mWantRefresh:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/GTalkDiagnostics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/talk/GTalkDiagnostics;->bindToService()V

    return-void
.end method

.method private bindToService()V
    .locals 3

    .prologue
    .line 202
    const-string v0, "GTalkDiag"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GTalkDiag"

    const-string v1, "bind to GTalkService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/talk/GTalkDiagnostics;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mBoundToService:Z

    .line 206
    return-void
.end method

.method private initSession()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IGTalkService;->getDefaultConnection()Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    .line 239
    iget-object v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IGTalkConnection;->getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 241
    iget-object v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v1, :cond_0

    move v1, v3

    .line 259
    :goto_0
    return v1

    .line 247
    :cond_0
    const-string v1, "GTalkDiag"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const-string v1, "GTalkDiag"

    const-string v2, "initSession: add conn listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/GTalkDiagnostics;->mListener:Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    const/4 v1, 0x1

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 255
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "initSession: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    invoke-direct {p0}, Lcom/google/android/talk/GTalkDiagnostics;->bindToService()V

    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    move v1, v3

    .line 259
    goto :goto_0
.end method

.method private refresh(Z)V
    .locals 5
    .parameter "dumpToLog"

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, dump:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    if-nez v2, :cond_1

    .line 219
    const v2, 0x7f0c00c8

    invoke-virtual {p0, v2}, Lcom/google/android/talk/GTalkDiagnostics;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_0
    iget-object v2, p0, Lcom/google/android/talk/GTalkDiagnostics;->mServiceDump:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    if-eqz p1, :cond_0

    .line 232
    const-string v2, "talk"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    return-void

    .line 222
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IGTalkService;->printDiagnostics()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 224
    .local v1, re:Landroid/os/RemoteException;
    const-string v2, "GTalkDiag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, Lcom/google/android/talk/GTalkDiagnostics;->bindToService()V

    goto :goto_0
.end method

.method private unbindFromService()V
    .locals 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mBoundToService:Z

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "GTalkDiag"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GTalkDiag"

    const-string v1, "unbind from GTalkService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/GTalkDiagnostics;->unbindService(Landroid/content/ServiceConnection;)V

    .line 213
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 265
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 267
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 268
    const-string v1, "GTalkDiag"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GTalkDiag"

    const-string v2, "manual refresh"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/talk/GTalkDiagnostics;->refresh(Z)V

    .line 270
    const/4 v1, 0x1

    .line 274
    .end local v0           #keyCode:I
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/google/android/talk/GTalkDiagnostics;->setContentView(I)V

    .line 132
    const v0, 0x7f100087

    invoke-virtual {p0, v0}, Lcom/google/android/talk/GTalkDiagnostics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mServiceDump:Landroid/widget/TextView;

    .line 135
    new-instance v0, Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;-><init>(Lcom/google/android/talk/GTalkDiagnostics;Lcom/google/android/talk/GTalkDiagnostics$1;)V

    iput-object v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mListener:Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;

    .line 137
    invoke-direct {p0}, Lcom/google/android/talk/GTalkDiagnostics;->bindToService()V

    .line 138
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 184
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkDiagnostics;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 185
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 187
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 194
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/talk/GTalkDiagnostics;->refresh(Z)V

    move v0, v1

    .line 195
    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x7f1000c6
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mWantRefresh:Z

    .line 156
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 143
    invoke-direct {p0}, Lcom/google/android/talk/GTalkDiagnostics;->bindToService()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/GTalkDiagnostics;->mWantRefresh:Z

    .line 150
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 162
    iget-object v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_1

    .line 164
    :try_start_0
    const-string v1, "GTalkDiag"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "GTalkDiag"

    const-string v2, "onStop: remove connection listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/GTalkDiagnostics;->mListener:Lcom/google/android/talk/GTalkDiagnostics$MyConnectionListener;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/GTalkDiagnostics;->unbindFromService()V

    .line 177
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkDiagnostics;->finish()V

    .line 178
    return-void

    .line 168
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 169
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
