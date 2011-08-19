.class public Lcom/google/android/maps/driveabout/power/BatteryMonitor;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a:I

    return-void
.end method

.method private a(IF)V
    .locals 3

    const/high16 v2, 0x42c8

    iget v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    mul-float v0, p2, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a:I

    :cond_0
    mul-float v0, p2, v2

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->b:I

    iput v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "scale"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/high16 v2, 0x3e80

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a()V

    const-string v0, "BatteryMonitor"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a(IF)V

    iget v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->b:I

    if-ltz v0, :cond_3

    const-string v0, "BatteryMonitor"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->b:I

    const/16 v1, -0xa

    if-gt v0, v1, :cond_1

    const-string v0, "BatteryMonitor"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
