.class public Lcom/layar/PopularListActivity;
.super Lcom/layar/LayerListActivity;
.source "PopularListActivity.java"

# interfaces
.implements Lcom/layar/util/SensorHelper$LocationChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isRefreshOfNearbyNeeded:Z

.field private mLocation:Landroid/location/Location;

.field private mSensorHelper:Lcom/layar/util/SensorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/layar/PopularListActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/PopularListActivity;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/layar/LayerListActivity;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/PopularListActivity;->isRefreshOfNearbyNeeded:Z

    .line 14
    return-void
.end method


# virtual methods
.method protected getListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "popular"

    return-object v0
.end method

.method protected getSectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/layar/PopularListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubsetcionIds()[I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x87t 0x0t 0x9t 0x7ft
        0x85t 0x0t 0x9t 0x7ft
        0x86t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/layar/PopularListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public locationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/layar/PopularListActivity;->mLocation:Landroid/location/Location;

    .line 102
    iget-object v0, p0, Lcom/layar/PopularListActivity;->mSelectedSubSection:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/layar/PopularListActivity;->needUpdateOnSubsectionChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/layar/PopularListActivity;->reloadData()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/PopularListActivity;->isRefreshOfNearbyNeeded:Z

    .line 106
    :cond_0
    return-void
.end method

.method protected needUpdateOnSubsectionChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "newSubsection"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/layar/PopularListActivity;->isRefreshOfNearbyNeeded:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/layar/PopularListActivity;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/layar/PopularListActivity;->mSelectedSubSection:Ljava/lang/String;

    const-string v1, "nearby"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 94
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string v0, "nearby"

    iput-object v0, p0, Lcom/layar/PopularListActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/PopularListActivity;->mSensorHelper:Lcom/layar/util/SensorHelper;

    .line 33
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/layar/LayerListActivity;->onPause()V

    .line 67
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->POPULAR:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->unregisterView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 68
    iget-object v0, p0, Lcom/layar/PopularListActivity;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->unRegisterLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcom/layar/PopularListActivity;->viewSubsection:Lcom/layar/ui/SubsectionWidget;

    invoke-virtual {v1}, Lcom/layar/ui/SubsectionWidget;->getCurrentSubsection()I

    move-result v0

    .line 38
    .local v0, currentSubsection:I
    invoke-virtual {p0}, Lcom/layar/PopularListActivity;->initSubsection()V

    .line 39
    iget-object v1, p0, Lcom/layar/PopularListActivity;->viewSubsection:Lcom/layar/ui/SubsectionWidget;

    invoke-virtual {v1, v0}, Lcom/layar/ui/SubsectionWidget;->setCurrentSubsection(I)V

    .line 43
    iget-object v1, p0, Lcom/layar/PopularListActivity;->viewSubsection:Lcom/layar/ui/SubsectionWidget;

    .line 44
    invoke-virtual {v1}, Lcom/layar/ui/SubsectionWidget;->getCurrentSubsection()I

    move-result v1

    .line 43
    invoke-static {v1}, Lcom/layar/data/layer/LayerManager;->mapSusectionIdToApiKey(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/PopularListActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 51
    invoke-super {p0}, Lcom/layar/LayerListActivity;->onResume()V

    .line 53
    iget-object v1, p0, Lcom/layar/PopularListActivity;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/PopularListActivity;->mLocation:Landroid/location/Location;

    .line 54
    iget-object v1, p0, Lcom/layar/PopularListActivity;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/layar/PopularListActivity;->isRefreshOfNearbyNeeded:Z

    .line 56
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    sget-object v2, Lcom/layar/data/layer/LayerManager$LayarView;->POPULAR:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/LayerManager;->registerView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 57
    iget-object v1, p0, Lcom/layar/PopularListActivity;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v1, p0}, Lcom/layar/util/SensorHelper;->registerLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/layar/PopularListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    const v2, 0x7f0900f8

    const/4 v3, 0x0

    .line 58
    invoke-static {v1, v2, v3}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/layar/ui/SmartToast;->show()V

    .line 61
    :cond_0
    return-void
.end method

.method protected useSubsections()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method
