.class Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;
.super Ljava/lang/Object;
.source "AndroidDelayedCallbackFactory.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;->createDelayedCallack(JLcom/amazon/foundation/ICallback;)Lcom/amazon/foundation/ICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;

.field final synthetic val$delayInMilliseconds:J

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;->this$0:Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;

    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;->val$runnable:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;->val$delayInMilliseconds:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2$1;-><init>(Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;)V

    .line 57
    .local v0, task:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 59
    .local v1, timer:Ljava/util/Timer;
    iget-wide v2, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;->val$delayInMilliseconds:J

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 60
    return-void
.end method
