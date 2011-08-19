.class public final enum Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;
.super Ljava/lang/Enum;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler$BinaryHprof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

.field public static final enum ALLOC_TRACES:Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

.field public static final enum CPU_SAMPLING:Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;


# instance fields
.field public final bitmask:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 589
    new-instance v0, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    const-string v1, "ALLOC_TRACES"

    invoke-direct {v0, v1, v3, v2}, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;->ALLOC_TRACES:Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    .line 590
    new-instance v0, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    const-string v1, "CPU_SAMPLING"

    invoke-direct {v0, v1, v2, v4}, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;->CPU_SAMPLING:Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    .line 588
    new-array v0, v4, [Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;->ALLOC_TRACES:Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    aput-object v1, v0, v3

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;->CPU_SAMPLING:Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    aput-object v1, v0, v2

    sput-object v0, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;->$VALUES:[Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "bitmask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 594
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 595
    iput p3, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;->bitmask:I

    .line 596
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;
    .registers 2
    .parameter "name"

    .prologue
    .line 588
    const-class v0, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    return-object p0
.end method

.method public static values()[Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;
    .registers 1

    .prologue
    .line 588
    sget-object v0, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;->$VALUES:[Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    invoke-virtual {v0}, [Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    return-object v0
.end method
