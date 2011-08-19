.class Lh/V;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cd;


# instance fields
.field final synthetic a:Lh/aB;


# direct methods
.method private constructor <init>(Lh/aB;)V
    .locals 0

    iput-object p1, p0, Lh/V;->a:Lh/aB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh/aB;Lh/ea;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/V;-><init>(Lh/aB;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lh/V;->a:Lh/aB;

    invoke-static {v0}, Lh/aB;->a(Lh/aB;)Lh/bd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lh/bd;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Law/e;Ljava/util/List;Law/e;J)V
    .locals 1

    iget-object v0, p0, Lh/V;->a:Lh/aB;

    invoke-static {v0}, Lh/aB;->a(Lh/aB;)Lh/bd;

    move-result-object v0

    invoke-interface {v0, p2}, Lh/bd;->a(Ljava/util/List;)V

    return-void
.end method
