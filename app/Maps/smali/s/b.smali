.class public Ls/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;

.field public static final c:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x224

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/b;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/b;->b:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/b;->c:Law/f;

    sget-object v0, Ls/b;->a:Law/f;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v4, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x221

    invoke-virtual {v0, v1, v5, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/b;->b:Law/f;

    invoke-virtual {v0, v6, v4, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/b;->c:Law/f;

    const/16 v1, 0x41b

    sget-object v2, Ls/b;->b:Law/f;

    invoke-virtual {v0, v1, v4, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
