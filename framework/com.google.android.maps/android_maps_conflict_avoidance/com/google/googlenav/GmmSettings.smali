.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;
.super Ljava/lang/Object;
.source "GmmSettings.java"


# static fields
.field private static final FEATURE_TEST_DEFAULT_START:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;


# instance fields
.field private final defaultRemoteStringVersion:Ljava/lang/String;

.field protected isFirstInvocation:Z

.field private migrateLatitudeUserTermsPrefOnUpgrade:Z

.field private final remoteStringResource:Ljava/lang/String;

.field private requireTermsAndConditionsOnUpgrade:Z

.field private upgradeChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    const v1, 0x2625a00

    const v2, -0x59a5380

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->FEATURE_TEST_DEFAULT_START:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->upgradeChecked:Z

    .line 84
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->requireTermsAndConditionsOnUpgrade:Z

    .line 90
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->migrateLatitudeUserTermsPrefOnUpgrade:Z

    .line 134
    const-string v0, "no-remote-strings"

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->defaultRemoteStringVersion:Ljava/lang/String;

    .line 137
    const-string v0, "/strings_remote_no-remote-strings.dat"

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->remoteStringResource:Ljava/lang/String;

    .line 174
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->isTermsAndConditionsPrefSet()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->isFirstInvocation:Z

    .line 175
    return-void

    :cond_1c
    move v0, v1

    .line 174
    goto :goto_19
.end method

.method public static isDebugBuild()Z
    .registers 1

    .prologue
    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method private static isTermsAndConditionsPrefSet()Z
    .registers 2

    .prologue
    .line 184
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    .line 185
    .local v0, store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    const-string v1, "T_AND_C_ACCEPT"

    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
