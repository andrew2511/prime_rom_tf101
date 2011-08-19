.class public final Lcom/zinio/mobile/android/view/issue/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/view/issue/h;

.field private b:Lcom/zinio/mobile/android/view/issue/h;

.field private c:Lcom/zinio/mobile/android/view/issue/h;

.field private d:Landroid/graphics/BitmapFactory$Options;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Lcom/zinio/mobile/android/a/a/j;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;Lcom/zinio/mobile/android/view/issue/h;ZZIILcom/zinio/mobile/android/a/a/j;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/d;->a:Lcom/zinio/mobile/android/view/issue/h;

    .line 63
    iput-object p2, p0, Lcom/zinio/mobile/android/view/issue/d;->b:Lcom/zinio/mobile/android/view/issue/h;

    .line 64
    iput-object p3, p0, Lcom/zinio/mobile/android/view/issue/d;->c:Lcom/zinio/mobile/android/view/issue/h;

    .line 65
    iput p9, p0, Lcom/zinio/mobile/android/view/issue/d;->i:I

    .line 66
    iput-boolean p5, p0, Lcom/zinio/mobile/android/view/issue/d;->e:Z

    .line 67
    iput p6, p0, Lcom/zinio/mobile/android/view/issue/d;->f:I

    .line 68
    iput p7, p0, Lcom/zinio/mobile/android/view/issue/d;->g:I

    .line 69
    iput-object p8, p0, Lcom/zinio/mobile/android/view/issue/d;->h:Lcom/zinio/mobile/android/a/a/j;

    .line 70
    iput-boolean p4, p0, Lcom/zinio/mobile/android/view/issue/d;->j:Z

    .line 72
    return-void
.end method


# virtual methods
.method public final a()Lcom/zinio/mobile/android/view/issue/h;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->a:Lcom/zinio/mobile/android/view/issue/h;

    return-object v0
.end method

.method public final b()Lcom/zinio/mobile/android/view/issue/h;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->b:Lcom/zinio/mobile/android/view/issue/h;

    return-object v0
.end method

.method public final c()Lcom/zinio/mobile/android/view/issue/h;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->c:Lcom/zinio/mobile/android/view/issue/h;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/issue/d;->e:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/d;->f:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/d;->g:I

    return v0
.end method

.method public final g()Lcom/zinio/mobile/android/a/a/j;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->h:Lcom/zinio/mobile/android/a/a/j;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/d;->i:I

    return v0
.end method

.method public final i()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->d:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/issue/d;->j:Z

    return v0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->a:Lcom/zinio/mobile/android/view/issue/h;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->a:Lcom/zinio/mobile/android/view/issue/h;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/h;->b()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->b:Lcom/zinio/mobile/android/view/issue/h;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->b:Lcom/zinio/mobile/android/view/issue/h;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/h;->b()V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->c:Lcom/zinio/mobile/android/view/issue/h;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->c:Lcom/zinio/mobile/android/view/issue/h;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/h;->b()V

    .line 170
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->c:Lcom/zinio/mobile/android/view/issue/h;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->b:Lcom/zinio/mobile/android/view/issue/h;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/d;->a:Lcom/zinio/mobile/android/view/issue/h;

    .line 171
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageDrawableHolder [mAreImagesInLandscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/d;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zinio/mobile/android/view/issue/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsHighRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/d;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIssue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/d;->h:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOpts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/d;->d:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSurfaceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zinio/mobile/android/view/issue/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSurfaceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zinio/mobile/android/view/issue/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
