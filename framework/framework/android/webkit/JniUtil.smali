.class Landroid/webkit/JniUtil;
.super Ljava/lang/Object;
.source "JniUtil.java"


# static fields
.field private static final ANDROID_CONTENT:Ljava/lang/String; = "content:"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static initialized:Z

.field private static sCacheDirectory:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sDatabaseDirectory:Ljava/lang/String;

.field private static sUseChromiumHttpStack:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/JniUtil;->initialized:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIntialized()V
    .registers 2

    .prologue
    .line 38
    sget-boolean v0, Landroid/webkit/JniUtil;->initialized:Z

    if-nez v0, :cond_c

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call CookieSyncManager::createInstance() or create a webview before using this class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_c
    return-void
.end method

.method private static declared-synchronized contentUrlSize(Ljava/lang/String;)J
    .registers 15
    .parameter "url"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, -0x1

    .line 85
    const-class v8, Landroid/webkit/JniUtil;

    monitor-enter v8

    :try_start_6
    const-string v9, "content:"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_62

    move-result v9

    if-eqz v9, :cond_60

    .line 91
    const/16 v9, 0x3f

    :try_start_10
    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 92
    .local v3, mimeIndex:I
    if-eq v3, v11, :cond_1b

    .line 93
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 95
    :cond_1b
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 96
    .local v7, uri:Landroid/net/Uri;
    sget-object v9, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    .local v2, is:Ljava/io/InputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_43

    .line 99
    .local v0, buffer:[B
    const-wide/16 v5, 0x0

    .line 101
    .local v5, size:J
    :goto_2f
    :try_start_2f
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3e

    move-result v4

    .local v4, n:I
    if-eq v4, v11, :cond_38

    .line 102
    int-to-long v9, v4

    add-long/2addr v5, v9

    goto :goto_2f

    .line 105
    :cond_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_43

    move-wide v9, v5

    .line 113
    .end local v0           #buffer:[B
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #mimeIndex:I
    .end local v4           #n:I
    .end local v5           #size:J
    .end local v7           #uri:Landroid/net/Uri;
    :goto_3c
    monitor-exit v8

    return-wide v9

    .line 105
    .restart local v0       #buffer:[B
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #mimeIndex:I
    .restart local v5       #size:J
    .restart local v7       #uri:Landroid/net/Uri;
    :catchall_3e
    move-exception v9

    :try_start_3f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_43

    .line 108
    .end local v0           #buffer:[B
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #mimeIndex:I
    .end local v5           #size:J
    .end local v7           #uri:Landroid/net/Uri;
    :catch_43
    move-exception v9

    move-object v1, v9

    .line 109
    .local v1, e:Ljava/lang/Exception;
    :try_start_45
    const-string/jumbo v9, "webkit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_62

    move-wide v9, v12

    .line 110
    goto :goto_3c

    .end local v1           #e:Ljava/lang/Exception;
    :cond_60
    move-wide v9, v12

    .line 113
    goto :goto_3c

    .line 85
    :catchall_62
    move-exception v9

    monitor-exit v8

    throw v9
.end method

.method private static declared-synchronized contentUrlStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    .line 125
    const-class v3, Landroid/webkit/JniUtil;

    monitor-enter v3

    :try_start_4
    const-string v4, "content:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_49

    move-result v4

    if-eqz v4, :cond_47

    .line 131
    const/16 v4, 0x3f

    :try_start_e
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 132
    .local v1, mimeIndex:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1a

    .line 133
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 135
    :cond_1a
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 136
    .local v2, uri:Landroid/net/Uri;
    sget-object v4, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_2a

    move-result-object v4

    .line 142
    .end local v1           #mimeIndex:I
    .end local v2           #uri:Landroid/net/Uri;
    :goto_28
    monitor-exit v3

    return-object v4

    .line 137
    :catch_2a
    move-exception v4

    move-object v0, v4

    .line 138
    .local v0, e:Ljava/lang/Exception;
    :try_start_2c
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_49

    move-object v4, v7

    .line 139
    goto :goto_28

    .end local v0           #e:Ljava/lang/Exception;
    :cond_47
    move-object v4, v7

    .line 142
    goto :goto_28

    .line 125
    :catchall_49
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method private static declared-synchronized getCacheDirectory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-class v0, Landroid/webkit/JniUtil;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/webkit/JniUtil;->checkIntialized()V

    .line 71
    sget-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 72
    sget-object v1, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;

    .line 74
    :cond_16
    sget-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_1a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getDatabaseDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    const-class v0, Landroid/webkit/JniUtil;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/webkit/JniUtil;->checkIntialized()V

    .line 58
    sget-object v1, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 59
    sget-object v1, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    const-string v2, "dummy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    .line 61
    :cond_18
    sget-object v1, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    .line 56
    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native nativeUseChromiumHttpStack()Z
.end method

.method protected static declared-synchronized setContext(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 44
    const-class v0, Landroid/webkit/JniUtil;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Landroid/webkit/JniUtil;->initialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-eqz v1, :cond_9

    .line 49
    :goto_7
    monitor-exit v0

    return-void

    .line 47
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    .line 48
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/JniUtil;->initialized:Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_13

    goto :goto_7

    .line 44
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static useChromiumHttpStack()Z
    .registers 1

    .prologue
    .line 153
    sget-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 154
    invoke-static {}, Landroid/webkit/JniUtil;->nativeUseChromiumHttpStack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    .line 156
    :cond_e
    sget-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
