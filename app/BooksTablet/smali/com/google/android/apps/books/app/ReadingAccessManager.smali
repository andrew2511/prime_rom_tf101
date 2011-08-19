.class public Lcom/google/android/apps/books/app/ReadingAccessManager;
.super Ljava/lang/Object;
.source "ReadingAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ReadingAccessManager$1;,
        Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;,
        Lcom/google/android/apps/books/app/ReadingAccessManager$HandlerCallback;,
        Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadingAccessManager"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mHandler:Landroid/os/Handler;

.field private final mReader:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private mRunning:Z

.field private mShouldReleaseAccessLock:Z

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/net/ResponseGetter;)V
    .locals 3
    .parameter "reader"
    .parameter "account"
    .parameter "volumeId"
    .parameter "getter"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, "missing reader"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mReader:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    .line 103
    const-string v0, "missing account"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mAccount:Landroid/accounts/Account;

    .line 104
    const-string v0, "missing volume ID"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mVolumeId:Ljava/lang/String;

    .line 105
    const-string v0, "missing ResponseGetter"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 106
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/books/app/ReadingAccessManager$HandlerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/books/app/ReadingAccessManager$HandlerCallback;-><init>(Lcom/google/android/apps/books/app/ReadingAccessManager;Lcom/google/android/apps/books/app/ReadingAccessManager$1;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-interface {p1}, Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mResolver:Landroid/content/ContentResolver;

    .line 109
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/ReadingAccessManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/net/ResponseGetter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mReader:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/books/app/ReadingAccessManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mShouldReleaseAccessLock:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/app/ReadingAccessManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mRunning:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public maybeReleaseAccessLock(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-boolean v2, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mShouldReleaseAccessLock:Z

    if-eqz v2, :cond_0

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mVolumeId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->buildItemUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p1, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->createReleaseIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mShouldReleaseAccessLock:Z

    .line 137
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 134
    :catchall_0
    move-exception v2

    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mShouldReleaseAccessLock:Z

    throw v2
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mRunning:Z

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mRunning:Z

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    return-void
.end method
