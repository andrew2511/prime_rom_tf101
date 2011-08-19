.class public Lj/C;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lj/C;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Ljava/util/List;)Lj/ao;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    new-instance v0, Lj/av;

    invoke-direct {v0, p0}, Lj/av;-><init>([Ljava/util/Map$Entry;)V

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lj/ao;->d()Lj/ao;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lj/h;

    invoke-static {p0}, Lj/w;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-direct {v0, p0}, Lj/h;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lj/C;
    .locals 2

    iget-object v0, p0, Lj/C;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lj/ao;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lj/ao;
    .locals 1

    iget-object v0, p0, Lj/C;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lj/C;->a(Ljava/util/List;)Lj/ao;

    move-result-object v0

    return-object v0
.end method
