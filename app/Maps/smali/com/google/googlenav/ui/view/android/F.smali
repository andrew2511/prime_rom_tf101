.class Lcom/google/googlenav/ui/view/android/F;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/method/MovementMethod;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/V;

.field private final b:Landroid/text/method/MovementMethod;

.field private final c:Landroid/text/method/MovementMethod;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/V;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/F;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->b:Landroid/text/method/MovementMethod;

    new-instance v0, Lcom/google/googlenav/ui/view/android/aQ;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/aQ;-><init>(Lcom/google/googlenav/ui/view/android/F;Lcom/google/googlenav/ui/view/android/V;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/text/method/MovementMethod;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/F;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/F;)Landroid/text/method/MovementMethod;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/F;)Landroid/text/method/MovementMethod;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->b:Landroid/text/method/MovementMethod;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    return v0
.end method

.method public canSelectArbitrarily()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/text/method/MovementMethod;

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->b:Landroid/text/method/MovementMethod;

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    goto :goto_0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->b:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/google/googlenav/android/Z;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/google/googlenav/ui/view/android/bd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bd;-><init>(Lcom/google/googlenav/ui/view/android/F;Lcom/google/googlenav/ui/view/android/aU;)V

    invoke-static {v0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/bd;->a(Lcom/google/googlenav/ui/view/android/bd;Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->b:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->b:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->b:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->b:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->b:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/F;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->b:Landroid/text/method/MovementMethod;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
