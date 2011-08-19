.class public Ls/L;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x218

    const/4 v3, 0x1

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/L;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/L;->b:Law/f;

    sget-object v0, Ls/L;->a:Law/f;

    const/16 v1, 0x124

    invoke-virtual {v0, v1, v3, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x415

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/L;->b:Law/f;

    const/16 v1, 0x21b

    sget-object v2, Ls/p;->b:Law/f;

    invoke-virtual {v0, v1, v3, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
