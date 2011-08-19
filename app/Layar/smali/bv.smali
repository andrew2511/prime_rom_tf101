.class final Lbv;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-class v2, Ljava/util/Properties;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Ljava/lang/String;

    iput-object v1, p0, Lbv;->a:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/String;

    iput-object v1, p0, Lbv;->b:Ljava/lang/reflect/Type;

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    new-instance v1, Lbr;

    invoke-direct {v1, p1}, Lbr;-><init>(Ljava/lang/reflect/Type;)V

    const-class v2, Ljava/util/Map;

    invoke-virtual {v1}, Lbr;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    invoke-static {v1}, Lbm;->a(Z)V

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lbv;->a:Ljava/lang/reflect/Type;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lbv;->b:Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Map objects need to be parameterized unless you use a custom serializer. Use the com.google.gson.reflect.TypeToken to extract the ParameterizedType."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lbv;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method
