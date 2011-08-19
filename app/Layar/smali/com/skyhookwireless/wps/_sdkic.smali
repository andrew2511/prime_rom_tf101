.class final Lcom/skyhookwireless/wps/_sdkic;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/_sdkwc;


# static fields
.field static final _sdka:Z


# instance fields
.field final _sdkb:Ljava/util/ArrayList;

.field final _sdkc:Ljava/util/ArrayList;

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/skyhookwireless/wps/_sdkhc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkic;->_sdka:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkic;->_sdkb:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/skyhookwireless/wps/_sdkic;->_sdkc:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/skyhookwireless/wps/_sdkic;->i:I

    return-void
.end method


# virtual methods
.method public inBoth(II)V
    .locals 3

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkic;->_sdka:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkic;->i:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkic;->i:I

    if-le v0, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkic;->_sdkb:Ljava/util/ArrayList;

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkic;->i:I

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkic;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkic;->_sdkc:Ljava/util/ArrayList;

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkic;->i:I

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkic;->_sdkc:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkic;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/skyhookwireless/wps/_sdkic;->i:I

    return-void
.end method

.method public inFirstOnly(II)V
    .locals 0

    return-void
.end method

.method public inSecondOnly(II)V
    .locals 0

    return-void
.end method
