.class public final Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;
.super Ljava/lang/Object;
.source "DataRequestDispatcher.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataRequestEventUploader"
.end annotation


# instance fields
.field private final drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .registers 2
    .parameter "drd"

    .prologue
    .line 1771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1772
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;->drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    .line 1773
    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1761
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    return-void
.end method


# virtual methods
.method public uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;
    .registers 12
    .parameter "immediate"
    .parameter "waitObject"
    .parameter "logBytes"

    .prologue
    const/4 v7, 0x0

    .line 1777
    const/4 v0, 0x0

    .line 1778
    .local v0, edr:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
    if-eqz p3, :cond_1c

    array-length v1, p3

    const/4 v2, 0x2

    if-le v1, v2, :cond_1c

    .line 1779
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;

    .end local v0           #edr:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
    const/16 v1, 0xa

    const/4 v4, 0x0

    move-object v2, p3

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZLjava/lang/Object;)V

    .line 1781
    .restart local v0       #edr:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v6

    .line 1782
    .local v6, drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    if-eqz v6, :cond_1e

    .line 1783
    invoke-virtual {v6, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .end local v6           #drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    :cond_1c
    move-object v1, v7

    .line 1791
    :goto_1d
    return-object v1

    .restart local v6       #drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    :cond_1e
    move-object v1, v7

    .line 1787
    goto :goto_1d
.end method
