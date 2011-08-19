.class Lcom/skyhookwireless/wps/_sdkkb;
.super Ljava/lang/Object;


# static fields
.field static final synthetic _sdkc:Z


# instance fields
.field private final _sdka:Lcom/skyhookwireless/wps/_sdkp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skyhookwireless/wps/_sdkp",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation
.end field

.field private final _sdkb:Lcom/skyhookwireless/wps/_sdkp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skyhookwireless/wps/_sdkp",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/skyhookwireless/wps/_sdkkb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkkb;->_sdkc:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/skyhookwireless/wps/_sdkp;

    invoke-direct {v0, p1, p2}, Lcom/skyhookwireless/wps/_sdkp;-><init>(J)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdka:Lcom/skyhookwireless/wps/_sdkp;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkp;

    invoke-direct {v0, p1, p2}, Lcom/skyhookwireless/wps/_sdkp;-><init>(J)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdkb:Lcom/skyhookwireless/wps/_sdkp;

    return-void
.end method


# virtual methods
.method _sdka(Lcom/skyhookwireless/_sdkub;J)Lcom/skyhookwireless/wps/_sdkdb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdka:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/skyhookwireless/wps/_sdkp;->_sdka(Lcom/skyhookwireless/_sdkub;J)Lcom/skyhookwireless/_sdkw;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    return-object p0
.end method

.method _sdka()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdka:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkp;->_sdka()V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdkb:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkp;->_sdka()V

    return-void
.end method

.method _sdka(Lcom/skyhookwireless/_sdkub;)V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdka:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkp;->_sdka(Lcom/skyhookwireless/_sdkub;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdkb:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkp;->_sdka(Lcom/skyhookwireless/_sdkub;)V

    return-void
.end method

.method _sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkdb;)V
    .locals 1

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkkb;->_sdkc:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkkb;->_sdkc:Z

    if-nez v0, :cond_2

    if-ne p1, p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkkb;->_sdkc:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->getSatellites()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkdb;->getSatellites()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdka:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkp;->_sdka(Lcom/skyhookwireless/_sdkw;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdkb:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0, p2}, Lcom/skyhookwireless/wps/_sdkp;->_sdka(Lcom/skyhookwireless/_sdkw;)V

    return-void
.end method

.method _sdkb()Lcom/skyhookwireless/wps/_sdkdb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdka:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkp;->_sdkb()Lcom/skyhookwireless/_sdkw;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    return-object p0
.end method

.method _sdkb(Lcom/skyhookwireless/_sdkub;J)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdkub;",
            "J)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdka:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/skyhookwireless/wps/_sdkp;->_sdkb(Lcom/skyhookwireless/_sdkub;J)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method _sdkc()Lcom/skyhookwireless/wps/_sdkdb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdkb:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkp;->_sdkb()Lcom/skyhookwireless/_sdkw;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    return-object p0
.end method

.method _sdkd()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkkb;->_sdkb:Lcom/skyhookwireless/wps/_sdkp;

    return-object v0
.end method
