.class Lcom/google/android/maps/rideabout/app/j;
.super Lcom/google/android/maps/rideabout/app/g;


# static fields
.field private static final c:[Ljava/lang/Class;


# instance fields
.field private d:Ljava/lang/reflect/Method;

.field private final e:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/rideabout/app/j;->c:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/rideabout/app/g;-><init>(Landroid/app/Service;Lcom/google/android/maps/rideabout/app/i;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/j;->e:[Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForeground"

    sget-object v2, Lcom/google/android/maps/rideabout/app/j;->c:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/j;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OS doesn\'t have Service.setForeground!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/j;->e:[Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/j;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/j;->a:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/j;->e:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/j;->d()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0xc3b

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/j;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NotificationHelper"

    const-string v2, "Unable to invoke setForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "NotificationHelper"

    const-string v2, "Unable to invoke setForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/j;->e:[Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/j;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/j;->a:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/j;->e:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NotificationHelper"

    const-string v2, "Unable to invoke setForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "NotificationHelper"

    const-string v2, "Unable to invoke setForeground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
