.class Lcom/skyhookwireless/_sdkvc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/_sdkwc;


# instance fields
.field public count:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/skyhookwireless/_sdkvc;->count:I

    return-void
.end method


# virtual methods
.method public inBoth(II)V
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkvc;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/skyhookwireless/_sdkvc;->count:I

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
