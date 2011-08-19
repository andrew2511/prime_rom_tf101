.class public final Lcom/skyhookwireless/wps/_sdku;
.super Ljava/lang/Object;


# static fields
.field static final _sdkc:Z


# instance fields
.field private final _sdka:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkv;",
            ">;"
        }
    .end annotation
.end field

.field private final _sdkb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/skyhookwireless/wps/_sdku;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdku;->_sdkc:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    iput p1, p0, Lcom/skyhookwireless/wps/_sdku;->_sdkb:I

    return-void
.end method


# virtual methods
.method public _sdka(Lcom/skyhookwireless/_sdkyb;)I
    .locals 4

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkv;

    iget-object v3, v0, Lcom/skyhookwireless/wps/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {v3, p1}, Lcom/skyhookwireless/_sdkyb;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget v0, v0, Lcom/skyhookwireless/wps/_sdkv;->_sdkb:I

    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public _sdka(Lcom/skyhookwireless/_sdkyb;I)V
    .locals 3

    const/4 v2, -0x1

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdku;->_sdkc:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdku;->_sdkc:Z

    if-nez v0, :cond_1

    if-gt p2, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/skyhookwireless/wps/_sdku;->_sdka(Lcom/skyhookwireless/_sdkyb;)I

    move-result v0

    if-le v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdku;->_sdkc:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkv;

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/_sdkyb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkv;

    iput p2, v0, Lcom/skyhookwireless/wps/_sdkv;->_sdkb:I

    if-eqz v1, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v2, p0, Lcom/skyhookwireless/wps/_sdku;->_sdkb:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkv;

    iput-object p1, v0, Lcom/skyhookwireless/wps/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkyb;

    iput p2, v0, Lcom/skyhookwireless/wps/_sdkv;->_sdkb:I

    if-eqz v1, :cond_6

    :cond_5
    new-instance v0, Lcom/skyhookwireless/wps/_sdkv;

    invoke-direct {v0, p1, p2}, Lcom/skyhookwireless/wps/_sdkv;-><init>(Lcom/skyhookwireless/_sdkyb;I)V

    :cond_6
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdku;->_sdkc:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/skyhookwireless/wps/_sdku;->_sdkb:I

    if-le v0, v1, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    return-void
.end method

.method public _sdkb(Lcom/skyhookwireless/_sdkyb;)V
    .locals 3

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdku;->_sdka:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkv;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {v2, p1}, Lcom/skyhookwireless/_sdkyb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method
