.class public Le/r;
.super Le/u;


# static fields
.field private static final c:[I


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Le/r;->c:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xedt 0x0t 0xbt 0x7ft
        0xf0t 0x0t 0xbt 0x7ft
        0xeet 0x0t 0xbt 0x7ft
        0xf1t 0x0t 0xbt 0x7ft
        0xeft 0x0t 0xbt 0x7ft
        0xf2t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/u;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Le/r;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Le/r;->a(I)LF/C;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/r;->b:Landroid/content/Context;

    const v2, 0x7f0b00f3

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, LF/C;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Le/r;->a:I

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v1}, Le/r;->a(I)LF/C;

    move-result-object v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Le/r;->b:Landroid/content/Context;

    sget-object v3, Le/r;->c:[I

    aget v0, v3, v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, LF/C;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Le/r;->a:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    iget-object v1, p0, Le/r;->b:Landroid/content/Context;

    sget-object v2, Le/r;->c:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Le/r;->a:I

    return v0
.end method
