.class Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;
.super Lcom/google/android/music/Worker;
.source "AsyncCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncCursorHandler"
.end annotation


# instance fields
.field private final mInitializedFromStack:[Ljava/lang/StackTraceElement;

.field mLogTag:Ljava/lang/String;

.field mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/AsyncCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/music/AsyncCursor;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 152
    iget-object v0, p1, Lcom/google/android/music/AsyncCursor;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->mOwner:Ljava/lang/ref/WeakReference;

    .line 154
    iget-object v0, p1, Lcom/google/android/music/AsyncCursor;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->mLogTag:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->mInitializedFromStack:[Ljava/lang/StackTraceElement;

    .line 156
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor;

    .line 162
    .local v0, c:Lcom/google/android/music/AsyncCursor;
    if-nez v0, :cond_0

    .line 163
    iget-object v2, p0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->mLogTag:Ljava/lang/String;

    const-string v3, "Cursor disappeared, quitting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->quit()V

    .line 186
    :goto_0
    return-void

    .line 168
    :cond_0
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-static {v0}, Lcom/google/android/music/AsyncCursor;->access$100(Lcom/google/android/music/AsyncCursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 183
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    new-array v2, v2, [[Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->mInitializedFromStack:[Ljava/lang/StackTraceElement;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/android/music/utils/ArrayUtils;->combine([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/StackTraceElement;

    invoke-virtual {v1, p0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 184
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 173
    .end local v1           #e:Ljava/lang/Exception;
    .restart local p0
    :pswitch_1
    :try_start_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2, v3}, Lcom/google/android/music/AsyncCursor;->access$200(Lcom/google/android/music/AsyncCursor;II)V

    goto :goto_0

    .line 176
    :pswitch_2
    invoke-static {v0}, Lcom/google/android/music/AsyncCursor;->access$300(Lcom/google/android/music/AsyncCursor;)V

    goto :goto_0

    .line 179
    :pswitch_3
    invoke-static {v0}, Lcom/google/android/music/AsyncCursor;->access$400(Lcom/google/android/music/AsyncCursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
