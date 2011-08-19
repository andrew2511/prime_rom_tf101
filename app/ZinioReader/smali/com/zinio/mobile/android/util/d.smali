.class final Lcom/zinio/mobile/android/util/d;
.super Lcom/zinio/mobile/android/util/k;
.source "SourceFile"


# instance fields
.field private synthetic c:Lcom/zinio/mobile/android/util/c;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/util/c;)V
    .locals 1
    .parameter

    .prologue
    .line 1046
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/util/d;-><init>(Lcom/zinio/mobile/android/util/c;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/util/c;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/zinio/mobile/android/util/d;->c:Lcom/zinio/mobile/android/util/c;

    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/util/k;-><init>(Lcom/zinio/mobile/android/util/c;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/zinio/mobile/android/util/d;->c:Lcom/zinio/mobile/android/util/c;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/c;->a(Lcom/zinio/mobile/android/util/c;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 1049
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/util/d;->a:Lcom/zinio/mobile/android/util/a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/d;->c:Lcom/zinio/mobile/android/util/c;

    invoke-static {v1}, Lcom/zinio/mobile/android/util/c;->b(Lcom/zinio/mobile/android/util/c;)Lcom/zinio/mobile/android/util/a;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/zinio/mobile/android/util/d;->a:Lcom/zinio/mobile/android/util/a;

    .line 1052
    iget-object v1, p0, Lcom/zinio/mobile/android/util/d;->a:Lcom/zinio/mobile/android/util/a;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/zinio/mobile/android/util/d;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1055
    return-void

    .line 1051
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/zinio/mobile/android/util/d;->a:Lcom/zinio/mobile/android/util/a;

    iget-object v1, v1, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;

    goto :goto_0

    .line 1052
    :cond_1
    iget-object v1, p0, Lcom/zinio/mobile/android/util/d;->a:Lcom/zinio/mobile/android/util/a;

    iget-object v1, v1, Lcom/zinio/mobile/android/util/a;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1054
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
