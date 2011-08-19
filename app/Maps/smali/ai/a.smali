.class public Lai/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x224

    const/4 v4, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Lai/a;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Lai/a;->b:Law/f;

    sget-object v0, Lai/a;->a:Law/f;

    invoke-virtual {v0, v5, v6, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lai/a;->b:Law/f;

    invoke-virtual {v0, v1, v7, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x215

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x4

    sget-object v3, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Lai/a;->b:Law/f;

    invoke-virtual {v0, v5, v6, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x424

    invoke-virtual {v0, v1, v7, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v5, v1, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x221

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x221

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x7

    sget-object v3, Ld/j;->a:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x41b

    const/16 v2, 0x9

    sget-object v3, Ld/a;->a:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
