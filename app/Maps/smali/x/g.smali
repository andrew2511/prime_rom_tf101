.class public Lx/g;
.super Lx/z;


# instance fields
.field public final a:Lcom/google/googlenav/ui/bx;

.field public final b:Lcom/google/googlenav/ui/bx;

.field public final c:Lcom/google/googlenav/ui/bx;

.field public final d:Lcom/google/googlenav/ui/bx;

.field public final e:Lcom/google/googlenav/ui/bx;

.field public final f:Lcom/google/googlenav/ui/bx;

.field public final g:Lcom/google/googlenav/ui/bx;

.field public final h:Lax/d;

.field public final i:I

.field public final j:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lax/d;IZLjava/lang/String;ZLcom/google/googlenav/ui/bx;)V
    .locals 3

    const/16 v0, 0xa

    if-eqz p11, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p10, v2}, Lx/z;-><init>(IILjava/lang/String;[Lax/e;)V

    iput-object p1, p0, Lx/g;->a:Lcom/google/googlenav/ui/bx;

    iput-object p2, p0, Lx/g;->b:Lcom/google/googlenav/ui/bx;

    iput-object p3, p0, Lx/g;->c:Lcom/google/googlenav/ui/bx;

    iput-object p4, p0, Lx/g;->d:Lcom/google/googlenav/ui/bx;

    iput-object p5, p0, Lx/g;->e:Lcom/google/googlenav/ui/bx;

    iput-object p6, p0, Lx/g;->f:Lcom/google/googlenav/ui/bx;

    iput-object p7, p0, Lx/g;->h:Lax/d;

    iput p8, p0, Lx/g;->i:I

    iput-boolean p9, p0, Lx/g;->j:Z

    iput-object p12, p0, Lx/g;->g:Lcom/google/googlenav/ui/bx;

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
