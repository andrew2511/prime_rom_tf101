.class Lh/eW;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/cY;


# direct methods
.method constructor <init>(Lh/cY;)V
    .locals 0

    iput-object p1, p0, Lh/eW;->a:Lh/cY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lh/eW;->a:Lh/cY;

    iget-object v0, v0, Lh/cY;->a:Lh/dN;

    iget-object v1, p0, Lh/eW;->a:Lh/cY;

    invoke-static {v1}, Lh/cY;->a(Lh/cY;)Lcom/google/googlenav/bG;

    move-result-object v1

    const/16 v2, 0xab

    invoke-static {v0, v1, v2}, Lh/dN;->a(Lh/dN;Lcom/google/googlenav/bG;I)V

    return-void
.end method
