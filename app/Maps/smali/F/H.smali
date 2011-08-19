.class LF/H;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:LF/L;


# direct methods
.method constructor <init>(LF/L;)V
    .locals 0

    iput-object p1, p0, LF/H;->a:LF/L;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, LF/H;->a:LF/L;

    invoke-static {v0, p1}, LF/L;->a(LF/L;Landroid/os/Message;)V

    return-void
.end method
