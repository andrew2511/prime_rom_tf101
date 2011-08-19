.class Lh/r;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lh/y;


# direct methods
.method constructor <init>(Lh/y;)V
    .locals 0

    iput-object p1, p0, Lh/r;->a:Lh/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lh/r;->a:Lh/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/y;->a(I)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lh/r;->b(Z)V

    return-void
.end method
