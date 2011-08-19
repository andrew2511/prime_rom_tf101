.class Lh/aP;
.super Ljava/lang/Object;

# interfaces
.implements Lh/aZ;


# instance fields
.field final synthetic a:Lh/fQ;


# direct methods
.method constructor <init>(Lh/fQ;)V
    .locals 0

    iput-object p1, p0, Lh/aP;->a:Lh/fQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/aP;->a:Lh/fQ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lh/fQ;->b(I)V

    return-void
.end method

.method public a(Law/e;)V
    .locals 1

    iget-object v0, p0, Lh/aP;->a:Lh/fQ;

    invoke-static {v0, p1}, Lh/fQ;->a(Lh/fQ;Law/e;)V

    return-void
.end method
