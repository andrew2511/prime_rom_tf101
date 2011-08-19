.class Lcom/android/server/usb/UsbDeviceSettingsManager;
.super Ljava/lang/Object;
.source "UsbDeviceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceSettingsManager$1;,
        Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;,
        Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;,
        Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDeviceSettingsManager"

.field private static final sSettingsFile:Ljava/io/File;


# instance fields
.field private final mAccessoryPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 65
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usb_device_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbDeviceSettingsManager;->sSettingsFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    .line 364
    new-instance v0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbDeviceSettingsManager;Lcom/android/server/usb/UsbDeviceSettingsManager$1;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;

    .line 367
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mContext:Landroid/content/Context;

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 369
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_39
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceSettingsManager;->readSettingsLocked()V

    .line 371
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_44

    .line 372
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 373
    return-void

    .line 371
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDeviceSettingsManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;)Z
    .registers 7
    .parameter "packageName"
    .parameter "filter"

    .prologue
    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    .line 701
    .local v2, test:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->matches(Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 702
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const/4 v0, 0x1

    goto :goto_b

    .line 706
    .end local v2           #test:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    :cond_24
    return v0
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;)Z
    .registers 7
    .parameter "packageName"
    .parameter "filter"

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;

    .line 690
    .local v2, test:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;->matches(Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 691
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const/4 v0, 0x1

    goto :goto_b

    .line 695
    .end local v2           #test:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    :cond_24
    return v0
.end method

.method private clearPackageDefaultsLocked(Ljava/lang/String;)Z
    .registers 8
    .parameter "packageName"

    .prologue
    .line 955
    const/4 v0, 0x0

    .line 956
    .local v0, cleared:Z
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 957
    :try_start_4
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 959
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 960
    .local v3, keys:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    array-length v5, v3

    if-ge v1, v5, :cond_31

    .line 961
    aget-object v2, v3, v1

    .line 962
    .local v2, key:Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 963
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const/4 v0, 0x1

    .line 960
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 968
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keys:[Ljava/lang/Object;
    :cond_31
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 970
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 971
    .restart local v3       #keys:[Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_44
    array-length v5, v3

    if-ge v1, v5, :cond_5e

    .line 972
    aget-object v2, v3, v1

    .line 973
    .restart local v2       #key:Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 974
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    const/4 v0, 0x1

    .line 971
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 979
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keys:[Ljava/lang/Object;
    :cond_5e
    monitor-exit v4

    return v0

    .line 980
    :catchall_60
    move-exception v5

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v5
.end method

.method private final getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 10
    .parameter "accessory"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 523
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 524
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_2b

    .line 525
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 526
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 527
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 530
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2b
    return-object v2
.end method

.method private final getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 10
    .parameter "device"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 508
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 509
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_2b

    .line 510
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 511
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, p1, v6}, Lcom/android/server/usb/UsbDeviceSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 512
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 515
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2b
    return-object v2
.end method

.method private handlePackageUpdate(Ljava/lang/String;)V
    .registers 11
    .parameter "packageName"

    .prologue
    .line 746
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 748
    const/4 v1, 0x0

    .line 751
    .local v1, changed:Z
    :try_start_4
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x81

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_12

    move-result-object v4

    .line 758
    .local v4, info:Landroid/content/pm/PackageInfo;
    :try_start_c
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 759
    .local v0, activities:[Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_31

    monitor-exit v5

    .line 776
    .end local v0           #activities:[Landroid/content/pm/ActivityInfo;
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :goto_11
    return-void

    .line 753
    :catch_12
    move-exception v6

    move-object v2, v6

    .line 754
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "UsbDeviceSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePackageUpdate could not find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    monitor-exit v5

    goto :goto_11

    .line 775
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_2e
    move-exception v6

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_2e

    throw v6

    .line 760
    .restart local v0       #activities:[Landroid/content/pm/ActivityInfo;
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    :cond_31
    const/4 v3, 0x0

    .local v3, i:I
    :goto_32
    :try_start_32
    array-length v6, v0

    if-ge v3, v6, :cond_4e

    .line 762
    aget-object v6, v0, v3

    const-string v7, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/usb/UsbDeviceSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 764
    const/4 v1, 0x1

    .line 766
    :cond_40
    aget-object v6, v0, v3

    const-string v7, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/usb/UsbDeviceSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 768
    const/4 v1, 0x1

    .line 760
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 772
    :cond_4e
    if-eqz v1, :cond_53

    .line 773
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceSettingsManager;->writeSettingsLocked()V

    .line 775
    :cond_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_32 .. :try_end_54} :catchall_2e

    goto :goto_11
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 12
    .parameter "packageName"
    .parameter "aInfo"
    .parameter "metaDataName"

    .prologue
    .line 711
    const/4 v3, 0x0

    .line 712
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    .line 715
    .local v0, changed:Z
    :try_start_2
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v5, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_36

    move-result-object v3

    .line 716
    if-nez v3, :cond_11

    const/4 v5, 0x0

    .line 738
    if-eqz v3, :cond_10

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 740
    :cond_10
    :goto_10
    return v5

    .line 718
    :cond_11
    :try_start_11
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 719
    :goto_14
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_76

    .line 720
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, tagName:Ljava/lang/String;
    const-string v5, "usb-device"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 722
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;

    move-result-object v2

    .line 723
    .local v2, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 724
    const/4 v0, 0x1

    .line 733
    .end local v2           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    :cond_32
    :goto_32
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_36

    goto :goto_14

    .line 735
    .end local v4           #tagName:Ljava/lang/String;
    :catch_36
    move-exception v5

    move-object v1, v5

    .line 736
    .local v1, e:Ljava/lang/Exception;
    :try_start_38
    const-string v5, "UsbDeviceSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_6f

    .line 738
    if-eqz v3, :cond_59

    .end local v1           #e:Ljava/lang/Exception;
    :goto_56
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_59
    move v5, v0

    .line 740
    goto :goto_10

    .line 727
    .restart local v4       #tagName:Ljava/lang/String;
    :cond_5b
    :try_start_5b
    const-string v5, "usb-accessory"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 728
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    move-result-object v2

    .line 729
    .local v2, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;)Z
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6a} :catch_36

    move-result v5

    if-eqz v5, :cond_32

    .line 730
    const/4 v0, 0x1

    goto :goto_32

    .line 738
    .end local v2           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    .end local v4           #tagName:Ljava/lang/String;
    :catchall_6f
    move-exception v5

    if-eqz v3, :cond_75

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_75
    throw v5

    :cond_76
    if-eqz v3, :cond_59

    goto :goto_56
.end method

.method private packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .registers 14
    .parameter "info"
    .parameter "metaDataName"
    .parameter "device"
    .parameter "accessory"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 469
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 471
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 473
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    :try_start_5
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 474
    if-nez v3, :cond_2c

    .line 475
    const-string v5, "UsbDeviceSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no meta-data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_98
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_73

    .line 499
    if-eqz v3, :cond_2a

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2a
    move v5, v8

    .line 501
    :goto_2b
    return v5

    .line 479
    :cond_2c
    :try_start_2c
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 480
    :goto_2f
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    if-eq v5, v6, :cond_9f

    .line 481
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, tagName:Ljava/lang/String;
    if-eqz p3, :cond_54

    const-string v5, "usb-device"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 483
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;

    move-result-object v2

    .line 484
    .local v2, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_98
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4a} :catch_73

    move-result v5

    if-eqz v5, :cond_6f

    .line 499
    if-eqz v3, :cond_52

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_52
    move v5, v6

    .line 485
    goto :goto_2b

    .line 488
    .end local v2           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    :cond_54
    if-eqz p4, :cond_6f

    :try_start_56
    const-string v5, "usb-accessory"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 489
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    move-result-object v2

    .line 490
    .local v2, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    invoke-virtual {v2, p4}, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_98
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_65} :catch_73

    move-result v5

    if-eqz v5, :cond_6f

    .line 499
    if-eqz v3, :cond_6d

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6d
    move v5, v6

    .line 491
    goto :goto_2b

    .line 494
    .end local v2           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    :cond_6f
    :try_start_6f
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_98
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_2f

    .line 496
    .end local v4           #tagName:Ljava/lang/String;
    :catch_73
    move-exception v5

    move-object v1, v5

    .line 497
    .local v1, e:Ljava/lang/Exception;
    :try_start_75
    const-string v5, "UsbDeviceSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_75 .. :try_end_91} :catchall_98

    .line 499
    if-eqz v3, :cond_96

    .end local v1           #e:Ljava/lang/Exception;
    :goto_93
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_96
    move v5, v8

    .line 501
    goto :goto_2b

    .line 499
    :catchall_98
    move-exception v5

    if-eqz v3, :cond_9e

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9e
    throw v5

    :cond_9f
    if-eqz v3, :cond_96

    goto :goto_93
.end method

.method private readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 379
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v0, :cond_18

    .line 380
    const-string v4, "package"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 381
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    :cond_18
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 386
    const-string v4, "usb-device"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 387
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;

    move-result-object v1

    .line 388
    .local v1, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v1           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    :cond_30
    :goto_30
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 394
    return-void

    .line 379
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 389
    :cond_37
    const-string v4, "usb-accessory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 390
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    move-result-object v1

    .line 391
    .local v1, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30
.end method

.method private readSettingsLocked()V
    .registers 8

    .prologue
    .line 397
    const/4 v2, 0x0

    .line 399
    .local v2, stream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v5, Lcom/android/server/usb/UsbDeviceSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_6a

    .line 400
    .end local v2           #stream:Ljava/io/FileInputStream;
    .local v3, stream:Ljava/io/FileInputStream;
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 401
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 403
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 404
    :goto_13
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_55

    .line 405
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, tagName:Ljava/lang/String;
    const-string v5, "preference"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 407
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_67
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_3e

    goto :goto_13

    .line 412
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tagName:Ljava/lang/String;
    :catch_2a
    move-exception v5

    move-object v0, v5

    move-object v2, v3

    .line 413
    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :goto_2d
    :try_start_2d
    const-string v5, "UsbDeviceSettingsManager"

    const-string v6, "settings file not found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_5c

    .line 418
    if-eqz v2, :cond_39

    .line 420
    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_53

    .line 425
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_39
    :goto_39
    return-void

    .line 409
    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    .restart local v4       #tagName:Ljava/lang/String;
    :cond_3a
    :try_start_3a
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_67
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3d} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_13

    .line 414
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tagName:Ljava/lang/String;
    :catch_3e
    move-exception v5

    move-object v0, v5

    move-object v2, v3

    .line 415
    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/lang/Exception;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :goto_41
    :try_start_41
    const-string v5, "UsbDeviceSettingsManager"

    const-string v6, "error reading settings file, deleting to start fresh"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    sget-object v5, Lcom/android/server/usb/UsbDeviceSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_5c

    .line 418
    if-eqz v2, :cond_39

    .line 420
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_39

    .line 421
    .end local v0           #e:Ljava/lang/Exception;
    :catch_53
    move-exception v5

    goto :goto_39

    .line 418
    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :cond_55
    if-eqz v3, :cond_5a

    .line 420
    :try_start_57
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_65

    :cond_5a
    :goto_5a
    move-object v2, v3

    .line 424
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_39

    .line 418
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_5c
    move-exception v5

    :goto_5d
    if-eqz v2, :cond_62

    .line 420
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    .line 418
    :cond_62
    :goto_62
    throw v5

    .line 421
    :catch_63
    move-exception v6

    goto :goto_62

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_65
    move-exception v5

    goto :goto_5a

    .line 418
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_67
    move-exception v5

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_5d

    .line 414
    :catch_6a
    move-exception v5

    move-object v0, v5

    goto :goto_41

    .line 412
    :catch_6d
    move-exception v5

    move-object v0, v5

    goto :goto_2d
.end method

.method private requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12
    .parameter "intent"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 811
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 815
    .local v4, uid:I
    :try_start_4
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 816
    .local v0, aInfo:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v4, :cond_53

    .line 817
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match caller\'s uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_32} :catch_32

    .line 820
    .end local v0           #aInfo:Landroid/content/pm/ApplicationInfo;
    :catch_32
    move-exception v5

    move-object v1, v5

    .line 821
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 824
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #aInfo:Landroid/content/pm/ApplicationInfo;
    :cond_53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 825
    .local v2, identity:J
    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.usb.UsbPermissionActivity"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const/high16 v5, 0x1000

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 828
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 829
    const-string v5, "package"

    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    const-string v5, "uid"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    :try_start_72
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_85
    .catch Landroid/content/ActivityNotFoundException; {:try_start_72 .. :try_end_77} :catch_7b

    .line 836
    :goto_77
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    return-void

    .line 833
    :catch_7b
    move-exception v5

    move-object v1, v5

    .line 834
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :try_start_7d
    const-string v5, "UsbDeviceSettingsManager"

    const-string v6, "unable to start UsbPermissionActivity"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_85

    goto :goto_77

    .line 836
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catchall_85
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .registers 20
    .parameter "intent"
    .parameter
    .parameter "defaultPackage"
    .parameter "device"
    .parameter "accessory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/hardware/usb/UsbAccessory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 589
    .local p2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 592
    .local v3, count:I
    if-nez v3, :cond_43

    .line 593
    if-eqz p5, :cond_38

    .line 594
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v10

    .line 595
    .local v10, uri:Ljava/lang/String;
    if-eqz v10, :cond_38

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_38

    .line 598
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 599
    .local v5, dialogIntent:Landroid/content/Intent;
    const-string v11, "com.android.systemui"

    const-string v12, "com.android.systemui.usb.UsbAccessoryUriActivity"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    const-string v11, "accessory"

    move-object v0, v5

    move-object v1, v11

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 603
    const-string v11, "uri"

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    :try_start_33
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_38} :catch_39

    .line 685
    .end local v5           #dialogIntent:Landroid/content/Intent;
    .end local v10           #uri:Ljava/lang/String;
    .end local p1
    :cond_38
    :goto_38
    return-void

    .line 606
    .restart local v5       #dialogIntent:Landroid/content/Intent;
    .restart local v10       #uri:Ljava/lang/String;
    .restart local p1
    :catch_39
    move-exception v11

    move-object v6, v11

    .line 607
    .local v6, e:Landroid/content/ActivityNotFoundException;
    const-string v11, "UsbDeviceSettingsManager"

    const-string v12, "unable to start UsbAccessoryUriActivity"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 616
    .end local v5           #dialogIntent:Landroid/content/Intent;
    .end local v6           #e:Landroid/content/ActivityNotFoundException;
    .end local v10           #uri:Ljava/lang/String;
    :cond_43
    const/4 v4, 0x0

    .line 617
    .local v4, defaultRI:Landroid/content/pm/ResolveInfo;
    const/4 v11, 0x1

    if-ne v3, v11, :cond_68

    if-nez p3, :cond_68

    .line 620
    const/4 v11, 0x0

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 621
    .local v8, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_68

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_68

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_68

    .line 624
    move-object v4, v8

    .line 628
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_68
    if-nez v4, :cond_8a

    if-eqz p3, :cond_8a

    .line 630
    const/4 v7, 0x0

    .local v7, i:I
    :goto_6d
    if-ge v7, v3, :cond_8a

    .line 631
    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 632
    .restart local v8       #rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_bc

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bc

    .line 634
    move-object v4, v8

    .line 640
    .end local v7           #i:I
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_8a
    if-eqz v4, :cond_cf

    .line 642
    if-eqz p4, :cond_bf

    .line 643
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    move-object/from16 v1, p4

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 650
    :cond_9b
    :goto_9b
    :try_start_9b
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 653
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9b .. :try_end_b0} :catch_b1

    goto :goto_38

    .line 654
    :catch_b1
    move-exception v11

    move-object v6, v11

    .line 655
    .restart local v6       #e:Landroid/content/ActivityNotFoundException;
    const-string v11, "UsbDeviceSettingsManager"

    const-string v12, "startActivity failed"

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 630
    .end local v6           #e:Landroid/content/ActivityNotFoundException;
    .restart local v7       #i:I
    .restart local v8       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    .line 644
    .end local v7           #i:I
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_bf
    if-eqz p5, :cond_9b

    .line 645
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    move-object/from16 v1, p5

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    goto :goto_9b

    .line 658
    :cond_cf
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 659
    .local v9, resolverIntent:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 661
    const/4 v11, 0x1

    if-ne v3, v11, :cond_12a

    .line 663
    const-string v11, "com.android.systemui"

    const-string v12, "com.android.systemui.usb.UsbConfirmActivity"

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v11, "rinfo"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v9, v11, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 667
    if-eqz p4, :cond_120

    .line 668
    const-string v11, "device"

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 680
    :goto_fd
    :try_start_fd
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_102
    .catch Landroid/content/ActivityNotFoundException; {:try_start_fd .. :try_end_102} :catch_104

    goto/16 :goto_38

    .line 681
    :catch_104
    move-exception v11

    move-object v6, v11

    .line 682
    .restart local v6       #e:Landroid/content/ActivityNotFoundException;
    const-string v11, "UsbDeviceSettingsManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unable to start activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 670
    .end local v6           #e:Landroid/content/ActivityNotFoundException;
    :cond_120
    const-string v11, "accessory"

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_fd

    .line 674
    .restart local p1
    :cond_12a
    const-string v11, "com.android.systemui"

    const-string v12, "com.android.systemui.usb.UsbResolverActivity"

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    const-string v11, "rlist"

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 677
    const-string v11, "android.intent.extra.INTENT"

    invoke-virtual {v9, v11, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_fd
.end method

.method private writeSettingsLocked()V
    .registers 11

    .prologue
    .line 428
    const/4 v2, 0x0

    .line 430
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v7, Lcom/android/server/usb/UsbDeviceSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 431
    .local v3, fstr:Ljava/io/FileOutputStream;
    const-string v7, "UsbDeviceSettingsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writing settings to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 433
    .local v6, str:Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 434
    .local v5, serializer:Lcom/android/internal/util/FastXmlSerializer;
    const-string v7, "utf-8"

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 435
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 436
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 437
    const/4 v7, 0x0

    const-string v8, "settings"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;

    .line 440
    .local v1, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    const/4 v8, 0x0

    const-string v9, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 443
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_77} :catch_78

    goto :goto_4e

    .line 459
    .end local v1           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    .end local v3           #fstr:Ljava/io/FileOutputStream;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #serializer:Lcom/android/internal/util/FastXmlSerializer;
    .end local v6           #str:Ljava/io/BufferedOutputStream;
    :catch_78
    move-exception v7

    move-object v0, v7

    .line 460
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "UsbDeviceSettingsManager"

    const-string v8, "error writing settings file, deleting to start fresh"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    sget-object v7, Lcom/android/server/usb/UsbDeviceSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 463
    .end local v0           #e:Ljava/lang/Exception;
    :goto_86
    return-void

    .line 446
    .restart local v3       #fstr:Ljava/io/FileOutputStream;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #serializer:Lcom/android/internal/util/FastXmlSerializer;
    .restart local v6       #str:Ljava/io/BufferedOutputStream;
    :cond_87
    :try_start_87
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_91
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_bb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    .line 447
    .local v1, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    const/4 v8, 0x0

    const-string v9, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 450
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_91

    .line 453
    .end local v1           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    :cond_bb
    const/4 v7, 0x0

    const-string v8, "settings"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    invoke-virtual {v5}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 456
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 457
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 458
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_cd} :catch_78

    goto :goto_86
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 8
    .parameter "accessory"

    .prologue
    .line 561
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "accessory"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 563
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_14
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 571
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    invoke-direct {v5, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 572
    .local v3, defaultPackage:Ljava/lang/String;
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_2d

    .line 574
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbDeviceSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 575
    return-void

    .line 572
    .end local v2           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #defaultPackage:Ljava/lang/String;
    :catchall_2d
    move-exception v4

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 4
    .parameter "accessory"

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 584
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 585
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbAccessory;)V
    .registers 5
    .parameter "accessory"

    .prologue
    .line 805
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 806
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_1f
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .parameter "device"

    .prologue
    .line 799
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 800
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_1f
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->clearPackageDefaultsLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 949
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceSettingsManager;->writeSettingsLocked()V

    .line 951
    :cond_c
    monitor-exit v0

    .line 952
    return-void

    .line 951
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .registers 8
    .parameter "device"

    .prologue
    .line 534
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "device"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 536
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 540
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_14
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 544
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;

    invoke-direct {v5, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 545
    .local v3, defaultPackage:Ljava/lang/String;
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_2d

    .line 547
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbDeviceSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 548
    return-void

    .line 545
    .end local v2           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #defaultPackage:Ljava/lang/String;
    :catchall_2d
    move-exception v4

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public deviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .registers 6
    .parameter "device"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 556
    const-string v1, "UsbDeviceSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbDeviceRemoved, sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 13
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 984
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 985
    :try_start_3
    const-string v7, "  Device permissions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 987
    .local v2, deviceName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 988
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 989
    .local v6, uidList:Landroid/util/SparseBooleanArray;
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 990
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_47
    if-ge v4, v1, :cond_6a

    .line 991
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 990
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 993
    :cond_6a
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 1013
    .end local v1           #count:I
    .end local v2           #deviceName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_70
    move-exception v7

    monitor-exit v8
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_70

    throw v7

    .line 995
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_73
    :try_start_73
    const-string v7, "  Accessory permissions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 997
    .local v0, accessory:Landroid/hardware/usb/UsbAccessory;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 999
    .restart local v6       #uidList:Landroid/util/SparseBooleanArray;
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1000
    .restart local v1       #count:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_b7
    if-ge v4, v1, :cond_da

    .line 1001
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1000
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 1003
    :cond_da
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_82

    .line 1005
    .end local v0           #accessory:Landroid/hardware/usb/UsbAccessory;
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v6           #uidList:Landroid/util/SparseBooleanArray;
    :cond_e0
    const-string v7, "  Device preferences:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ef
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_124

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;

    .line 1007
    .local v3, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ef

    .line 1009
    .end local v3           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    :cond_124
    const-string v7, "  Accessory preferences:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_133
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_168

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    .line 1011
    .local v3, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_133

    .line 1013
    .end local v3           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    :cond_168
    monitor-exit v8
    :try_end_169
    .catchall {:try_start_73 .. :try_end_169} :catchall_70

    .line 1014
    return-void
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6
    .parameter "accessory"
    .parameter "uid"

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 929
    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 930
    .local v0, uidList:Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_18

    .line 931
    new-instance v0, Landroid/util/SparseBooleanArray;

    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 932
    .restart local v0       #uidList:Landroid/util/SparseBooleanArray;
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    :cond_18
    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 935
    monitor-exit v1

    .line 936
    return-void

    .line 935
    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 7
    .parameter "device"
    .parameter "uid"

    .prologue
    .line 916
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 917
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, deviceName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 919
    .local v1, uidList:Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_1c

    .line 920
    new-instance v1, Landroid/util/SparseBooleanArray;

    .end local v1           #uidList:Landroid/util/SparseBooleanArray;
    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 921
    .restart local v1       #uidList:Landroid/util/SparseBooleanArray;
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    :cond_1c
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 924
    monitor-exit v2

    .line 925
    return-void

    .line 924
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_22
    move-exception v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v3
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    .line 939
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_4
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    monitor-exit v0

    move v0, v2

    .line 942
    :goto_12
    return v0

    .line 941
    :cond_13
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    monitor-exit v0

    move v0, v2

    goto :goto_12

    .line 942
    :cond_22
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_12

    .line 943
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 5
    .parameter "accessory"

    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 791
    .local v0, uidList:Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_11

    .line 792
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    .line 794
    :goto_10
    return v1

    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_10

    .line 795
    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 6
    .parameter "device"

    .prologue
    .line 779
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 781
    .local v0, uidList:Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_15

    .line 782
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    .line 784
    :goto_14
    return v1

    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_14

    .line 785
    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 8
    .parameter "accessory"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 861
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 864
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 865
    const-string v2, "accessory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 866
    const-string v2, "permission"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 868
    :try_start_16
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_1c} :catch_1d

    .line 877
    :goto_1c
    return-void

    .line 869
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 870
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "UsbDeviceSettingsManager"

    const-string v3, "requestPermission PendingIntent was cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 875
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_27
    const-string v2, "accessory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 876
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/usb/UsbDeviceSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1c
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 8
    .parameter "device"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 841
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 844
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 845
    const-string v2, "device"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 846
    const-string v2, "permission"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 848
    :try_start_16
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_1c} :catch_1d

    .line 858
    :goto_1c
    return-void

    .line 849
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 850
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "UsbDeviceSettingsManager"

    const-string v3, "requestPermission PendingIntent was cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 856
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_27
    const-string v2, "device"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 857
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/usb/UsbDeviceSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1c
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .registers 9
    .parameter "accessory"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 898
    new-instance v1, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 899
    .local v1, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    const/4 v0, 0x0

    .line 900
    .local v0, changed:Z
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 901
    if-nez p2, :cond_1f

    .line 902
    :try_start_d
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    move v0, v5

    .line 909
    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    .line 910
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceSettingsManager;->writeSettingsLocked()V

    .line 912
    :cond_1b
    monitor-exit v2

    .line 913
    return-void

    :cond_1d
    move v0, v4

    .line 902
    goto :goto_16

    .line 904
    :cond_1f
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    move v0, v5

    .line 905
    :goto_2c
    if-eqz v0, :cond_16

    .line 906
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 912
    :catchall_34
    move-exception v3

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw v3

    :cond_37
    move v0, v4

    .line 904
    goto :goto_2c
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .registers 9
    .parameter "device"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 880
    new-instance v1, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 881
    .local v1, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$DeviceFilter;
    const/4 v0, 0x0

    .line 882
    .local v0, changed:Z
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 883
    if-nez p2, :cond_1f

    .line 884
    :try_start_d
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    move v0, v5

    .line 891
    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    .line 892
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceSettingsManager;->writeSettingsLocked()V

    .line 894
    :cond_1b
    monitor-exit v2

    .line 895
    return-void

    :cond_1d
    move v0, v4

    .line 884
    goto :goto_16

    .line 886
    :cond_1f
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    move v0, v5

    .line 887
    :goto_2c
    if-eqz v0, :cond_16

    .line 888
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 894
    :catchall_34
    move-exception v3

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw v3

    :cond_37
    move v0, v4

    .line 886
    goto :goto_2c
.end method
