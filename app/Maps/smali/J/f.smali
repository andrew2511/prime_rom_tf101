.class LJ/f;
.super Ljava/lang/Object;

# interfaces
.implements Lae/f;


# instance fields
.field final synthetic a:I

.field final synthetic b:LJ/a;


# direct methods
.method constructor <init>(LJ/a;I)V
    .locals 0

    iput-object p1, p0, LJ/f;->b:LJ/a;

    iput p2, p0, LJ/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJ/o;)Z
    .locals 2

    invoke-virtual {p1}, LJ/o;->a()I

    move-result v0

    iget v1, p0, LJ/f;->a:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, LJ/o;

    invoke-virtual {p0, p1}, LJ/f;->a(LJ/o;)Z

    move-result v0

    return v0
.end method
