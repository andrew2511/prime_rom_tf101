.class Laa/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laa/h;


# direct methods
.method constructor <init>(Laa/h;)V
    .locals 0

    iput-object p1, p0, Laa/q;->a:Laa/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Laa/q;->a:Laa/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laa/h;->a(Laa/h;I)I

    iget-object v0, p0, Laa/q;->a:Laa/h;

    iget-object v1, p0, Laa/q;->a:Laa/h;

    invoke-static {v1}, Laa/h;->a(Laa/h;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laa/h;->a(ILandroid/os/Bundle;)V

    return-void
.end method
