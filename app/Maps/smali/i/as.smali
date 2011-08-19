.class Li/as;
.super Ljava/lang/Object;

# interfaces
.implements Lh/aK;


# instance fields
.field final synthetic a:Li/C;


# direct methods
.method constructor <init>(Li/C;)V
    .locals 0

    iput-object p1, p0, Li/as;->a:Li/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Li/as;->a:Li/C;

    const/16 v1, 0x149

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Li/C;->a(IILjava/lang/Object;)Z

    iget-object v0, p0, Li/as;->a:Li/C;

    invoke-virtual {v0}, Li/C;->M()V

    return-void
.end method
