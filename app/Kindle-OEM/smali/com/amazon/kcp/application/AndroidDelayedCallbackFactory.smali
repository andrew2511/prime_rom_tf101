.class public Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;
.super Ljava/lang/Object;
.source "AndroidDelayedCallbackFactory.java"

# interfaces
.implements Lcom/amazon/kcp/application/IDelayedCallbackFactory;


# instance fields
.field private invokeUtils:Lcom/amazon/system/util/Utilities;


# direct methods
.method public constructor <init>(Lcom/amazon/system/util/Utilities;)V
    .locals 0
    .parameter "invokeUtils"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;->invokeUtils:Lcom/amazon/system/util/Utilities;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;)Lcom/amazon/system/util/Utilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;->invokeUtils:Lcom/amazon/system/util/Utilities;

    return-object v0
.end method


# virtual methods
.method public createDelayedCallack(JLcom/amazon/foundation/ICallback;)Lcom/amazon/foundation/ICallback;
    .locals 2
    .parameter "delayInMilliseconds"
    .parameter "callback"

    .prologue
    .line 35
    new-instance v1, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$1;

    invoke-direct {v1, p0, p3}, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$1;-><init>(Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;Lcom/amazon/foundation/ICallback;)V

    .line 43
    .local v1, runnable:Ljava/lang/Runnable;
    new-instance v0, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory$2;-><init>(Lcom/amazon/kcp/application/AndroidDelayedCallbackFactory;Ljava/lang/Runnable;J)V

    .line 63
    .local v0, delayedCallback:Lcom/amazon/foundation/ICallback;
    return-object v0
.end method
