.class public Lh/ex;
.super Lh/eR;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static n:Lac/m;

.field private static p:Ljava/lang/String;


# instance fields
.field private a:Lu/v;

.field private b:Lu/v;

.field private final c:Lcom/google/googlenav/bL;

.field private d:I

.field private e:I

.field private f:I

.field private final l:I

.field private final m:I

.field private o:LT/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    sput-object v0, Lh/ex;->n:Lac/m;

    const-string v0, ""

    sput-object v0, Lh/ex;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    iput-object p2, p0, Lh/ex;->c:Lcom/google/googlenav/bL;

    sget-object v0, Lh/ex;->n:Lac/m;

    const-string v1, "NextKey"

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lh/ex;->l:I

    sget-object v0, Lh/ex;->n:Lac/m;

    const-string v1, "PrevKey"

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lh/ex;->m:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lh/ex;->a(I)I

    return-void
.end method

.method private F()Ljava/util/Vector;
    .locals 6

    const/16 v5, 0x38

    const/4 v4, 0x4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v1}, Lu/v;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x33b

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0xd7

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v1}, Lu/v;->af()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/av;->k:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x392

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->bR:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v1}, Lu/v;->y()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v2}, Lu/v;->at()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lh/ex;->b:Lu/v;

    iget-object v3, p0, Lh/ex;->i:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3, v1}, Lh/q;->a(Lu/v;Lcom/google/googlenav/ui/aV;I)Lcom/google/googlenav/ui/bx;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v1}, Lu/v;->aq()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x41e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bR:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    iget-object v2, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v2}, Lu/v;->R()Lu/s;

    move-result-object v2

    invoke-static {v2}, Lh/ex;->b(Lu/s;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0xd8

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    iget-object v2, p0, Lh/ex;->i:Lcom/google/googlenav/ui/aV;

    const v3, 0x7f0201ea

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->b(Lk/l;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v1, 0x43e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0xdb

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v1, 0x43d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0xda

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method private a(I)I
    .locals 0

    iput p1, p0, Lh/ex;->d:I

    return p1
.end method

.method private static a(Lu/s;Z)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v7, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0}, Lu/s;->c()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v3, v6, :cond_0

    if-ne v2, v5, :cond_0

    if-eq v1, v4, :cond_1

    :cond_0
    move v1, v7

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->d(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/16 v1, 0x41d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->d(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lcom/google/googlenav/ui/bB;)Lu/v;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lh/ex;->n:Lac/m;

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->Z()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SAVED_DIRECTIONS"

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    const-string v1, "SAVED_DIRECTIONS_DB"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    :cond_0
    const-string v1, "PROTO_SAVED_DIRECTIONS_DB"

    invoke-static {v0, v1}, Lac/i;->a(Ln/a;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    invoke-static {v0, p0}, Lu/v;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/bB;)Lu/v;

    move-result-object v0

    instance-of v1, v0, Lu/p;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lu/v;->G()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UI-TDW"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lh/ex;->a(I)I

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0, p1}, Lu/v;->e(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lh/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    :cond_0
    iget-object v0, p0, Lh/ex;->c:Lcom/google/googlenav/bL;

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->d(Lu/v;)Li/v;

    move-result-object v0

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0, v1}, Li/v;->b(Lcom/google/googlenav/j;)V

    invoke-virtual {p0}, Lh/ex;->v()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v2}, Lu/v;->m()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/ui/bs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private b(I)I
    .locals 1

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0}, Lu/v;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, p1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lu/s;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lu/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcb

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    invoke-virtual {p0}, Lu/s;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lu/s;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_2
    invoke-static {p0, v1}, Lh/ex;->a(Lu/s;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xca

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x1ed

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "sa"

    invoke-static {v0, v1, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    iput-object v0, p0, Lh/ex;->a:Lu/v;

    iget-object v0, p0, Lh/ex;->a:Lu/v;

    check-cast v0, Lu/d;

    invoke-virtual {v0}, Lu/d;->aB()Lu/v;

    move-result-object v0

    iput-object v0, p0, Lh/ex;->b:Lu/v;

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    iget-object v1, p0, Lh/ex;->a:Lu/v;

    invoke-virtual {v1}, Lu/v;->r()Law/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/v;->a(Law/e;)V

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    iget-object v1, p0, Lh/ex;->a:Lu/v;

    invoke-virtual {v1}, Lu/v;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/v;->g(I)V

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0, p1}, Lu/v;->m(I)V

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0}, Lu/v;->aH()V

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-static {}, Lu/s;->a()Lu/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/v;->a(Lu/s;)V

    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->G()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x38

    const-string v1, "ir"

    invoke-static {v0, v1, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private d(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->c(I)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    sget-object v0, Lh/ex;->n:Lac/m;

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "PROTO_SAVED_DIRECTIONS_DB"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    iput-object v0, p0, Lh/ex;->a:Lu/v;

    iget-object v0, p0, Lh/ex;->a:Lu/v;

    check-cast v0, Lu/d;

    invoke-virtual {v0}, Lu/d;->aB()Lu/v;

    move-result-object v0

    iput-object v0, p0, Lh/ex;->b:Lu/v;

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0}, Lu/v;->aH()V

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    iget-object v1, p0, Lh/ex;->j:Lx/J;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bs;->a(Lu/v;Lx/J;)V

    return-void
.end method

.method private r()I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lh/ex;->d:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->b()I

    move-result v0

    iget v1, p0, Lh/ex;->d:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput v0, p0, Lh/ex;->e:I

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lh/ex;->f:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private t()V
    .locals 1

    iget v0, p0, Lh/ex;->d:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lh/ex;->e:I

    invoke-direct {p0, v0}, Lh/ex;->d(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lh/ex;->f:I

    invoke-direct {p0, v0}, Lh/ex;->d(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lax/b;)I
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x7

    invoke-static {v0}, Lax/c;->a(I)Lax/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/ex;->a(Lax/c;)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lax/c;)I
    .locals 3

    const/4 v2, 0x3

    invoke-direct {p0}, Lh/ex;->s()V

    invoke-virtual {p1}, Lax/c;->a()I

    move-result v0

    iget v1, p0, Lh/ex;->l:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lh/ex;->m:I

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v1}, Lu/v;->aq()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lh/ex;->l:I

    if-ne v0, v1, :cond_1

    const-string v1, "l"

    :goto_0
    invoke-direct {p0, v1}, Lh/ex;->b(Ljava/lang/String;)V

    iget v1, p0, Lh/ex;->l:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lh/ex;->c(I)V

    move v0, v2

    :goto_2
    return v0

    :cond_1
    const-string v1, "e"

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    move v0, v2

    goto :goto_2
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-static {v0}, Li/v;->b(Lu/v;)V

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0}, Lu/v;->as()I

    move-result v0

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v1}, Lu/v;->aK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lh/ex;->c:Lcom/google/googlenav/bL;

    invoke-interface {v2, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lu/v;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lh/ex;->b(I)I

    move-result v1

    iput v1, p0, Lh/ex;->e:I

    invoke-direct {p0, v0, v3}, Lh/ex;->a(IZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/ex;->b:Lu/v;

    instance-of v0, v0, Lu/p;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lh/ex;->a(IZ)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lh/ex;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    const/16 v1, 0x258

    invoke-static {v0, v1, p0}, Lcom/google/googlenav/ui/bs;->a(Lu/v;ILcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-direct {p0}, Lh/ex;->t()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lh/ex;->a(I)I

    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->Z()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->j()Lh/ct;

    move-result-object v0

    invoke-virtual {v0}, Lh/ct;->v()V

    :cond_4
    iget-object v0, p0, Lh/ex;->j:Lx/J;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/ex;->a(Lx/J;)V

    :cond_5
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {p0}, Lh/ex;->o()Lx/B;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lx/k;->b(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/M;

    move-result-object v0

    iput-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-direct {p0}, Lh/ex;->t()V

    goto :goto_0
.end method

.method public a(Lu/s;)V
    .locals 1

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    if-nez v0, :cond_0

    invoke-static {}, LA/n;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/ex;->b:Lu/v;

    iput-object v0, p0, Lh/ex;->a:Lu/v;

    iget-object v0, p0, Lh/ex;->a:Lu/v;

    check-cast v0, Lu/d;

    invoke-virtual {v0}, Lu/d;->aB()Lu/v;

    move-result-object v0

    iput-object v0, p0, Lh/ex;->b:Lu/v;

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0}, Lu/v;->aH()V

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0, p1}, Lu/v;->a(Lu/s;)V

    goto :goto_0
.end method

.method public a(Lu/v;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lu/v;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/ex;->c:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->C()V

    :cond_1
    invoke-virtual {p1}, Lu/v;->y()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lh/ex;->a:Lu/v;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lh/ex;->a:Lu/v;

    :goto_1
    invoke-virtual {v0}, Lu/v;->ae()I

    move-result v1

    if-gez v1, :cond_6

    iget-object v1, p0, Lh/ex;->c:Lcom/google/googlenav/bL;

    const/16 v2, 0x278

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lh/ex;->a:Lu/v;

    iput-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0}, Lu/v;->X()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ha"

    invoke-static {v1}, Li/v;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lu/v;->C()[Lu/h;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "sa"

    invoke-direct {p0, v1}, Lh/ex;->c(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lu/v;->D()[Lu/h;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "ea"

    invoke-direct {p0, v1}, Lh/ex;->c(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lu/v;->ay()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5

    const-string v0, "a"

    invoke-direct {p0, v0}, Lh/ex;->a(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v3}, Lh/ex;->b(I)I

    move-result v0

    iput v0, p0, Lh/ex;->e:I

    iput v3, p0, Lh/ex;->f:I

    invoke-virtual {p0}, Lh/ex;->m()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lh/ex;->c:Lcom/google/googlenav/bL;

    const/16 v2, 0x279

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v0, p1

    goto :goto_1

    :cond_8
    move-object v0, p1

    goto :goto_2
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    instance-of v0, v0, Lx/M;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh/ex;->j:Lx/J;

    check-cast v1, Lx/M;

    iget-object v2, p0, Lh/ex;->c:Lcom/google/googlenav/bL;

    iget-object v3, p0, Lh/ex;->b:Lu/v;

    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v4

    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v5

    move v0, p1

    invoke-static/range {v0 .. v6}, Li/v;->a(ILx/M;Lcom/google/googlenav/bL;Lu/v;Lh/dH;Lh/l;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const-string v0, "o"

    invoke-direct {p0, v0}, Lh/ex;->c(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lh/ex;->a(I)I

    invoke-virtual {p0}, Lh/ex;->v()V

    iget-object v0, p0, Lh/ex;->c:Lcom/google/googlenav/bL;

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->h(Lu/v;)V

    move v0, v6

    goto :goto_0

    :sswitch_1
    const-string v0, "t"

    invoke-direct {p0, v0}, Lh/ex;->b(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lh/ex;->a(I)I

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/ex;->a(Lx/J;)V

    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->j()Lh/ct;

    move-result-object v0

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v1}, Lu/v;->R()Lu/s;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lh/ct;->a(Lu/s;Lh/eg;)V

    move v0, v6

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lh/ex;->p()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/ex;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/ex;->h()Lu/v;

    move-result-object v0

    invoke-virtual {v0, v7}, Lu/v;->o(I)V

    invoke-direct {p0, p2, v6}, Lh/ex;->a(IZ)V

    move v0, v6

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v7}, Lh/ex;->c(I)V

    move v0, v6

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v6}, Lh/ex;->c(I)V

    move v0, v6

    goto :goto_0

    :sswitch_5
    const-string v0, "od"

    invoke-direct {p0, v0}, Lh/ex;->a(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lh/ex;->a(I)I

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/ex;->a(Lx/J;)V

    invoke-virtual {p0}, Lh/ex;->u()V

    move v0, v6

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lh/ex;->q()V

    invoke-direct {p0, v6}, Lh/ex;->a(I)I

    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->G()V

    invoke-virtual {p0}, Lh/ex;->v()V

    move v0, v6

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lh/ex;->d:I

    if-ne v0, v8, :cond_1

    const-string v0, "nc"

    invoke-direct {p0, v0}, Lh/ex;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    iput-object v9, p0, Lh/ex;->j:Lx/J;

    :cond_1
    invoke-direct {p0, v6}, Lh/ex;->a(I)I

    invoke-virtual {p0}, Lh/ex;->u()V

    move v0, v6

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd7 -> :sswitch_0
        0xd8 -> :sswitch_1
        0xd9 -> :sswitch_2
        0xda -> :sswitch_3
        0xdb -> :sswitch_4
        0xdc -> :sswitch_5
        0xdd -> :sswitch_6
        0x1f4 -> :sswitch_7
    .end sparse-switch
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lh/ex;->o:LT/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ex;->o:LT/a;

    invoke-virtual {v0}, LT/a;->h()I

    :cond_0
    invoke-super {p0}, Lh/eR;->b()V

    invoke-virtual {p0}, Lh/ex;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->G()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    iget v0, p0, Lh/ex;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1f4

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lh/ex;->a(IILjava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "b"

    invoke-direct {p0, v0}, Lh/ex;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lh/ex;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lh/ex;->a(I)I

    iget v0, p0, Lh/ex;->d:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lh/ex;->p()V

    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lh/ex;->c:Lcom/google/googlenav/bL;

    invoke-static {v1, v0}, Li/v;->a(Lcom/google/googlenav/bL;Lh/fc;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lh/ex;->a(IZ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lh/ex;->g:Lh/eY;

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v0, v1}, Lh/eY;->c(Lu/v;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lh/ex;->d:I

    if-eqz v0, :cond_0

    iget v0, p0, Lh/ex;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lh/ex;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lh/ex;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lh/ex;->d:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lu/v;
    .locals 1

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    return-object v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lh/ex;->a:Lu/v;

    iput-object v0, p0, Lh/ex;->b:Lu/v;

    const/4 v0, 0x0

    iput-object v0, p0, Lh/ex;->a:Lu/v;

    return-void
.end method

.method public m()V
    .locals 4

    sget-object v0, Lh/ex;->n:Lac/m;

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lh/ex;->b:Lu/v;

    invoke-virtual {v3, v2}, Lu/v;->b(Ljava/io/DataOutput;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "PROTO_SAVED_DIRECTIONS_DB"

    invoke-interface {v0, v1, v2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "UI-DL save"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lh/ex;->p()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lh/ex;->d:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lh/ex;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected o()Lx/B;
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lh/ex;->b:Lu/v;

    invoke-static {v0, v3}, Li/at;->a(Lu/v;I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    iget-object v1, p0, Lh/ex;->b:Lu/v;

    invoke-static {v1, v3, v5}, Li/at;->a(Lu/v;ILjava/util/Vector;)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    iget-object v2, p0, Lh/ex;->b:Lu/v;

    invoke-static {v2, v3}, Li/at;->b(Lu/v;I)Lcom/google/googlenav/ui/bx;

    move-result-object v2

    iget-object v3, p0, Lh/ex;->b:Lu/v;

    invoke-static {v0, v1, v2, v3, v5}, Li/at;->a(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lu/v;Li/v;)Lx/u;

    move-result-object v0

    invoke-direct {p0}, Lh/ex;->F()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lh/ex;->b:Lu/v;

    invoke-static {v2}, Lcom/google/googlenav/ui/bs;->a(Lu/v;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Lax/e;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/googlenav/ui/w;->as:Lax/e;

    aput-object v4, v2, v3

    :goto_0
    invoke-static {v0, v5, v1, v2}, Lx/B;->a(Lx/G;Lx/n;Ljava/util/Vector;[Lax/e;)Lx/B;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v2, v5

    goto :goto_0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/ex;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lh/ex;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lh/ex;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->b()I

    move-result v0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {p0}, Lh/ex;->o()Lx/B;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v1

    iput-object v1, p0, Lh/ex;->j:Lx/J;

    iget-object v1, p0, Lh/ex;->j:Lx/J;

    invoke-interface {v1, v0}, Lx/J;->c(I)V

    :cond_0
    return-void
.end method
