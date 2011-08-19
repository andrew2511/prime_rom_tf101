.class public Lcom/infraware/registration/RegisterNetworkConnect;
.super Ljava/lang/Object;
.source "RegisterNetworkConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;,
        Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;
    }
.end annotation


# instance fields
.field private mBrand:Ljava/lang/String;

.field private mConnect:Z

.field private mDevice:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mIMEI:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mNs:Lcom/infraware/registration/SyncNetworkingStep;

.field private mOSVer:Ljava/lang/String;

.field public mResult:I

.field private mTimezone:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;

    .line 21
    iput-boolean v1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mConnect:Z

    .line 23
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mNs:Lcom/infraware/registration/SyncNetworkingStep;

    .line 25
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mUserName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mEmail:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mUrl:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mLocale:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mTimezone:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mIMEI:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mBrand:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mDevice:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mModel:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mOSVer:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    .line 41
    invoke-direct {p0}, Lcom/infraware/registration/RegisterNetworkConnect;->initialize()V

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/registration/RegisterNetworkConnect;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mConnect:Z

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/registration/RegisterNetworkConnect;)Lcom/infraware/registration/SyncNetworkingStep;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mNs:Lcom/infraware/registration/SyncNetworkingStep;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mIMEI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/registration/RegisterNetworkConnect;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mBrand:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mOSVer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;

    .line 47
    iput-boolean v1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mConnect:Z

    .line 49
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mUserName:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mEmail:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mUrl:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mLocale:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mTimezone:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mIMEI:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mBrand:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mDevice:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mModel:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mOSVer:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    .line 61
    return-void
.end method


# virtual methods
.method public Stop()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/infraware/registration/RegisterNetworkConnect;->stopCurrentWorker()V

    .line 80
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mNs:Lcom/infraware/registration/SyncNetworkingStep;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/registration/SyncNetworkingStep;->yourTurn(Z)V

    .line 81
    return-void
.end method

.method public SyncConnectNetworkCheck(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 90
    new-instance v0, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;-><init>(Lcom/infraware/registration/RegisterNetworkConnect;Ljava/lang/String;)V

    .line 91
    .local v0, worker:Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;
    invoke-virtual {v0}, Lcom/infraware/registration/RegisterNetworkConnect$ConntectCheck;->run()V

    .line 92
    return-void
.end method

.method public connectNetwork(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 155
    new-instance v0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;-><init>(Lcom/infraware/registration/RegisterNetworkConnect;Ljava/lang/String;)V

    .line 156
    .local v0, worker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;
    invoke-virtual {p0, v0}, Lcom/infraware/registration/RegisterNetworkConnect;->setCurrentWorker(Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;)V

    .line 158
    invoke-virtual {v0}, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->start()V

    .line 159
    return-void
.end method

.method public getConnectNetwork()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mConnect:Z

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    return v0
.end method

.method public declared-synchronized isCurrentWorker()Z
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 143
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCurrentWorker(Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;)Z
    .locals 1
    .parameter "worker"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mBrand:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setCurrentWorker(Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;)V
    .locals 1
    .parameter "worker"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;

    invoke-virtual {v0}, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->interrupt()V

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mDevice:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mEmail:Ljava/lang/String;

    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mIMEI:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mModel:Ljava/lang/String;

    return-void
.end method

.method public setOSVer(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mOSVer:Ljava/lang/String;

    return-void
.end method

.method public setSyncher(Lcom/infraware/registration/SyncNetworkingStep;)V
    .locals 0
    .parameter "ns"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mNs:Lcom/infraware/registration/SyncNetworkingStep;

    .line 86
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mTimezone:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mUserName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized stopCurrentWorker()V
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;

    invoke-virtual {v0}, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->interrupt()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/registration/RegisterNetworkConnect;->mWorker:Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
