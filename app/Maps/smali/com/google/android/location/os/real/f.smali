.class public abstract Lcom/google/android/location/os/real/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/location/os/real/f;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/location/os/real/f;
    .locals 3

    const-class v0, Lcom/google/android/location/os/real/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/location/os/real/f;->a:Lcom/google/android/location/os/real/f;

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    const-string v1, "com.google.android.location.os.real.SdkSpecific9"

    invoke-static {v1}, Lcom/google/android/location/os/real/f;->a(Ljava/lang/String;)Lcom/google/android/location/os/real/f;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/os/real/f;->a:Lcom/google/android/location/os/real/f;

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/location/os/real/f;->a:Lcom/google/android/location/os/real/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    :try_start_1
    const-string v1, "com.google.android.location.os.real.SdkSpecific8"

    invoke-static {v1}, Lcom/google/android/location/os/real/f;->a(Ljava/lang/String;)Lcom/google/android/location/os/real/f;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/os/real/f;->a:Lcom/google/android/location/os/real/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported SDK"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/location/os/real/f;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/location/os/real/f;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/location/os/real/f;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract a(Landroid/telephony/gsm/GsmCellLocation;)I
.end method

.method public abstract a(Ljava/io/File;)V
.end method
