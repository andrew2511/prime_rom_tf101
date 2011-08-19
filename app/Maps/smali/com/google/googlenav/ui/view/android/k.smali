.class public Lcom/google/googlenav/ui/view/android/k;
.super Lx/k;


# instance fields
.field private final a:Lcom/google/googlenav/android/BaseMapsActivity;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;)V
    .locals 0

    invoke-direct {p0}, Lx/k;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    return-void
.end method


# virtual methods
.method public a(Lh/eY;)Lh/eL;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/wizard/android/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/android/p;-><init>(Lh/eY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/B;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/B;-><init>(Lx/B;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public a(Lx/B;Lo/U;Lcom/google/googlenav/ui/aY;)Lx/J;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p3, v1}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public a(Lx/I;Lcom/google/googlenav/ui/aY;)Lx/J;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/ai;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/ai;-><init>(Lx/I;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public a(Lx/L;Lcom/google/googlenav/ui/aY;Lac/k;)Lx/J;
    .locals 3

    const/16 v0, 0x24

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    const/16 v1, 0x25

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/L;->a(Lcom/google/googlenav/ui/bx;)V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/L;->a(Lcom/google/googlenav/ui/bx;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public a(Lx/c;Lcom/google/googlenav/ui/aY;)Lx/J;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public a(Lx/e;Lcom/google/googlenav/ui/aY;)Lx/J;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public a(Lx/i;)Lx/J;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/k;->a(Lx/i;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method public a(Lx/i;Lcom/google/googlenav/ui/aY;)Lx/J;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public a(Lx/v;Lcom/google/googlenav/ui/aY;)Lx/J;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/am;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/am;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public a(Lx/z;Lcom/google/googlenav/ui/aY;Lx/K;)Lx/J;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;Lx/K;)V

    return-object v0
.end method

.method public b(Lh/eY;)Lh/df;
    .locals 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/android/o;

    invoke-virtual {p1}, Lh/eY;->v()LaU/a;

    move-result-object v1

    invoke-virtual {p1}, Lh/eY;->C()LaD/r;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/android/o;-><init>(Lh/eY;LaU/a;LaD/r;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public b(Lx/L;Lcom/google/googlenav/ui/aY;Lac/k;)Lx/J;
    .locals 3

    const/16 v0, 0x24

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    const/16 v1, 0x25

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/L;->a(Lcom/google/googlenav/ui/bx;)V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/L;->a(Lcom/google/googlenav/ui/bx;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public b(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public b(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/M;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/ak;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/ak;-><init>(Lx/B;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public c(Lh/eY;)Lcom/google/googlenav/ui/wizard/android/f;
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x154

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/wizard/android/f;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/wizard/android/f;-><init>(Lh/eY;I)V

    return-object v1
.end method

.method public c(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/l;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/bx;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/bx;-><init>(Lx/B;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public d(Lh/eY;)Lh/ek;
    .locals 3

    new-instance v0, Lh/ek;

    invoke-virtual {p1}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/bL;->aC()LE/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, v1, v2}, Lh/ek;-><init>(Lh/eY;LE/i;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method

.method public bridge synthetic d(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/k;->c(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/l;

    move-result-object v0

    return-object v0
.end method

.method public e(Lh/eY;)Lh/dW;
    .locals 4

    new-instance v0, Lh/dW;

    invoke-virtual {p1}, Lh/eY;->v()LaU/a;

    move-result-object v1

    invoke-virtual {p1}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/k;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, p1, v1, v2, v3}, Lh/dW;-><init>(Lh/eY;LaU/a;Lcom/google/googlenav/bL;Lcom/google/googlenav/android/BaseMapsActivity;)V

    return-object v0
.end method
