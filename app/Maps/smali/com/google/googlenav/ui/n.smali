.class Lcom/google/googlenav/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/n;->a:Lcom/google/googlenav/ui/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/n;->a:Lcom/google/googlenav/ui/F;

    iget-object v1, p0, Lcom/google/googlenav/ui/n;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v1}, Lcom/google/googlenav/ui/F;->h(Lcom/google/googlenav/ui/F;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;Ljava/lang/String;)V

    return-void
.end method
