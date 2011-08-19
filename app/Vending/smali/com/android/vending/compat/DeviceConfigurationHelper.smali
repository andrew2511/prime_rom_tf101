.class public Lcom/android/vending/compat/DeviceConfigurationHelper;
.super Ljava/lang/Object;
.source "DeviceConfigurationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customizeDeviceConfiguration(Landroid/content/Context;Lcom/android/vending/model/DeviceConfiguration;)V
    .locals 8
    .parameter "context"
    .parameter "deviceConfiguration"

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 17
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v5

    .line 20
    .local v5, systemAvailableFeatures:[Landroid/content/pm/FeatureInfo;
    if-eqz v5, :cond_1

    .line 21
    move-object v0, v5

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 22
    .local v1, feature:Landroid/content/pm/FeatureInfo;
    iget-object v6, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 23
    iget-object v6, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/vending/model/DeviceConfiguration;->addSystemAvailableFeature(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v1           #feature:Landroid/content/pm/FeatureInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/vending/model/DeviceConfiguration;->addNativePlatform(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;

    .line 33
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v7, "unknown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 34
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/vending/model/DeviceConfiguration;->addNativePlatform(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;

    .line 36
    :cond_2
    return-void
.end method
