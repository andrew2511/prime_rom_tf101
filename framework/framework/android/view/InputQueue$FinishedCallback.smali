.class public final Landroid/view/InputQueue$FinishedCallback;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FinishedCallback"
.end annotation


# static fields
.field private static final DEBUG_RECYCLING:Z = false

.field private static final RECYCLE_MAX_COUNT:I = 0x4

.field private static sRecycleCount:I

.field private static sRecycleHead:Landroid/view/InputQueue$FinishedCallback;


# instance fields
.field private mFinishedToken:J

.field private mRecycleNext:Landroid/view/InputQueue$FinishedCallback;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static obtain(J)Landroid/view/InputQueue$FinishedCallback;
    .registers 6
    .parameter "finishedToken"

    .prologue
    .line 149
    invoke-static {}, Landroid/view/InputQueue;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 150
    :try_start_5
    sget-object v0, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    .line 151
    .local v0, callback:Landroid/view/InputQueue$FinishedCallback;
    if-eqz v0, :cond_1a

    .line 152
    iget-object v2, v0, Landroid/view/InputQueue$FinishedCallback;->mRecycleNext:Landroid/view/InputQueue$FinishedCallback;

    sput-object v2, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    .line 153
    sget v2, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    .line 154
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/InputQueue$FinishedCallback;->mRecycleNext:Landroid/view/InputQueue$FinishedCallback;

    .line 158
    :goto_16
    iput-wide p0, v0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    .line 159
    monitor-exit v1

    return-object v0

    .line 156
    :cond_1a
    new-instance v0, Landroid/view/InputQueue$FinishedCallback;

    .end local v0           #callback:Landroid/view/InputQueue$FinishedCallback;
    invoke-direct {v0}, Landroid/view/InputQueue$FinishedCallback;-><init>()V

    .restart local v0       #callback:Landroid/view/InputQueue$FinishedCallback;
    goto :goto_16

    .line 160
    .end local v0           #callback:Landroid/view/InputQueue$FinishedCallback;
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v2
.end method


# virtual methods
.method public finished(Z)V
    .registers 7
    .parameter "handled"

    .prologue
    const-wide/16 v3, -0x1

    .line 164
    invoke-static {}, Landroid/view/InputQueue;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 165
    :try_start_7
    iget-wide v1, p0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Event finished callback already invoked."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 169
    :cond_18
    :try_start_18
    iget-wide v1, p0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    #calls: Landroid/view/InputQueue;->nativeFinished(JZ)V
    invoke-static {v1, v2, p1}, Landroid/view/InputQueue;->access$100(JZ)V

    .line 170
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    .line 172
    sget v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_32

    .line 173
    sget-object v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    iput-object v1, p0, Landroid/view/InputQueue$FinishedCallback;->mRecycleNext:Landroid/view/InputQueue$FinishedCallback;

    .line 174
    sput-object p0, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    .line 175
    sget v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    .line 181
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_15

    .line 182
    return-void
.end method
