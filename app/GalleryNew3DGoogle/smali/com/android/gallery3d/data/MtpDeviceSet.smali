.class public Lcom/android/gallery3d/data/MtpDeviceSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "MtpDeviceSet.java"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mDeviceSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mMtpContext:Lcom/android/gallery3d/data/MtpContext;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MtpContext;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "mtpContext"

    .prologue
    .line 42
    invoke-static {}, Lcom/android/gallery3d/data/MtpDeviceSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    .line 43
    iput-object p2, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 44
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    const-string v1, "mtp://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 45
    iput-object p3, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    .line 46
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static getDeviceName(Lcom/android/gallery3d/data/MtpContext;I)Ljava/lang/String;
    .locals 6
    .parameter "mtpContext"
    .parameter "deviceId"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/android/gallery3d/data/MtpClient;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/data/MtpClient;->getDevice(I)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 74
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_0

    .line 75
    const-string v4, ""

    .line 83
    :goto_0
    return-object v4

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpDevice;->getDeviceInfo()Landroid/mtp/MtpDeviceInfo;

    move-result-object v1

    .line 78
    .local v1, info:Landroid/mtp/MtpDeviceInfo;
    if-nez v1, :cond_1

    .line 79
    const-string v4, ""

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v1}, Landroid/mtp/MtpDeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, manufacturer:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/mtp/MtpDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, model:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private loadDevices()V
    .locals 12

    .prologue
    .line 50
    iget-object v9, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 52
    .local v1, dataManager:Lcom/android/gallery3d/data/DataManager;
    iget-object v9, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object v9, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/android/gallery3d/data/MtpClient;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MtpClient;->getDeviceList()Ljava/util/List;

    move-result-object v4

    .line 54
    .local v4, devices:Ljava/util/List;,"Ljava/util/List<Landroid/mtp/MtpDevice;>;"
    const-string v9, "MtpDeviceSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadDevices: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpDevice;

    .line 56
    .local v7, mtpDevice:Landroid/mtp/MtpDevice;
    invoke-virtual {v7}, Landroid/mtp/MtpDevice;->getDeviceId()I

    move-result v3

    .line 57
    .local v3, deviceId:I
    iget-object v9, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v3}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 58
    .local v0, childPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MtpDevice;

    .line 59
    .local v2, device:Lcom/android/gallery3d/data/MtpDevice;
    if-nez v2, :cond_0

    .line 60
    new-instance v2, Lcom/android/gallery3d/data/MtpDevice;

    .end local v2           #device:Lcom/android/gallery3d/data/MtpDevice;
    iget-object v9, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v10, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mMtpContext:Lcom/android/gallery3d/data/MtpContext;

    invoke-direct {v2, v0, v9, v3, v10}, Lcom/android/gallery3d/data/MtpDevice;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/android/gallery3d/data/MtpContext;)V

    .line 62
    .restart local v2       #device:Lcom/android/gallery3d/data/MtpDevice;
    :cond_0
    const-string v9, "MtpDeviceSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add device "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v9, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v0           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v2           #device:Lcom/android/gallery3d/data/MtpDevice;
    .end local v3           #deviceId:I
    .end local v7           #mtpDevice:Landroid/mtp/MtpDevice;
    :cond_1
    iget-object v9, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    sget-object v10, Lcom/android/gallery3d/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    const/4 v5, 0x0

    .local v5, i:I
    iget-object v9, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, n:I
    :goto_1
    if-ge v5, v8, :cond_2

    .line 68
    iget-object v9, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 70
    :cond_2
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/MediaSet;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/android/gallery3d/data/MtpDeviceSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDataVersion:J

    .line 105
    invoke-direct {p0}, Lcom/android/gallery3d/data/MtpDeviceSet;->loadDevices()V

    .line 107
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MtpDeviceSet;->mDataVersion:J

    return-wide v0
.end method
