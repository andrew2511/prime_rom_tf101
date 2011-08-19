.class Lm/G;
.super Ljava/lang/Object;

# interfaces
.implements Lm/I;


# instance fields
.field final synthetic a:Lm/W;

.field private final b:Lm/I;

.field private c:I


# direct methods
.method public constructor <init>(Lm/W;Lm/I;)V
    .locals 0

    iput-object p1, p0, Lm/G;->a:Lm/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm/G;->b:Lm/I;

    return-void
.end method


# virtual methods
.method public a(Lm/p;)V
    .locals 2

    invoke-virtual {p0}, Lm/G;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lm/G;->b:Lm/I;

    iget-object v1, p0, Lm/G;->a:Lm/W;

    invoke-interface {v0, v1}, Lm/I;->a(Lm/p;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lm/G;->c:I

    iget-object v1, p0, Lm/G;->a:Lm/W;

    invoke-static {v1}, Lm/W;->a(Lm/W;)[Lm/p;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lm/G;->a:Lm/W;

    invoke-static {v0}, Lm/W;->a(Lm/W;)[Lm/p;

    move-result-object v0

    iget v1, p0, Lm/G;->c:I

    aget-object v0, v0, v1

    iget v1, p0, Lm/G;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lm/G;->c:I

    invoke-virtual {v0, p0}, Lm/p;->a(Lm/I;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
