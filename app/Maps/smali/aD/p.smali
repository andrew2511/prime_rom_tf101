.class public LaD/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lac/c;

.field private final c:LaU/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LaD/p;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILaU/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LaD/p;->c:LaU/a;

    new-instance v0, Lac/c;

    invoke-direct {v0, p1}, Lac/c;-><init>(I)V

    iput-object v0, p0, LaD/p;->b:Lac/c;

    return-void
.end method

.method static synthetic a(LaD/p;)Lac/c;
    .locals 1

    iget-object v0, p0, LaD/p;->b:Lac/c;

    return-object v0
.end method

.method private a(Ljava/lang/String;LaD/a;ZLaD/n;)V
    .locals 3

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/f;

    new-instance v2, LaD/l;

    invoke-direct {v2, p0, p1, p4, p2}, LaD/l;-><init>(LaD/p;Ljava/lang/String;LaD/n;LaD/a;)V

    invoke-direct {v1, p1, p3, v2}, Lcom/google/googlenav/f;-><init>(Ljava/lang/String;ZLcom/google/googlenav/P;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method static synthetic b(LaD/p;)LaU/a;
    .locals 1

    iget-object v0, p0, LaD/p;->c:LaU/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/aS;)Lk/l;
    .locals 2

    iget-object v0, p0, LaD/p;->b:Lac/c;

    invoke-virtual {p0, p1}, LaD/p;->b(Lcom/google/googlenav/ui/aS;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, LaD/p;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Lk/l;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, LaD/p;->b:Lac/c;

    invoke-virtual {v0}, Lac/c;->b()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aS;LaD/n;)V
    .locals 3

    invoke-virtual {p0, p1}, LaD/p;->b(Lcom/google/googlenav/ui/aS;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LaD/p;->b:Lac/c;

    invoke-virtual {v1, v0}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, LaD/p;->b:Lac/c;

    sget-object v2, LaD/p;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lac/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, LaD/p;->a(Ljava/lang/String;LaD/a;ZLaD/n;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;LaD/n;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, LaD/a;

    invoke-direct {v1}, LaD/a;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v6

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {p0, v0}, LaD/p;->b(Lcom/google/googlenav/ui/aS;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LaD/p;->b:Lac/c;

    invoke-virtual {v5, v4}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LaD/p;->b:Lac/c;

    sget-object v5, LaD/p;->a:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lac/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, LaD/a;->a()V

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {p0, v0}, LaD/p;->b(Lcom/google/googlenav/ui/aS;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    if-ne v3, v4, :cond_2

    move v4, v7

    :goto_2
    invoke-direct {p0, v0, v1, v4, p2}, LaD/p;->a(Ljava/lang/String;LaD/a;ZLaD/n;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_2

    :cond_3
    return-void
.end method

.method public b()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, LaD/p;->b:Lac/c;

    invoke-virtual {v0}, Lac/c;->d()Ljava/util/Vector;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v3, LaD/p;->a:Ljava/lang/Object;

    if-ne p0, v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    check-cast p0, Lk/l;

    invoke-interface {p0}, Lk/l;->a()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    return v2
.end method

.method protected b(Lcom/google/googlenav/ui/aS;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aS;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aS;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/googlenav/ui/aS;)Z
    .locals 2

    invoke-virtual {p0, p1}, LaD/p;->b(Lcom/google/googlenav/ui/aS;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LaD/p;->b:Lac/c;

    invoke-virtual {v1, v0}, Lac/c;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LaD/p;->b:Lac/c;

    invoke-virtual {v1, v0}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LaD/p;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
