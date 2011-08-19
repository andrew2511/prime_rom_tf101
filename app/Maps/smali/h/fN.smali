.class Lh/fN;
.super Ljava/lang/Object;

# interfaces
.implements Lak/i;


# instance fields
.field final synthetic a:Lh/eq;


# direct methods
.method constructor <init>(Lh/eq;)V
    .locals 0

    iput-object p1, p0, Lh/fN;->a:Lh/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public X_()V
    .locals 2

    iget-object v0, p0, Lh/fN;->a:Lh/eq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh/eq;->b(Lh/eq;Z)Z

    iget-object v0, p0, Lh/fN;->a:Lh/eq;

    invoke-virtual {v0}, Lh/eq;->v()V

    return-void
.end method
