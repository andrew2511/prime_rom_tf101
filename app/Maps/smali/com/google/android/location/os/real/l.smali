.class public Lcom/google/android/location/os/real/l;
.super Ljava/lang/Object;

# interfaces
.implements Lw/l;


# static fields
.field private static final i:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Lw/v;

.field private final c:Lcom/google/android/location/os/real/r;

.field private final d:Lcom/google/android/location/os/real/m;

.field private final e:Z

.field private final f:Landroid/app/AlarmManager;

.field private final g:[Landroid/app/PendingIntent;

.field private final h:Lcom/google/android/location/os/real/n;

.field private final j:[Landroid/os/PowerManager$WakeLock;

.field private k:[Z

.field private l:[Landroid/net/wifi/WifiManager$WifiLock;

.field private final m:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NetworkLocationLocator"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NetworkLocationActiveCollector"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NetworkLocationBurstCollector"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NetworkLocationPassiveCollector"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/os/real/l;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw/v;Lcom/google/android/location/os/real/m;Z)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v6, [Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/location/os/real/l;->g:[Landroid/app/PendingIntent;

    new-array v0, v6, [Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/google/android/location/os/real/l;->j:[Landroid/os/PowerManager$WakeLock;

    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/google/android/location/os/real/l;->k:[Z

    new-array v0, v6, [Landroid/net/wifi/WifiManager$WifiLock;

    iput-object v0, p0, Lcom/google/android/location/os/real/l;->l:[Landroid/net/wifi/WifiManager$WifiLock;

    iput-object p1, p0, Lcom/google/android/location/os/real/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    iput-object p3, p0, Lcom/google/android/location/os/real/l;->d:Lcom/google/android/location/os/real/m;

    iput-boolean p4, p0, Lcom/google/android/location/os/real/l;->e:Z

    new-instance v0, Lcom/google/android/location/os/real/r;

    invoke-direct {v0, p1, p2}, Lcom/google/android/location/os/real/r;-><init>(Landroid/content/Context;Lw/v;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/l;->c:Lcom/google/android/location/os/real/r;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/l;->f:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->g:[Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.location.ALARM_WAKEUP_LOCATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->g:[Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.location.ALARM_WAKEUP_ACTIVE_COLLECTOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->g:[Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.location.ALARM_WAKEUP_BURST_COLLECTOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->g:[Landroid/app/PendingIntent;

    const/4 v1, 0x3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.location.ALARM_WAKEUP_PASSIVE_COLLECTOR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v0, Lcom/google/android/location/os/real/n;

    iget-object v1, p0, Lcom/google/android/location/os/real/l;->c:Lcom/google/android/location/os/real/r;

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/os/real/n;-><init>(Landroid/content/Context;Lcom/google/android/location/os/real/r;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/l;->h:Lcom/google/android/location/os/real/n;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/google/android/location/os/real/l;->m:Landroid/net/wifi/WifiManager;

    move v1, v5

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lcom/google/android/location/os/real/l;->j:[Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/google/android/location/os/real/l;->i:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/google/android/location/os/real/l;->j:[Landroid/os/PowerManager$WakeLock;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v2, p0, Lcom/google/android/location/os/real/l;->l:[Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v3, p0, Lcom/google/android/location/os/real/l;->m:Landroid/net/wifi/WifiManager;

    sget-object v4, Lcom/google/android/location/os/real/l;->i:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v8, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/google/android/location/os/real/l;->l:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lal/b;
    .locals 7

    new-instance v0, Lal/b;

    invoke-direct {v0}, Lal/b;-><init>()V

    invoke-static {p0}, Lcom/google/android/location/os/real/l;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Lcom/google/android/location/os/real/l;->d(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-static {}, Lcom/google/android/location/os/real/l;->m()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lal/b;->a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;JJ)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "NetworkLocationRealOs"

    const-string v2, "No existing nlp persistent state."

    invoke-static {v1, v2}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "NetworkLocationRealOs"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "NetworkLocationRealOs"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lal/b;)V
    .locals 4

    invoke-static {p0}, Lcom/google/android/location/os/real/l;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lcom/google/android/location/os/real/f;->a()Lcom/google/android/location/os/real/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/location/os/real/f;->a(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0}, Lcom/google/android/location/os/real/l;->d(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {}, Lcom/google/android/location/os/real/l;->m()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lal/b;->a(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NetworkLocationRealOs"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "NetworkLocationRealOs"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "NetworkLocationRealOs"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/google/android/location/os/real/l;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/google/android/location/os/real/n;->a()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NetworkLocationRealOs"

    const-string v2, "Unable to delete nlp state file"

    invoke-static {v1, v2, v0}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    const-string v0, "cache.cell"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, "cache.wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, "gls.platform.key"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, "nlp_GlsPlatformKey"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/location/os/real/l;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/location/os/real/f;->a()Lcom/google/android/location/os/real/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/f;->a(Ljava/io/File;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v3, "NetworkLocationRealOs"

    const-string v4, "Unable to renamed old nlp state file"

    invoke-static {v3, v4, v0}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "nlp_state"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private static d(Landroid/content/Context;)Ljavax/crypto/SecretKey;
    .locals 12

    const/16 v11, 0x18

    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x0

    const-wide/16 v6, 0xff

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "no android ID; can\'t access encrypted cache"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v2, 0x20

    new-array v2, v2, [B

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    const/4 v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    ushr-long v4, v0, v11

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    ushr-long v4, v0, v10

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    ushr-long v4, v0, v9

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    ushr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    const/16 v3, 0x9

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xc

    ushr-long v4, v0, v11

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xd

    ushr-long v4, v0, v10

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xe

    ushr-long v4, v0, v9

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xf

    ushr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v10

    const/16 v3, 0x11

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x14

    ushr-long v4, v0, v11

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x15

    ushr-long v4, v0, v10

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x16

    ushr-long v4, v0, v9

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x17

    ushr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x38

    ushr-long v3, v0, v3

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    const/16 v3, 0x19

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1c

    ushr-long v4, v0, v11

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1d

    ushr-long v4, v0, v10

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1e

    ushr-long v4, v0, v9

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0x1f

    ushr-long/2addr v0, v8

    and-long/2addr v0, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static k()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static l()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static m()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    sget-object v1, Lw/z;->p:Lw/z;

    invoke-virtual {v0, v1}, Lw/v;->a(Lw/z;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->c:Lcom/google/android/location/os/real/r;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/r;->c()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    sget-object v1, Lw/z;->o:Lw/z;

    invoke-virtual {v0, v1}, Lw/v;->a(Lw/z;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->f:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/l;->g:[Landroid/app/PendingIntent;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(IJ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    invoke-virtual {v0, p1, p2, p3}, Lw/v;->a(IJ)V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->f:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/os/real/l;->g:[Landroid/app/PendingIntent;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->c:Lcom/google/android/location/os/real/r;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/r;->a(IZ)V

    return-void
.end method

.method public a(LW/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    invoke-virtual {v0, p1}, Lw/v;->a(LW/b;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, LW/b;->a:LW/h;

    if-eqz v0, :cond_0

    iget-object v0, p1, LW/b;->a:LW/h;

    iget-object v0, v0, LW/h;->c:LW/o;

    if-eqz v0, :cond_0

    iget-object v0, p1, LW/b;->a:LW/h;

    iget-object v0, v0, LW/h;->d:LW/n;

    sget-object v1, LW/n;->a:LW/n;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/os/real/l;->d:Lcom/google/android/location/os/real/m;

    invoke-interface {v0, p1}, Lcom/google/android/location/os/real/m;->a(LW/b;)V

    goto :goto_0
.end method

.method public a(Lal/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/location/os/real/l;->a(Landroid/content/Context;Lal/b;)V

    return-void
.end method

.method public a(Law/e;Law/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    sget-object v1, Lw/z;->s:Lw/z;

    invoke-virtual {v0, v1}, Lw/v;->a(Lw/z;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->h:Lcom/google/android/location/os/real/n;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/n;->a(Law/e;Law/e;)V

    return-void
.end method

.method public a(Lw/y;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->c:Lcom/google/android/location/os/real/r;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/r;->a(Lw/y;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->c:Lcom/google/android/location/os/real/r;

    iget-boolean v1, p0, Lcom/google/android/location/os/real/l;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/r;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    invoke-virtual {v0, p1}, Lw/v;->e(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->c:Lcom/google/android/location/os/real/r;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/r;->b(Z)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    sget-object v1, Lw/z;->q:Lw/z;

    invoke-virtual {v0, v1}, Lw/v;->a(Lw/z;)V

    invoke-static {}, Lcom/google/android/location/os/real/l;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    invoke-virtual {v0, p1}, Lw/v;->c(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->k:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already acquired"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/l;->k:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->j:[Landroid/os/PowerManager$WakeLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->l:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void
.end method

.method public b(Law/e;Law/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    sget-object v1, Lw/z;->t:Lw/z;

    invoke-virtual {v0, v1}, Lw/v;->a(Lw/z;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->h:Lcom/google/android/location/os/real/n;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/n;->b(Law/e;Law/e;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->c:Lcom/google/android/location/os/real/r;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/r;->a(Z)V

    return-void
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    sget-object v1, Lw/z;->r:Lw/z;

    invoke-virtual {v0, v1}, Lw/v;->a(Lw/z;)V

    invoke-static {}, Lcom/google/android/location/os/real/l;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    invoke-virtual {v0, p1}, Lw/v;->d(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->k:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/l;->l:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->k:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->j:[Landroid/os/PowerManager$WakeLock;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public d()J
    .locals 2

    invoke-static {}, Lcom/google/android/location/os/real/l;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->b:Lw/v;

    sget-object v1, Lw/z;->B:Lw/z;

    invoke-virtual {v0, v1}, Lw/v;->a(Lw/z;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method

.method public g()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/android/location/os/real/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public h()Lw/A;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->d:Lcom/google/android/location/os/real/m;

    invoke-interface {v0}, Lcom/google/android/location/os/real/m;->b()Lw/A;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->c:Lcom/google/android/location/os/real/r;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/r;->a()V

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/os/real/l;->c:Lcom/google/android/location/os/real/r;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/r;->b()V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/real/l;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/location/os/real/l;->a(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/location/os/real/l;->a(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/location/os/real/l;->a(I)V

    move v0, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/location/os/real/l;->k:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/location/os/real/l;->c(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
