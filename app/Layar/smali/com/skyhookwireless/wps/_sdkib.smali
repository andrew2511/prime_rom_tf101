.class final Lcom/skyhookwireless/wps/_sdkib;
.super Ljava/lang/Object;


# static fields
.field static final synthetic _sdkd:Z

.field private static final z:Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:Lcom/skyhookwireless/wps/_sdkhb;

.field private final _sdkc:Lcom/skyhookwireless/wps/_sdkt;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "\u000fg@\u0002\u0003\u001c.M\u0005\t[bC\u0008\u000c\u0017.J\u0002\u0001\u001e.\\\n\u0019\u0013}\u000c\u0005\u0002\u000f.O\u0004\u0003\u001dgK\u001e\u001f\u001ej\u0000K\u0001\u0014mM\u0007\u0001\u0002.H\u000e\u0019\u001e|A\u0002\u0003\u001ej\u000c\u001c\u0004\u001dg\u000c\r\u0004\u0003.[\u0002\u0001\u0017.B\u0004\u0019[lIK\u000c\roE\u0007\u000c\u0019bIE"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v8, :cond_3

    move v2, v7

    :cond_0
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v9, v2

    move-object v2, v0

    move v0, v9

    :goto_0
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0x6d

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_1

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/wps/_sdkib;->z:Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    :goto_3
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkib;->_sdkd:Z

    return-void

    :cond_2
    move v0, v7

    goto :goto_3

    :pswitch_0
    const/16 v6, 0x7b

    goto :goto_1

    :pswitch_1
    const/16 v6, 0xe

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x2c

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x6b

    goto :goto_1

    :cond_3
    move v2, v7

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method constructor <init>(Lcom/skyhookwireless/wps/WPSAuthentication;Ljava/util/List;Lcom/skyhookwireless/wps/_sdkfc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/WPSAuthentication;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/skyhookwireless/wps/_sdkfc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdkib;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-static {}, Lcom/skyhookwireless/wps/_sdkhb;->newInstance()Lcom/skyhookwireless/wps/_sdkhb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkb:Lcom/skyhookwireless/wps/_sdkhb;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkt;

    invoke-direct {v0, p1, p2, p3}, Lcom/skyhookwireless/wps/_sdkt;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;Ljava/util/List;Lcom/skyhookwireless/wps/_sdkfc;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkc:Lcom/skyhookwireless/wps/_sdkt;

    return-void
.end method


# virtual methods
.method _sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdked;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/Location;",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkc:Lcom/skyhookwireless/wps/_sdkt;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkt;->_sdkb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkib;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkc:Lcom/skyhookwireless/wps/_sdkt;

    invoke-virtual {v0, p2, v3}, Lcom/skyhookwireless/wps/_sdkt;->_sdka(Lcom/skyhookwireless/wps/_sdkpb;Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkpb;->getGpsLocations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkpb;->getGpsLocations()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkw;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkdb;

    move-object v4, v0

    :goto_0
    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkb:Lcom/skyhookwireless/wps/_sdkhb;

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/skyhookwireless/wps/_sdkhb;->calculateLocation(Lcom/skyhookwireless/wps/Location;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v1

    iget-object v0, v1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object p0, v1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->hasTime()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkib;->_sdkd:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move-object v4, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v2

    sub-long v2, v6, v2

    invoke-virtual {p0, v2, v3}, Lcom/skyhookwireless/wps/_sdkdb;->setTime(J)V

    :cond_4
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getSpeed()D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/skyhookwireless/wps/_sdkdb;->setSpeed(D)V

    :cond_5
    iget-object v0, v1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_NO_WIFI_IN_RANGE:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne v0, v2, :cond_6

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {v0, v8}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method _sdka()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkc:Lcom/skyhookwireless/wps/_sdkt;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkt;->_sdkc()V

    return-void
.end method

.method _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkc:Lcom/skyhookwireless/wps/_sdkt;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkt;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)V

    return-void
.end method

.method _sdka(Lcom/skyhookwireless/wps/_sdkfc;)V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkc:Lcom/skyhookwireless/wps/_sdkt;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkt;->_sdka(Lcom/skyhookwireless/wps/_sdkfc;)V

    return-void
.end method

.method _sdka(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkc:Lcom/skyhookwireless/wps/_sdkt;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkt;->_sdka(Ljava/util/List;)V

    return-void
.end method

.method _sdka(J)Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkb:Lcom/skyhookwireless/wps/_sdkhb;

    invoke-virtual {v0, p1, p2}, Lcom/skyhookwireless/wps/_sdkhb;->isWifiNeeded(J)Z

    move-result v0

    return v0
.end method

.method _sdkb()Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkib;->_sdkc:Lcom/skyhookwireless/wps/_sdkt;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkt;->_sdkb()Z

    move-result v0

    return v0
.end method
