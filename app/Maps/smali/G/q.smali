.class public LG/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG/q;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/io/DataInput;I)LG/q;
    .locals 5

    new-instance v0, LG/q;

    invoke-direct {v0}, LG/q;-><init>()V

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, LG/q;->a:Ljava/util/ArrayList;

    invoke-static {v2, p0, p1}, LG/r;->a(ILjava/io/DataInput;I)LG/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()LG/r;
    .locals 1

    invoke-static {}, LG/r;->a()LG/r;

    move-result-object v0

    return-object v0
.end method

.method public a(I)LG/r;
    .locals 1

    iget-object v0, p0, LG/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {}, LG/r;->a()LG/r;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LG/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/r;

    move-object v0, p0

    goto :goto_0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    iget-object v0, p0, LG/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, LG/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, LG/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/r;

    invoke-virtual {v0, p1}, LG/r;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
