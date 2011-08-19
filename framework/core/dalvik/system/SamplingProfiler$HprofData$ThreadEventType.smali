.class public final enum Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;
.super Ljava/lang/Enum;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler$HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

.field public static final enum END:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

.field public static final enum START:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->START:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    new-instance v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    const-string v1, "END"

    invoke-direct {v0, v1, v3}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->END:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    const/4 v0, 0x2

    new-array v0, v0, [Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    sget-object v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->START:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    aput-object v1, v0, v2

    sget-object v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->END:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    aput-object v1, v0, v3

    sput-object v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->$VALUES:[Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;
    .registers 2
    .parameter "name"

    .prologue
    .line 94
    const-class v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    return-object p0
.end method

.method public static values()[Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->$VALUES:[Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    invoke-virtual {v0}, [Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    return-object v0
.end method
