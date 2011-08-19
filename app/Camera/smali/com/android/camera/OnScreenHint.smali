.class public Lcom/android/camera/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# instance fields
.field mGravity:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x51

    iput v0, p0, Lcom/android/camera/OnScreenHint;->mGravity:I

    .line 53
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/android/camera/OnScreenHint$1;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenHint$1;-><init>(Lcom/android/camera/OnScreenHint;)V

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    .line 184
    new-instance v0, Lcom/android/camera/OnScreenHint$2;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenHint$2;-><init>(Lcom/android/camera/OnScreenHint;)V

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    .line 67
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/OnScreenHint;->mY:I

    .line 71
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 72
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 73
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 75
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 76
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f0c0003

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 77
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 78
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OnScreenHint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/OnScreenHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/OnScreenHint;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/OnScreenHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/OnScreenHint;->handleHide()V

    return-void
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 4

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-eq v1, v2, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/android/camera/OnScreenHint;->handleHide()V

    .line 144
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    .line 145
    iget v0, p0, Lcom/android/camera/OnScreenHint;->mGravity:I

    .line 146
    .local v0, gravity:I
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 147
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 151
    :cond_0
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/camera/OnScreenHint;->mX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 156
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/camera/OnScreenHint;->mY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 157
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/camera/OnScreenHint;->mVerticalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 158
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/camera/OnScreenHint;->mHorizontalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 159
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/camera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0           #gravity:I
    :cond_3
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;
    .locals 6
    .parameter "context"
    .parameter "text"

    .prologue
    .line 108
    new-instance v1, Lcom/android/camera/OnScreenHint;

    invoke-direct {v1, p0}, Lcom/android/camera/OnScreenHint;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, result:Lcom/android/camera/OnScreenHint;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 113
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f040006

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0a001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 115
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iput-object v3, v1, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    .line 119
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 134
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setView must have been called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method
