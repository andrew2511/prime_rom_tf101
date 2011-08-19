.class public Ld/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x21b

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ld/f;->a:Law/f;

    sget-object v0, Ld/f;->a:Law/f;

    const/16 v1, 0x11e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x3

    sget-object v3, Ld/c;->a:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, Ld/h;->a:Law/f;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x6

    sget-object v2, Ld/b;->a:Law/f;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0xf

    sget-object v2, LaE/a;->a:Law/f;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
