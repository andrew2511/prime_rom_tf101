.class public Lcom/zinio/mobile/android/view/BottomToolbarActivity;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroid/widget/RelativeLayout;

.field private c:Landroid/os/Handler;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/zinio/mobile/android/view/bs;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/bs;-><init>(Lcom/zinio/mobile/android/view/BottomToolbarActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d:Ljava/lang/Runnable;

    .line 44
    const/16 v0, 0x8

    iput v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c:Landroid/os/Handler;

    .line 46
    iput-object p0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b:Landroid/widget/RelativeLayout;

    .line 47
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d:Ljava/lang/Runnable;

    if-lez p1, :cond_0

    int-to-long v2, p1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void

    .line 98
    :cond_0
    const-wide/16 v2, 0xbb8

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    iget v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c:Landroid/os/Handler;

    .line 136
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 81
    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    .line 83
    iget-object v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 85
    const/16 v0, 0x2328

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(I)V

    .line 86
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 92
    const/16 v0, 0x8

    iput v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    .line 93
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    if-nez v1, :cond_0

    .line 112
    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 113
    const/16 v1, 0x8

    iput v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    return-void

    .line 115
    :cond_0
    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 116
    iput v3, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    .line 117
    invoke-direct {p0, v3}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(I)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput p1, p0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    .line 127
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    return-void
.end method
