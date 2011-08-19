.class public Ls/A;
.super Ljava/lang/Object;


# static fields
.field public static final a:Law/f;

.field public static final b:Law/f;

.field public static final c:Law/f;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x218

    const/16 v6, 0x224

    const/4 v5, 0x0

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/A;->a:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/A;->b:Law/f;

    new-instance v0, Law/f;

    invoke-direct {v0}, Law/f;-><init>()V

    sput-object v0, Ls/A;->c:Law/f;

    sget-object v0, Ls/A;->a:Law/f;

    invoke-virtual {v0, v6, v8, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    sget-object v1, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v9, v1}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x15

    sget-object v2, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21e

    const/16 v2, 0x16

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x415

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21e

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21e

    const/16 v2, 0x19

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x415

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v6, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x1d

    sget-object v2, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x1e

    sget-object v2, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x1f

    sget-object v3, Ls/A;->c:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x20

    sget-object v2, Law/e;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21

    sget-object v2, Law/e;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v7, v1, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x23

    sget-object v2, Law/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v1, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/A;->b:Law/f;

    invoke-virtual {v0, v6, v8, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x21b

    sget-object v2, Ls/A;->c:Law/f;

    invoke-virtual {v0, v1, v9, v2}, Law/f;->a(IILjava/lang/Object;)Law/f;

    sget-object v0, Ls/A;->c:Law/f;

    invoke-virtual {v0, v6, v8, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1, v9, v5}, Law/f;->a(IILjava/lang/Object;)Law/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
