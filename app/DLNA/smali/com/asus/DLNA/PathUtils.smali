.class Lcom/asus/DLNA/PathUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDeviceLV:Landroid/widget/ListView;

.field private mNowFolderPathView:Landroid/widget/TextView;

.field private mcontext:Landroid/content/Context;

.field private mpathlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DeviceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "Utils.PathUtils"

    iput-object v0, p0, Lcom/asus/DLNA/PathUtils;->TAG:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/asus/DLNA/PathUtils;->mcontext:Landroid/content/Context;

    .line 49
    iput-object v1, p0, Lcom/asus/DLNA/PathUtils;->mNowFolderPathView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public AddLocaldeviceToList(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DeviceItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DeviceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mLocalDeviceList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DeviceItem;>;"
    .local p2, mLocalRenderList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DeviceItem;>;"
    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/asus/DLNA/DeviceItem;

    invoke-direct {v0}, Lcom/asus/DLNA/DeviceItem;-><init>()V

    .line 64
    .local v0, localdevice:Lcom/asus/DLNA/DeviceItem;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/asus/DLNA/DeviceItem;->setmFriendlyName(Ljava/lang/String;)V

    .line 65
    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    new-instance v1, Lcom/asus/DLNA/DeviceItem;

    invoke-direct {v1}, Lcom/asus/DLNA/DeviceItem;-><init>()V

    .line 69
    .local v1, localrender:Lcom/asus/DLNA/DeviceItem;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/asus/DLNA/DeviceItem;->setmFriendlyName(Ljava/lang/String;)V

    .line 70
    invoke-interface {p2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method public AddNowPlayingToFolderPath()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/asus/DLNA/DeviceItem;

    invoke-direct {v0}, Lcom/asus/DLNA/DeviceItem;-><init>()V

    .line 76
    .local v0, localdevice:Lcom/asus/DLNA/DeviceItem;
    iget-object v1, p0, Lcom/asus/DLNA/PathUtils;->mcontext:Landroid/content/Context;

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DeviceItem;->setmFriendlyName(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/asus/DLNA/PathUtils;->mNowFolderPathView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/asus/DLNA/PathUtils;->getfolderpath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public Initdata(Landroid/content/Context;Landroid/widget/TextView;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 0
    .parameter "context"
    .parameter "NowFolderPath"
    .parameter
    .parameter "DeviceLV"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/TextView;",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DeviceItem;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, pathlist:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DeviceItem;>;"
    iput-object p1, p0, Lcom/asus/DLNA/PathUtils;->mcontext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/asus/DLNA/PathUtils;->mNowFolderPathView:Landroid/widget/TextView;

    .line 56
    iput-object p3, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    .line 57
    iput-object p4, p0, Lcom/asus/DLNA/PathUtils;->mDeviceLV:Landroid/widget/ListView;

    .line 58
    return-void
.end method

.method public addNodeToPathList(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 99
    new-instance v0, Lcom/asus/DLNA/DeviceItem;

    invoke-direct {v0}, Lcom/asus/DLNA/DeviceItem;-><init>()V

    .line 100
    .local v0, pathitem:Lcom/asus/DLNA/DeviceItem;
    invoke-virtual {v0, p1}, Lcom/asus/DLNA/DeviceItem;->setmFriendlyName(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/asus/DLNA/PathUtils;->mNowFolderPathView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/asus/DLNA/PathUtils;->getfolderpath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public getLevelNumber()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRootMFriendlyName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 126
    .local v0, listsize:I
    if-lez v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual {p0}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getfolderpath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v2, strPath:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 86
    .local v1, listsize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 87
    if-nez v0, :cond_0

    .line 88
    iget-object v3, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual {v3}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/DLNA/PathUtils;->mcontext:Landroid/content/Context;

    const v5, 0x7f07002c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v3, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual {v3}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 94
    :cond_1
    const-string v3, "Utils.PathUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "now Location is < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public removeLastNodeFromPathList()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 107
    iget-object v1, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 108
    .local v0, listsize:I
    if-le v0, v3, :cond_0

    .line 109
    iget-object v1, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    sub-int v2, v0, v3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/asus/DLNA/PathUtils;->mNowFolderPathView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/asus/DLNA/PathUtils;->getfolderpath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    .line 113
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetRootPath(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/asus/DLNA/PathUtils;->mpathlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    invoke-virtual {p0, p1}, Lcom/asus/DLNA/PathUtils;->addNodeToPathList(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/asus/DLNA/PathUtils;->mNowFolderPathView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/asus/DLNA/PathUtils;->getfolderpath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method
