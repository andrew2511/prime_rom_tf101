.class Lcom/skyhookwireless/_sdkbd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final _sdka:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final _sdkb:Lcom/skyhookwireless/_sdkgd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skyhookwireless/_sdkgd",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/skyhookwireless/_sdkgd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/skyhookwireless/_sdkgd",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skyhookwireless/_sdkbd;->_sdka:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/skyhookwireless/_sdkbd;->_sdkb:Lcom/skyhookwireless/_sdkgd;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/_sdkcd;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkbd;->_sdka:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkbd;->_sdkb:Lcom/skyhookwireless/_sdkgd;

    invoke-direct {v0, p0, v1, v2}, Lcom/skyhookwireless/_sdkcd;-><init>(Lcom/skyhookwireless/_sdkbd;Ljava/util/Iterator;Lcom/skyhookwireless/_sdkgd;)V

    return-object v0
.end method
