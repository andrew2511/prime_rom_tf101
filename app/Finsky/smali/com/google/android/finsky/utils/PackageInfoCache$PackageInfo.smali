.class final Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PackageInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageInfo"
.end annotation


# instance fields
.field canLaunch:Z

.field firstInstallTime:J

.field versionCode:I


# direct methods
.method constructor <init>(IJZ)V
    .locals 0
    .parameter "versionCode"
    .parameter "firstInstallTime"
    .parameter "canLaunch"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->versionCode:I

    .line 138
    iput-wide p2, p0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->firstInstallTime:J

    .line 139
    iput-boolean p4, p0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->canLaunch:Z

    .line 140
    return-void
.end method
