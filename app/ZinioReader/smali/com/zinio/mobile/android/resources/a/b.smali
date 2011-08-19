.class public final Lcom/zinio/mobile/android/resources/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/resources/a/b;->c:Ljava/lang/String;

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/zinio/mobile/android/resources/a/b;->c:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "com.zinio.mobile.android"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/zinio/mobile/android/util/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/resources/a/b;->a:Ljava/lang/String;

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/zinio/mobile/android/resources/a/b;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "part"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/zinio/mobile/android/util/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/resources/a/b;->d:Ljava/lang/String;

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/zinio/mobile/android/resources/a/b;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "temp"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/zinio/mobile/android/util/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/resources/a/b;->b:Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/zinio/mobile/android/resources/a/b;->c:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "com.zinio.mobile.android"

    aput-object v1, v0, v3

    const-string v1, "faq"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/zinio/mobile/android/util/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/resources/a/b;->e:Ljava/lang/String;

    .line 49
    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/zinio/mobile/android/resources/a/b;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 91
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 92
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const-wide v4, 0x3fb999999999999aL

    .line 71
    long-to-double v0, p0

    const-wide/high16 v2, 0x4130

    div-double/2addr v0, v2

    .line 72
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    cmpg-double v2, v0, v4

    if-gez v2, :cond_0

    move-wide v0, v4

    .line 75
    :cond_0
    const-string v2, "%.1f"

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 3
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 144
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 145
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/zinio/mobile/android/resources/a/b;->a(Ljava/io/File;)Z

    .line 144
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Lcom/zinio/mobile/android/resources/a/b;->a()J

    move-result-wide v0

    sget-wide v2, Lcom/zinio/mobile/android/resources/a/b;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 115
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".probe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    .line 132
    :goto_0
    return v0

    .line 125
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v5

    .line 132
    goto :goto_0
.end method
