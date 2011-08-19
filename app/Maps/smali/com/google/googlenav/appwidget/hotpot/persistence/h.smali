.class Lcom/google/googlenav/appwidget/hotpot/persistence/h;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/Integer;

.field private b:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/appwidget/hotpot/persistence/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->a:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->a:Ljava/lang/Integer;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->a:Ljava/lang/Integer;

    return-void
.end method
