.class public Lh/cA;
.super Lh/eR;

# interfaces
.implements Lo/r;


# static fields
.field private static final e:Lo/I;


# instance fields
.field a:Lcom/google/googlenav/ui/az;

.field b:Lcom/google/googlenav/ui/az;

.field c:Lcom/google/googlenav/ui/az;

.field protected d:Lh/aK;

.field private final f:Lcom/google/googlenav/ui/az;

.field private l:Lx/B;

.field private m:Z

.field private n:Lcom/google/googlenav/ui/aY;

.field private o:I

.field private p:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/I;

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->x:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-direct {v0, v1}, Lo/I;-><init>(Law/e;)V

    sput-object v0, Lh/cA;->e:Lo/I;

    return-void
.end method

.method protected constructor <init>(Lh/eY;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    new-instance v0, Lcom/google/googlenav/ui/az;

    sget-object v1, Lh/cA;->e:Lo/I;

    invoke-virtual {v1}, Lo/I;->b()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/az;-><init>(Z)V

    iput-object v0, p0, Lh/cA;->a:Lcom/google/googlenav/ui/az;

    new-instance v0, Lcom/google/googlenav/ui/az;

    sget-object v1, Lh/cA;->e:Lo/I;

    invoke-virtual {v1}, Lo/I;->e()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/az;-><init>(Z)V

    iput-object v0, p0, Lh/cA;->b:Lcom/google/googlenav/ui/az;

    new-instance v0, Lcom/google/googlenav/ui/az;

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/az;-><init>(Z)V

    iput-object v0, p0, Lh/cA;->f:Lcom/google/googlenav/ui/az;

    new-instance v0, Lcom/google/googlenav/ui/az;

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/az;-><init>(Z)V

    iput-object v0, p0, Lh/cA;->c:Lcom/google/googlenav/ui/az;

    return-void
.end method

.method static synthetic a(Lh/cA;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lh/cA;->p:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->E()Lo/bj;

    move-result-object v0

    invoke-virtual {v0}, Lo/bj;->l()Lo/I;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/cA;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    :goto_0
    iget-object v2, p0, Lh/cA;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    invoke-virtual {v0, v1}, Lo/I;->a(Z)V

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh/cA;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    :goto_1
    iget-object v2, p0, Lh/cA;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    invoke-virtual {v0, v1}, Lo/I;->b(Z)V

    :cond_1
    iget-object v1, p0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v1

    const/16 v2, 0x140

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lh/cT;

    invoke-virtual {v0}, Lo/I;->g()Law/e;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lh/cT;-><init>(Lh/cA;Law/e;Lcom/google/googlenav/bv;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    iget-object v0, p0, Lh/cA;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    invoke-virtual {v0}, Lx/z;->j()V

    iget-object v0, p0, Lh/cA;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method static synthetic a(Lh/cA;)V
    .locals 0

    invoke-direct {p0}, Lh/cA;->q()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Vector;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v0, p2, v1, v2}, Lcom/google/googlenav/ui/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/Vector;)V
    .locals 3

    const/16 v0, 0x15b

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12f

    invoke-direct {p0, v0, v1, v2, p1}, Lh/cA;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Vector;)V

    const/16 v0, 0x161

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x162

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x131

    invoke-direct {p0, v0, v1, v2, p1}, Lh/cA;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Vector;)V

    const/16 v0, 0x15e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x130

    invoke-direct {p0, v0, v1, v2, p1}, Lh/cA;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Vector;)V

    return-void
.end method

.method static synthetic a(Lh/cA;Z)Z
    .locals 0

    iput-boolean p1, p0, Lh/cA;->m:Z

    return p1
.end method

.method static synthetic b(Lh/cA;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lh/cA;->r()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/util/Vector;
    .locals 5

    const/4 v4, 0x2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lh/cA;->o:I

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x160

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lh/cA;->a(Ljava/util/Vector;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x15d

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/cA;->p()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x159

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/cA;->m()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/cA;->o()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/cA;->n()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x158

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x17d

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x133

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method private m()Lcom/google/googlenav/ui/bx;
    .locals 4

    const/16 v0, 0x1f6

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lh/cA;->m:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    :goto_0
    sget-object v3, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Ljava/util/Vector;

    move-result-object v0

    iget-boolean v1, p0, Lh/cA;->m:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x838

    :goto_1
    iget-boolean v2, p0, Lh/cA;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->E()Lo/bj;

    move-result-object v2

    invoke-virtual {v2}, Lo/bj;->l()Lo/I;

    move-result-object v2

    invoke-virtual {v2}, Lo/I;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lh/cA;->a:Lcom/google/googlenav/ui/az;

    invoke-static {v0, v1, v3, v2}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;ILcom/google/googlenav/ui/az;Z)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private n()Lcom/google/googlenav/ui/bx;
    .locals 5

    iget-boolean v0, p0, Lh/cA;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/cA;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/cA;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x1ff

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x200

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    :goto_1
    sget-object v4, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2, v3, v4}, Lcom/google/googlenav/ui/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v0, :cond_3

    const/16 v0, 0x83f

    :goto_2
    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private o()Lcom/google/googlenav/ui/bx;
    .locals 4

    const/16 v0, 0x1fb

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fc

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lh/cA;->m:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    :goto_0
    sget-object v3, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Ljava/util/Vector;

    move-result-object v0

    iget-boolean v1, p0, Lh/cA;->m:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x83a

    :goto_1
    iget-boolean v2, p0, Lh/cA;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->E()Lo/bj;

    move-result-object v2

    invoke-virtual {v2}, Lo/bj;->l()Lo/I;

    move-result-object v2

    invoke-virtual {v2}, Lo/I;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lh/cA;->b:Lcom/google/googlenav/ui/az;

    invoke-static {v0, v1, v3, v2}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;ILcom/google/googlenav/ui/az;Z)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private p()Lcom/google/googlenav/ui/bx;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lh/cA;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    const/16 v1, 0x1f9

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fa

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    :goto_1
    sget-object v4, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2, v3, v4}, Lcom/google/googlenav/ui/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v0, :cond_2

    const/16 v2, 0x154

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lh/cA;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    :goto_3
    iget-object v3, p0, Lh/cA;->f:Lcom/google/googlenav/ui/az;

    invoke-static {v1, v2, v3, v0}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;ILcom/google/googlenav/ui/az;Z)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_3
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x140

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    new-instance v0, Lh/cU;

    invoke-direct {v0, p0}, Lh/cU;-><init>(Lh/cA;)V

    invoke-direct {p0}, Lh/cA;->r()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lh/cA;->p:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lh/cA;->i()V

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->d:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x1

    iget-object v3, p0, Lh/cA;->p:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(IZ)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v2

    new-instance v3, Lo/C;

    invoke-direct {v3, v1, v0}, Lo/C;-><init>(Law/e;Lo/V;)V

    invoke-virtual {v2, v3}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private r()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lh/cA;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/cA;->d:Lh/aK;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/cA;->d:Lh/aK;

    iget-object v1, p0, Lh/cA;->n:Lcom/google/googlenav/ui/aY;

    invoke-virtual {p0}, Lh/cA;->v()V

    invoke-virtual {p0, v0, v1}, Lh/cA;->a(Lh/aK;Lcom/google/googlenav/ui/aY;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/cA;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/cA;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/cA;->d()V

    iget v0, p0, Lh/cA;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/cA;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/cA;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x3

    iput v0, p0, Lh/cA;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/cA;->m:Z

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->E()Lo/bj;

    move-result-object v0

    new-instance v1, Lh/cO;

    invoke-direct {v1, p0}, Lh/cO;-><init>(Lh/cA;)V

    invoke-virtual {v0, v1}, Lo/bj;->a(Lo/am;)V

    :cond_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/bA;

    new-instance v2, Lh/cP;

    invoke-direct {v2, p0}, Lh/cP;-><init>(Lh/cA;)V

    invoke-direct {v1, v4, v2}, Lo/bA;-><init>(ZLo/bE;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/br;

    const/4 v2, 0x2

    iget-object v3, p0, Lh/cA;->h:LaU/a;

    invoke-direct {v1, v2, p0, v3, v4}, Lo/br;-><init>(ILo/r;LaU/a;Z)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    invoke-virtual {p0}, Lh/cA;->i()V

    return-void
.end method

.method public a(Lf/h;Ljava/lang/Long;Law/e;ZLo/aT;)V
    .locals 0

    invoke-static {}, Lo/ce;->f()V

    invoke-virtual {p0}, Lh/cA;->i()V

    return-void
.end method

.method public a(Lh/aK;Lcom/google/googlenav/ui/aY;)V
    .locals 0

    iput-object p1, p0, Lh/cA;->d:Lh/aK;

    iput-object p2, p0, Lh/cA;->n:Lcom/google/googlenav/ui/aY;

    invoke-virtual {p0}, Lh/cA;->u()V

    return-void
.end method

.method public a(ZLo/aT;)V
    .locals 0

    invoke-static {}, Lo/ce;->e()V

    invoke-virtual {p0}, Lh/cA;->i()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x3

    iput v0, p0, Lh/cA;->k:I

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lh/cA;->n:Lcom/google/googlenav/ui/aY;

    invoke-virtual {p0}, Lh/cA;->v()V

    invoke-interface {v0, p1, p2, p3}, Lcom/google/googlenav/ui/aY;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v5}, Lh/cA;->a(I)V

    move v0, v5

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lh/cA;->a(I)V

    move v0, v5

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lh/cA;->c:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_1
    iget-object v1, p0, Lh/cA;->c:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/az;->a(Z)V

    invoke-static {v0}, Lcom/google/googlenav/RatingReminderAlarmManager;->a(Z)V

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_4
    const/4 v6, 0x0

    iget-object v0, p0, Lh/cA;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lh/cA;->g:Lh/eY;

    const/16 v1, 0x139

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x123

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x122

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lh/cS;

    invoke-direct {v8, p0}, Lh/cS;-><init>(Lh/cA;)V

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lh/cA;->q()V

    goto :goto_2

    :sswitch_5
    iget-object v0, p0, Lh/cA;->g:Lh/eY;

    new-instance v1, Lh/cR;

    invoke-direct {v1, p0}, Lh/cR;-><init>(Lh/cA;)V

    invoke-virtual {v0, v1, p0}, Lh/eY;->a(Lh/bO;Lcom/google/googlenav/ui/aY;)V

    move v0, v5

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x131 -> :sswitch_0
        0x133 -> :sswitch_0
        0x154 -> :sswitch_4
        0x838 -> :sswitch_1
        0x83a -> :sswitch_2
        0x83f -> :sswitch_5
        0x842 -> :sswitch_3
    .end sparse-switch
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/cA;->d:Lh/aK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cA;->d:Lh/aK;

    invoke-interface {v0}, Lh/aK;->a()V

    :cond_0
    iput-object v1, p0, Lh/cA;->d:Lh/aK;

    iput-object v1, p0, Lh/cA;->n:Lcom/google/googlenav/ui/aY;

    iput-object v1, p0, Lh/cA;->l:Lx/B;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public b(ZLo/aT;)V
    .locals 0

    invoke-static {}, Lo/ce;->g()V

    invoke-virtual {p0}, Lh/cA;->i()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh/cA;->k:I

    return-void
.end method

.method protected h()Lx/B;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lx/B;

    invoke-virtual {p0}, Lh/cA;->G_()I

    move-result v1

    const/16 v2, 0x163

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lh/cA;->j()Ljava/util/Vector;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    iput-object v0, p0, Lh/cA;->l:Lx/B;

    iget-object v0, p0, Lh/cA;->l:Lx/B;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lx/B;->x:Z

    iget-object v0, p0, Lh/cA;->l:Lx/B;

    invoke-static {}, Lo/ce;->d()I

    move-result v1

    iget v2, p0, Lh/cA;->o:I

    add-int/2addr v1, v2

    iput v1, v0, Lx/B;->z:I

    iget-object v0, p0, Lh/cA;->l:Lx/B;

    return-object v0
.end method

.method i()V
    .locals 3

    invoke-virtual {p0}, Lh/cA;->w()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/cA;->l:Lx/B;

    if-nez v0, :cond_1

    iget-object v0, p0, Lh/cA;->j:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/cA;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/cA;->a(Lx/J;)V

    :cond_1
    iget-object v0, p0, Lh/cA;->l:Lx/B;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lh/cA;->h()Lx/B;

    move-result-object v0

    iput-object v0, p0, Lh/cA;->l:Lx/B;

    :goto_1
    iget-object v0, p0, Lh/cA;->j:Lx/J;

    if-nez v0, :cond_3

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/cA;->l:Lx/B;

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/cA;->j:Lx/J;

    iget-object v0, p0, Lh/cA;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lh/cA;->l:Lx/B;

    invoke-static {}, Lo/ce;->d()I

    move-result v1

    iget v2, p0, Lh/cA;->o:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lx/B;->b(I)V

    iget-object v0, p0, Lh/cA;->l:Lx/B;

    invoke-direct {p0}, Lh/cA;->j()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/util/Vector;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lh/cA;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    goto :goto_0
.end method
