.class public LZ/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;

.field public static final c:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x21b

    const/4 v3, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LZ/p;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LZ/p;->b:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LZ/p;->c:Law/f;

    sget-object v0, LZ/p;->a:Law/f;

    sget-object v1, Ld/h;->a:Law/f;

    invoke-virtual {v0, v4, v5, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, LZ/p;->b:Law/f;

    const/16 v1, 0x124

    invoke-virtual {v0, v1, v5, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v6, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x11b

    sget-object v2, LZ/h;->b:Law/f;

    invoke-virtual {v0, v1, v7, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, LZ/j;->a:Law/f;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, LZ/o;->a:Law/f;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x224

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x270f

    sget-object v2, LZ/p;->a:Law/f;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, LZ/p;->c:Law/f;

    const/16 v1, 0x124

    invoke-virtual {v0, v1, v5, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v6, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x224

    invoke-virtual {v0, v1, v7, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
