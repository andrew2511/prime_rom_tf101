.class final Lcom/google/android/youtube/core/player/Tracker$1;
.super Ljava/lang/Thread;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/Tracker;->newInstance(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/player/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$analytics:Lcom/google/android/youtube/core/Analytics;

.field final synthetic val$conditionVariable:Landroid/os/ConditionVariable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pingRequester:Lcom/google/android/youtube/core/async/Requester;

.field final synthetic val$tracker:[Lcom/google/android/youtube/core/player/Tracker;


# direct methods
.method constructor <init>([Lcom/google/android/youtube/core/player/Tracker;Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/Requester;Landroid/os/ConditionVariable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$tracker:[Lcom/google/android/youtube/core/player/Tracker;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$analytics:Lcom/google/android/youtube/core/Analytics;

    iput-object p4, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$pingRequester:Lcom/google/android/youtube/core/async/Requester;

    iput-object p5, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 353
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 354
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$tracker:[Lcom/google/android/youtube/core/player/Tracker;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/youtube/core/player/Tracker;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$analytics:Lcom/google/android/youtube/core/Analytics;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$pingRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/youtube/core/player/Tracker;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/Requester;)V

    aput-object v2, v0, v1

    .line 355
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Tracker$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 356
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 357
    return-void
.end method
