.class public Lcom/google/android/gsf/update/SystemUpdateService;
.super Landroid/app/Service;
.source "SystemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/update/SystemUpdateService$1;,
        Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;,
        Lcom/google/android/gsf/update/SystemUpdateService$Receiver;
    }
.end annotation


# instance fields
.field private mDownload:Lcom/google/android/gsf/update/Download;

.field private mDownloadRetry:Lcom/android/common/OperationScheduler;

.field private mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

.field private mVerifierLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 153
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 154
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;

    .line 155
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;

    .line 156
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;

    .line 158
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 192
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;

    return-object v0
.end method

.method static cancelNotifications(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 696
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 698
    .local v0, nm:Landroid/app/NotificationManager;
    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 699
    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 700
    return-void
.end method

.method static isDownloadAvailable(I)Z
    .locals 2
    .parameter "status"

    .prologue
    const/4 v1, 0x1

    .line 706
    if-eq p0, v1, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    const-string v0, "update"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 177
    new-instance v0, Lcom/google/android/gsf/update/Download;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/Download;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;

    .line 179
    new-instance v0, Lcom/android/common/OperationScheduler;

    const-string v1, "update.download.scheduler"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;

    .line 182
    new-instance v0, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v0}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    .line 183
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    const-wide/16 v1, 0x7530

    iput-wide v1, v0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 184
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    const-wide/32 v1, 0xea60

    iput-wide v1, v0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    .line 185
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    .line 188
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;-><init>(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateService$1;)V

    new-array v1, v3, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    return v3
.end method
