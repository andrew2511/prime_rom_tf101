.class public LSQLite/Vm;
.super Ljava/lang/Object;
.source "Vm.java"


# instance fields
.field protected error_code:I

.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 76
    invoke-static {}, LSQLite/Vm;->internal_init()V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSQLite/Vm;->handle:J

    .line 19
    const/4 v0, 0x0

    iput v0, p0, LSQLite/Vm;->error_code:I

    return-void
.end method

.method private static native internal_init()V
.end method


# virtual methods
.method public native compile()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method protected native finalize()V
.end method

.method public native step(LSQLite/Callback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method
