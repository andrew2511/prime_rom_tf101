.class public final Laj/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Laj/d;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 8

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v6}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Laj/e;->a()Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    new-array v2, v0, [Laj/d;

    iput-object v2, p0, Laj/e;->a:[Laj/d;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    iget-object v4, p0, Laj/e;->a:[Laj/d;

    new-instance v5, Laj/d;

    invoke-direct {v5, v3}, Laj/d;-><init>(Law/e;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public static a()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/q;->h:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-static {}, Laj/d;->a()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILaw/e;)V

    return-object v0
.end method
