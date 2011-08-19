.class Lh/u;
.super Ljava/lang/Object;

# interfaces
.implements LaH/b;


# instance fields
.field final synthetic a:Lh/y;


# direct methods
.method constructor <init>(Lh/y;)V
    .locals 0

    iput-object p1, p0, Lh/u;->a:Lh/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lh/u;->a:Lh/y;

    iget-object v0, v0, Lh/y;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x2ed

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/u;->a:Lh/y;

    iget-object v0, v0, Lh/y;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0xf8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
