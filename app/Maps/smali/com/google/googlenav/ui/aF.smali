.class Lcom/google/googlenav/ui/aF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/googlenav/ui/o;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/o;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aF;->c:Lcom/google/googlenav/ui/o;

    iput-object p2, p0, Lcom/google/googlenav/ui/aF;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/googlenav/ui/aF;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->c:Lcom/google/googlenav/ui/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/o;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->c:Lcom/google/googlenav/ui/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/o;->a:Lcom/google/googlenav/ui/F;

    iget-object v1, p0, Lcom/google/googlenav/ui/aF;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/googlenav/ui/aF;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
