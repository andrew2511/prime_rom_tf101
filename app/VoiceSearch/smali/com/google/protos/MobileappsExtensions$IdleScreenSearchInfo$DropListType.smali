.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DropListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final enum APPLICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final APPLICATION_VALUE:I = 0x7

.field public static final enum BOOKMARK:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final BOOKMARK_VALUE:I = 0x9

.field public static final enum BUSINESS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final BUSINESS_VALUE:I = 0x4

.field public static final enum CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final enum CONTACT_NUMBER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final CONTACT_NUMBER_VALUE:I = 0xf

.field public static final CONTACT_VALUE:I = 0x8

.field public static final enum EASTER_EGG:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final EASTER_EGG_VALUE:I = 0x3

.field public static final enum GOOGLE_WEBAPP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final GOOGLE_WEBAPP_VALUE:I = 0xb

.field public static final enum HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final HISTORY_VALUE:I = 0x1

.field public static final enum LOCAL_BUSINESS_AD:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final LOCAL_BUSINESS_AD_VALUE:I = 0x11

.field public static final enum NAVSUGGEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final NAVSUGGEST_VALUE:I = 0x6

.field public static final enum ONEBOX:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final ONEBOX_VALUE:I = 0x12

.field public static final enum OTHER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final OTHER_VALUE:I = 0xd

.field public static final enum PHONE_TOP_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final PHONE_TOP_EMAIL_VALUE:I = 0x13

.field public static final enum REVERSE_GEOCODE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final REVERSE_GEOCODE_VALUE:I = 0x5

.field public static final enum RTT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final RTT_VALUE:I = 0xe

.field public static final enum SUGGEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final SUGGEST_VALUE:I = 0x2

.field public static final enum VOICE_NBEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final VOICE_NBEST_VALUE:I = 0x10

.field public static final enum WEBPAGE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final WEBPAGE_VALUE:I = 0xc

.field public static final enum WEB_HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType; = null

.field public static final WEB_HISTORY_VALUE:I = 0xa

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;",
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
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 3786
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "HISTORY"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3787
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "SUGGEST"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->SUGGEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3788
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "EASTER_EGG"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->EASTER_EGG:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3789
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "BUSINESS"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->BUSINESS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3790
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "REVERSE_GEOCODE"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->REVERSE_GEOCODE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3791
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "NAVSUGGEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->NAVSUGGEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3792
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "APPLICATION"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->APPLICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3793
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "CONTACT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3794
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "BOOKMARK"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->BOOKMARK:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3795
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "WEB_HISTORY"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->WEB_HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3796
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "GOOGLE_WEBAPP"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->GOOGLE_WEBAPP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3797
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "WEBPAGE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->WEBPAGE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3798
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "OTHER"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->OTHER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3799
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "RTT"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->RTT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3800
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "CONTACT_NUMBER"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->CONTACT_NUMBER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3801
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "VOICE_NBEST"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->VOICE_NBEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3802
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "LOCAL_BUSINESS_AD"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->LOCAL_BUSINESS_AD:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3803
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "ONEBOX"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->ONEBOX:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3804
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const-string v1, "PHONE_TOP_EMAIL"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->PHONE_TOP_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3784
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->SUGGEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->EASTER_EGG:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->BUSINESS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->REVERSE_GEOCODE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->NAVSUGGEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->APPLICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->BOOKMARK:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->WEB_HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->GOOGLE_WEBAPP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->WEBPAGE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->OTHER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->RTT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->CONTACT_NUMBER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->VOICE_NBEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->LOCAL_BUSINESS_AD:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->ONEBOX:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->PHONE_TOP_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 3860
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3869
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3870
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->value:I

    .line 3871
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3857
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 1
    .parameter

    .prologue
    .line 3831
    packed-switch p0, :pswitch_data_0

    .line 3851
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3832
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3833
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->SUGGEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3834
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->EASTER_EGG:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3835
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->BUSINESS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3836
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->REVERSE_GEOCODE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3837
    :pswitch_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->NAVSUGGEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3838
    :pswitch_6
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->APPLICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3839
    :pswitch_7
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3840
    :pswitch_8
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->BOOKMARK:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3841
    :pswitch_9
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->WEB_HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3842
    :pswitch_a
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->GOOGLE_WEBAPP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3843
    :pswitch_b
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->WEBPAGE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3844
    :pswitch_c
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->OTHER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3845
    :pswitch_d
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->RTT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3846
    :pswitch_e
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->CONTACT_NUMBER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3847
    :pswitch_f
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->VOICE_NBEST:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3848
    :pswitch_10
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->LOCAL_BUSINESS_AD:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3849
    :pswitch_11
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->ONEBOX:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3850
    :pswitch_12
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->PHONE_TOP_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto :goto_0

    .line 3831
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 1
    .parameter

    .prologue
    .line 3784
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 1

    .prologue
    .line 3784
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 3828
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->value:I

    return v0
.end method
