.class public abstract Lcom/skyhookwireless/_sdkub;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/skyhookwireless/_sdkub;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static _sdkb:Z = false

.field private static final serialVersionUID:J = 0x198c2f871470772L


# instance fields
.field private _sdka:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkub;->_sdkb()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/skyhookwireless/_sdkub;->_sdka:J

    return-void
.end method

.method public static final _sdka(J)Lcom/skyhookwireless/_sdkub;
    .locals 3

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iget-wide v1, v0, Lcom/skyhookwireless/_sdkub;->_sdka:J

    sub-long/2addr v1, p0

    iput-wide v1, v0, Lcom/skyhookwireless/_sdkub;->_sdka:J

    return-object v0
.end method

.method public static final _sdkc()Lcom/skyhookwireless/_sdkub;
    .locals 1

    new-instance v0, Lcom/skyhookwireless/_sdkvb;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkvb;-><init>()V

    return-object v0
.end method


# virtual methods
.method public _sdka()J
    .locals 4

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkub;->_sdkb()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/skyhookwireless/_sdkub;->_sdka:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public _sdka(Lcom/skyhookwireless/_sdkub;)J
    .locals 4

    iget-wide v0, p0, Lcom/skyhookwireless/_sdkub;->_sdka:J

    iget-wide v2, p1, Lcom/skyhookwireless/_sdkub;->_sdka:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public _sdkb(Lcom/skyhookwireless/_sdkub;)I
    .locals 4

    iget-wide v0, p0, Lcom/skyhookwireless/_sdkub;->_sdka:J

    iget-wide v2, p1, Lcom/skyhookwireless/_sdkub;->_sdka:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/skyhookwireless/_sdkub;->_sdka:J

    iget-wide v2, p1, Lcom/skyhookwireless/_sdkub;->_sdka:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract _sdkb()J
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/skyhookwireless/_sdkub;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/_sdkub;->_sdkb(Lcom/skyhookwireless/_sdkub;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/skyhookwireless/_sdkub;->_sdka:J

    check-cast p1, Lcom/skyhookwireless/_sdkub;

    iget-wide v2, p1, Lcom/skyhookwireless/_sdkub;->_sdka:J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/skyhookwireless/_sdkub;->_sdka:J

    long-to-int v0, v0

    return v0
.end method
