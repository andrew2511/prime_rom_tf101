.class public Lcom/google/android/maps/driveabout/app/az;
.super Ljava/lang/Object;


# static fields
.field private static final b:Landroid/content/IntentFilter;

.field private static final c:Landroid/content/IntentFilter;


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final d:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/az;->b:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.ENTER_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/az;->c:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bZ;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bZ;-><init>(Lcom/google/android/maps/driveabout/app/az;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/az;->a:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/az;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/az;->e:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/az;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/az;->a:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/android/maps/driveabout/app/az;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/az;->e:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/az;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/az;->a:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/android/maps/driveabout/app/az;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/az;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/az;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/az;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/az;->e:Z

    :cond_0
    return-void
.end method
