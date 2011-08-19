.class public Ls/F;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x215

    const/4 v3, 0x2

    const/4 v4, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/F;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/F;->b:Law/f;

    sget-object v0, Ls/F;->a:Law/f;

    const/16 v1, 0x11b

    sget-object v2, Ls/P;->a:Law/f;

    invoke-virtual {v0, v1, v3, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/F;->b:Law/f;

    const/16 v1, 0x11e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x413

    invoke-virtual {v0, v1, v3, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x3

    sget-object v3, Ls/P;->a:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v5, v1, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v5, v1, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
