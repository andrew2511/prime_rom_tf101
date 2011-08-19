.class public Landroid/os/Debug$InstructionCount;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstructionCount"
.end annotation


# static fields
.field private static final NUM_INSTR:I


# instance fields
.field private mCounts:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 955
    sget v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_PACKED_VALUE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    sget v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    .line 962
    return-void
.end method


# virtual methods
.method public collect()Z
    .registers 3

    .prologue
    .line 986
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->stopInstructionCounting()V

    .line 987
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    invoke-static {v1}, Ldalvik/system/VMDebug;->getInstructionCount([I)V
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_8} :catch_a

    .line 991
    const/4 v1, 0x1

    :goto_9
    return v1

    .line 988
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 989
    .local v0, uoe:Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public globalMethodInvocations()I
    .registers 4

    .prologue
    .line 1013
    const/4 v0, 0x0

    .line 1015
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    if-ge v1, v2, :cond_14

    .line 1016
    invoke-static {v1}, Ldalvik/bytecode/OpcodeInfo;->isInvoke(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1017
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 1015
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1021
    :cond_14
    return v0
.end method

.method public globalTotal()I
    .registers 4

    .prologue
    .line 999
    const/4 v0, 0x0

    .line 1001
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    if-ge v1, v2, :cond_e

    .line 1002
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1005
    :cond_e
    return v0
.end method

.method public resetAndStart()Z
    .registers 3

    .prologue
    .line 972
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->startInstructionCounting()V

    .line 973
    invoke-static {}, Ldalvik/system/VMDebug;->resetInstructionCount()V
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_6} :catch_8

    .line 977
    const/4 v1, 0x1

    :goto_7
    return v1

    .line 974
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 975
    .local v0, uoe:Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_7
.end method
