.class public final Lcom/android/server/UpdateLauncherService;
.super Landroid/os/IUpdateLauncherService$Stub;
.source "UpdateLauncherService.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final E_UPDATE_BAD_STATUS_1:I = 0x1

.field public static final E_UPDATE_BAD_STATUS_2:I = 0x3

.field public static final E_UPDATE_BAD_STATUS_3:I = 0x4

.field static final TAG:Ljava/lang/String; = "UpdateLauncherService"


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/server/UpdateLauncherService;->DEBUG:Z

    return-void

    :cond_e
    move v0, v1

    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/IUpdateLauncherService$Stub;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/UpdateLauncherService;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getResult()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 65
    const-string v1, "0"

    .line 66
    .local v1, UPDATE_OK_STR:Ljava/lang/String;
    const-string v0, "8"

    .line 67
    .local v0, UPDATE_NG_STR:Ljava/lang/String;
    const-string v5, "/cache/recovery/update_status"

    .line 68
    .local v5, status_loc:Ljava/lang/String;
    const/4 v3, 0x0

    .line 69
    .local v3, error_str:Ljava/lang/String;
    const/4 v2, -0x1

    .line 72
    .local v2, error_code:I
    :try_start_9
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .local v4, in:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 76
    .local v6, str_len:I
    if-ne v6, v8, :cond_39

    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 80
    const/4 v2, 0x0

    .line 102
    :goto_27
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 107
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v6           #str_len:I
    :goto_2f
    return v2

    .line 84
    .restart local v4       #in:Ljava/io/BufferedReader;
    .restart local v6       #str_len:I
    :cond_30
    const/4 v2, 0x1

    .line 85
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7

    .line 104
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v6           #str_len:I
    :catch_37
    move-exception v7

    goto :goto_2f

    .line 88
    .restart local v4       #in:Ljava/io/BufferedReader;
    .restart local v6       #str_len:I
    :cond_39
    const/16 v7, 0x8

    if-eq v6, v7, :cond_44

    .line 90
    const/4 v2, 0x3

    .line 91
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7

    .line 95
    :cond_44
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 97
    const/4 v2, 0x4

    .line 98
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7

    .line 100
    :cond_57
    const/4 v7, 0x1

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_61} :catch_37

    move-result v2

    goto :goto_27
.end method

.method public reboot()V
    .registers 5

    .prologue
    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UpdateLauncherService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 115
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 124
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_f
    :goto_f
    return-void

    .line 117
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 119
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/UpdateLauncherService;->DEBUG:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 121
    const-string v2, "UpdateLauncherService"

    const-string v3, "reboot error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 10
    .parameter "path"

    .prologue
    const/4 v7, 0x1

    .line 33
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/cache/recovery"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, UPDATELAUNCHER_DIR:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "command"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .local v0, UPDATELAUNCHER_COMMAND_FILE:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_51

    .line 40
    .local v2, command:Ljava/io/FileWriter;
    :try_start_1a
    sget-boolean v4, Lcom/android/server/UpdateLauncherService;->DEBUG:Z

    if-ne v4, v7, :cond_40

    .line 42
    const-string v4, "UpdateLauncherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_40
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 45
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1a .. :try_end_48} :catchall_4c

    .line 49
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 59
    .end local v0           #UPDATELAUNCHER_COMMAND_FILE:Ljava/io/File;
    .end local v1           #UPDATELAUNCHER_DIR:Ljava/io/File;
    .end local v2           #command:Ljava/io/FileWriter;
    :cond_4b
    :goto_4b
    return-void

    .line 49
    .restart local v0       #UPDATELAUNCHER_COMMAND_FILE:Ljava/io/File;
    .restart local v1       #UPDATELAUNCHER_DIR:Ljava/io/File;
    .restart local v2       #command:Ljava/io/FileWriter;
    :catchall_4c
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_51

    .line 52
    .end local v0           #UPDATELAUNCHER_COMMAND_FILE:Ljava/io/File;
    .end local v1           #UPDATELAUNCHER_DIR:Ljava/io/File;
    .end local v2           #command:Ljava/io/FileWriter;
    :catch_51
    move-exception v4

    move-object v3, v4

    .line 54
    .local v3, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/UpdateLauncherService;->DEBUG:Z

    if-ne v4, v7, :cond_4b

    .line 56
    const-string v4, "UpdateLauncherService"

    const-string v5, "setPath error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method
