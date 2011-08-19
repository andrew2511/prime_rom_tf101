.class Lcom/android/screenshot/ScreenshotIntentReceiver$ScreenshotThreadHandler;
.super Landroid/os/Handler;
.source "ScreenshotIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/screenshot/ScreenshotIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/screenshot/ScreenshotIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/screenshot/ScreenshotIntentReceiver;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/screenshot/ScreenshotIntentReceiver$ScreenshotThreadHandler;->this$0:Lcom/android/screenshot/ScreenshotIntentReceiver;

    .line 66
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    return-void

    .line 75
    :pswitch_0
    iget-object v1, p0, Lcom/android/screenshot/ScreenshotIntentReceiver$ScreenshotThreadHandler;->this$0:Lcom/android/screenshot/ScreenshotIntentReceiver;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/android/screenshot/ScreenshotIntentReceiver;->captureScreen(Landroid/os/Bundle;)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
