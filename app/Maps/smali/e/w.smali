.class public Le/w;
.super Le/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/u;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Le/w;->a(I)LF/C;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/w;->b:Landroid/content/Context;

    const v2, 0x7f0b00e4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, LF/C;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Le/w;->b:Landroid/content/Context;

    const v1, 0x7f0b00e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
