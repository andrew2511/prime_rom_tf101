.class public Lcom/google/googlenav/ui/view/android/aZ;
.super Ljava/lang/Object;

# interfaces
.implements LI/B;


# static fields
.field static final a:LaB/f;


# instance fields
.field final b:Ljava/lang/CharSequence;

.field final c:[Ljava/lang/CharSequence;

.field final d:Ljava/lang/CharSequence;

.field final e:Ljava/lang/CharSequence;

.field final f:Ljava/lang/CharSequence;

.field final g:Ljava/lang/CharSequence;

.field final h:Ljava/lang/CharSequence;

.field final i:Ljava/lang/CharSequence;

.field final j:LaB/f;

.field final k:Lcom/google/googlenav/ui/aS;

.field final l:LaB/f;

.field final m:Lf/h;

.field final n:Z

.field o:Z

.field final p:Z

.field final q:Li/bl;

.field final r:I

.field final s:I

.field final t:I

.field private final u:Lcom/google/googlenav/ui/aG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->y()Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    sput-object v0, Lcom/google/googlenav/ui/view/android/aZ;->a:LaB/f;

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/ui/view/android/aX;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->a(Lcom/google/googlenav/ui/view/android/aX;)Li/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->q:Li/bl;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->q:Li/bl;

    invoke-virtual {v0}, Li/bl;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->u:Lcom/google/googlenav/ui/aG;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->b(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->b:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->c(Lcom/google/googlenav/ui/view/android/aX;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:[Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->d(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->d:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->e:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->e(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->f:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aZ;->b(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->g:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->f(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->h:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aZ;->c(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->i:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aZ;->d(Lcom/google/googlenav/ui/view/android/aX;)LaB/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->j:LaB/f;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->g(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/bj;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->k:Lcom/google/googlenav/ui/aS;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->h(Lcom/google/googlenav/ui/view/android/aX;)LaB/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->l:LaB/f;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->i(Lcom/google/googlenav/ui/view/android/aX;)Lf/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->m:Lf/h;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->j(Lcom/google/googlenav/ui/view/android/aX;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->n:Z

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->k(Lcom/google/googlenav/ui/view/android/aX;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->o:Z

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->l(Lcom/google/googlenav/ui/view/android/aX;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->p:Z

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->m(Lcom/google/googlenav/ui/view/android/aX;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->s:I

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->n(Lcom/google/googlenav/ui/view/android/aX;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->t:I

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->o(Lcom/google/googlenav/ui/view/android/aX;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->r:I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->g(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/bj;

    move-result-object v0

    invoke-static {v0}, Li/bl;->a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/ui/aS;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/aX;Lcom/google/googlenav/ui/view/android/ag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aZ;-><init>(Lcom/google/googlenav/ui/view/android/aX;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->l(Lcom/google/googlenav/ui/view/android/aX;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->p(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->p(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->q(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->q(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    const/16 v0, 0x2d4

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->bl:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_3

    move-object v0, v2

    goto :goto_0
.end method

.method private b(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->r(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/ay;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->r(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ay;->a(J)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/aI;

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_0

    move-object v0, v4

    goto :goto_0
.end method

.method private c(Lcom/google/googlenav/ui/view/android/aX;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->s(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/H;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->s(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/H;->a()[Lcom/google/googlenav/U;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/google/googlenav/U;->b:Ljava/lang/String;

    sget-object v4, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    sget-object v5, Lcom/google/googlenav/ui/av;->bt:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3, v4, v5}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/google/googlenav/U;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    sget-object v5, Lcom/google/googlenav/ui/av;->bt:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3, v4, v5}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/google/googlenav/U;->c:Ljava/lang/String;

    sget-object v4, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    sget-object v5, Lcom/google/googlenav/ui/av;->bt:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3, v4, v5}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const-string v3, " "

    sget-object v4, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/aI;

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    move-object v0, v6

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->t(Lcom/google/googlenav/ui/view/android/aX;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->t(Lcom/google/googlenav/ui/view/android/aX;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/aq;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v1, v2, v3}, Li/P;->a(Lcom/google/googlenav/aq;Ljava/util/Vector;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/aI;

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_3

    move-object v0, v6

    goto :goto_2

    :cond_8
    move-object v0, v6

    goto :goto_2
.end method

.method private d(Lcom/google/googlenav/ui/view/android/aX;)LaB/f;
    .locals 4

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->s(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/H;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->s(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/H;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->u:Lcom/google/googlenav/ui/aG;

    new-instance v1, Lcom/google/googlenav/ui/aS;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aX;->s(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/H;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/H;->c()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/googlenav/ui/aV;->bM:I

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object p0

    check-cast p0, LaB/f;

    move-object v0, p0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/googlenav/ui/view/android/aZ;->a:LaB/f;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->r:I

    return v0
.end method

.method public a(Landroid/view/View;)LI/k;
    .locals 5

    const/4 v4, 0x2

    new-instance v1, Lcom/google/googlenav/ui/view/android/bv;

    invoke-direct {v1}, Lcom/google/googlenav/ui/view/android/bv;-><init>()V

    iput-object p1, v1, Lcom/google/googlenav/ui/view/android/bv;->a:Landroid/view/View;

    const v0, 0x7f0f025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->b:Landroid/widget/TextView;

    const v0, 0x7f0f0024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->c:Landroid/widget/TextView;

    const v0, 0x7f0f0260

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->d:Landroid/widget/CheckBox;

    iget-object v2, v1, Lcom/google/googlenav/ui/view/android/bv;->e:[Landroid/widget/TextView;

    const/4 v3, 0x0

    const v0, 0x7f0f0261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v3

    iget-object v2, v1, Lcom/google/googlenav/ui/view/android/bv;->e:[Landroid/widget/TextView;

    const/4 v3, 0x1

    const v0, 0x7f0f0262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v3

    iget-object v2, v1, Lcom/google/googlenav/ui/view/android/bv;->e:[Landroid/widget/TextView;

    const v0, 0x7f0f0263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v4

    const v0, 0x7f0f0205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->f:Lcom/google/googlenav/ui/view/android/DistanceView;

    const v0, 0x7f0f020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->g:Lcom/google/googlenav/ui/view/android/HeadingView;

    const v0, 0x7f0f022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->h:Landroid/widget/TextView;

    const v0, 0x7f0f0264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->i:Landroid/widget/TextView;

    const v0, 0x7f0f0062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->j:Landroid/widget/TextView;

    const v0, 0x7f0f0065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->k:Landroid/widget/TextView;

    const v0, 0x7f0f0066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->l:Landroid/widget/TextView;

    const v0, 0x7f0f0266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->m:Landroid/widget/TextView;

    const v0, 0x7f0f0265

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->n:Landroid/widget/ImageView;

    const v0, 0x7f0f002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->o:Landroid/widget/ImageView;

    const v0, 0x7f0f0230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->q:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/googlenav/ui/view/android/af;

    iget v2, p0, Lcom/google/googlenav/ui/view/android/aZ;->t:I

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/view/android/af;-><init>(Lcom/google/googlenav/ui/view/android/aZ;I)V

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->r:Lcom/google/googlenav/ui/view/android/af;

    new-instance v0, Lcom/google/googlenav/ui/view/android/af;

    const/16 v2, 0x578

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/view/android/af;-><init>(Lcom/google/googlenav/ui/view/android/aZ;I)V

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->s:Lcom/google/googlenav/ui/view/android/af;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->p:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/view/android/af;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/ui/view/android/af;-><init>(Lcom/google/googlenav/ui/view/android/aZ;I)V

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->t:Lcom/google/googlenav/ui/view/android/af;

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bv;->t:Lcom/google/googlenav/ui/view/android/af;

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    check-cast p2, Lcom/google/googlenav/ui/view/android/bv;

    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/bv;->a()V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->r:Lcom/google/googlenav/ui/view/android/af;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->s:I

    iput v1, v0, Lcom/google/googlenav/ui/view/android/af;->b:I

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->a:Landroid/view/View;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bv;->r:Lcom/google/googlenav/ui/view/android/af;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/ar;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->d:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->o:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->s:Lcom/google/googlenav/ui/view/android/af;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->s:I

    iput v1, v0, Lcom/google/googlenav/ui/view/android/af;->b:I

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->s:Lcom/google/googlenav/ui/view/android/af;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/af;->c:Lcom/google/googlenav/ui/view/android/aZ;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->d:Landroid/widget/CheckBox;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bv;->s:Lcom/google/googlenav/ui/view/android/af;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/ar;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:[Ljava/lang/CharSequence;

    array-length v1, v0

    move v2, v6

    move v3, v6

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    iget-object v5, p2, Lcom/google/googlenav/ui/view/android/bv;->e:[Landroid/widget/TextView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p2, Lcom/google/googlenav/ui/view/android/bv;->e:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    :goto_2
    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bv;->e:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bv;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->d:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->e:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->f:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->g:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->h:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->k:Lcom/google/googlenav/ui/aS;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->u:Lcom/google/googlenav/ui/aG;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->k:Lcom/google/googlenav/ui/aS;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    :cond_2
    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bv;->q:Landroid/widget/ImageView;

    invoke-static {v1, v0}, LI/a;->a(Landroid/widget/ImageView;LaB/f;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->f:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bv;->g:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aZ;->m:Lf/h;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lf/h;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->j:LaB/f;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/ImageView;LaB/f;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->i:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->o:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->l:LaB/f;

    invoke-static {v0, v1}, LI/a;->a(Landroid/widget/ImageView;LaB/f;)V

    :cond_3
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->p:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->t:Lcom/google/googlenav/ui/view/android/af;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->t:Lcom/google/googlenav/ui/view/android/af;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->s:I

    iput v1, v0, Lcom/google/googlenav/ui/view/android/af;->b:I

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bv;->p:Landroid/widget/LinearLayout;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bv;->t:Lcom/google/googlenav/ui/view/android/af;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/ar;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    :cond_5
    move v0, v3

    goto/16 :goto_2

    :cond_6
    move v0, v6

    goto/16 :goto_2
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
