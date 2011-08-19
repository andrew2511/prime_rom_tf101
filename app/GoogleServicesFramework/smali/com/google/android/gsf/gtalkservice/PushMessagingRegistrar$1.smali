.class Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;
.super Landroid/os/Handler;
.source "PushMessagingRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$000(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->access$100(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
