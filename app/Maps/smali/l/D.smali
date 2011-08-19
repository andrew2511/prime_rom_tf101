.class Ll/D;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Ll/r;


# direct methods
.method private constructor <init>(Ll/r;)V
    .locals 0

    iput-object p1, p0, Ll/D;->a:Ll/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ll/r;Ll/F;)V
    .locals 0

    invoke-direct {p0, p1}, Ll/D;-><init>(Ll/r;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Ll/D;->a:Ll/r;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ll/u;

    invoke-static {v0, p0}, Ll/r;->a(Ll/r;Ll/u;)V

    move v0, v3

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ll/D;->a:Ll/r;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ll/u;

    invoke-static {v0, p0}, Ll/r;->b(Ll/r;Ll/u;)V

    move v0, v3

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ll/D;->a:Ll/r;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/location/Location;

    invoke-static {v0, p0}, Ll/r;->a(Ll/r;Landroid/location/Location;)V

    move v0, v3

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Ll/D;->a:Ll/r;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Ll/r;->a(Ll/r;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Ll/D;->a:Ll/r;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Ll/r;->b(Ll/r;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Ll/D;->a:Ll/r;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Ll/r;->a(Ll/r;Ljava/lang/String;ILandroid/os/Bundle;)V

    move v0, v3

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Ll/D;->a:Ll/r;

    invoke-static {v0}, Ll/r;->a(Ll/r;)V

    move v0, v3

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
    .end packed-switch
.end method
