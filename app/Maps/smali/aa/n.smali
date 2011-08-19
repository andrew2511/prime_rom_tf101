.class Laa/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LF/M;

.field final synthetic b:Laa/D;


# direct methods
.method constructor <init>(Laa/D;LF/M;)V
    .locals 0

    iput-object p1, p0, Laa/n;->b:Laa/D;

    iput-object p2, p0, Laa/n;->a:LF/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Laa/n;->b:Laa/D;

    invoke-static {v0}, Laa/D;->b(Laa/D;)Laa/y;

    move-result-object v0

    iget-object v1, p0, Laa/n;->a:LF/M;

    invoke-interface {v0, v1}, Laa/y;->a(LF/M;)V

    return-void
.end method
