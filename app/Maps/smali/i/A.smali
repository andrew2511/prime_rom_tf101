.class Li/A;
.super Ljava/lang/Object;

# interfaces
.implements Lx/x;


# instance fields
.field final synthetic a:Li/av;


# direct methods
.method constructor <init>(Li/av;)V
    .locals 0

    iput-object p1, p0, Li/A;->a:Li/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 2

    iget-object v0, p0, Li/A;->a:Li/av;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Li/av;->a(Li/av;I)I

    iget-object v0, p0, Li/A;->a:Li/av;

    invoke-virtual {v0}, Li/av;->au()V

    const/4 v0, 0x1

    return v0
.end method
