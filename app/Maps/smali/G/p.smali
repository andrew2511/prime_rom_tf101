.class public LG/p;
.super LG/E;


# direct methods
.method public constructor <init>(LG/ac;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, LG/E;-><init>(LG/ac;LG/d;II)V

    return-void
.end method


# virtual methods
.method public a()LG/ac;
    .locals 1

    iget-object v0, p0, LG/p;->a:LG/ac;

    return-object v0
.end method
