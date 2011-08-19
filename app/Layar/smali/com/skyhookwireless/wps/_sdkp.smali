.class Lcom/skyhookwireless/wps/_sdkp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/skyhookwireless/_sdkw;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final _sdkc:Z


# instance fields
.field private final _sdka:J

.field private final _sdkb:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkp;->_sdkc:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdka:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method _sdka(Lcom/skyhookwireless/_sdkub;J)Lcom/skyhookwireless/_sdkw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdkub;",
            "J)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkp;->_sdkb()Lcom/skyhookwireless/_sdkw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/skyhookwireless/_sdkw;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method _sdka()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method _sdka(Lcom/skyhookwireless/_sdkub;)V
    .locals 6

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkw;

    invoke-interface {v0}, Lcom/skyhookwireless/_sdkw;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdka:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method _sdka(Lcom/skyhookwireless/_sdkw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkp;->_sdkc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    sget-object v1, Lcom/skyhookwireless/_sdkw;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method _sdkb()Lcom/skyhookwireless/_sdkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkw;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _sdkb(Lcom/skyhookwireless/_sdkub;J)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdkub;",
            "J)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    new-instance v1, Lcom/skyhookwireless/wps/_sdkq;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/skyhookwireless/wps/_sdkq;-><init>(Lcom/skyhookwireless/wps/_sdkp;Lcom/skyhookwireless/_sdkub;J)V

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Lcom/skyhookwireless/_sdkgd;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkp;->_sdkb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
