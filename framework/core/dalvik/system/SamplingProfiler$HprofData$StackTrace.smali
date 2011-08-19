.class public final Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler$HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StackTrace"
.end annotation


# instance fields
.field private stackFrames:[Ljava/lang/StackTraceElement;

.field public final stackTraceId:I

.field private threadId:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackTraceId:I

    .line 189
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/StackTraceElement;)V
    .registers 6
    .parameter "stackTraceId"
    .parameter "threadId"
    .parameter "stackFrames"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    if-nez p3, :cond_d

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stackFrames == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_d
    iput p1, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackTraceId:I

    .line 196
    iput p2, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I

    .line 197
    iput-object p3, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/SamplingProfiler$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 181
    iget v0, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I

    return v0
.end method

.method static synthetic access$102(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput p1, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I

    return p1
.end method

.method static synthetic access$200(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)[Ljava/lang/StackTraceElement;
    .registers 2
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method static synthetic access$202(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-object p1, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 216
    instance-of v2, p1, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    if-nez v2, :cond_7

    move v2, v4

    .line 220
    :goto_6
    return v2

    .line 219
    :cond_7
    move-object v0, p1

    check-cast v0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    move-object v1, v0

    .line 220
    .local v1, s:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    iget v2, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I

    iget v3, v1, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    iget-object v3, v1, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_6

    :cond_1d
    move v2, v4

    goto :goto_6
.end method

.method public getStackFrames()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public getThreadId()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 209
    const/16 v0, 0x11

    .line 210
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v1, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I

    add-int/lit16 v0, v1, 0x20f

    .line 211
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 212
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0xa

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v1, frames:Ljava/lang/StringBuilder;
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    array-length v5, v5

    if-lez v5, :cond_25

    .line 226
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_13
    if-ge v2, v3, :cond_2a

    aget-object v4, v0, v2

    .line 228
    .local v4, stackFrame:Ljava/lang/StackTraceElement;
    const-string v5, "\t at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 233
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #stackFrame:Ljava/lang/StackTraceElement;
    :cond_25
    const-string v5, "<empty>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StackTrace[stackTraceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", threadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", frames="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
