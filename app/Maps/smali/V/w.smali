.class public LV/w;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;

.field public static final c:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x41b

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x21b

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LV/w;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LV/w;->b:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LV/w;->c:Law/f;

    sget-object v0, LV/w;->a:Law/f;

    const/16 v1, 0x224

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    sget-object v1, LV/q;->a:Law/f;

    invoke-virtual {v0, v3, v5, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    sget-object v1, LV/q;->b:Law/f;

    invoke-virtual {v0, v7, v6, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, LV/q;->b:Law/f;

    invoke-virtual {v0, v3, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, LV/w;->b:Law/f;

    sget-object v1, LV/w;->a:Law/f;

    invoke-virtual {v0, v7, v4, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    sget-object v1, LV/w;->a:Law/f;

    invoke-virtual {v0, v7, v5, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x224

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v6, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, LV/w;->c:Law/f;

    sget-object v1, LV/w;->b:Law/f;

    invoke-virtual {v0, v3, v4, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    sget-object v1, LV/w;->b:Law/f;

    invoke-virtual {v0, v3, v5, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, LV/q;->b:Law/f;

    invoke-virtual {v0, v3, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    sget-object v1, LV/q;->b:Law/f;

    invoke-virtual {v0, v3, v6, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, LV/w;->a:Law/f;

    invoke-virtual {v0, v3, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
