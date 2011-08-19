.class public Lcom/asus/UpdateLauncher/UpdateLauncher;
.super Landroid/app/Activity;
.source "UpdateLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;,
        Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sdcard_small_asus:Z

.field private static storage_small_asus:Z


# instance fields
.field private android_target_path:Ljava/lang/String;

.field private at_home:Z

.field private auto_count:I

.field private battery_dialog:Landroid/app/AlertDialog;

.field private bundle_exist:Z

.field private chooseItem:I

.field private choose_dialog:Landroid/app/AlertDialog;

.field private decide_dialog:Landroid/app/AlertDialog;

.field private error_code:I

.field private in_boot:Z

.field private invalidfile_dialog:Landroid/app/AlertDialog;

.field private final mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

.field private recovery_target_path:Ljava/lang/String;

.field private result_dialog:Landroid/app/AlertDialog;

.field private updateInfo_vec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    .line 86
    sput-boolean v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->storage_small_asus:Z

    .line 87
    sput-boolean v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->sdcard_small_asus:Z

    return-void

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    .line 52
    iput v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->chooseItem:I

    .line 59
    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->choose_dialog:Landroid/app/AlertDialog;

    .line 60
    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->decide_dialog:Landroid/app/AlertDialog;

    .line 61
    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->result_dialog:Landroid/app/AlertDialog;

    .line 62
    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->battery_dialog:Landroid/app/AlertDialog;

    .line 63
    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->invalidfile_dialog:Landroid/app/AlertDialog;

    .line 67
    iput-boolean v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->at_home:Z

    .line 69
    iput v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->auto_count:I

    .line 70
    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->android_target_path:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->recovery_target_path:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->in_boot:Z

    .line 85
    iput v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->error_code:I

    .line 985
    new-instance v0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;

    invoke-direct {v0, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$14;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mBootReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/asus/UpdateLauncher/UpdateLauncher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->auto_count:I

    return v0
.end method

.method static synthetic access$1100(Lcom/asus/UpdateLauncher/UpdateLauncher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->error_code:I

    return v0
.end method

.method static synthetic access$200(Lcom/asus/UpdateLauncher/UpdateLauncher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->setPauseUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/UpdateLauncher/UpdateLauncher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->activateUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/asus/UpdateLauncher/UpdateLauncher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->chooseItem:I

    return v0
.end method

.method static synthetic access$402(Lcom/asus/UpdateLauncher/UpdateLauncher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->chooseItem:I

    return p1
.end method

.method static synthetic access$500(Lcom/asus/UpdateLauncher/UpdateLauncher;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$602(Lcom/asus/UpdateLauncher/UpdateLauncher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->recovery_target_path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/asus/UpdateLauncher/UpdateLauncher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->android_target_path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/asus/UpdateLauncher/UpdateLauncher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->openSystemUpdateDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/asus/UpdateLauncher/UpdateLauncher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->check_update_file()Z

    move-result v0

    return v0
.end method

.method private activateUpdate()V
    .locals 8

    .prologue
    .line 533
    sget-boolean v5, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 535
    const-string v5, "UpdateLauncher"

    const-string v6, "activateUpdate"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    const-string v5, "updatelauncher"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IUpdateLauncherService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateLauncherService;

    move-result-object v3

    .line 538
    .local v3, service:Landroid/os/IUpdateLauncherService;
    if-eqz v3, :cond_1

    .line 540
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->get_battery_level()I

    move-result v2

    .line 541
    .local v2, mBatteryState:I
    const/16 v5, 0xf

    if-ge v2, v5, :cond_2

    .line 543
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->openBatteryDialog()V

    .line 571
    .end local v2           #mBatteryState:I
    :cond_1
    :goto_0
    return-void

    .line 549
    .restart local v2       #mBatteryState:I
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->android_target_path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    .local v4, target_f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 552
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v4           #target_f:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 567
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->invalidFileDialog()V

    goto :goto_0

    .line 554
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #target_f:Ljava/io/File;
    :cond_3
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--update_zip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->recovery_target_path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/os/IUpdateLauncherService;->setPath(Ljava/lang/String;)V

    .line 555
    new-instance v5, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    invoke-direct {v5, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    .line 556
    iget-object v5, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    invoke-virtual {v5}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;->clear()V

    .line 557
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 559
    iget-object v6, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    iget-object v5, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    iget-object v7, v5, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->android_path:Ljava/lang/String;

    iget-object v5, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    iget-object v5, v5, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->last_modified:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;->insert(Ljava/lang/String;Ljava/lang/String;)J

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 561
    :cond_4
    iget-object v5, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    invoke-virtual {v5}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;->close()V

    .line 562
    invoke-interface {v3}, Landroid/os/IUpdateLauncherService;->reboot()V

    .line 563
    invoke-virtual {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private check_update_file()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 691
    sget-boolean v2, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 693
    const-string v2, "UpdateLauncher"

    const-string v3, "check_update_file"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->get_update_file_vec()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v9

    .line 721
    :goto_0
    return v2

    .line 699
    :cond_1
    new-instance v2, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    invoke-direct {v2, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, myCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 703
    iget-object v3, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    const-string v4, "updatelauncher"

    new-array v5, v10, [Ljava/lang/String;

    const-string v2, "last_modified"

    aput-object v2, v5, v9

    const-string v6, "file_path=? AND (last_modified=? OR last_modified=?)"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    iget-object v2, v2, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->android_path:Ljava/lang/String;

    aput-object v2, v7, v9

    iget-object v2, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    iget-object v2, v2, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->last_modified:Ljava/lang/String;

    aput-object v2, v7, v10

    const/4 v2, 0x2

    const-string v8, "0"

    aput-object v8, v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 706
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 708
    :cond_2
    if-eqz v1, :cond_3

    .line 710
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 712
    :cond_3
    iget-object v2, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    invoke-virtual {v2}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;->close()V

    move v2, v10

    .line 713
    goto :goto_0

    .line 715
    :cond_4
    if-eqz v1, :cond_5

    .line 717
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 720
    :cond_6
    iget-object v2, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    invoke-virtual {v2}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;->close()V

    move v2, v9

    .line 721
    goto :goto_0
.end method

.method private dismiss_dialog()V
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->choose_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->choose_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->decide_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->decide_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->result_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 949
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->result_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 951
    :cond_2
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->battery_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 953
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->battery_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 955
    :cond_3
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->invalidfile_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 957
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->invalidfile_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 959
    :cond_4
    return-void
.end method

.method private get_battery_level()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 669
    const/4 v2, 0x0

    .line 670
    .local v2, mBatteryState:I
    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/asus/UpdateLauncher/UpdateLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 671
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "plugged"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 672
    .local v3, plugged:I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 674
    :cond_0
    const/16 v2, 0x64

    .line 682
    :goto_0
    sget-boolean v5, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 684
    const-string v5, "UpdateLauncher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBatteryState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_1
    return v2

    .line 678
    :cond_2
    const-string v5, "level"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 679
    .local v1, level:I
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 680
    .local v4, scale:I
    mul-int/lit8 v5, v1, 0x64

    div-int v2, v5, v4

    goto :goto_0
.end method

.method private get_error_str(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 963
    const-string v0, ""

    .line 964
    sparse-switch p1, :sswitch_data_0

    .line 975
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 978
    :goto_0
    return-object v0

    .line 967
    :sswitch_0
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 971
    :sswitch_1
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 964
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method private get_update_file_vec()Z
    .locals 39

    .prologue
    .line 228
    sget-boolean v32, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 230
    const-string v32, "UpdateLauncher"

    const-string v33, "get_update_file_vec"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->auto_count:I

    .line 233
    const/16 v30, 0x0

    .line 234
    .local v30, update_f:Ljava/io/File;
    const/16 v22, 0x0

    .line 235
    .local v22, storage_file_count:I
    const/16 v21, 0x0

    .line 236
    .local v21, storage_file2_count:I
    const/4 v15, 0x0

    .line 237
    .local v15, sdcard_file_count:I
    const/4 v14, 0x0

    .line 238
    .local v14, sdcard_file2_count:I
    const/16 v23, 0x0

    .line 239
    .local v23, storage_files:[Ljava/io/File;
    const/16 v24, 0x0

    .line 240
    .local v24, storage_files2:[Ljava/io/File;
    const/16 v16, 0x0

    .line 241
    .local v16, sdcard_files:[Ljava/io/File;
    const/16 v17, 0x0

    .line 242
    .local v17, sdcard_files2:[Ljava/io/File;
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->bundle_exist:Z

    .line 245
    :try_start_0
    new-instance v31, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v30           #update_f:Ljava/io/File;
    .local v31, update_f:Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v23

    .line 247
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v22, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 254
    :goto_0
    :try_start_2
    new-instance v30, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/ASUS/Update"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 255
    .end local v31           #update_f:Ljava/io/File;
    .restart local v30       #update_f:Ljava/io/File;
    :try_start_3
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v24

    .line 256
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v21, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object/from16 v31, v30

    .line 263
    .end local v30           #update_f:Ljava/io/File;
    .restart local v31       #update_f:Ljava/io/File;
    :goto_1
    :try_start_4
    new-instance v30, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 264
    .end local v31           #update_f:Ljava/io/File;
    .restart local v30       #update_f:Ljava/io/File;
    :try_start_5
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 265
    move-object/from16 v0, v16

    array-length v0, v0

    move v15, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v31, v30

    .line 272
    .end local v30           #update_f:Ljava/io/File;
    .restart local v31       #update_f:Ljava/io/File;
    :goto_2
    :try_start_6
    new-instance v30, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/ASUS/Update"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 273
    .end local v31           #update_f:Ljava/io/File;
    .restart local v30       #update_f:Ljava/io/File;
    :try_start_7
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 274
    move-object/from16 v0, v17

    array-length v0, v0

    move v14, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 279
    :goto_3
    add-int v32, v22, v21

    add-int v32, v32, v15

    add-int v26, v32, v14

    .line 280
    .local v26, total_count:I
    new-instance v5, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/ASUS_BUNDLE.zip"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v5, bundle_f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 283
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->bundle_exist:Z

    .line 289
    :cond_1
    const-string v32, "ro.product.name"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 290
    .local v12, product_name:Ljava/lang/String;
    const-string v28, ".zip"

    .line 291
    .local v28, update_extension:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v29

    .line 292
    .local v29, update_extension_length:I
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    .line 293
    new-instance v32, Ljava/util/Vector;

    invoke-direct/range {v32 .. v32}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    .line 295
    move/from16 v0, v26

    new-array v0, v0, [Ljava/io/File;

    move-object v4, v0

    .line 296
    .local v4, all_files:[Ljava/io/File;
    add-int v20, v22, v21

    .line 297
    .local v20, storage_all_count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 299
    aget-object v32, v23, v9

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-eqz v32, :cond_2

    aget-object v32, v23, v9

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "asus"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 301
    const/16 v32, 0x1

    sput-boolean v32, Lcom/asus/UpdateLauncher/UpdateLauncher;->storage_small_asus:Z

    .line 303
    :cond_2
    aget-object v32, v23, v9

    aput-object v32, v4, v9

    .line 297
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 249
    .end local v4           #all_files:[Ljava/io/File;
    .end local v5           #bundle_f:Ljava/io/File;
    .end local v9           #i:I
    .end local v12           #product_name:Ljava/lang/String;
    .end local v20           #storage_all_count:I
    .end local v26           #total_count:I
    .end local v28           #update_extension:Ljava/lang/String;
    .end local v29           #update_extension_length:I
    :catch_0
    move-exception v32

    :goto_5
    move-object/from16 v31, v30

    .end local v30           #update_f:Ljava/io/File;
    .restart local v31       #update_f:Ljava/io/File;
    goto/16 :goto_0

    .line 258
    :catch_1
    move-exception v32

    move-object/from16 v30, v31

    .end local v31           #update_f:Ljava/io/File;
    .restart local v30       #update_f:Ljava/io/File;
    :goto_6
    move-object/from16 v31, v30

    .end local v30           #update_f:Ljava/io/File;
    .restart local v31       #update_f:Ljava/io/File;
    goto/16 :goto_1

    .line 267
    :catch_2
    move-exception v32

    move-object/from16 v30, v31

    .end local v31           #update_f:Ljava/io/File;
    .restart local v30       #update_f:Ljava/io/File;
    :goto_7
    move-object/from16 v31, v30

    .end local v30           #update_f:Ljava/io/File;
    .restart local v31       #update_f:Ljava/io/File;
    goto/16 :goto_2

    .line 285
    .end local v31           #update_f:Ljava/io/File;
    .restart local v5       #bundle_f:Ljava/io/File;
    .restart local v26       #total_count:I
    .restart local v30       #update_f:Ljava/io/File;
    :cond_3
    if-nez v26, :cond_1

    .line 287
    const/16 v32, 0x0

    .line 438
    :goto_8
    return v32

    .line 305
    .restart local v4       #all_files:[Ljava/io/File;
    .restart local v9       #i:I
    .restart local v12       #product_name:Ljava/lang/String;
    .restart local v20       #storage_all_count:I
    .restart local v28       #update_extension:Ljava/lang/String;
    .restart local v29       #update_extension_length:I
    :cond_4
    move/from16 v9, v22

    :goto_9
    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 307
    sub-int v32, v9, v22

    aget-object v32, v24, v32

    aput-object v32, v4, v9

    .line 305
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 309
    :cond_5
    move/from16 v9, v20

    :goto_a
    add-int v32, v20, v15

    move v0, v9

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    .line 311
    sub-int v32, v9, v20

    aget-object v32, v16, v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-eqz v32, :cond_6

    sub-int v32, v9, v20

    aget-object v32, v16, v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "asus"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 313
    const/16 v32, 0x1

    sput-boolean v32, Lcom/asus/UpdateLauncher/UpdateLauncher;->sdcard_small_asus:Z

    .line 315
    :cond_6
    sub-int v32, v9, v20

    aget-object v32, v16, v32

    aput-object v32, v4, v9

    .line 309
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 317
    :cond_7
    add-int v9, v20, v15

    :goto_b
    move v0, v9

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 319
    add-int v32, v20, v15

    sub-int v32, v9, v32

    aget-object v32, v17, v32

    aput-object v32, v4, v9

    .line 317
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 322
    :cond_8
    const/16 v19, 0x0

    .line 323
    .local v19, splited_strs:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 324
    .local v13, product_version:[I
    sget-boolean v32, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    if-nez v32, :cond_9

    .line 326
    const-string v32, "ro.build.version.incremental"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 327
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_9

    .line 329
    const/16 v32, 0x1

    aget-object v32, v19, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->get_version(Ljava/lang/String;)[I

    move-result-object v13

    .line 332
    :cond_9
    const/4 v9, 0x0

    :goto_c
    move-object v0, v4

    array-length v0, v0

    move/from16 v32, v0

    move v0, v9

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 334
    new-instance v27, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    const/16 v32, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;Lcom/asus/UpdateLauncher/UpdateLauncher$1;)V

    .line 335
    .local v27, updateInfo:Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
    aget-object v32, v4, v9

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, file_name:Ljava/lang/String;
    aget-object v32, v4, v9

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->length()J

    move-result-wide v32

    const-wide/16 v34, 0x400

    div-long v6, v32, v34

    .line 337
    .local v6, byteSize:J
    const/16 v19, 0x0

    .line 338
    const-string v32, "-"

    move-object v0, v8

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 339
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .line 340
    .local v18, split_count:I
    const/16 v32, 0x3

    move/from16 v0, v18

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    .line 332
    :cond_a
    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 344
    :cond_b
    const/16 v32, 0x0

    aget-object v32, v19, v32

    move-object/from16 v0, v32

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_c

    const/16 v32, 0x0

    aget-object v32, v19, v32

    const-string v33, "OPEN_epad"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 348
    :cond_c
    const/16 v32, 0x1

    aget-object v32, v19, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->build_type:Ljava/lang/String;

    .line 349
    const/16 v25, 0x0

    .line 350
    .local v25, tager_version_num:Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v32, v19, v32

    if-eqz v32, :cond_a

    const/16 v32, 0x2

    aget-object v32, v19, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    if-ltz v32, :cond_a

    const/16 v32, 0x2

    aget-object v32, v19, v32

    const/16 v33, 0x2

    aget-object v33, v19, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    sub-int v33, v33, v29

    const/16 v34, 0x2

    aget-object v34, v19, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 352
    const/16 v32, 0x2

    aget-object v32, v19, v32

    const/16 v33, 0x0

    const/16 v34, 0x2

    aget-object v34, v19, v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->get_version(Ljava/lang/String;)[I

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->version_num:[I

    .line 359
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->version_num:[I

    move-object/from16 v32, v0

    if-eqz v32, :cond_a

    .line 363
    const/4 v11, 0x0

    .line 365
    .local v11, need_skip:Z
    sget-boolean v32, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    if-nez v32, :cond_e

    if-eqz v13, :cond_e

    .line 367
    const/4 v10, 0x0

    .local v10, j:I
    :goto_e
    const/16 v32, 0x5

    move v0, v10

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    .line 369
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->version_num:[I

    move-object/from16 v32, v0

    aget v32, v32, v10

    aget v33, v13, v10

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_10

    .line 371
    const/4 v11, 0x1

    .line 379
    :cond_d
    const/16 v32, 0x1

    move v0, v11

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    .line 384
    .end local v10           #j:I
    :cond_e
    aget-object v32, v4, v9

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->lastModified()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->last_modified:Ljava/lang/String;

    .line 385
    const-string v32, "%,d KB"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->size:Ljava/lang/String;

    .line 386
    aget-object v32, v4, v9

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, absolute_path:Ljava/lang/String;
    move-object v0, v3

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->android_path:Ljava/lang/String;

    .line 389
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v32

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_11

    const/16 v32, 0x0

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    move-object v0, v3

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 391
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "/sdcard"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v34

    move-object v0, v3

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->recovery_path:Ljava/lang/String;

    .line 392
    sget-boolean v32, Lcom/asus/UpdateLauncher/UpdateLauncher;->sdcard_small_asus:Z

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v32

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_f

    const/16 v32, 0x0

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, 0x6

    move-object v0, v3

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v34, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/ASUS/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 396
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->recovery_path:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "/ASUS/"

    const-string v34, "/asus/"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->recovery_path:Ljava/lang/String;

    .line 413
    :cond_f
    :goto_f
    const/16 v32, 0x0

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    move-object v0, v8

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->file_name:Ljava/lang/String;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 374
    .end local v3           #absolute_path:Ljava/lang/String;
    .restart local v10       #j:I
    :cond_10
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->version_num:[I

    move-object/from16 v32, v0

    aget v32, v32, v10

    aget v33, v13, v10

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_d

    .line 367
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e

    .line 399
    .end local v10           #j:I
    .restart local v3       #absolute_path:Ljava/lang/String;
    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v32

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_a

    const/16 v32, 0x0

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    move-object v0, v3

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 401
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "/data/media"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v34

    move-object v0, v3

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->recovery_path:Ljava/lang/String;

    .line 402
    sget-boolean v32, Lcom/asus/UpdateLauncher/UpdateLauncher;->storage_small_asus:Z

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v32

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_f

    const/16 v32, 0x0

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, 0x6

    move-object v0, v3

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v34, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/ASUS/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 406
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->recovery_path:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "/ASUS/"

    const-string v34, "/asus/"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->recovery_path:Ljava/lang/String;

    goto/16 :goto_f

    .line 416
    .end local v3           #absolute_path:Ljava/lang/String;
    .end local v6           #byteSize:J
    .end local v8           #file_name:Ljava/lang/String;
    .end local v11           #need_skip:Z
    .end local v18           #split_count:I
    .end local v25           #tager_version_num:Ljava/lang/String;
    .end local v27           #updateInfo:Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->bundle_exist:Z

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    .line 418
    new-instance v27, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    const/16 v32, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;Lcom/asus/UpdateLauncher/UpdateLauncher$1;)V

    .line 419
    .restart local v27       #updateInfo:Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 420
    .restart local v8       #file_name:Ljava/lang/String;
    const/16 v32, 0x0

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    move-object v0, v8

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->file_name:Ljava/lang/String;

    .line 421
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->last_modified:Ljava/lang/String;

    .line 422
    const-string v32, "%,d KB"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v35

    const-wide/16 v37, 0x400

    div-long v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->size:Ljava/lang/String;

    .line 423
    const/16 v32, 0x5

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->version_num:[I

    .line 424
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_10
    const/16 v32, 0x5

    move v0, v10

    move/from16 v1, v32

    if-ge v0, v1, :cond_13

    .line 426
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->version_num:[I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v33, v32, v10

    .line 424
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 428
    :cond_13
    const-string v32, "ro.build.type"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->build_type:Ljava/lang/String;

    .line 429
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 430
    .restart local v3       #absolute_path:Ljava/lang/String;
    move-object v0, v3

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->android_path:Ljava/lang/String;

    .line 431
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "/sdcard"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v34

    move-object v0, v3

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->recovery_path:Ljava/lang/String;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 434
    .end local v3           #absolute_path:Ljava/lang/String;
    .end local v8           #file_name:Ljava/lang/String;
    .end local v10           #j:I
    .end local v27           #updateInfo:Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/Vector;->size()I

    move-result v32

    if-nez v32, :cond_15

    .line 436
    const/16 v32, 0x0

    goto/16 :goto_8

    .line 438
    :cond_15
    const/16 v32, 0x1

    goto/16 :goto_8

    .line 276
    .end local v4           #all_files:[Ljava/io/File;
    .end local v5           #bundle_f:Ljava/io/File;
    .end local v9           #i:I
    .end local v12           #product_name:Ljava/lang/String;
    .end local v13           #product_version:[I
    .end local v19           #splited_strs:[Ljava/lang/String;
    .end local v20           #storage_all_count:I
    .end local v26           #total_count:I
    .end local v28           #update_extension:Ljava/lang/String;
    .end local v29           #update_extension_length:I
    .end local v30           #update_f:Ljava/io/File;
    .restart local v31       #update_f:Ljava/io/File;
    :catch_3
    move-exception v32

    move-object/from16 v30, v31

    .end local v31           #update_f:Ljava/io/File;
    .restart local v30       #update_f:Ljava/io/File;
    goto/16 :goto_3

    :catch_4
    move-exception v32

    goto/16 :goto_3

    .line 267
    :catch_5
    move-exception v32

    goto/16 :goto_7

    .line 258
    :catch_6
    move-exception v32

    goto/16 :goto_6

    .line 249
    .end local v30           #update_f:Ljava/io/File;
    .restart local v31       #update_f:Ljava/io/File;
    :catch_7
    move-exception v32

    move-object/from16 v30, v31

    .end local v31           #update_f:Ljava/io/File;
    .restart local v30       #update_f:Ljava/io/File;
    goto/16 :goto_5
.end method

.method private get_version(Ljava/lang/String;)[I
    .locals 14
    .parameter "version_str"

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 181
    const/4 v8, 0x0

    .line 182
    .local v8, version_splited_strs:[Ljava/lang/String;
    const-string v9, "\\."

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 183
    array-length v5, v8

    .line 184
    .local v5, split_count:I
    const/4 v6, 0x5

    .line 185
    .local v6, target_version_count:I
    new-array v7, v11, [I

    .line 186
    .local v7, version_num:[I
    const-string v0, "_auto"

    .line 187
    .local v0, auto_extension:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 189
    .local v1, auto_extension_length:I
    if-eq v5, v11, :cond_0

    .line 191
    const/4 v9, 0x4

    if-ne v5, v9, :cond_2

    .line 193
    add-int/lit8 v6, v6, -0x1

    .line 194
    aput v10, v7, v6

    .line 201
    :cond_0
    const/4 v3, 0x0

    .line 203
    .local v3, get_auto:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 207
    sub-int v9, v6, v12

    if-ne v4, v9, :cond_1

    :try_start_0
    aget-object v9, v8, v4

    if-eqz v9, :cond_1

    aget-object v9, v8, v4

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1

    aget-object v9, v8, v4

    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v1

    aget-object v11, v8, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 209
    aget-object v9, v8, v4

    const/4 v10, 0x0

    aget-object v11, v8, v4

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 210
    const/4 v3, 0x1

    .line 212
    :cond_1
    aget-object v9, v8, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #get_auto:Z
    .end local v4           #j:I
    :cond_2
    move-object v9, v13

    .line 223
    :goto_1
    return-object v9

    .line 214
    .restart local v3       #get_auto:Z
    .restart local v4       #j:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .local v2, e:Ljava/lang/Exception;
    move-object v9, v13

    .line 216
    goto :goto_1

    .line 219
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    if-ne v3, v12, :cond_4

    .line 221
    iget v9, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->auto_count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->auto_count:I

    :cond_4
    move-object v9, v7

    .line 223
    goto :goto_1
.end method

.method private invalidFileDialog()V
    .locals 3

    .prologue
    .line 504
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 506
    const-string v0, "UpdateLauncher"

    const-string v1, "inValidFileDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030003

    new-instance v2, Lcom/asus/UpdateLauncher/UpdateLauncher$2;

    invoke-direct {v2, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$2;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/asus/UpdateLauncher/UpdateLauncher$1;

    invoke-direct {v1, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$1;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->invalidfile_dialog:Landroid/app/AlertDialog;

    .line 528
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->invalidfile_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 529
    return-void
.end method

.method private openBatteryDialog()V
    .locals 3

    .prologue
    .line 640
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 642
    const-string v0, "UpdateLauncher"

    const-string v1, "openBatteryDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030003

    new-instance v2, Lcom/asus/UpdateLauncher/UpdateLauncher$9;

    invoke-direct {v2, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$9;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/asus/UpdateLauncher/UpdateLauncher$8;

    invoke-direct {v1, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$8;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->battery_dialog:Landroid/app/AlertDialog;

    .line 664
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->battery_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 665
    return-void
.end method

.method private openResultDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "error_str"

    .prologue
    .line 613
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 615
    const-string v0, "UpdateLauncher"

    const-string v1, "openResultDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030003

    new-instance v2, Lcom/asus/UpdateLauncher/UpdateLauncher$7;

    invoke-direct {v2, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$7;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/asus/UpdateLauncher/UpdateLauncher$6;

    invoke-direct {v1, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$6;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->result_dialog:Landroid/app/AlertDialog;

    .line 635
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->result_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 636
    return-void
.end method

.method private openSystemUpdateDialog()V
    .locals 3

    .prologue
    .line 575
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 577
    const-string v0, "UpdateLauncher"

    const-string v1, "openSystemUpdateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030003

    new-instance v2, Lcom/asus/UpdateLauncher/UpdateLauncher$5;

    invoke-direct {v2, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$5;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030006

    new-instance v2, Lcom/asus/UpdateLauncher/UpdateLauncher$4;

    invoke-direct {v2, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$4;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/asus/UpdateLauncher/UpdateLauncher$3;

    invoke-direct {v1, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$3;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->decide_dialog:Landroid/app/AlertDialog;

    .line 608
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->decide_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 609
    return-void
.end method

.method private setPauseUpdate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 478
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 480
    const-string v0, "UpdateLauncher"

    const-string v1, "setPauseUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 484
    new-instance v1, Landroid/app/Notification;

    const v2, 0x1080078

    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 486
    invoke-virtual {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 487
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 493
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/asus/UpdateLauncher/UpdateNotify;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 494
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 495
    const-string v7, "REASON"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 497
    invoke-static {p0, v9, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 498
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 499
    sget v2, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->UPDATELAUNCHER_INDEX:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 500
    return-void
.end method

.method private showResult()V
    .locals 5

    .prologue
    .line 443
    sget-boolean v3, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 445
    const-string v3, "UpdateLauncher"

    const-string v4, "showResult"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    const-string v3, "updatelauncher"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IUpdateLauncherService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateLauncherService;

    move-result-object v2

    .line 448
    .local v2, service:Landroid/os/IUpdateLauncherService;
    const/4 v3, 0x0

    iput v3, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->error_code:I

    .line 451
    :try_start_0
    invoke-interface {v2}, Landroid/os/IUpdateLauncherService;->getResult()I

    move-result v3

    iput v3, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->error_code:I

    .line 452
    iget v3, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->error_code:I

    if-gez v3, :cond_1

    .line 454
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 459
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->finish()V

    .line 475
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 462
    :cond_1
    const-string v1, ""

    .line 463
    .local v1, error_str:Ljava/lang/String;
    iget v3, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->error_code:I

    if-nez v3, :cond_2

    .line 465
    const v3, 0x7f030009

    invoke-virtual {p0, v3}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 474
    :goto_1
    invoke-direct {p0, v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->openResultDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_2
    new-instance v3, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    invoke-direct {v3, p0}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    .line 470
    iget-object v3, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    invoke-virtual {v3}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;->clear()V

    .line 471
    iget-object v3, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mOpenHelper:Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;

    invoke-virtual {v3}, Lcom/asus/UpdateLauncher/UpdateLauncher$DatabaseHelper;->close()V

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f03000b

    invoke-virtual {p0, v4}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->error_code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->error_code:I

    invoke-direct {p0, v4}, Lcom/asus/UpdateLauncher/UpdateLauncher;->get_error_str(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f03000c

    invoke-virtual {p0, v4}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 913
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 918
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 915
    :pswitch_0
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->setPauseUpdate()V

    .line 916
    invoke-virtual {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->finish()V

    goto :goto_0

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method need_switch(Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;)Z
    .locals 8
    .parameter "first_info"
    .parameter "second_info"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 855
    iget-object v1, p1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->build_type:Ljava/lang/String;

    .line 856
    .local v1, first_build_type:Ljava/lang/String;
    iget-object v3, p2, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->build_type:Ljava/lang/String;

    .line 857
    .local v3, second_build_type:Ljava/lang/String;
    const-string v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, build_type:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    :cond_1
    move v4, v7

    .line 874
    :goto_0
    return v4

    .line 863
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v4, 0x5

    if-ge v2, v4, :cond_5

    .line 865
    iget-object v4, p1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->version_num:[I

    aget v4, v4, v2

    iget-object v5, p2, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->version_num:[I

    aget v5, v5, v2

    if-ge v4, v5, :cond_3

    move v4, v7

    .line 867
    goto :goto_0

    .line 869
    :cond_3
    iget-object v4, p1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->version_num:[I

    aget v4, v4, v2

    iget-object v5, p2, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->version_num:[I

    aget v5, v5, v2

    if-le v4, v5, :cond_4

    move v4, v6

    .line 871
    goto :goto_0

    .line 863
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v4, v6

    .line 874
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "savedInstanceState"

    .prologue
    .line 726
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 727
    sget-boolean v22, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 729
    const-string v22, "UpdateLauncher"

    const-string v23, "onCreate"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 732
    .local v16, sIntentFilter:Landroid/content/IntentFilter;
    const-string v22, "com.asus.UpdateLauncher.boot"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mBootReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/asus/UpdateLauncher/UpdateLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 734
    const-string v22, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/NotificationManager;

    .line 735
    .local v21, updateNotiManager:Landroid/app/NotificationManager;
    sget v22, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->UPDATELAUNCHER_INDEX:I

    invoke-virtual/range {v21 .. v22}, Landroid/app/NotificationManager;->cancel(I)V

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 737
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 738
    .local v5, bundle:Landroid/os/Bundle;
    const-string v22, "REASON"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 739
    .local v15, reason:I
    if-nez v15, :cond_1

    .line 741
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->in_boot:Z

    .line 742
    invoke-direct/range {p0 .. p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->showResult()V

    .line 850
    .end local p1
    :goto_0
    return-void

    .line 746
    .restart local p1
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->check_update_file()Z

    move-result v22

    if-nez v22, :cond_2

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->finish()V

    goto :goto_0

    .line 752
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->auto_count:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->recovery_path:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->recovery_target_path:Ljava/lang/String;

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->android_path:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->android_target_path:Ljava/lang/String;

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->activateUpdate()V

    goto :goto_0

    .line 760
    .restart local p1
    :cond_3
    const/16 v22, 0x1

    move v0, v15

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->setPauseUpdate()V

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->finish()V

    goto :goto_0

    .line 767
    :cond_4
    const/4 v4, 0x0

    .line 768
    .local v4, START_POS:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->bundle_exist:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 770
    add-int/lit8 v4, v4, 0x1

    .line 772
    :cond_5
    move v10, v4

    .end local v4           #START_POS:I
    .end local p1
    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 774
    move v13, v10

    .local v13, j:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move v0, v13

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/asus/UpdateLauncher/UpdateLauncher;->need_switch(Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    .line 779
    .local v20, updateInfo:Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 774
    .end local v20           #updateInfo:Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 772
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 784
    .end local v13           #j:I
    :cond_8
    const/4 v12, 0x0

    .line 785
    .local v12, item_array:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v12, v0

    .line 786
    const-string v18, ""

    .line 788
    .local v18, space_show:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 790
    .local v6, current_display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v22

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 792
    const/16 v17, 0x16

    .line 798
    .local v17, space_count:I
    :goto_3
    const/4 v10, 0x0

    :goto_4
    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 800
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&nbsp"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 798
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 796
    .end local v17           #space_count:I
    :cond_9
    const/16 v17, 0x3

    .restart local v17       #space_count:I
    goto :goto_3

    .line 802
    :cond_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 803
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v22, "yyyy/MM/dd HH:mm:ss"

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 804
    .local v8, dateFormat:Ljava/text/DateFormat;
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->updateInfo_vec:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    .line 810
    .local v19, temp_updateInfo:Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
    :try_start_0
    new-instance v7, Ljava/util/Date;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->last_modified:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object v0, v7

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 811
    .local v7, date:Ljava/util/Date;
    invoke-virtual {v8, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 817
    .end local v7           #date:Ljava/util/Date;
    .local v14, last_modified:Ljava/lang/String;
    :goto_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<small>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->file_name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "<br><font color="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "#999999"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ">"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->size:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "</font></"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "small"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ">"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    aput-object v22, v12, v10

    .line 804
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 813
    .end local v14           #last_modified:Ljava/lang/String;
    :catch_0
    move-exception v22

    move-object/from16 v9, v22

    .line 815
    .local v9, e:Ljava/lang/Exception;
    const-string v14, ""

    .restart local v14       #last_modified:Ljava/lang/String;
    goto :goto_6

    .line 819
    .end local v9           #e:Ljava/lang/Exception;
    .end local v14           #last_modified:Ljava/lang/String;
    .end local v19           #temp_updateInfo:Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;
    :cond_b
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f03000e

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->chooseItem:I

    move/from16 v23, v0

    new-instance v24, Lcom/asus/UpdateLauncher/UpdateLauncher$13;

    invoke-direct/range {v24 .. v25}, Lcom/asus/UpdateLauncher/UpdateLauncher$13;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    move-object/from16 v0, v22

    move-object v1, v12

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const-string v23, "OK"

    new-instance v24, Lcom/asus/UpdateLauncher/UpdateLauncher$12;

    invoke-direct/range {v24 .. v25}, Lcom/asus/UpdateLauncher/UpdateLauncher$12;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const-string v23, "Cancel"

    new-instance v24, Lcom/asus/UpdateLauncher/UpdateLauncher$11;

    invoke-direct/range {v24 .. v25}, Lcom/asus/UpdateLauncher/UpdateLauncher$11;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    new-instance v23, Lcom/asus/UpdateLauncher/UpdateLauncher$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/asus/UpdateLauncher/UpdateLauncher$10;-><init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/UpdateLauncher/UpdateLauncher;->choose_dialog:Landroid/app/AlertDialog;

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->choose_dialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 923
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 924
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 926
    const-string v0, "UpdateLauncher"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 929
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->dismiss_dialog()V

    .line 930
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 931
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 932
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 933
    const-string v0, "com.asus.UpdateLauncher.activity"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    invoke-virtual {p0, v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->sendBroadcast(Landroid/content/Intent;)V

    .line 935
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 897
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 898
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    if-ne v0, v2, :cond_0

    .line 900
    const-string v0, "UpdateLauncher"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    iget-boolean v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->at_home:Z

    if-ne v0, v2, :cond_1

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->at_home:Z

    .line 905
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 906
    sget v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->UPDATELAUNCHER_INDEX:I

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 908
    :cond_1
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 880
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 881
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncher;->DEBUG:Z

    if-ne v0, v2, :cond_0

    .line 883
    const-string v0, "UpdateLauncher"

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    iget-boolean v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->at_home:Z

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->in_boot:Z

    if-ne v0, v2, :cond_2

    .line 893
    :cond_1
    :goto_0
    return-void

    .line 890
    :cond_2
    iput-boolean v2, p0, Lcom/asus/UpdateLauncher/UpdateLauncher;->at_home:Z

    .line 891
    invoke-direct {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->setPauseUpdate()V

    .line 892
    invoke-virtual {p0}, Lcom/asus/UpdateLauncher/UpdateLauncher;->finish()V

    goto :goto_0
.end method
