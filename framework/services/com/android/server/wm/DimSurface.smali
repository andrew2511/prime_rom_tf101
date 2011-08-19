.class Lcom/android/server/wm/DimSurface;
.super Ljava/lang/Object;
.source "DimSurface.java"


# instance fields
.field mDimColor:I

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mLastDimHeight:I

.field mLastDimWidth:I

.field mLayer:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;)V
    .registers 12
    .parameter "session"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/android/server/wm/DimSurface;->mDimShown:Z

    .line 29
    iput v1, p0, Lcom/android/server/wm/DimSurface;->mDimColor:I

    .line 30
    iput v0, p0, Lcom/android/server/wm/DimSurface;->mLayer:I

    .line 34
    iget-object v0, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    if-nez v0, :cond_28

    .line 39
    :try_start_f
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "DimSurface"

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/high16 v8, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_29

    .line 48
    :cond_28
    :goto_28
    return-void

    .line 44
    :catch_29
    move-exception v0

    move-object v9, v0

    .line 45
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method


# virtual methods
.method hide()V
    .registers 4

    .prologue
    .line 80
    iget-boolean v1, p0, Lcom/android/server/wm/DimSurface;->mDimShown:Z

    if-eqz v1, :cond_c

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DimSurface;->mDimShown:Z

    .line 83
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->hide()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_c} :catch_d

    .line 88
    :cond_c
    :goto_c
    return-void

    .line 84
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 85
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    const-string v2, "Illegal argument exception hiding dim surface"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 91
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DimSurface;->mDimShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 93
    const-string v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimSurface;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 94
    const-string v0, " mDimColor=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimSurface;->mDimColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastDimWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimSurface;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 96
    const-string v0, " mLastDimWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimSurface;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 97
    return-void
.end method

.method show(IIII)V
    .registers 9
    .parameter "dw"
    .parameter "dh"
    .parameter "layer"
    .parameter "color"

    .prologue
    .line 54
    iget-boolean v1, p0, Lcom/android/server/wm/DimSurface;->mDimShown:Z

    if-nez v1, :cond_27

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DimSurface;->mDimShown:Z

    .line 59
    :try_start_7
    iput p1, p0, Lcom/android/server/wm/DimSurface;->mLastDimWidth:I

    .line 60
    iput p2, p0, Lcom/android/server/wm/DimSurface;->mLastDimHeight:I

    .line 61
    iget-object v1, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 62
    iget-object v1, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 63
    iget-object v1, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1c} :catch_1d

    .line 77
    :cond_1c
    :goto_1c
    return-void

    .line 64
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    const-string v2, "Failure showing dim surface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 67
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_27
    iget v1, p0, Lcom/android/server/wm/DimSurface;->mLastDimWidth:I

    if-ne v1, p1, :cond_37

    iget v1, p0, Lcom/android/server/wm/DimSurface;->mLastDimHeight:I

    if-ne v1, p2, :cond_37

    iget v1, p0, Lcom/android/server/wm/DimSurface;->mDimColor:I

    if-ne v1, p4, :cond_37

    iget v1, p0, Lcom/android/server/wm/DimSurface;->mLayer:I

    if-eq v1, p3, :cond_1c

    .line 69
    :cond_37
    iput p1, p0, Lcom/android/server/wm/DimSurface;->mLastDimWidth:I

    .line 70
    iput p2, p0, Lcom/android/server/wm/DimSurface;->mLastDimHeight:I

    .line 71
    iput p3, p0, Lcom/android/server/wm/DimSurface;->mLayer:I

    .line 72
    iput p4, p0, Lcom/android/server/wm/DimSurface;->mDimColor:I

    .line 73
    iget-object v1, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 74
    iget-object v1, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p3}, Landroid/view/Surface;->setLayer(I)V

    .line 75
    iget-object v1, p0, Lcom/android/server/wm/DimSurface;->mDimSurface:Landroid/view/Surface;

    shr-int/lit8 v2, p4, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setAlpha(F)V

    goto :goto_1c
.end method
