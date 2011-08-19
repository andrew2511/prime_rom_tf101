.class public LV/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;

.field public static final c:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v2, 0x41b

    const/16 v4, 0x21b

    const/4 v3, 0x1

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LV/r;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LV/r;->b:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LV/r;->c:Law/f;

    sget-object v0, LV/r;->a:Law/f;

    sget-object v1, LV/r;->b:Law/f;

    invoke-virtual {v0, v2, v3, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, LV/r;->b:Law/f;

    sget-object v1, LV/r;->c:Law/f;

    invoke-virtual {v0, v2, v3, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, LV/q;->a:Law/f;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x224

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, LV/r;->c:Law/f;

    sget-object v1, LV/q;->a:Law/f;

    invoke-virtual {v0, v4, v3, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
