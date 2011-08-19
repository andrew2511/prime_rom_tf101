.class public LV/u;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x224

    const/16 v4, 0x21b

    const/4 v3, 0x1

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LV/u;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LV/u;->b:Law/f;

    sget-object v0, LV/u;->a:Law/f;

    invoke-virtual {v0, v5, v3, v6}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, LV/u;->b:Law/f;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, LV/q;->a:Law/f;

    invoke-virtual {v0, v4, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, LV/u;->b:Law/f;

    invoke-virtual {v0, v5, v3, v6}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
