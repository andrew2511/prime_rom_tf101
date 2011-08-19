.class Lcom/google/googlenav/gesture/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/gesture/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/gesture/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/gesture/f;->a:Lcom/google/googlenav/gesture/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/googlenav/gesture/q;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/gesture/f;->a:Lcom/google/googlenav/gesture/q;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/gesture/f;->a:Lcom/google/googlenav/gesture/q;

    invoke-static {v0}, Lcom/google/googlenav/gesture/q;->b(Lcom/google/googlenav/gesture/q;)Lcom/google/googlenav/gesture/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/gesture/f;->a:Lcom/google/googlenav/gesture/q;

    invoke-static {v1}, Lcom/google/googlenav/gesture/q;->a(Lcom/google/googlenav/gesture/q;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/gesture/t;->f(Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/gesture/f;->a:Lcom/google/googlenav/gesture/q;

    invoke-static {v0}, Lcom/google/googlenav/gesture/q;->c(Lcom/google/googlenav/gesture/q;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/googlenav/gesture/f;->a:Lcom/google/googlenav/gesture/q;

    invoke-static {v0}, Lcom/google/googlenav/gesture/q;->d(Lcom/google/googlenav/gesture/q;)Lcom/google/googlenav/gesture/z;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/gesture/f;->a:Lcom/google/googlenav/gesture/q;

    invoke-static {v0}, Lcom/google/googlenav/gesture/q;->e(Lcom/google/googlenav/gesture/q;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/gesture/f;->a:Lcom/google/googlenav/gesture/q;

    invoke-static {v0}, Lcom/google/googlenav/gesture/q;->d(Lcom/google/googlenav/gesture/q;)Lcom/google/googlenav/gesture/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/gesture/f;->a:Lcom/google/googlenav/gesture/q;

    invoke-static {v1}, Lcom/google/googlenav/gesture/q;->a(Lcom/google/googlenav/gesture/q;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/gesture/z;->b(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
