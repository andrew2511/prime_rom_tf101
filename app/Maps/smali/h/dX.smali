.class Lh/dX;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ca;


# instance fields
.field final synthetic a:Lh/fK;


# direct methods
.method private constructor <init>(Lh/fK;)V
    .locals 0

    iput-object p1, p0, Lh/dX;->a:Lh/fK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh/fK;Lh/fL;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/dX;-><init>(Lh/fK;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Vector;)V
    .locals 1

    iget-object v0, p0, Lh/dX;->a:Lh/fK;

    invoke-static {v0}, Lh/fK;->a(Lh/fK;)Lh/fA;

    move-result-object v0

    invoke-interface {v0, p1}, Lh/fA;->a(Ljava/util/Vector;)V

    return-void
.end method

.method public az_()V
    .locals 1

    iget-object v0, p0, Lh/dX;->a:Lh/fK;

    invoke-static {v0}, Lh/fK;->a(Lh/fK;)Lh/fA;

    move-result-object v0

    invoke-interface {v0}, Lh/fA;->a()V

    return-void
.end method
