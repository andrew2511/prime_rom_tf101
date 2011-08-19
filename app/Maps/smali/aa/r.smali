.class Laa/r;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Laa/h;


# direct methods
.method constructor <init>(Laa/h;)V
    .locals 0

    iput-object p1, p0, Laa/r;->a:Laa/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Laa/r;->a:Laa/h;

    invoke-static {v0, p1}, Laa/h;->a(Laa/h;Landroid/os/Message;)V

    return-void
.end method
