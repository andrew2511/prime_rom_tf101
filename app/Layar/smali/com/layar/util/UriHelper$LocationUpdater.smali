.class Lcom/layar/util/UriHelper$LocationUpdater;
.super Landroid/os/Handler;
.source "UriHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/util/UriHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationUpdater"
.end annotation


# static fields
.field private static final MESSAGE_UPDATE:I = 0x7b


# instance fields
.field final synthetic this$0:Lcom/layar/util/UriHelper;


# direct methods
.method private constructor <init>(Lcom/layar/util/UriHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/layar/util/UriHelper$LocationUpdater;->this$0:Lcom/layar/util/UriHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/util/UriHelper;Lcom/layar/util/UriHelper$LocationUpdater;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/layar/util/UriHelper$LocationUpdater;-><init>(Lcom/layar/util/UriHelper;)V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/util/UriHelper$LocationUpdater;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/layar/util/UriHelper$LocationUpdater;->delay(J)V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/util/UriHelper$LocationUpdater;)Lcom/layar/util/UriHelper;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/layar/util/UriHelper$LocationUpdater;->this$0:Lcom/layar/util/UriHelper;

    return-object v0
.end method

.method private delay(J)V
    .locals 1
    .parameter "delayMillis"

    .prologue
    .line 140
    const/16 v0, 0x7b

    invoke-virtual {p0, v0, p1, p2}, Lcom/layar/util/UriHelper$LocationUpdater;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/layar/util/UriHelper$LocationUpdater;->removeMessages(I)V

    .line 137
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/layar/util/UriHelper$LocationUpdater$1;

    invoke-direct {v1, p0}, Lcom/layar/util/UriHelper$LocationUpdater$1;-><init>(Lcom/layar/util/UriHelper$LocationUpdater;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method

.method public postUpdate(J)V
    .locals 1
    .parameter "delayMillis"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/layar/util/UriHelper$LocationUpdater;->cancel()V

    .line 132
    const/16 v0, 0x7b

    invoke-virtual {p0, v0, p1, p2}, Lcom/layar/util/UriHelper$LocationUpdater;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/layar/util/UriHelper$LocationUpdater;->cancel()V

    .line 127
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/layar/util/UriHelper$LocationUpdater;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method
