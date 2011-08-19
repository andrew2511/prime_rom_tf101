.class public Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;
.super Ljava/lang/Object;
.source "RuntimeCheck.java"


# static fields
.field private static isStartupComplete:Z

.field private static isTrackingStartup:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;->isTrackingStartup:Z

    .line 19
    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;->isStartupComplete:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static isTest()Z
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
