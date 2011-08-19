.class Lcom/asus/cm/location/LocationService$NetworkHandler;
.super Landroid/os/Handler;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/location/LocationService;


# direct methods
.method public constructor <init>(Lcom/asus/cm/location/LocationService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/asus/cm/location/LocationService$NetworkHandler;->this$0:Lcom/asus/cm/location/LocationService;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    .end local p0
    :goto_0
    return-void

    .line 169
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/asus/cm/location/LocationService$NetworkHandler;->this$0:Lcom/asus/cm/location/LocationService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/location/Location;

    invoke-virtual {v0, p0}, Lcom/asus/cm/location/LocationService;->report(Landroid/location/Location;)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
