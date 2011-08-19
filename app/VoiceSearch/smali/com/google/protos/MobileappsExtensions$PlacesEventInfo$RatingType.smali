.class public final enum Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;
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
    name = "RatingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final enum FIVE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final FIVE_STAR_VALUE:I = 0x5

.field public static final enum FOUR_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final FOUR_STAR_VALUE:I = 0x4

.field public static final enum NEGATIVE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final NEGATIVE_VALUE:I = 0x8

.field public static final enum NEUTRAL:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final NEUTRAL_VALUE:I = 0x6

.field public static final enum NO_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final NO_STAR_VALUE:I = 0x0

.field public static final enum ONE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final ONE_STAR_VALUE:I = 0x1

.field public static final enum POSITIVE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final POSITIVE_VALUE:I = 0x7

.field public static final enum REVIEW_TEXT:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final REVIEW_TEXT_VALUE:I = 0x9

.field public static final enum THREE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final THREE_STAR_VALUE:I = 0x3

.field public static final enum TWO_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType; = null

.field public static final TWO_STAR_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;",
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

    .line 13499
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    const-string v1, "NO_STAR"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->NO_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13500
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    const-string v1, "ONE_STAR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->ONE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13501
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    const-string v1, "TWO_STAR"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->TWO_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13502
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    const-string v1, "THREE_STAR"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->THREE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13503
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    const-string v1, "FOUR_STAR"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->FOUR_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13504
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    const-string v1, "FIVE_STAR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->FIVE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13505
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    const-string v1, "NEUTRAL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->NEUTRAL:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13506
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    const-string v1, "POSITIVE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->POSITIVE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13507
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    const-string v1, "NEGATIVE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->NEGATIVE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13508
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    const-string v1, "REVIEW_TEXT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->REVIEW_TEXT:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13497
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->NO_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->ONE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->TWO_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->THREE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->FOUR_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->FIVE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->NEUTRAL:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->POSITIVE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->NEGATIVE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->REVIEW_TEXT:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    .line 13546
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 13555
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13556
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->value:I

    .line 13557
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13543
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;
    .locals 1
    .parameter

    .prologue
    .line 13526
    packed-switch p0, :pswitch_data_0

    .line 13537
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 13527
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->NO_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    goto :goto_0

    .line 13528
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->ONE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    goto :goto_0

    .line 13529
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->TWO_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    goto :goto_0

    .line 13530
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->THREE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    goto :goto_0

    .line 13531
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->FOUR_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    goto :goto_0

    .line 13532
    :pswitch_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->FIVE_STAR:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    goto :goto_0

    .line 13533
    :pswitch_6
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->NEUTRAL:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    goto :goto_0

    .line 13534
    :pswitch_7
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->POSITIVE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    goto :goto_0

    .line 13535
    :pswitch_8
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->NEGATIVE:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    goto :goto_0

    .line 13536
    :pswitch_9
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->REVIEW_TEXT:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    goto :goto_0

    .line 13526
    nop

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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;
    .locals 1
    .parameter

    .prologue
    .line 13497
    const-class v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;
    .locals 1

    .prologue
    .line 13497
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 13523
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->value:I

    return v0
.end method
