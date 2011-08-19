.class public Lx/V;
.super Lx/z;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xd

    invoke-direct {p0, v0, v1, v2, v2}, Lx/z;-><init>(IILjava/lang/String;[Lax/e;)V

    iput v1, p0, Lx/V;->e:I

    iput-object p1, p0, Lx/V;->a:Ljava/lang/String;

    iput-object p2, p0, Lx/V;->b:Ljava/lang/String;

    iput p3, p0, Lx/V;->c:I

    iput p4, p0, Lx/V;->d:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lx/V;->e:I

    return-void
.end method

.method public a()Z
    .locals 1

    iget v0, p0, Lx/V;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lx/V;->e:I

    return v0
.end method
