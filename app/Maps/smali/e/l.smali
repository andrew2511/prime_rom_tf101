.class public Le/l;
.super Le/u;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/u;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Le/l;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget v0, p0, Le/l;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/l;->b:Landroid/content/Context;

    const v1, 0x7f0b00e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Le/l;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Le/l;->b:Landroid/content/Context;

    const v1, 0x7f0b00e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Le/l;->a:I

    return v0
.end method
