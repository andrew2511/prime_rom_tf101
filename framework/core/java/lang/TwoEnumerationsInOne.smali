.class Ljava/lang/TwoEnumerationsInOne;
.super Ljava/lang/Object;
.source "ClassLoader.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field private first:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private second:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;Ljava/util/Enumeration;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, first:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .local p2, second:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput-object p1, p0, Ljava/lang/TwoEnumerationsInOne;->first:Ljava/util/Enumeration;

    .line 968
    iput-object p2, p0, Ljava/lang/TwoEnumerationsInOne;->second:Ljava/util/Enumeration;

    .line 969
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 972
    iget-object v0, p0, Ljava/lang/TwoEnumerationsInOne;->first:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/lang/TwoEnumerationsInOne;->second:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 960
    invoke-virtual {p0}, Ljava/lang/TwoEnumerationsInOne;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .registers 2

    .prologue
    .line 976
    iget-object v0, p0, Ljava/lang/TwoEnumerationsInOne;->first:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 977
    iget-object v0, p0, Ljava/lang/TwoEnumerationsInOne;->first:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/URL;

    move-object v0, p0

    .line 979
    :goto_11
    return-object v0

    .restart local p0
    :cond_12
    iget-object v0, p0, Ljava/lang/TwoEnumerationsInOne;->second:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/URL;

    move-object v0, p0

    goto :goto_11
.end method
