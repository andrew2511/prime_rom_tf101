.class Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;
.super Ljava/lang/Object;
.source "PushMessagingRegistrar.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthTokenFetchFailedCallback"
.end annotation


# instance fields
.field mInProgress:Z

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->setInProgress(Z)V

    return-void
.end method

.method private setInProgress(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->mInProgress:Z

    .line 289
    monitor-exit p0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public accountMissing()V
    .locals 1

    .prologue
    .line 282
    const-string v0, "AuthTokenCallback: account missing"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$200(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$400(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V

    .line 284
    return-void
.end method

.method public authFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 277
    const-string v0, "AuthTokenCallback: authFailed!"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$200(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$300(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V

    .line 279
    return-void
.end method

.method public fetchAuthTokenLater(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 274
    return-void
.end method
