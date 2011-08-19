.class public Le/t;
.super Le/u;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/u;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Le/t;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Le/t;->b:Landroid/content/Context;

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Le/t;->a:I

    return v0
.end method
