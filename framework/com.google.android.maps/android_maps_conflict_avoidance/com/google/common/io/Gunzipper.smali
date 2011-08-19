.class public Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;
.super Ljava/lang/Object;
.source "Gunzipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;
    }
.end annotation


# static fields
.field private static final instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;


# instance fields
.field private implementation:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->implementation:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;

    invoke-interface {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static setImplementation(Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;)V
    .registers 2
    .parameter "implementation"

    .prologue
    .line 29
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    iput-object p0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->implementation:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;

    .line 30
    return-void
.end method
