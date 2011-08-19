.class public abstract Lcom/android/emailcommon/utility/EmailAsyncTask;
.super Ljava/lang/Object;
.source "EmailAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;,
        Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field private final mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 104
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 106
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->access$000(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 109
    :cond_0
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    iput-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    .line 110
    return-void
.end method


# virtual methods
.method varargs callDoInBackgroundForTest([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method callOnCancelledForTest(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->onCancelled(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method callOnPostExecuteForTest(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->onPostExecute(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public final cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 121
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    return-object p0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method unregisterSelf()V
    .locals 1

    .prologue
    .line 113
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->access$100(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 116
    :cond_0
    return-void
.end method
