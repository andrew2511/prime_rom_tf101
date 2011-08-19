.class public Lx/d;
.super Lx/B;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lx/g;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;[Lax/e;Lx/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    iput-object p6, p0, Lx/d;->c:Lx/g;

    iput-object p7, p0, Lx/d;->a:Ljava/lang/String;

    iput-object p8, p0, Lx/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/ui/bx;
    .locals 2

    iget v0, p0, Lx/d;->m:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lx/d;->m:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lx/d;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx/A;

    iget-object v0, p0, Lx/A;->a:Lcom/google/googlenav/ui/bx;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lx/d;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/bx;

    move-object v0, p0

    goto :goto_0
.end method
