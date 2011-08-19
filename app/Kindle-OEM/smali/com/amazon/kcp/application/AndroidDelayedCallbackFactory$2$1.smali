.class Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2$1;
.super Ljava/util/TimerTask;
.source "AndroidDelayedCallbackFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2$1;->this$1:Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2$1;->this$1:Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;->this$0:Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;->access$000(Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;)Lcom/amazon/system/util/Utilities;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2$1;->this$1:Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;

    iget-object v1, v1, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/amazon/system/util/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method
