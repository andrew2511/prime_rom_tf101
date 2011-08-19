.class public final enum Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final enum CHANGE_LOCATION:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final CHANGE_LOCATION_VALUE:I = 0x8

.field public static final enum DASHBOARD:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final DASHBOARD_VALUE:I = 0x1

.field public static final enum FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final enum FIRST_LAUNCH_PROMO:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final FIRST_LAUNCH_PROMO_VALUE:I = 0x9

.field public static final FIRST_LAUNCH_VALUE:I = 0x0

.field public static final enum LISTINGS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final LISTINGS_VALUE:I = 0x2

.field public static final enum LOGIN:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final LOGIN_VALUE:I = 0xc

.field public static final enum MAP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final MAP_VALUE:I = 0x3

.field public static final enum PLACE_PAGE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final PLACE_PAGE_VALUE:I = 0x4

.field public static final enum RATING_SPEEDBUMP_PROMO:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final RATING_SPEEDBUMP_PROMO_VALUE:I = 0xa

.field public static final enum RATING_SPEEDBUMP_SETUP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final RATING_SPEEDBUMP_SETUP_VALUE:I = 0xb

.field public static final enum REVIEW:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final REVIEW_VALUE:I = 0x7

.field public static final enum SAVED_PLACES:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final SAVED_PLACES_VALUE:I = 0xe

.field public static final enum SETTINGS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final SETTINGS_VALUE:I = 0xd

.field public static final enum STP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final enum STP_FIND:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType; = null

.field public static final STP_FIND_VALUE:I = 0x6

.field public static final STP_VALUE:I = 0x5

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 13419
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "FIRST_LAUNCH"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13420
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "DASHBOARD"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->DASHBOARD:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13421
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "LISTINGS"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->LISTINGS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13422
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->MAP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13423
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "PLACE_PAGE"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->PLACE_PAGE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13424
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "STP"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->STP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13425
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "STP_FIND"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->STP_FIND:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13426
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "REVIEW"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->REVIEW:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13427
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "CHANGE_LOCATION"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->CHANGE_LOCATION:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13428
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "FIRST_LAUNCH_PROMO"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH_PROMO:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13429
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "RATING_SPEEDBUMP_PROMO"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->RATING_SPEEDBUMP_PROMO:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13430
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "RATING_SPEEDBUMP_SETUP"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->RATING_SPEEDBUMP_SETUP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13431
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "LOGIN"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->LOGIN:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13432
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "SETTINGS"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->SETTINGS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13433
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    const-string v1, "SAVED_PLACES"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->SAVED_PLACES:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13417
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->DASHBOARD:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->LISTINGS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->MAP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->PLACE_PAGE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->STP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->STP_FIND:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->REVIEW:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->CHANGE_LOCATION:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH_PROMO:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->RATING_SPEEDBUMP_PROMO:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->RATING_SPEEDBUMP_SETUP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->LOGIN:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->SETTINGS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->SAVED_PLACES:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13481
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 13490
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13491
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->value:I

    .line 13492
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13478
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
    .locals 1
    .parameter

    .prologue
    .line 13456
    packed-switch p0, :pswitch_data_0

    .line 13472
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 13457
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13458
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->DASHBOARD:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13459
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->LISTINGS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13460
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->MAP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13461
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->PLACE_PAGE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13462
    :pswitch_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->STP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13463
    :pswitch_6
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->STP_FIND:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13464
    :pswitch_7
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->REVIEW:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13465
    :pswitch_8
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->CHANGE_LOCATION:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13466
    :pswitch_9
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH_PROMO:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13467
    :pswitch_a
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->RATING_SPEEDBUMP_PROMO:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13468
    :pswitch_b
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->RATING_SPEEDBUMP_SETUP:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13469
    :pswitch_c
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->LOGIN:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13470
    :pswitch_d
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->SETTINGS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13471
    :pswitch_e
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->SAVED_PLACES:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
    .locals 1
    .parameter

    .prologue
    .line 13417
    const-class v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
    .locals 1

    .prologue
    .line 13417
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 13453
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->value:I

    return v0
.end method
