.class Lh/cO;
.super Ljava/lang/Object;

# interfaces
.implements Lo/am;


# instance fields
.field final synthetic a:Lh/cA;


# direct methods
.method constructor <init>(Lh/cA;)V
    .locals 0

    iput-object p1, p0, Lh/cO;->a:Lh/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/cO;->a:Lh/cA;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh/cA;->a(Lh/cA;Z)Z

    iget-object v0, p0, Lh/cO;->a:Lh/cA;

    invoke-virtual {v0}, Lh/cA;->i()V

    return-void
.end method
