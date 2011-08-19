.class Lcom/android/settings/applications/InterestingConfigChanges;
.super Ljava/lang/Object;
.source "InterestingConfigChanges.java"


# instance fields
.field final mLastConfiguration:Landroid/content/res/Configuration;

.field mLastDensity:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method applyNewConfig(Landroid/content/res/Resources;)Z
    .locals 6
    .parameter "res"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    iget-object v2, p0, Lcom/android/settings/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 29
    .local v0, configChanges:I
    iget v2, p0, Lcom/android/settings/applications/InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v2, v3, :cond_1

    move v1, v5

    .line 30
    .local v1, densityChanged:Z
    :goto_0
    if-nez v1, :cond_0

    and-int/lit16 v2, v0, 0x304

    if-eqz v2, :cond_2

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/android/settings/applications/InterestingConfigChanges;->mLastDensity:I

    move v2, v5

    .line 35
    :goto_1
    return v2

    .end local v1           #densityChanged:Z
    :cond_1
    move v1, v4

    .line 29
    goto :goto_0

    .restart local v1       #densityChanged:Z
    :cond_2
    move v2, v4

    .line 35
    goto :goto_1
.end method
