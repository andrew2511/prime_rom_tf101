.class public abstract Lcom/google/googlenav/ui/android/BaseAndroidView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/googlenav/ui/android/ao;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Lcom/google/googlenav/android/w;

.field protected c:Lcom/google/googlenav/ui/android/y;

.field protected d:Z

.field private final e:Lcom/google/googlenav/ui/android/ac;

.field private f:Landroid/view/View$OnTouchListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->d:Z

    iput-object p1, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->a:Landroid/content/Context;

    new-instance v0, Lcom/google/googlenav/ui/android/ac;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/ac;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Lcom/google/googlenav/ui/android/ac;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/android/ab;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/ab;-><init>(Lcom/google/googlenav/ui/android/BaseAndroidView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract a(Lcom/google/googlenav/android/w;)V
.end method

.method public abstract b()V
.end method

.method public c()Lcom/google/googlenav/ui/android/ac;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Lcom/google/googlenav/ui/android/ac;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Lcom/google/googlenav/ui/android/ac;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->c()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Lcom/google/googlenav/ui/android/ac;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->w()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->f:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->f:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Lcom/google/googlenav/ui/android/ac;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->f()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Lcom/google/googlenav/ui/android/ac;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->g()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Lcom/google/googlenav/ui/android/ac;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->h()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Lcom/google/googlenav/ui/android/ac;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->i()V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Lcom/google/googlenav/ui/android/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ac;->a(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/android/y;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/y;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/android/y;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/android/y;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Lcom/google/googlenav/ui/android/ac;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->d()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/aT;->b(II)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->f:Landroid/view/View$OnTouchListener;

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
