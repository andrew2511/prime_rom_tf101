.class public final Lcom/zinio/mobile/android/view/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/zinio/mobile/android/a/a/j;

.field private d:Landroid/graphics/RectF;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->a:Ljava/util/List;

    .line 24
    const-string v0, "/sdcard/sample1.mp4"

    iput-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->e:Ljava/lang/String;

    .line 25
    const-string v0, "/sdcard/sample2.mp4"

    iput-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->f:Ljava/lang/String;

    .line 26
    const-string v0, "/sdcard/audio_sample1.mp3"

    iput-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->g:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/zinio/mobile/android/view/a/c;->h:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/zinio/mobile/android/view/a/c;->i:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/zinio/mobile/android/view/a/c;->j:I

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/zinio/mobile/android/view/a/c;->k:I

    .line 32
    new-instance v0, Lcom/zinio/mobile/android/view/a/b;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/a/b;-><init>(Lcom/zinio/mobile/android/view/a/c;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->l:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Lcom/zinio/mobile/android/view/a/c;->b:Landroid/widget/FrameLayout;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/a/c;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/a/c;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->l:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    iput-object v2, p0, Lcom/zinio/mobile/android/view/a/c;->c:Lcom/zinio/mobile/android/a/a/j;

    .line 80
    iput-object v2, p0, Lcom/zinio/mobile/android/view/a/c;->d:Landroid/graphics/RectF;

    .line 81
    return-void
.end method

.method public final a(FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 90
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 91
    iget-object v1, p0, Lcom/zinio/mobile/android/view/a/c;->l:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/zinio/mobile/android/view/a/c;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    return-void
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->l:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/zinio/mobile/android/view/a/c;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/zinio/mobile/android/a/a/j;Landroid/graphics/RectF;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->l:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    iput-object p2, p0, Lcom/zinio/mobile/android/view/a/c;->c:Lcom/zinio/mobile/android/a/a/j;

    .line 72
    iput-object p3, p0, Lcom/zinio/mobile/android/view/a/c;->d:Landroid/graphics/RectF;

    .line 73
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/zinio/mobile/android/view/a/c;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/a/a;

    .line 97
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/a/a;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/a/a;

    .line 107
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/a/a;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
