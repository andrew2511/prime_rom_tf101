.class Lcom/google/android/maps/driveabout/app/P;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dz;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/dz;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/dz;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dz;->a(Lcom/google/android/maps/driveabout/app/dz;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/dz;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dz;->b(Lcom/google/android/maps/driveabout/app/dz;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/dz;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dz;->c(Lcom/google/android/maps/driveabout/app/dz;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/dz;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, LF/M;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/app/dz;->a(Lcom/google/android/maps/driveabout/app/dz;LF/M;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/dz;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, LF/y;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/dz;->a(Lcom/google/android/maps/driveabout/app/dz;LF/y;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/dz;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dz;->d(Lcom/google/android/maps/driveabout/app/dz;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/dz;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dz;->b(Lcom/google/android/maps/driveabout/app/dz;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->a:Lcom/google/android/maps/driveabout/app/dz;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dz;->e(Lcom/google/android/maps/driveabout/app/dz;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
