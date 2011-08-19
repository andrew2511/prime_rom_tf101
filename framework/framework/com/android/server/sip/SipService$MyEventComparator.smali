.class Lcom/android/server/sip/SipService$MyEventComparator;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyEventComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/sip/SipService$MyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/android/server/sip/SipService$MyEventComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/sip/SipService$MyEvent;Lcom/android/server/sip/SipService$MyEvent;)I
    .registers 6
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 1413
    if-ne p1, p2, :cond_4

    const/4 v1, 0x0

    .line 1416
    :goto_3
    return v1

    .line 1414
    :cond_4
    iget v1, p1, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    iget v2, p2, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    sub-int v0, v1, v2

    .line 1415
    .local v0, diff:I
    if-nez v0, :cond_d

    const/4 v0, -0x1

    :cond_d
    move v1, v0

    .line 1416
    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1411
    check-cast p1, Lcom/android/server/sip/SipService$MyEvent;

    .end local p1
    check-cast p2, Lcom/android/server/sip/SipService$MyEvent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sip/SipService$MyEventComparator;->compare(Lcom/android/server/sip/SipService$MyEvent;Lcom/android/server/sip/SipService$MyEvent;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "that"

    .prologue
    .line 1420
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
