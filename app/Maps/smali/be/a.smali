.class public Lbe/a;
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

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x21b

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Lbe/a;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Lbe/a;->b:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Lbe/a;->c:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Lbe/a;->d:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Lbe/a;->e:Law/f;

    sget-object v0, Lbe/a;->a:Law/f;

    const/16 v1, 0x413

    invoke-virtual {v0, v1, v5, v7}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x415

    invoke-virtual {v0, v1, v6, v7}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Lbe/a;->b:Law/f;

    const/16 v1, 0x415

    invoke-virtual {v0, v1, v5, v7}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x424

    invoke-virtual {v0, v1, v6, v7}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Lbe/a;->c:Law/f;

    const/16 v1, 0x215

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21e

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x223

    invoke-virtual {v0, v1, v8, v7}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Lbe/a;->d:Law/f;

    sget-object v1, Lbe/a;->a:Law/f;

    invoke-virtual {v0, v4, v5, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    sget-object v1, Lbe/a;->c:Law/f;

    invoke-virtual {v0, v4, v6, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    sget-object v1, Lbe/a;->c:Law/f;

    invoke-virtual {v0, v4, v8, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Lbe/a;->e:Law/f;

    sget-object v1, Lbe/a;->a:Law/f;

    invoke-virtual {v0, v4, v5, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    sget-object v1, Lbe/a;->b:Law/f;

    invoke-virtual {v0, v4, v6, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    sget-object v1, Lbe/a;->c:Law/f;

    invoke-virtual {v0, v4, v8, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
