.class Lh/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lh/M;


# instance fields
.field final synthetic a:Lh/eZ;


# direct methods
.method constructor <init>(Lh/eZ;)V
    .locals 0

    iput-object p1, p0, Lh/bk;->a:Lh/eZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/bk;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    invoke-virtual {v0, p1}, Lh/dn;->a(Ljava/util/List;)V

    iget-object v0, p0, Lh/bk;->a:Lh/eZ;

    invoke-static {v0}, Lh/eZ;->a(Lh/eZ;)V

    goto :goto_0
.end method
