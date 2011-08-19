.class Lah/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:I

.field final synthetic c:Lah/u;


# direct methods
.method constructor <init>(Lah/u;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lah/D;->c:Lah/u;

    iput-object p2, p0, Lah/D;->a:Landroid/os/Handler;

    iput p3, p0, Lah/D;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lah/D;->c:Lah/u;

    iget-object v1, p0, Lah/D;->c:Lah/u;

    invoke-static {v1}, Lah/u;->a(Lah/u;)I

    move-result v1

    invoke-static {v0, v1}, Lah/u;->a(Lah/u;I)V

    iget-object v0, p0, Lah/D;->a:Landroid/os/Handler;

    iget-object v1, p0, Lah/D;->c:Lah/u;

    invoke-static {v1}, Lah/u;->b(Lah/u;)Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lah/D;->b:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
