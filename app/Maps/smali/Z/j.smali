.class public LZ/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x11b

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, LZ/j;->a:Law/f;

    sget-object v0, LZ/j;->a:Law/f;

    const/4 v1, 0x1

    sget-object v2, LZ/o;->a:Law/f;

    invoke-virtual {v0, v3, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, LZ/o;->a:Law/f;

    invoke-virtual {v0, v3, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
