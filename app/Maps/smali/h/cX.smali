.class Lh/cX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/bb;


# direct methods
.method constructor <init>(Lh/bb;)V
    .locals 0

    iput-object p1, p0, Lh/cX;->a:Lh/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lh/cX;->a:Lh/bb;

    iget-object v0, v0, Lh/bb;->c:Lh/dn;

    invoke-static {v0}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v0

    const/16 v1, 0x272

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ca

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a0

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lh/em;

    invoke-direct {v6, p0}, Lh/em;-><init>(Lh/cX;)V

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    return-void
.end method
