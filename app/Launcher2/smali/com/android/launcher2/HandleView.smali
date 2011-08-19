.class public Lcom/android/launcher2/HandleView;
.super Landroid/widget/ImageView;
.source "HandleView.java"


# instance fields
.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/HandleView;->mOrientation:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v3, p0, Lcom/android/launcher2/HandleView;->mOrientation:I

    .line 47
    sget-object v1, Lcom/android/launcher/R$styleable;->HandleView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HandleView;->mOrientation:I

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    const v1, 0x7f0e0030

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HandleView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method


# virtual methods
.method public focusSearch(I)Landroid/view/View;
    .locals 4
    .parameter "direction"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/ImageView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, newFocus:Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HandleView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/android/launcher2/HandleView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 59
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher2/Workspace;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .line 60
    iget v2, p0, Lcom/android/launcher2/HandleView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    move-object v2, p0

    .line 63
    .end local v1           #workspace:Lcom/android/launcher2/Workspace;
    :goto_0
    return-object v2

    .restart local v1       #workspace:Lcom/android/launcher2/Workspace;
    :cond_0
    move-object v2, v1

    .line 60
    goto :goto_0

    .end local v1           #workspace:Lcom/android/launcher2/Workspace;
    :cond_1
    move-object v2, v0

    .line 63
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HandleView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/launcher2/HandleView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 81
    return-void
.end method
