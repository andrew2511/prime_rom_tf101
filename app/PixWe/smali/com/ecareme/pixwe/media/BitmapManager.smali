.class public Lcom/ecareme/pixwe/media/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/BitmapManager$State;,
        Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;,
        Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static sManager:Lcom/ecareme/pixwe/media/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/media/BitmapManager;->sManager:Lcom/ecareme/pixwe/media/BitmapManager;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 88
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    .locals 2
    .parameter "t"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;

    .line 95
    .local v0, status:Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;

    .end local v0           #status:Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;-><init>(Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;)V

    .line 97
    .restart local v0       #status:Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-object v0

    .line 94
    .end local v0           #status:Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/ecareme/pixwe/media/BitmapManager;
    .locals 2

    .prologue
    .line 163
    const-class v0, Lcom/ecareme/pixwe/media/BitmapManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ecareme/pixwe/media/BitmapManager;->sManager:Lcom/ecareme/pixwe/media/BitmapManager;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/ecareme/pixwe/media/BitmapManager;

    invoke-direct {v1}, Lcom/ecareme/pixwe/media/BitmapManager;-><init>()V

    sput-object v1, Lcom/ecareme/pixwe/media/BitmapManager;->sManager:Lcom/ecareme/pixwe/media/BitmapManager;

    .line 166
    :cond_0
    sget-object v1, Lcom/ecareme/pixwe/media/BitmapManager;->sManager:Lcom/ecareme/pixwe/media/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .parameter "t"
    .parameter "options"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized allowThreadDecoding(Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;)V
    .locals 3
    .parameter "threads"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 123
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 121
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/BitmapManager;->allowThreadDecoding(Ljava/lang/Thread;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    .end local v0           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/ecareme/pixwe/media/BitmapManager$State;->ALLOW:Lcom/ecareme/pixwe/media/BitmapManager$State;

    iput-object v1, v0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mState:Lcom/ecareme/pixwe/media/BitmapManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 5
    .parameter "t"

    .prologue
    const/4 v4, 0x1

    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .local v1, status:Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    if-nez v1, :cond_0

    move v2, v4

    .line 144
    :goto_0
    monitor-exit p0

    return v2

    .line 143
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mState:Lcom/ecareme/pixwe/media/BitmapManager$State;

    sget-object v3, Lcom/ecareme/pixwe/media/BitmapManager$State;->CANCEL:Lcom/ecareme/pixwe/media/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    move v0, v4

    .local v0, result:Z
    :goto_1
    move v2, v0

    .line 144
    goto :goto_0

    .line 143
    .end local v0           #result:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 136
    .end local v1           #status:Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelThreadDecoding(Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;)V
    .locals 3
    .parameter "threads"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 129
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 127
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/BitmapManager;->cancelThreadDecoding(Ljava/lang/Thread;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 153
    .local v0, status:Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    sget-object v1, Lcom/ecareme/pixwe/media/BitmapManager$State;->CANCEL:Lcom/ecareme/pixwe/media/BitmapManager$State;

    iput-object v1, v0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mState:Lcom/ecareme/pixwe/media/BitmapManager$State;

    .line 154
    iget-object v1, v0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, v0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 159
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 152
    .end local v0           #status:Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "fd"
    .parameter "options"

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v2, :cond_0

    move-object v2, v5

    .line 187
    :goto_0
    return-object v2

    .line 177
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 178
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    const-string v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Thread "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed to decode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 180
    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/ecareme/pixwe/media/BitmapManager;->setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 184
    invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/BitmapManager;->removeDecodingOptions(Ljava/lang/Thread;)V

    move-object v2, v0

    .line 187
    goto :goto_0
.end method

.method declared-synchronized removeDecodingOptions(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;

    .line 112
    .local v0, status:Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 111
    .end local v0           #status:Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
