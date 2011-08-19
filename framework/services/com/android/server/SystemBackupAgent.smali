.class public Lcom/android/server/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 9
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService;

    .line 49
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    aput-object v2, v0, v3

    const-string v2, "/data/system/wallpaper_info.xml"

    aput-object v2, v0, v4

    .line 50
    .local v0, files:[Ljava/lang/String;
    if-eqz v1, :cond_29

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    .end local v0           #files:[Ljava/lang/String;
    const-string v2, "/data/system/wallpaper_info.xml"

    aput-object v2, v0, v3

    .line 56
    .restart local v0       #files:[Ljava/lang/String;
    :cond_29
    const-string v2, "wallpaper"

    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    invoke-direct {v3, p0, v0}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 58
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 12
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    const-string v2, "wallpaper"

    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "/data/data/com.android.settings/files/wallpaper"

    aput-object v5, v4, v6

    const-string v5, "/data/system/wallpaper_info.xml"

    aput-object v5, v4, v7

    invoke-direct {v3, p0, v4}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 66
    const-string v2, "system_files"

    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "/data/data/com.android.settings/files/wallpaper"

    aput-object v5, v4, v6

    invoke-direct {v3, p0, v4}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 70
    :try_start_27
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 72
    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService;

    .line 74
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService;
    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService;->settingsRestored()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_35} :catch_36

    .line 82
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_35
    return-void

    .line 75
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 78
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "SystemBackupAgent"

    const-string v3, "restore failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 80
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_35
.end method
