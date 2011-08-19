.class public Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;
.super Ljava/lang/Object;
.source "MyGSensorListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/gl/MyGSensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GSensorJitterFilter"
.end annotation


# instance fields
.field private mCurOrientation:I

.field private mJitterThreshold:I

.field private mLastOrientation:I

.field private mTurn:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mJitterThreshold:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    .line 28
    iput v1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mLastOrientation:I

    .line 29
    iput v1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    .line 33
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .parameter "threshold"

    .prologue
    const/4 v1, -0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mJitterThreshold:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    .line 28
    iput v1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mLastOrientation:I

    .line 29
    iput v1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    .line 37
    iput p1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mJitterThreshold:I

    .line 38
    return-void
.end method

.method static final getCircleDegreeDiffer(II)I
    .locals 1
    .parameter "to"
    .parameter "from"

    .prologue
    .line 20
    sub-int/2addr p0, p1

    .line 21
    rem-int/lit16 p0, p0, 0x168

    .line 22
    if-lez p0, :cond_0

    .line 23
    :goto_0
    const/16 v0, 0xb4

    if-gt p0, v0, :cond_1

    move v0, p0

    :goto_1
    return v0

    .line 22
    :cond_0
    add-int/lit16 v0, p0, 0x168

    move p0, v0

    goto :goto_0

    .line 23
    :cond_1
    const/16 v0, 0x168

    sub-int v0, p0, v0

    goto :goto_1
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    .line 120
    return-void
.end method

.method public watch(I)I
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 43
    if-ne p1, v3, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->reset()V

    .line 45
    iget v2, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    .line 108
    :goto_0
    return v2

    .line 49
    :cond_0
    iget v2, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mLastOrientation:I

    invoke-static {p1, v2}, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->getCircleDegreeDiffer(II)I

    move-result v0

    .line 50
    .local v0, cur:I
    iput p1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mLastOrientation:I

    .line 52
    iget v2, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mJitterThreshold:I

    neg-int v2, v2

    if-lt v0, v2, :cond_2

    iget v2, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mJitterThreshold:I

    if-gt v0, v2, :cond_2

    move v1, v5

    .line 54
    .local v1, isjitter:Z
    :goto_1
    iget v2, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    packed-switch v2, :pswitch_data_0

    .line 104
    :goto_2
    sget-boolean v2, Lcom/asus/livewallpaper/gl/MyGSensorListener;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_1

    .line 105
    sget-object v2, Lcom/asus/livewallpaper/gl/MyGSensorListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "watch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mLastOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    iget v2, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    goto :goto_0

    .end local v1           #isjitter:Z
    :cond_2
    move v1, v4

    .line 52
    goto :goto_1

    .line 56
    .restart local v1       #isjitter:Z
    :pswitch_0
    if-lez v0, :cond_3

    .line 57
    iput p1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    goto :goto_2

    .line 59
    :cond_3
    if-gez v0, :cond_5

    .line 60
    if-nez v1, :cond_4

    .line 61
    iput p1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    .line 63
    :cond_4
    iput v3, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    goto :goto_2

    .line 66
    :cond_5
    iput v4, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    goto :goto_2

    .line 71
    :pswitch_1
    if-gez v0, :cond_6

    .line 72
    iput p1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    goto :goto_2

    .line 74
    :cond_6
    if-lez v0, :cond_8

    .line 75
    if-nez v1, :cond_7

    .line 76
    iput p1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    .line 78
    :cond_7
    iput v5, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    goto :goto_2

    .line 81
    :cond_8
    iput v4, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    goto :goto_2

    .line 86
    :pswitch_2
    if-lez v0, :cond_a

    .line 87
    if-nez v1, :cond_9

    .line 88
    iput p1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    .line 90
    :cond_9
    iput v5, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    goto :goto_2

    .line 92
    :cond_a
    if-gez v0, :cond_c

    .line 93
    if-nez v1, :cond_b

    .line 94
    iput p1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    .line 96
    :cond_b
    iput v3, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mTurn:I

    goto :goto_2

    .line 99
    :cond_c
    iput p1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->mCurOrientation:I

    goto :goto_2

    .line 54
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
