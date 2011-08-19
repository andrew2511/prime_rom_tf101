.class public Lcom/google/googlenav/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/o;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/o;->c:I

    return-void
.end method

.method public static a(Law/e;)Lcom/google/googlenav/o;
    .locals 4

    new-instance v0, Lcom/google/googlenav/o;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {p0, v3}, Law/b;->e(Law/e;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/o;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
