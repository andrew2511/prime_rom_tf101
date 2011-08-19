.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/labs/SimpleLab;
.super Ljava/lang/Object;
.source "SimpleLab.java"


# instance fields
.field private active:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/SimpleLab;->active:Z

    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    .prologue
    .line 23
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/SimpleLab;->active:Z

    return v0
.end method
