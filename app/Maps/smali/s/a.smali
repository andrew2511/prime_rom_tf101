.class public Ls/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;

.field public static final c:Law/f;

.field public static final d:Law/f;

.field public static final e:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x224

    const/16 v7, 0x124

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/a;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/a;->b:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/a;->c:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/a;->d:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/a;->e:Law/f;

    sget-object v0, Ls/a;->a:Law/f;

    const/16 v1, 0x21e

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v8, v1, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v8, v1, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x5

    sget-object v3, Ls/a;->b:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/a;->b:Law/f;

    invoke-virtual {v0, v7, v5, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    invoke-virtual {v0, v8, v6, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v8, v1, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/a;->c:Law/f;

    invoke-virtual {v0, v7, v5, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x424

    invoke-virtual {v0, v1, v6, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/a;->d:Law/f;

    invoke-virtual {v0, v7, v5, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x424

    invoke-virtual {v0, v1, v6, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x3

    sget-object v3, Ls/a;->c:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/a;->e:Law/f;

    const/16 v1, 0x41b

    sget-object v2, Ls/a;->a:Law/f;

    invoke-virtual {v0, v1, v5, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
