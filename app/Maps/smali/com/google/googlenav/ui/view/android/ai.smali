.class public Lcom/google/googlenav/ui/view/android/ai;
.super Lcom/google/googlenav/ui/view/android/f;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final a:Lcom/google/googlenav/ui/aY;

.field private final c:Lx/I;

.field private d:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lx/I;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/f;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ai;->a:Lcom/google/googlenav/ui/aY;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    return-void
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget v0, v0, Lx/I;->m:I

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    check-cast v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget-boolean v1, v1, Lx/I;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget v1, v1, Lx/I;->d:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget v1, v1, Lx/I;->c:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget-object v1, v1, Lx/I;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget-object v1, v1, Lx/I;->a:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget-object v1, v1, Lx/I;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget-object v1, v1, Lx/I;->a:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    goto :goto_1
.end method


# virtual methods
.method public a(Lax/b;)I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public a(Lax/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public c()Landroid/app/Dialog;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/h;->a(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget v0, v0, Lx/I;->m:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    check-cast v0, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget-boolean v1, v1, Lx/I;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget v1, v1, Lx/I;->d:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    iget v1, v1, Lx/I;->c:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public d_(I)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ai;->i()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/h;->b(Landroid/app/Dialog;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public e_(I)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ai;->d()V

    return-void
.end method

.method public g()Lx/z;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->c:Lx/I;

    return-object v0
.end method

.method public h()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->a:Lcom/google/googlenav/ui/aY;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aY;->d()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
