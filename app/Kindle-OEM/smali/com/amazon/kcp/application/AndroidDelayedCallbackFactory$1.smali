.class Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$1;
.super Ljava/lang/Object;
.source "AndroidDelayedCallbackFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$callback:Lcom/amazon/foundation/ICallback;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;Lcom/amazon/foundation/ICallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$1;->this$0:Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;

    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$1;->val$callback:Lcom/amazon/foundation/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$1;->val$callback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 40
    return-void
.end method
