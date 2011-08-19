.class public Lcom/google/android/music/widgets/PassStateChangeTextView;
.super Landroid/widget/TextView;
.source "PassStateChangeTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PassStateChangeTextView"


# instance fields
.field private mStateChangeListener:Lcom/google/android/music/widgets/DrawableStateChangeListener;

.field private final mStateChangeListenerId:I

.field private mStateChangeListeneredSearchedFor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListeneredSearchedFor:Z

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListener:Lcom/google/android/music/widgets/DrawableStateChangeListener;

    .line 30
    sget-object v1, Lcom/google/android/music/R$styleable;->PassClick:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListenerId:I

    .line 32
    iget v1, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListenerId:I

    if-ne v1, v2, :cond_0

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be given a passDrawableStateChange"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    return-void
.end method

.method private findStateChangeListener()Lcom/google/android/music/widgets/DrawableStateChangeListener;
    .locals 7

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/music/widgets/PassStateChangeTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 52
    .local v3, viewParent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_2

    .line 53
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 54
    .local v1, parent:Landroid/view/View;
    iget v4, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListenerId:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, passView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 56
    instance-of v4, v2, Lcom/google/android/music/widgets/DrawableStateChangeListener;

    if-nez v4, :cond_0

    .line 57
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided view must be an instance of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/google/android/music/widgets/DrawableStateChangeListener;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_0
    check-cast v2, Lcom/google/android/music/widgets/DrawableStateChangeListener;

    .end local v2           #passView:Landroid/view/View;
    move-object v4, v2

    .line 66
    .end local v1           #parent:Landroid/view/View;
    :goto_1
    return-object v4

    .line 63
    .restart local v1       #parent:Landroid/view/View;
    .restart local v2       #passView:Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 64
    goto :goto_0

    .line 65
    .end local v1           #parent:Landroid/view/View;
    .end local v2           #passView:Landroid/view/View;
    :cond_2
    const-string v4, "PassStateChangeTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find the passDrawableStateChange id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListenerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 41
    iget-boolean v0, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListeneredSearchedFor:Z

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/google/android/music/widgets/PassStateChangeTextView;->findStateChangeListener()Lcom/google/android/music/widgets/DrawableStateChangeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListener:Lcom/google/android/music/widgets/DrawableStateChangeListener;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListeneredSearchedFor:Z

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListener:Lcom/google/android/music/widgets/DrawableStateChangeListener;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/android/music/widgets/PassStateChangeTextView;->mStateChangeListener:Lcom/google/android/music/widgets/DrawableStateChangeListener;

    invoke-virtual {p0}, Lcom/google/android/music/widgets/PassStateChangeTextView;->getDrawableState()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/music/widgets/DrawableStateChangeListener;->onDrawableStateChanged([I)V

    .line 48
    :cond_1
    return-void
.end method
