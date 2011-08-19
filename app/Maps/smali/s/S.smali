.class public Ls/S;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;

.field public static final c:Law/f;

.field public static final d:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/S;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/S;->b:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/S;->c:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/S;->d:Law/f;

    sget-object v0, Ls/S;->a:Law/f;

    const/16 v1, 0x21e

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/S;->b:Law/f;

    const/16 v1, 0x11e

    invoke-virtual {v0, v1, v5, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    sget-object v2, Ls/I;->a:Law/f;

    invoke-virtual {v0, v1, v6, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    sget-object v2, Ls/S;->c:Law/f;

    invoke-virtual {v0, v1, v7, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Ls/S;->d:Law/f;

    invoke-virtual {v0, v1, v8, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/S;->d:Law/f;

    const/16 v1, 0x124

    invoke-virtual {v0, v1, v5, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x124

    invoke-virtual {v0, v1, v6, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x224

    invoke-virtual {v0, v1, v7, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x213

    invoke-virtual {v0, v1, v8, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x224

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v4}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21e

    const/16 v2, 0x8

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x218

    const/16 v2, 0x9

    sget-object v3, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
