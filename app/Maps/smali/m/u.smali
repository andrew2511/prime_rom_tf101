.class Lm/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/u;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lm/A;)V
    .locals 0

    invoke-direct {p0}, Lm/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lm/R;
    .locals 3

    new-instance v0, Lm/m;

    iget-object v1, p0, Lm/u;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lm/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lm/R;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lm/R;

    invoke-direct {v0, p0}, Lm/m;-><init>([Lm/R;)V

    return-object v0
.end method

.method public a(Lm/R;)V
    .locals 2

    instance-of v0, p1, Lm/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/u;->a:Ljava/util/ArrayList;

    check-cast p1, Lm/m;

    invoke-virtual {p1}, Lm/m;->a()[Lm/R;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lm/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
