.class public Le/q;
.super Le/u;


# static fields
.field private static final d:[I


# instance fields
.field private final a:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Le/q;->d:[I

    return-void

    :array_0
    .array-data 0x4
        0xd6t 0x0t 0xbt 0x7ft
        0xd7t 0x0t 0xbt 0x7ft
        0xd8t 0x0t 0xbt 0x7ft
        0xd9t 0x0t 0xbt 0x7ft
        0xdat 0x0t 0xbt 0x7ft
        0xdbt 0x0t 0xbt 0x7ft
        0xdct 0x0t 0xbt 0x7ft
        0xddt 0x0t 0xbt 0x7ft
        0xdet 0x0t 0xbt 0x7ft
        0xdft 0x0t 0xbt 0x7ft
        0xe0t 0x0t 0xbt 0x7ft
        0xe1t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/u;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Le/q;->a:I

    iput p4, p0, Le/q;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Le/q;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v4, 0x1

    :goto_0
    iget v1, p0, Le/q;->a:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x2

    :cond_0
    :goto_1
    invoke-virtual {p0, v4}, Le/q;->a(I)LF/C;

    move-result-object v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x6

    iget-object v2, p0, Le/q;->b:Landroid/content/Context;

    sget-object v3, Le/q;->d:[I

    aget v0, v3, v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, LF/C;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    iget v0, p0, Le/q;->c:I

    if-eq v0, v5, :cond_5

    move-object v0, v3

    goto :goto_2

    :cond_2
    iget v1, p0, Le/q;->a:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_3
    iget v1, p0, Le/q;->a:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    move-object v0, v3

    goto :goto_2

    :cond_4
    iget-object v1, p0, Le/q;->b:Landroid/content/Context;

    sget-object v2, Le/q;->d:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Le/q;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Le/q;->c:I

    return v0
.end method
