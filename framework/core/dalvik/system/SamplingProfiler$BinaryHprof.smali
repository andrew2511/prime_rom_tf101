.class public Ldalvik/system/SamplingProfiler$BinaryHprof;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinaryHprof"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;,
        Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;
    }
.end annotation


# static fields
.field public static final ID_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    return-void
.end method
