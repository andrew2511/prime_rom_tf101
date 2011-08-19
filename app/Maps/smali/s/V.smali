.class public Ls/V;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x11e

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/V;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/V;->b:Law/f;

    sget-object v0, Ls/V;->a:Law/f;

    invoke-virtual {v0, v5, v3, v6}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x11b

    sget-object v2, LZ/l;->k:Law/f;

    invoke-virtual {v0, v1, v4, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/V;->b:Law/f;

    invoke-virtual {v0, v5, v3, v6}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    sget-object v2, LZ/l;->y:Law/f;

    invoke-virtual {v0, v1, v4, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
