.class public final Lcom/google/android/apps/uploader/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[J

.field private static final c:I

.field private static final d:[I


# instance fields
.field private a:Landroid/os/ConditionVariable;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 22
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 27
    sput-object v0, Lcom/google/android/apps/uploader/v;->b:[J

    array-length v0, v0

    sput v0, Lcom/google/android/apps/uploader/v;->c:I

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/apps/uploader/v;->d:[I

    return-void

    .line 22
    nop

    :array_0
    .array-data 0x8
        0x60t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 30
    :array_1
    .array-data 0x4
        0x26t 0x0t 0x6t 0x7ft
        0x27t 0x0t 0x6t 0x7ft
        0x28t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/v;->a:Landroid/os/ConditionVariable;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/v;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 49
    iget v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    sget v1, Lcom/google/android/apps/uploader/v;->c:I

    if-ne v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/uploader/v;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 54
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/v;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/v;->a:Landroid/os/ConditionVariable;

    sget-object v1, Lcom/google/android/apps/uploader/v;->b:[J

    iget v2, p0, Lcom/google/android/apps/uploader/v;->e:I

    aget-wide v1, v1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    long-to-double v5, v1

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4014

    div-double/2addr v3, v5

    double-to-long v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    neg-long v3, v3

    :cond_2
    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    .line 71
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/uploader/v;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 79
    return-void
.end method

.method public final d()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 87
    iget v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    sget v1, Lcom/google/android/apps/uploader/v;->c:I

    sub-int/2addr v1, v6

    if-ge v0, v1, :cond_0

    .line 88
    iget v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    .line 89
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry interval set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/uploader/v;->b:[J

    iget v3, p0, Lcom/google/android/apps/uploader/v;->e:I

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 94
    :goto_0
    return v0

    .line 93
    :cond_0
    const-string v0, "MediaUploader"

    const-string v1, "Retry interval maxed out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "MediaUploader"

    const-string v1, "Retry policy set to wait indefinitely"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget v0, Lcom/google/android/apps/uploader/v;->c:I

    iput v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    .line 101
    return-void
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/uploader/v;->e:I

    sget v1, Lcom/google/android/apps/uploader/v;->c:I

    if-ge v0, v1, :cond_0

    .line 109
    sget-object v0, Lcom/google/android/apps/uploader/v;->d:[I

    iget v1, p0, Lcom/google/android/apps/uploader/v;->e:I

    aget v0, v0, v1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
