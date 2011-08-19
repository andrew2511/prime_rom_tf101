.class public LSQLite/FunctionContext;
.super Ljava/lang/Object;
.source "FunctionContext.java"


# instance fields
.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 80
    invoke-static {}, LSQLite/FunctionContext;->internal_init()V

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSQLite/FunctionContext;->handle:J

    return-void
.end method

.method private static native internal_init()V
.end method


# virtual methods
.method public native count()I
.end method

.method public native set_error(Ljava/lang/String;)V
.end method

.method public native set_result(D)V
.end method

.method public native set_result(I)V
.end method

.method public native set_result(Ljava/lang/String;)V
.end method

.method public native set_result([B)V
.end method

.method public native set_result_zeroblob(I)V
.end method
