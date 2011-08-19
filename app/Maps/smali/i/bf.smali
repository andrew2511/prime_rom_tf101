.class Li/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lx/j;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Li/bl;


# direct methods
.method constructor <init>(Li/bl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Li/bf;->b:Li/bl;

    iput-object p2, p0, Li/bf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Li/bf;->b:Li/bl;

    iget-object v0, v0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x0

    const-string v2, "21"

    iget-object v3, p0, Li/bf;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
