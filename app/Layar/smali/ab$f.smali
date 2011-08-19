.class final Lab$f;
.super Ljava/lang/Object;

# interfaces
.implements Lam;
.implements Lay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lay",
        "<",
        "Ljava/util/Collection;",
        ">;",
        "Lam",
        "<",
        "Ljava/util/Collection;",
        ">;"
    }
.end annotation


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lab$f;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lav;)Lao;
    .locals 5

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_1

    invoke-static {}, Las;->h()Las;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lak;

    invoke-direct {v0}, Lak;-><init>()V

    const/4 v1, 0x0

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_2

    new-instance v1, Lbt;

    invoke-direct {v1, p2}, Lbt;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1}, Lbt;->a()Ljava/lang/reflect/Type;

    move-result-object v1

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Las;->h()Las;

    move-result-object v3

    invoke-virtual {v0, v3}, Lak;->a(Lao;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const-class v4, Ljava/lang/Object;

    if-ne v1, v4, :cond_5

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_1
    invoke-interface {p3, v3, v4}, Lav;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lao;

    move-result-object v3

    invoke-virtual {v0, v3}, Lak;->a(Lao;)V

    goto :goto_0

    :cond_5
    move-object v4, v1

    goto :goto_1
.end method
