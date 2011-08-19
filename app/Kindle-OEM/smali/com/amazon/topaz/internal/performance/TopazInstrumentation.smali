.class public final Lcom/amazon/topaz/internal/performance/TopazInstrumentation;
.super Ljava/lang/Object;
.source "TopazInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/performance/TopazInstrumentation$1;,
        Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;
    }
.end annotation


# static fields
.field public static OPS:Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;

.field private static counterProvider:Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$100()Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation;->counterProvider:Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;

    return-object v0
.end method

.method public static close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation;->counterProvider:Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;

    .line 73
    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation;->OPS:Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;

    .line 74
    return-void
.end method

.method public static initialize(Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;)V
    .locals 2
    .parameter "counterProvider"

    .prologue
    .line 63
    sput-object p0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation;->counterProvider:Lcom/amazon/foundation/internal/performance/SystemSpecificCounterProvider;

    .line 64
    new-instance v0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;-><init>(Lcom/amazon/topaz/internal/performance/TopazInstrumentation$1;)V

    sput-object v0, Lcom/amazon/topaz/internal/performance/TopazInstrumentation;->OPS:Lcom/amazon/topaz/internal/performance/TopazInstrumentation$Operations;

    .line 65
    return-void
.end method
