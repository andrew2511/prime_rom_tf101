.class Lcom/android/server/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_DIR:Ljava/io/File;

.field static final WALLPAPER_FILE:Ljava/io/File;


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mHeight:I

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mImageWallpaperComponent:Landroid/content/ComponentName;

.field mLastDiedTime:J

.field mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

.field mName:Ljava/lang/String;

.field mNextWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

.field private final mWallpaperObserver:Landroid/os/FileObserver;

.field mWallpaperUpdating:Z

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 87
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.settings/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    .line 90
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 294
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 105
    new-instance v0, Lcom/android/server/WallpaperManagerService$1;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x708

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/WallpaperManagerService$1;-><init>(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    .line 131
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 132
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 153
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/service/wallpaper/ImageWallpaper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    .line 296
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 297
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 299
    new-instance v0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    .line 300
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 301
    sget-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 302
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 303
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WallpaperManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WallpaperManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .parameter "permission"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 626
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_2f
    return-void
.end method

.method private loadSettingsLocked()V
    .registers 20

    .prologue
    .line 673
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v8

    .line 674
    .local v8, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v10, 0x0

    .line 675
    .local v10, stream:Ljava/io/FileInputStream;
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 676
    .local v7, file:Ljava/io/File;
    const/4 v12, 0x0

    .line 678
    .local v12, success:Z
    :try_start_a
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_f} :catch_f2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_f} :catch_11f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_f} :catch_14c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_179
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_f} :catch_1a6

    .line 679
    .end local v10           #stream:Ljava/io/FileInputStream;
    .local v11, stream:Ljava/io/FileInputStream;
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 680
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v16, 0x0

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 684
    :cond_1c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 685
    .local v14, type:I
    const/16 v16, 0x2

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_90

    .line 686
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 687
    .local v13, tag:Ljava/lang/String;
    const-string v16, "wp"

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_90

    .line 688
    const/16 v16, 0x0

    const-string v17, "width"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 689
    const/16 v16, 0x0

    const-string v17, "height"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 690
    const/16 v16, 0x0

    const-string v17, "name"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 691
    const/16 v16, 0x0

    const-string v17, "component"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, comp:Ljava/lang/String;
    if-eqz v4, :cond_ef

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    :goto_8a
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_90
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_90} :catch_1ec
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_90} :catch_1e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_90} :catch_1e0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_90} :catch_1db
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_90} :catch_1d6

    .line 704
    .end local v4           #comp:Ljava/lang/String;
    .end local v13           #tag:Ljava/lang/String;
    :cond_90
    const/16 v16, 0x1

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_1c

    .line 705
    const/4 v12, 0x1

    move-object v10, v11

    .line 718
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #stream:Ljava/io/FileInputStream;
    .end local v14           #type:I
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :goto_99
    if-eqz v10, :cond_9e

    .line 719
    :try_start_9b
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_1d3

    .line 725
    :cond_9e
    :goto_9e
    if-nez v12, :cond_b8

    .line 726
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 727
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 728
    const-string v16, ""

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 732
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "window"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowManager;

    .line 733
    .local v15, wm:Landroid/view/WindowManager;
    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 734
    .local v5, d:Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v3

    .line 735
    .local v3, baseSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_de

    .line 736
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 738
    :cond_de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_ee

    .line 739
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 741
    :cond_ee
    return-void

    .line 692
    .end local v3           #baseSize:I
    .end local v5           #d:Landroid/view/Display;
    .end local v10           #stream:Ljava/io/FileInputStream;
    .end local v15           #wm:Landroid/view/WindowManager;
    .restart local v4       #comp:Ljava/lang/String;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v14       #type:I
    :cond_ef
    const/16 v16, 0x0

    goto :goto_8a

    .line 706
    .end local v4           #comp:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #stream:Ljava/io/FileInputStream;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #type:I
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :catch_f2
    move-exception v16

    move-object/from16 v6, v16

    .line 707
    .local v6, e:Ljava/lang/NullPointerException;
    :goto_f5
    const-string v16, "WallpaperService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    .line 708
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_11f
    move-exception v16

    move-object/from16 v6, v16

    .line 709
    .local v6, e:Ljava/lang/NumberFormatException;
    :goto_122
    const-string v16, "WallpaperService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    .line 710
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :catch_14c
    move-exception v16

    move-object/from16 v6, v16

    .line 711
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_14f
    const-string v16, "WallpaperService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    .line 712
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_179
    move-exception v16

    move-object/from16 v6, v16

    .line 713
    .local v6, e:Ljava/io/IOException;
    :goto_17c
    const-string v16, "WallpaperService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    .line 714
    .end local v6           #e:Ljava/io/IOException;
    :catch_1a6
    move-exception v16

    move-object/from16 v6, v16

    .line 715
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_1a9
    const-string v16, "WallpaperService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    .line 721
    .end local v6           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1d3
    move-exception v16

    goto/16 :goto_9e

    .line 714
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_1d6
    move-exception v16

    move-object/from16 v6, v16

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto :goto_1a9

    .line 712
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_1db
    move-exception v16

    move-object/from16 v6, v16

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto :goto_17c

    .line 710
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_1e0
    move-exception v16

    move-object/from16 v6, v16

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_14f

    .line 708
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_1e6
    move-exception v16

    move-object/from16 v6, v16

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_122

    .line 706
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_1ec
    move-exception v16

    move-object/from16 v6, v16

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_f5
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .registers 5

    .prologue
    .line 632
    const-string v0, "/data/system/wallpaper_info.xml"

    .line 633
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private notifyCallbacksLocked()V
    .registers 5

    .prologue
    .line 609
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 610
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 612
    :try_start_9
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_29

    .line 610
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 619
    :cond_17
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 620
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 622
    return-void

    .line 613
    .end local v1           #intent:Landroid/content/Intent;
    :catch_29
    move-exception v3

    goto :goto_14
.end method

.method private saveSettingsLocked()V
    .registers 9

    .prologue
    .line 637
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 638
    .local v1, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 640
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_69

    .line 641
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 642
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 643
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 645
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 649
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_58

    .line 650
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    :cond_58
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 656
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 657
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_67} :catch_76

    move-object v3, v4

    .line 668
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :goto_68
    return-void

    .line 658
    :catch_69
    move-exception v5

    move-object v0, v5

    .line 660
    .local v0, e:Ljava/io/IOException;
    :goto_6b
    if-eqz v3, :cond_70

    .line 661
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_74

    .line 666
    :cond_70
    :goto_70
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_68

    .line 663
    :catch_74
    move-exception v5

    goto :goto_70

    .line 658
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :catch_76
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    goto :goto_6b
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;)V
    .registers 10
    .parameter "conn"

    .prologue
    .line 597
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iget v6, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 606
    :cond_f
    :goto_f
    return-void

    .line 600
    :catch_10
    move-exception v0

    move-object v7, v0

    .line 601
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "WallpaperService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    iget-boolean v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    if-nez v0, :cond_f

    .line 603
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    goto :goto_f
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    .registers 20
    .parameter "componentName"

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object v12, v0

    if-eqz v12, :cond_1f

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object v12, v0

    if-nez v12, :cond_11

    .line 476
    if-nez p1, :cond_1f

    .line 571
    :cond_10
    :goto_10
    return-void

    .line 481
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 489
    :cond_1f
    if-nez p1, :cond_3b

    .line 490
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x1040018

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, defaultComponent:Ljava/lang/String;
    if-eqz v3, :cond_33

    .line 494
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 497
    :cond_33
    if-nez p1, :cond_3b

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 505
    .end local v3           #defaultComponent:Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x1080

    move-object v0, v12

    move-object/from16 v1, p1

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v10

    .line 507
    .local v10, si:Landroid/content/pm/ServiceInfo;
    const-string v12, "android.permission.BIND_WALLPAPER"

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_92

    .line 508
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_74} :catch_74

    .line 568
    .end local v10           #si:Landroid/content/pm/ServiceInfo;
    :catch_74
    move-exception v12

    move-object v4, v12

    .line 569
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown component "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 513
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10       #si:Landroid/content/pm/ServiceInfo;
    :cond_92
    const/4 v11, 0x0

    .line 515
    .local v11, wi:Landroid/app/WallpaperInfo;
    :try_start_93
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.service.wallpaper.WallpaperService"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v6, intent:Landroid/content/Intent;
    if-eqz p1, :cond_11d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object v12, v0

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11d

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v12, v6, v13}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 520
    .local v8, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_ba
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_ec

    .line 521
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 522
    .local v9, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11a

    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_93 .. :try_end_d9} :catch_74

    move-result v12

    if-eqz v12, :cond_11a

    .line 525
    :try_start_dc
    new-instance v11, Landroid/app/WallpaperInfo;

    .end local v11           #wi:Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v11, v12, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_dc .. :try_end_ec} :catch_10a
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_ec} :catch_112
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_dc .. :try_end_ec} :catch_74

    .line 534
    .end local v9           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v11       #wi:Landroid/app/WallpaperInfo;
    :cond_ec
    if-nez v11, :cond_11d

    .line 535
    :try_start_ee
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Selected service is not a wallpaper: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 526
    .end local v11           #wi:Landroid/app/WallpaperInfo;
    .restart local v9       #rsi:Landroid/content/pm/ServiceInfo;
    :catch_10a
    move-exception v12

    move-object v4, v12

    .line 527
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 528
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_112
    move-exception v12

    move-object v4, v12

    .line 529
    .local v4, e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 520
    .end local v4           #e:Ljava/io/IOException;
    .restart local v11       #wi:Landroid/app/WallpaperInfo;
    :cond_11a
    add-int/lit8 v5, v5, 0x1

    goto :goto_ba

    .line 542
    .end local v5           #i:I
    .end local v8           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #rsi:Landroid/content/pm/ServiceInfo;
    :cond_11d
    new-instance v7, Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/server/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;)V

    .line 543
    .local v7, newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 544
    const-string v12, "android.intent.extra.client_label"

    const v13, 0x10403c0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    const-string v12, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v13, v0

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.SET_WALLPAPER"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x10403c1

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v6, v7, v13}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v12

    if-nez v12, :cond_185

    .line 553
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to bind service: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 557
    :cond_185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    .line 558
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 559
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 560
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J
    :try_end_19c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ee .. :try_end_19c} :catch_74

    .line 563
    :try_start_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    move-object v12, v0

    iget-object v13, v7, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v14, 0x7dd

    invoke-interface {v12, v13, v14}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_1a8
    .catch Landroid/os/RemoteException; {:try_start_19c .. :try_end_1a8} :catch_1aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19c .. :try_end_1a8} :catch_74

    goto/16 :goto_10

    .line 565
    :catch_1aa
    move-exception v12

    goto/16 :goto_10
.end method

.method public clearWallpaper()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked()V

    .line 333
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method clearWallpaperComponentLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 574
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 575
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2e

    .line 576
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_14

    .line 578
    :try_start_d
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_31

    .line 582
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 586
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_2f

    .line 589
    :goto_24
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 590
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 591
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 593
    :cond_2e
    return-void

    .line 587
    :catch_2f
    move-exception v0

    goto :goto_24

    .line 579
    :catch_31
    move-exception v0

    goto :goto_14
.end method

.method public clearWallpaperLocked()V
    .registers 7

    .prologue
    .line 337
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 338
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 339
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 341
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 343
    .local v2, ident:J
    const/4 v4, 0x0

    :try_start_10
    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_17

    .line 351
    :goto_13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    return-void

    .line 344
    :catch_17
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_18
    const-string v4, "WallpaperService"

    const-string v5, "Default wallpaper component not found!"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 351
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_20
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 865
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_33

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    :goto_32
    return-void

    .line 874
    :cond_33
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 875
    :try_start_36
    const-string v2, "Current Wallpaper Service state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    const-string v2, "  mWidth="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 877
    const-string v2, " mHeight="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 878
    const-string v2, "  mName="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    const-string v2, "  mWallpaperComponent="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 880
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_b1

    .line 881
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 882
    .local v0, conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    const-string v2, "  Wallpaper connection "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    const-string v2, "    mInfo.component="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 885
    const-string v2, "    mToken="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 886
    const-string v2, "    mService="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 887
    const-string v2, "    mEngine="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 888
    const-string v2, "    mLastDiedTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 889
    iget-wide v2, p0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 891
    .end local v0           #conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    :cond_b1
    monitor-exit v1

    goto :goto_32

    :catchall_b3
    move-exception v2

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_36 .. :try_end_b5} :catchall_b3

    throw v2
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 308
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 309
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 310
    return-void
.end method

.method public getHeightHint()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_3
    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    monitor-exit v0

    return v1

    .line 390
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .parameter "cb"
    .parameter "outParams"

    .prologue
    const/4 v5, 0x0

    .line 395
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 397
    if-eqz p2, :cond_14

    .line 398
    :try_start_6
    const-string v3, "width"

    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    const-string v3, "height"

    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    :cond_14
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 402
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 403
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_39
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_1e} :catch_2d

    move-result v3

    if-nez v3, :cond_24

    .line 404
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_39

    move-object v2, v5

    .line 411
    .end local v1           #f:Ljava/io/File;
    :goto_23
    return-object v2

    .line 406
    .restart local v1       #f:Ljava/io/File;
    :cond_24
    const/high16 v3, 0x1000

    :try_start_26
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_39
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_29} :catch_2d

    move-result-object v3

    :try_start_2a
    monitor-exit v2

    move-object v2, v3

    goto :goto_23

    .line 407
    .end local v1           #f:Ljava/io/File;
    :catch_2d
    move-exception v3

    move-object v0, v3

    .line 409
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "WallpaperService"

    const-string v4, "Error getting wallpaper"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    monitor-exit v2

    move-object v2, v5

    goto :goto_23

    .line 412
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_39
    move-exception v3

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_39

    throw v3
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_e

    .line 418
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    move-object v0, v1

    .line 420
    :goto_d
    return-object v0

    :cond_e
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    goto :goto_d

    .line 421
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getWidthHint()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_3
    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    monitor-exit v0

    return v1

    .line 384
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method restoreNamedResourceLocked()Z
    .registers 24

    .prologue
    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_156

    const-string v19, "res:"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_156

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 793
    .local v16, resName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 794
    .local v12, pkg:Ljava/lang/String;
    const/16 v19, 0x3a

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 795
    .local v7, colon:I
    if-lez v7, :cond_4c

    .line 796
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 799
    :cond_4c
    const/4 v11, 0x0

    .line 800
    .local v11, ident:Ljava/lang/String;
    const/16 v19, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 801
    .local v17, slash:I
    if-lez v17, :cond_63

    .line 802
    add-int/lit8 v19, v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 805
    :cond_63
    const/16 v18, 0x0

    .line 806
    .local v18, type:Ljava/lang/String;
    if-lez v7, :cond_7f

    if-lez v17, :cond_7f

    sub-int v19, v17, v7

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7f

    .line 807
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 810
    :cond_7f
    if-eqz v12, :cond_156

    if-eqz v11, :cond_156

    if-eqz v18, :cond_156

    .line 811
    const/4 v15, -0x1

    .line 812
    .local v15, resId:I
    const/4 v14, 0x0

    .line 813
    .local v14, res:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 815
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move-object v1, v12

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 816
    .local v6, c:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 817
    .local v13, r:Landroid/content/res/Resources;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 818
    if-nez v15, :cond_f0

    .line 819
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ident="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_88 .. :try_end_e4} :catchall_1d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_e4} :catch_200
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_88 .. :try_end_e4} :catch_189
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_e4} :catch_1b7

    .line 821
    const/16 v19, 0x0

    .line 846
    if-eqz v14, :cond_e9

    .line 848
    :try_start_e8
    throw v14
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_e9} :catch_1ee

    .line 851
    :cond_e9
    :goto_e9
    if-eqz v9, :cond_ef

    .line 852
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 854
    :try_start_ee
    throw v9
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_ef} :catch_186

    .line 860
    .end local v6           #c:Landroid/content/Context;
    .end local v7           #colon:I
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #ident:Ljava/lang/String;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v13           #r:Landroid/content/res/Resources;
    .end local v14           #res:Ljava/io/InputStream;
    .end local v15           #resId:I
    .end local v16           #resName:Ljava/lang/String;
    .end local v17           #slash:I
    .end local v18           #type:Ljava/lang/String;
    :cond_ef
    :goto_ef
    return v19

    .line 824
    .restart local v6       #c:Landroid/content/Context;
    .restart local v7       #colon:I
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #ident:Ljava/lang/String;
    .restart local v12       #pkg:Ljava/lang/String;
    .restart local v13       #r:Landroid/content/res/Resources;
    .restart local v14       #res:Ljava/io/InputStream;
    .restart local v15       #resId:I
    .restart local v16       #resName:Ljava/lang/String;
    .restart local v17       #slash:I
    .restart local v18       #type:Ljava/lang/String;
    :cond_f0
    :try_start_f0
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v14

    .line 825
    sget-object v19, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_101

    .line 826
    sget-object v19, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 828
    :cond_101
    new-instance v10, Ljava/io/FileOutputStream;

    sget-object v19, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10b
    .catchall {:try_start_f0 .. :try_end_10b} :catchall_1d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f0 .. :try_end_10b} :catch_200
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f0 .. :try_end_10b} :catch_189
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_10b} :catch_1b7

    .line 830
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    const v19, 0x8000

    :try_start_10e
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v5, v0

    .line 832
    .local v5, buffer:[B
    :goto_113
    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, amt:I
    if-lez v4, :cond_159

    .line 833
    const/16 v19, 0x0

    move-object v0, v10

    move-object v1, v5

    move/from16 v2, v19

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_123
    .catchall {:try_start_10e .. :try_end_123} :catchall_1f3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10e .. :try_end_123} :catch_124
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10e .. :try_end_123} :catch_1fb
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_123} :catch_1f6

    goto :goto_113

    .line 839
    .end local v4           #amt:I
    .end local v5           #buffer:[B
    :catch_124
    move-exception v19

    move-object/from16 v8, v19

    move-object v9, v10

    .line 840
    .end local v6           #c:Landroid/content/Context;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v13           #r:Landroid/content/res/Resources;
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :goto_128
    :try_start_128
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Package name "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_128 .. :try_end_149} :catchall_1d4

    .line 846
    if-eqz v14, :cond_14e

    .line 848
    :try_start_14b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_1e7

    .line 851
    :cond_14e
    :goto_14e
    if-eqz v9, :cond_156

    .line 852
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 854
    :try_start_153
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_1b5

    .line 860
    .end local v7           #colon:I
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #ident:Ljava/lang/String;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v14           #res:Ljava/io/InputStream;
    .end local v15           #resId:I
    .end local v16           #resName:Ljava/lang/String;
    .end local v17           #slash:I
    .end local v18           #type:Ljava/lang/String;
    :cond_156
    :goto_156
    const/16 v19, 0x0

    goto :goto_ef

    .line 837
    .restart local v4       #amt:I
    .restart local v5       #buffer:[B
    .restart local v6       #c:Landroid/content/Context;
    .restart local v7       #colon:I
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #ident:Ljava/lang/String;
    .restart local v12       #pkg:Ljava/lang/String;
    .restart local v13       #r:Landroid/content/res/Resources;
    .restart local v14       #res:Ljava/io/InputStream;
    .restart local v15       #resId:I
    .restart local v16       #resName:Ljava/lang/String;
    .restart local v17       #slash:I
    .restart local v18       #type:Ljava/lang/String;
    :cond_159
    :try_start_159
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Restored wallpaper: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catchall {:try_start_159 .. :try_end_175} :catchall_1f3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_159 .. :try_end_175} :catch_124
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_159 .. :try_end_175} :catch_1fb
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_175} :catch_1f6

    .line 838
    const/16 v19, 0x1

    .line 846
    if-eqz v14, :cond_17c

    .line 848
    :try_start_179
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_1f1

    .line 851
    :cond_17c
    :goto_17c
    if-eqz v10, :cond_ef

    .line 852
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 854
    :try_start_181
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_186

    goto/16 :goto_ef

    .line 855
    .end local v4           #amt:I
    .end local v5           #buffer:[B
    .end local v10           #fos:Ljava/io/FileOutputStream;
    :catch_186
    move-exception v20

    goto/16 :goto_ef

    .line 841
    .end local v6           #c:Landroid/content/Context;
    .end local v13           #r:Landroid/content/res/Resources;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_189
    move-exception v19

    move-object/from16 v8, v19

    .line 842
    .local v8, e:Landroid/content/res/Resources$NotFoundException;
    :goto_18c
    :try_start_18c
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Resource not found: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a7
    .catchall {:try_start_18c .. :try_end_1a7} :catchall_1d4

    .line 846
    if-eqz v14, :cond_1ac

    .line 848
    :try_start_1a9
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_1ea

    .line 851
    :cond_1ac
    :goto_1ac
    if-eqz v9, :cond_156

    .line 852
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 854
    :try_start_1b1
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b4
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_1b4} :catch_1b5

    goto :goto_156

    .line 855
    .end local v8           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1b5
    move-exception v19

    goto :goto_156

    .line 843
    :catch_1b7
    move-exception v19

    move-object/from16 v8, v19

    .line 844
    .local v8, e:Ljava/io/IOException;
    :goto_1ba
    :try_start_1ba
    const-string v19, "WallpaperService"

    const-string v20, "IOException while restoring wallpaper "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c6
    .catchall {:try_start_1ba .. :try_end_1c6} :catchall_1d4

    .line 846
    if-eqz v14, :cond_1cb

    .line 848
    :try_start_1c8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_1ec

    .line 851
    :cond_1cb
    :goto_1cb
    if-eqz v9, :cond_156

    .line 852
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 854
    :try_start_1d0
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d3} :catch_1b5

    goto :goto_156

    .line 846
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1d4
    move-exception v19

    :goto_1d5
    if-eqz v14, :cond_1da

    .line 848
    :try_start_1d7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_1e3

    .line 851
    :cond_1da
    :goto_1da
    if-eqz v9, :cond_1e2

    .line 852
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 854
    :try_start_1df
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e2} :catch_1e5

    .line 846
    :cond_1e2
    :goto_1e2
    throw v19

    .line 849
    :catch_1e3
    move-exception v20

    goto :goto_1da

    .line 855
    :catch_1e5
    move-exception v20

    goto :goto_1e2

    .line 849
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1e7
    move-exception v19

    goto/16 :goto_14e

    .local v8, e:Landroid/content/res/Resources$NotFoundException;
    :catch_1ea
    move-exception v19

    goto :goto_1ac

    .local v8, e:Ljava/io/IOException;
    :catch_1ec
    move-exception v19

    goto :goto_1cb

    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #c:Landroid/content/Context;
    .restart local v13       #r:Landroid/content/res/Resources;
    :catch_1ee
    move-exception v20

    goto/16 :goto_e9

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #amt:I
    .restart local v5       #buffer:[B
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_1f1
    move-exception v20

    goto :goto_17c

    .line 846
    .end local v4           #amt:I
    .end local v5           #buffer:[B
    :catchall_1f3
    move-exception v19

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_1d5

    .line 843
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_1f6
    move-exception v19

    move-object/from16 v8, v19

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_1ba

    .line 841
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_1fb
    move-exception v19

    move-object/from16 v8, v19

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_18c

    .line 839
    .end local v6           #c:Landroid/content/Context;
    .end local v13           #r:Landroid/content/res/Resources;
    :catch_200
    move-exception v19

    move-object/from16 v8, v19

    goto/16 :goto_128
.end method

.method public setDimensionHints(II)V
    .registers 5
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 358
    if-lez p1, :cond_9

    if-gtz p2, :cond_11

    .line 359
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_11
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_14
    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    if-ne p1, v1, :cond_1c

    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    if-eq p2, v1, :cond_37

    .line 364
    :cond_1c
    iput p1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 365
    iput p2, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 366
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 367
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_37

    .line 368
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_39

    if-eqz v1, :cond_37

    .line 370
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_39
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_3c

    .line 374
    :goto_34
    :try_start_34
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    .line 378
    :cond_37
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_39

    throw v1

    .line 372
    :catch_3c
    move-exception v1

    goto :goto_34
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "name"

    .prologue
    .line 427
    const-string v3, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v3}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 429
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    move-result-wide v0

    .line 431
    .local v0, ident:J
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 432
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1a

    .line 434
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    .line 435
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1f

    .line 439
    :cond_1a
    :try_start_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    monitor-exit v3

    return-object v2

    .line 439
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :catchall_1f
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 441
    .end local v0           #ident:J
    :catchall_24
    move-exception v4

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v4
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 459
    const-string v2, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 461
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_19

    move-result-wide v0

    .line 463
    .local v0, ident:J
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 465
    :try_start_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 467
    monitor-exit v2

    .line 468
    return-void

    .line 465
    :catchall_14
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 467
    .end local v0           #ident:J
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v3
.end method

.method settingsRestored()V
    .registers 6

    .prologue
    .line 747
    const/4 v1, 0x0

    .line 748
    .local v1, success:Z
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 749
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 750
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_56

    move-result v3

    if-nez v3, :cond_59

    .line 753
    :try_start_15
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1a} :catch_4f

    .line 760
    :goto_1a
    const/4 v1, 0x1

    .line 776
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_56

    .line 778
    if-nez v1, :cond_47

    .line 779
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore wallpaper: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 781
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 784
    :cond_47
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 785
    :try_start_4a
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 786
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_71

    .line 787
    return-void

    .line 754
    :catch_4f
    move-exception v3

    move-object v0, v3

    .line 758
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    :try_start_52
    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    goto :goto_1a

    .line 776
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_56
    move-exception v3

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_56

    throw v3

    .line 764
    :cond_59
    :try_start_59
    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 766
    const/4 v1, 0x1

    .line 772
    :goto_64
    if-eqz v1, :cond_1b

    .line 773
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    goto :goto_1b

    .line 769
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked()Z
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_56

    move-result v1

    goto :goto_64

    .line 786
    :catchall_71
    move-exception v3

    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v3
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 316
    :try_start_3
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_24
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_a

    .line 326
    :goto_8
    :try_start_8
    monitor-exit v2

    .line 327
    return-void

    .line 317
    :catch_a
    move-exception v3

    move-object v0, v3

    .line 318
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "WallpaperService"

    const-string v4, "Failure starting previous wallpaper"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_24

    .line 320
    const/4 v3, 0x0

    :try_start_14
    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_24
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    .line 321
    :catch_18
    move-exception v1

    .line 322
    .local v1, e2:Ljava/lang/RuntimeException;
    :try_start_19
    const-string v3, "WallpaperService"

    const-string v4, "Failure starting default wallpaper"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    goto :goto_8

    .line 326
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #e2:Ljava/lang/RuntimeException;
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw v3
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .parameter "name"

    .prologue
    .line 445
    if-nez p1, :cond_4

    const-string p1, ""

    .line 447
    :cond_4
    :try_start_4
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    const/high16 v3, 0x3800

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 449
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_e} :catch_10

    move-object v2, v1

    .line 454
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_f
    return-object v2

    .line 451
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 452
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "WallpaperService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    const/4 v2, 0x0

    goto :goto_f
.end method
