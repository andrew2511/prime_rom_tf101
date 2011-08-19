.class public Ldalvik/system/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_DEBUGGER:I = 0x1

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static systemInSafeMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Ldalvik/system/Zygote;->systemInSafeMode:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fork()I
.end method

.method public static native forkAndSpecialize(II[II[[I)I
.end method

.method public static forkAndSpecialize(II[IZ[[I)I
    .registers 7
    .parameter "uid"
    .parameter "gid"
    .parameter "gids"
    .parameter "enableDebugger"
    .parameter "rlimits"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    if-eqz p3, :cond_9

    const/4 v1, 0x1

    move v0, v1

    .line 89
    .local v0, debugFlags:I
    :goto_4
    invoke-static {p0, p1, p2, v0, p4}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[I)I

    move-result v1

    return v1

    .line 88
    .end local v0           #debugFlags:I
    :cond_9
    const/4 v1, 0x0

    move v0, v1

    goto :goto_4
.end method

.method public static native forkSystemServer(II[II[[IJJ)I
.end method

.method public static forkSystemServer(II[IZ[[I)I
    .registers 7
    .parameter "uid"
    .parameter "gid"
    .parameter "gids"
    .parameter "enableDebugger"
    .parameter "rlimits"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    if-eqz p3, :cond_9

    const/4 v1, 0x1

    move v0, v1

    .line 127
    .local v0, debugFlags:I
    :goto_4
    invoke-static {p0, p1, p2, v0, p4}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[I)I

    move-result v1

    return v1

    .line 126
    .end local v0           #debugFlags:I
    :cond_9
    const/4 v1, 0x0

    move v0, v1

    goto :goto_4
.end method
