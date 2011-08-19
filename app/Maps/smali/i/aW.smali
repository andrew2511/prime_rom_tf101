.class final Li/aW;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;

.field final synthetic b:Lu/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;Lu/d;)V
    .locals 0

    iput-object p1, p0, Li/aW;->a:Lcom/google/googlenav/ui/aT;

    iput-object p2, p0, Li/aW;->b:Lu/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "r"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Li/aW;->a:Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Li/aW;->b:Lu/d;

    invoke-static {v0, v1}, Li/v;->a(Lcom/google/googlenav/ui/aT;Lu/v;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "u"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Li/aW;->a:Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Li/aW;->b:Lu/d;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lu/d;)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "b"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
