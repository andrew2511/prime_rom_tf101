.class public Ld/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x224

    const/16 v4, 0x218

    const/4 v3, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ld/b;->a:Law/f;

    sget-object v0, Ld/b;->a:Law/f;

    const/16 v1, 0x415

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x412

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x6

    sget-object v2, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Law/e;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v5, v1, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v5, v1, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xf

    sget-object v3, LaE/a;->a:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
