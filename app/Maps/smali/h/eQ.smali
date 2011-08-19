.class public Lh/eQ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cd;


# instance fields
.field final synthetic a:Lh/fQ;


# direct methods
.method protected constructor <init>(Lh/fQ;)V
    .locals 0

    iput-object p1, p0, Lh/eQ;->a:Lh/fQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lh/eQ;->a:Lh/fQ;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lh/fQ;->b(I)V

    return-void
.end method

.method public a(Law/e;Ljava/util/List;Law/e;J)V
    .locals 2

    iget-object v0, p0, Lh/eQ;->a:Lh/fQ;

    invoke-static {v0, p1}, Lh/fQ;->b(Lh/fQ;Law/e;)Law/e;

    iget-object v0, p0, Lh/eQ;->a:Lh/fQ;

    invoke-static {v0, p2}, Lh/fQ;->a(Lh/fQ;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lh/eQ;->a:Lh/fQ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lh/fQ;->b(I)V

    return-void
.end method
