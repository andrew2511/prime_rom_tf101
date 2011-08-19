.class public Lcom/google/googlenav/ui/view/android/aY;
.super Lcom/google/googlenav/ui/view/android/a;


# static fields
.field private static final f:[I


# instance fields
.field private g:Lx/P;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/googlenav/ui/view/android/aY;->f:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3ft 0x0t 0xft 0x7ft
        0x40t 0x0t 0xft 0x7ft
        0x40t 0x1t 0xft 0x7ft
        0x41t 0x1t 0xft 0x7ft
        0x42t 0x1t 0xft 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    const v0, 0x103000b

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    return-void
.end method

.method private a(Lcom/google/googlenav/n;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/n;->a()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/google/googlenav/ui/view/android/aY;->f:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v1, v5, [Lcom/google/googlenav/ui/aI;

    invoke-virtual {p1}, Lcom/google/googlenav/n;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->an:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/googlenav/ui/view/android/aY;->f:[I

    aget v0, v2, v0

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/googlenav/ui/view/android/aY;->a(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v1, v1, Lx/P;->b:Lcom/google/googlenav/aN;

    invoke-virtual {v1}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1
.end method

.method private c(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x2cc

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v2, v2, Lx/P;->b:Lcom/google/googlenav/aN;

    invoke-virtual {v2}, Lcom/google/googlenav/aN;->a()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v0, v0, Lx/P;->d:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aY;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0f003f -> :sswitch_1
        0x7f0f0040 -> :sswitch_1
        0x7f0f0140 -> :sswitch_1
        0x7f0f0141 -> :sswitch_1
        0x7f0f0142 -> :sswitch_1
        0x7f0f0144 -> :sswitch_0
        0x7f0f0145 -> :sswitch_2
    .end sparse-switch
.end method

.method private d(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const v0, 0x7f0f0145

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aY;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    sget-object v0, Lcom/google/googlenav/ui/view/android/aY;->f:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    sget-object v0, Lcom/google/googlenav/ui/view/android/aY;->f:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aY;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->b:Lcom/google/googlenav/ui/view/android/e;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v2, v2, Lx/P;->c:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bx;->h()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v3, v3, Lx/P;->c:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bx;->l()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v0, v0, Lx/P;->d:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aY;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f003f -> :sswitch_0
        0x7f0f0040 -> :sswitch_0
        0x7f0f0140 -> :sswitch_0
        0x7f0f0141 -> :sswitch_0
        0x7f0f0142 -> :sswitch_0
        0x7f0f0144 -> :sswitch_1
        0x7f0f0145 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected a()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/P;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aY;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aY;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x190

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v1, v0, Lx/P;->b:Lcom/google/googlenav/aN;

    const v0, 0x7f0f026c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aY;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/googlenav/aN;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v3

    :goto_1
    sget-object v1, Lcom/google/googlenav/ui/view/android/aY;->f:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/googlenav/ui/view/android/aY;->f:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aY;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v0, v0, Lx/P;->a:Lcom/google/googlenav/aN;

    invoke-virtual {v0}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v1, v0

    :goto_2
    move v2, v3

    :goto_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/n;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aY;->a(Lcom/google/googlenav/n;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v0, v0, Lx/P;->c:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_3

    const v0, 0x7f0f0144

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v1, v1, Lx/P;->c:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/googlenav/ui/view/android/aY;->a(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v0, v0, Lx/P;->d:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_4

    const v0, 0x7f0f0145

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v1, v1, Lx/P;->d:Lcom/google/googlenav/ui/bx;

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/googlenav/ui/view/android/aY;->a(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-object v1, v1, Lx/P;->b:Lcom/google/googlenav/aN;

    invoke-virtual {v1}, Lcom/google/googlenav/aN;->d()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto :goto_2
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->g:Lx/P;

    iget-boolean v0, v0, Lx/P;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aY;->d(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aY;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aY;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x1f4

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
