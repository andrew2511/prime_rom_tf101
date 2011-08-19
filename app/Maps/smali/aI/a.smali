.class public LaI/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;

.field public static final c:Law/f;

.field public static final d:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x213

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x224

    const/4 v5, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LaI/a;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LaI/a;->b:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LaI/a;->c:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LaI/a;->d:Law/f;

    sget-object v0, LaI/a;->a:Law/f;

    const/16 v1, 0x21b

    sget-object v2, LaI/b;->a:Law/f;

    invoke-virtual {v0, v1, v7, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    sget-object v2, LZ/f;->a:Law/f;

    invoke-virtual {v0, v1, v8, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x3

    sget-object v3, LaI/b;->b:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x4

    sget-object v3, LaI/b;->f:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x5

    sget-object v3, LaI/b;->c:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v9, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, LaI/a;->b:Law/f;

    const/16 v1, 0x41b

    sget-object v2, LaI/a;->a:Law/f;

    invoke-virtual {v0, v1, v7, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x217

    invoke-virtual {v0, v1, v8, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, LaI/a;->c:Law/f;

    const/16 v1, 0x11b

    sget-object v2, LaI/a;->b:Law/f;

    invoke-virtual {v0, v1, v7, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v9, v8, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, LaI/a;->d:Law/f;

    const/16 v1, 0x11b

    sget-object v2, LaI/b;->d:Law/f;

    invoke-virtual {v0, v1, v7, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    invoke-virtual {v0, v9, v8, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
