.class Lcom/asus/Viewer/GetterHandler;
.super Landroid/os/Handler;
.source "DLNAImageGetter.java"


# static fields
.field private static final DLNA_IMAGE_GETTER_CALLBACK:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public GetterCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 330
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 331
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 332
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    invoke-virtual {p0, v0}, Lcom/asus/Viewer/GetterHandler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 303
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 313
    .end local p0
    :goto_0
    return-void

    .line 305
    .restart local p0
    :sswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 309
    .restart local p0
    :sswitch_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 303
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x33 -> :sswitch_1
    .end sparse-switch
.end method

.method public postDelayedGetterCallback(Ljava/lang/Runnable;J)V
    .locals 2
    .parameter "callback"
    .parameter "delay"

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 321
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 322
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 323
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    invoke-virtual {p0, v0, p2, p3}, Lcom/asus/Viewer/GetterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    return-void
.end method

.method public postGetterCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 315
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/asus/Viewer/GetterHandler;->postDelayedGetterCallback(Ljava/lang/Runnable;J)V

    .line 316
    return-void
.end method

.method public removeAllGetterCallbacks()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/GetterHandler;->removeMessages(I)V

    .line 337
    return-void
.end method
