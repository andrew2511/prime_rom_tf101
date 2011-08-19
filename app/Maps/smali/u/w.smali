.class public Lu/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/w;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lu/w;->b:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/w;->a:Ljava/lang/String;

    return-object v0
.end method
