.class public abstract Le/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field protected final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/u;->b:Landroid/content/Context;

    iput-object p2, p0, Le/u;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)LF/C;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Le/u;->a:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Le/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/C;

    invoke-virtual {p0}, LF/C;->a()I

    move-result v1

    if-ne v1, p1, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Le/u;->a:Ljava/util/List;

    return-object v0
.end method
