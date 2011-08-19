.class abstract Lbo;
.super Ljava/lang/Object;

# interfaces
.implements Lag;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laf;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lbm;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Laf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Laf;->b()Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Laf;->d()Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lbo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
