.class Li/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lh/bv;


# instance fields
.field final synthetic a:Li/q;


# direct methods
.method constructor <init>(Li/q;)V
    .locals 0

    iput-object p1, p0, Li/bc;->a:Li/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Li/bc;->a:Li/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li/q;->e(Z)V

    iget-object v0, p0, Li/bc;->a:Li/q;

    invoke-virtual {v0}, Li/q;->aj()V

    return-void
.end method

.method public a(Lh/fP;)V
    .locals 1

    iget-object v0, p0, Li/bc;->a:Li/q;

    iput-object p1, v0, Li/q;->d:Lh/fP;

    return-void
.end method
