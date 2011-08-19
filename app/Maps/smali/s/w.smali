.class public Ls/w;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x224

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x21e

    const/4 v3, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/w;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/w;->b:Law/f;

    sget-object v0, Ls/w;->a:Law/f;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x216

    invoke-virtual {v0, v1, v6, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v7, v1, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v4, v1, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/w;->b:Law/f;

    const/16 v1, 0x11e

    invoke-virtual {v0, v1, v5, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    sget-object v2, Ls/I;->a:Law/f;

    invoke-virtual {v0, v1, v6, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
