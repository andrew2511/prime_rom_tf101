.class Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$2;
.super Ljava/lang/Thread;
.source "ArticleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->end(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;

.field private final synthetic val$audioThread:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$2;->this$2:Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$2;->val$audioThread:Ljava/util/concurrent/atomic/AtomicReference;

    .line 803
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v0, v2, v4

    .line 806
    .local v0, endTimeMillis:J
    :goto_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$2;->val$audioThread:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 816
    .end local p0
    :goto_1
    return-void

    .line 807
    .restart local p0
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 808
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$2;->val$audioThread:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 812
    .restart local p0
    :cond_1
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v2

    goto :goto_0
.end method
