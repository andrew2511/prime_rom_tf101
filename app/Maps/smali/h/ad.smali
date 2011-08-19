.class Lh/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lh/J;


# direct methods
.method constructor <init>(Lh/J;[BLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh/ad;->c:Lh/J;

    iput-object p2, p0, Lh/ad;->a:[B

    iput-object p3, p0, Lh/ad;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/16 v11, 0x453

    const/16 v10, 0x270

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lh/ad;->c:Lh/J;

    iget-object v0, v0, Lh/J;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/ad;->a:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/ad;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lh/ad;->a:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x453

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x270

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lx/C;->a(Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZ)Lx/C;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Lx/i;

    invoke-direct {v1, v7, v8, v0, v7}, Lx/i;-><init>(Ljava/lang/String;ILx/C;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lx/k;->a(Lx/i;)Lx/J;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lh/ad;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v11}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v7

    move-object v2, v7

    move v5, v9

    move v6, v8

    invoke-static/range {v0 .. v6}, Lx/C;->a(Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZ)Lx/C;

    move-result-object v0

    goto :goto_1
.end method
