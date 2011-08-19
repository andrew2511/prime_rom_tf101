.class Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper$Snapshots;
.super Ljava/lang/Object;
.source "PhotoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Snapshots"
.end annotation


# static fields
.field public static final upper:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper$Snapshots;->upper:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
