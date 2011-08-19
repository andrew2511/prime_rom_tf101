.class public Ls/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;

.field public static final c:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x224

    const/4 v2, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/m;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/m;->b:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/m;->c:Law/f;

    sget-object v0, Ls/m;->a:Law/f;

    invoke-virtual {v0, v3, v4, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x218

    invoke-virtual {v0, v1, v5, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/m;->b:Law/f;

    invoke-virtual {v0, v3, v4, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/m;->c:Law/f;

    const/16 v1, 0x21e

    invoke-virtual {v0, v1, v4, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x3

    sget-object v3, Ls/m;->b:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
