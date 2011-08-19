.class final Lcom/google/android/location/os/real/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/r;

.field private final b:Landroid/telephony/TelephonyManager;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/r;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/b;->b:Landroid/telephony/TelephonyManager;

    const/16 v0, -0x270f

    iput v0, p0, Lcom/google/android/location/os/real/b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/r;Lcom/google/android/location/os/real/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/b;-><init>(Lcom/google/android/location/os/real/r;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "NetworkLocationCallbackRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lw/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->b(Lcom/google/android/location/os/real/r;)Lcom/google/android/location/os/real/k;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->c(Lcom/google/android/location/os/real/r;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->d(Lcom/google/android/location/os/real/r;)Lcom/google/android/location/os/real/e;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->e(Lcom/google/android/location/os/real/r;)Lcom/google/android/location/os/real/e;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v0

    sget-object v1, Lw/z;->h:Lw/z;

    invoke-virtual {v0, v1}, Lw/v;->a(Lw/z;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Law/e;

    invoke-interface {v0, p0}, Lw/y;->a(Law/e;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v0

    sget-object v1, Lw/z;->i:Lw/z;

    invoke-virtual {v0, v1}, Lw/v;->a(Lw/z;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Law/e;

    invoke-interface {v0, p0}, Lw/y;->b(Law/e;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    invoke-virtual {v0, v1, v2}, Lw/v;->a(IZ)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_3

    move v2, v5

    :goto_3
    invoke-interface {v0, v1, v2}, Lw/y;->a(IZ)V

    goto/16 :goto_0

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_4

    const/16 v0, -0x270f

    iput v0, p0, Lcom/google/android/location/os/real/b;->c:I

    :cond_4
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/google/android/location/os/real/h;

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->b:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/google/android/location/os/real/b;->c:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/real/h;-><init>(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;IJ)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw/v;->a(LW/m;)V

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v1

    invoke-interface {v1, v0}, Lw/y;->a(LW/m;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/b;->c:I

    :goto_4
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/os/real/b;->c:I

    invoke-virtual {v0, v1}, Lw/v;->b(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/os/real/b;->c:I

    invoke-interface {v0, v1}, Lw/y;->b(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/b;->c:I

    goto :goto_4

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw/v;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    invoke-interface {v0, v4}, Lw/y;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->h(Lcom/google/android/location/os/real/r;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v0

    invoke-virtual {v0, v5}, Lw/v;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    invoke-interface {v0, v5}, Lw/y;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->h(Lcom/google/android/location/os/real/r;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw/v;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    invoke-interface {v0, v1}, Lw/y;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->h(Lcom/google/android/location/os/real/r;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw/v;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    invoke-interface {v0, v2}, Lw/y;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->h(Lcom/google/android/location/os/real/r;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->c(Lcom/google/android/location/os/real/r;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LW/p;

    new-instance v2, Lcom/google/android/location/os/real/c;

    iget-object v1, v0, LW/p;->a:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    iget-object v0, v0, LW/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/location/os/real/c;-><init>(Landroid/location/Location;J)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw/v;->a(Lw/A;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    invoke-interface {v0, v2}, Lw/y;->a(Lw/A;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->c(Lcom/google/android/location/os/real/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LW/p;

    new-instance v2, Lcom/google/android/location/os/real/c;

    iget-object v1, v0, LW/p;->a:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    iget-object v0, v0, LW/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/location/os/real/c;-><init>(Landroid/location/Location;J)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw/v;->a(Lw/A;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    invoke-interface {v0, v2}, Lw/y;->a(Lw/A;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/os/real/i;

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw/v;->a(LW/k;)V

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v1

    invoke-interface {v1, v0}, Lw/y;->a(LW/k;)V

    goto/16 :goto_0

    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7

    move v0, v5

    :goto_5
    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw/v;->d(Z)V

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v1

    invoke-interface {v1, v0}, Lw/y;->a(Z)V

    goto/16 :goto_0

    :cond_7
    move v0, v4

    goto :goto_5

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "level"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "plugged"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v5

    :goto_6
    iget-object v3, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v3}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lw/v;->a(IIZ)V

    iget-object v3, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v3}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lw/y;->a(IIZ)V

    goto/16 :goto_0

    :cond_8
    move v0, v4

    goto :goto_6

    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_9

    move v0, v5

    :goto_7
    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw/v;->c(Z)V

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v1

    invoke-interface {v1, v0}, Lw/y;->b(Z)V

    goto/16 :goto_0

    :cond_9
    move v0, v4

    goto :goto_7

    :pswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_a

    move v0, v5

    :goto_8
    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw/v;->a(Z)V

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v1

    invoke-interface {v1, v0}, Lw/y;->c(Z)V

    goto/16 :goto_0

    :cond_a
    move v0, v4

    goto :goto_8

    :pswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_b

    move v0, v5

    :goto_9
    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->f(Lcom/google/android/location/os/real/r;)Lw/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw/v;->b(Z)V

    iget-object v1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v1

    invoke-interface {v1, v0}, Lw/y;->d(Z)V

    goto/16 :goto_0

    :cond_b
    move v0, v4

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_f
        :pswitch_2
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
