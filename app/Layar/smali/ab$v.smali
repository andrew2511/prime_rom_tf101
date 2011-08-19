.class Lab$v;
.super Ljava/lang/Object;

# interfaces
.implements Lam;
.implements Lay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lay",
        "<",
        "Ljava/util/Map;",
        ">;",
        "Lam",
        "<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lav;)Lao;
    .locals 5

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lat;

    invoke-direct {v0}, Lat;-><init>()V

    const/4 v1, 0x0

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    new-instance v1, Lbv;

    invoke-direct {v1, p2}, Lbv;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1}, Lbv;->a()Ljava/lang/reflect/Type;

    move-result-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Las;->h()Las;

    move-result-object v3

    :goto_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lat;->a(Ljava/lang/String;Lao;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_2
    invoke-interface {p3, v3, v4}, Lav;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lao;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v4, v1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-class v0, Lab$v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
