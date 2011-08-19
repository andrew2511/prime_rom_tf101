.class public LW/t;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW/t;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, LW/t;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LW/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW/t;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, LW/t;->e:Ljava/lang/String;

    iget v0, p1, LW/o;->a:I

    iput v0, p0, LW/t;->a:I

    iget v0, p1, LW/o;->b:I

    iput v0, p0, LW/t;->b:I

    iget v0, p1, LW/o;->c:I

    iput v0, p0, LW/t;->c:I

    iget v0, p1, LW/o;->d:I

    iput v0, p0, LW/t;->d:I

    return-void
.end method


# virtual methods
.method public a()LW/o;
    .locals 6

    new-instance v0, LW/o;

    iget v1, p0, LW/t;->a:I

    iget v2, p0, LW/t;->b:I

    iget v3, p0, LW/t;->c:I

    iget v4, p0, LW/t;->d:I

    iget-object v5, p0, LW/t;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, LW/o;-><init>(IIIILjava/lang/String;)V

    return-object v0
.end method

.method public a(II)LW/t;
    .locals 0

    iput p1, p0, LW/t;->a:I

    iput p2, p0, LW/t;->b:I

    return-object p0
.end method

.method public a(LW/u;)LW/t;
    .locals 2

    iget v0, p1, LW/u;->a:I

    iget v1, p1, LW/u;->b:I

    invoke-virtual {p0, v0, v1}, LW/t;->a(II)LW/t;

    move-result-object v0

    return-object v0
.end method
