.class public abstract Landroid_maps_conflict_avoidance/com/google/common/io/BaseHttpConnectionFactory;
.super Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;
.source "BaseHttpConnectionFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 23
    const-string v0, "HttpWorks"

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
