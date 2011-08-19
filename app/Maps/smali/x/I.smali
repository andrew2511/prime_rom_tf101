.class public Lx/I;
.super Lx/z;


# instance fields
.field public final a:Lcom/google/googlenav/ui/bx;

.field public final b:Z

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/googlenav/ui/bx;Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lx/z;-><init>(IILjava/lang/String;[Lax/e;)V

    iput-object p3, p0, Lx/I;->a:Lcom/google/googlenav/ui/bx;

    iput-boolean p4, p0, Lx/I;->b:Z

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    iput p1, p0, Lx/I;->c:I

    iput p2, p0, Lx/I;->d:I

    return-void
.end method
