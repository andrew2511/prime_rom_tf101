.class public final Laj/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Law/e;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laj/f;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Laj/f;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b()Law/e;
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Ls/q;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laj/f;->a:Ljava/lang/String;

    return-object v0
.end method
