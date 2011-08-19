.class Lh/fW;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# instance fields
.field private final a:Lh/bi;

.field private final b:Lh/ev;

.field private final c:Lcom/google/googlenav/bL;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bL;Lh/ev;Lh/bi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lh/fW;->a:Lh/bi;

    iput-object p2, p0, Lh/fW;->b:Lh/ev;

    iput-object p1, p0, Lh/fW;->c:Lcom/google/googlenav/bL;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Law/e;)V
    .locals 2

    iget-object v0, p0, Lh/fW;->c:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->C()V

    iget-object v0, p0, Lh/fW;->b:Lh/ev;

    invoke-static {v0}, Lh/ev;->a(Lh/ev;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lh/fW;->a:Lh/bi;

    invoke-static {p2}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/bi;->a(Lcom/google/googlenav/c;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh/fW;->c:Lcom/google/googlenav/bL;

    const/16 v1, 0x2f8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lh/fW;->a:Lh/bi;

    invoke-virtual {v0}, Lh/bi;->a()V

    goto :goto_0
.end method
