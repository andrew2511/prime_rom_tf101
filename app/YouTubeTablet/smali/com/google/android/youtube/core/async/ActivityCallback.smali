.class public final Lcom/google/android/youtube/core/async/ActivityCallback;
.super Lcom/google/android/youtube/core/async/ThreadingCallback;
.source "ActivityCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/youtube/core/async/ThreadingCallback",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/google/android/youtube/core/async/ActivityCallback;,"Lcom/google/android/youtube/core/async/ActivityCallback<TR;TE;>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/async/ThreadingCallback;-><init>(Lcom/google/android/youtube/core/async/Callback;)V

    .line 26
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ActivityCallback;->activity:Landroid/app/Activity;

    .line 27
    return-void
.end method


# virtual methods
.method protected post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 31
    .local p0, this:Lcom/google/android/youtube/core/async/ActivityCallback;,"Lcom/google/android/youtube/core/async/ActivityCallback<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ActivityCallback;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method
