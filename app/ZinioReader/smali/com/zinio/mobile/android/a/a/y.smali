.class public final Lcom/zinio/mobile/android/a/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Z

.field private e:Z

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/zinio/mobile/android/a/a/y;->a:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/zinio/mobile/android/a/a/y;->b:I

    .line 23
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/zinio/mobile/android/a/a/y;->c:F

    .line 24
    iput-boolean v1, p0, Lcom/zinio/mobile/android/a/a/y;->d:Z

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/y;->e:Z

    .line 26
    return-void
.end method

.method public constructor <init>(IIFZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/zinio/mobile/android/a/a/y;->a:I

    .line 46
    iput p2, p0, Lcom/zinio/mobile/android/a/a/y;->b:I

    .line 47
    iput-boolean p4, p0, Lcom/zinio/mobile/android/a/a/y;->e:Z

    .line 48
    invoke-direct {p0, p3}, Lcom/zinio/mobile/android/a/a/y;->a(F)V

    .line 49
    return-void
.end method

.method private a(F)V
    .locals 4
    .parameter

    .prologue
    const/high16 v2, 0x4040

    const/high16 v1, 0x3f80

    .line 113
    cmpg-float v0, v1, p1

    if-gez v0, :cond_0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 115
    iput p1, p0, Lcom/zinio/mobile/android/a/a/y;->c:F

    .line 121
    :goto_0
    iget v0, p0, Lcom/zinio/mobile/android/a/a/y;->c:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/y;->d:Z

    .line 122
    return-void

    .line 116
    :cond_0
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_1

    .line 117
    iput v1, p0, Lcom/zinio/mobile/android/a/a/y;->c:F

    goto :goto_0

    .line 119
    :cond_1
    iput v2, p0, Lcom/zinio/mobile/android/a/a/y;->c:F

    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/zinio/mobile/android/a/a/y;->a:I

    return v0
.end method

.method final a(FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput p2, p0, Lcom/zinio/mobile/android/a/a/y;->f:F

    .line 108
    iput p3, p0, Lcom/zinio/mobile/android/a/a/y;->g:F

    .line 109
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/a/a/y;->a(F)V

    .line 110
    return-void
.end method

.method final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/zinio/mobile/android/a/a/y;->a:I

    iput v0, p0, Lcom/zinio/mobile/android/a/a/y;->b:I

    .line 68
    iput p1, p0, Lcom/zinio/mobile/android/a/a/y;->a:I

    .line 69
    return-void
.end method

.method final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/zinio/mobile/android/a/a/y;->e:Z

    .line 142
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/zinio/mobile/android/a/a/y;->b:I

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/zinio/mobile/android/a/a/y;->c:F

    return v0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/y;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/y;->e:Z

    return v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/zinio/mobile/android/a/a/y;->f:F

    return v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/zinio/mobile/android/a/a/y;->g:F

    return v0
.end method
