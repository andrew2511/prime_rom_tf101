.class public final enum Lcom/android/vending/model/InputField;
.super Ljava/lang/Enum;
.source "InputField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/InputField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/InputField;

.field public static final enum ADDR_ADDRESS1:Lcom/android/vending/model/InputField;

.field public static final enum ADDR_ADDRESS2:Lcom/android/vending/model/InputField;

.field public static final enum ADDR_CITY:Lcom/android/vending/model/InputField;

.field public static final enum ADDR_COUNTRY_CODE:Lcom/android/vending/model/InputField;

.field public static final enum ADDR_PHONE:Lcom/android/vending/model/InputField;

.field public static final enum ADDR_POSTAL_CODE:Lcom/android/vending/model/InputField;

.field public static final enum ADDR_STATE:Lcom/android/vending/model/InputField;

.field public static final enum ADDR_WHOLE_ADDRESS:Lcom/android/vending/model/InputField;

.field public static final enum CC_CVC:Lcom/android/vending/model/InputField;

.field public static final enum CC_EXP_MONTH:Lcom/android/vending/model/InputField;

.field public static final enum CC_EXP_YEAR:Lcom/android/vending/model/InputField;

.field public static final enum CC_NUMBER:Lcom/android/vending/model/InputField;

.field public static final enum DATE_OF_BIRTH:Lcom/android/vending/model/InputField;

.field public static final enum EMAIL:Lcom/android/vending/model/InputField;

.field public static final enum FIRST_NAME:Lcom/android/vending/model/InputField;

.field public static final enum LAST_NAME:Lcom/android/vending/model/InputField;

.field public static final enum PASSWORD:Lcom/android/vending/model/InputField;

.field public static final enum PERSON_NAME:Lcom/android/vending/model/InputField;


# instance fields
.field private final mInputField:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "CC_NUMBER"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->CC_NUMBER:Lcom/android/vending/model/InputField;

    .line 8
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "CC_CVC"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->CC_CVC:Lcom/android/vending/model/InputField;

    .line 9
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "CC_EXP_YEAR"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->CC_EXP_YEAR:Lcom/android/vending/model/InputField;

    .line 10
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "CC_EXP_MONTH"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->CC_EXP_MONTH:Lcom/android/vending/model/InputField;

    .line 11
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "PERSON_NAME"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->PERSON_NAME:Lcom/android/vending/model/InputField;

    .line 12
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "FIRST_NAME"

    const/4 v2, 0x5

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->FIRST_NAME:Lcom/android/vending/model/InputField;

    .line 13
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "LAST_NAME"

    const/4 v2, 0x6

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->LAST_NAME:Lcom/android/vending/model/InputField;

    .line 14
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "DATE_OF_BIRTH"

    const/4 v2, 0x7

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->DATE_OF_BIRTH:Lcom/android/vending/model/InputField;

    .line 15
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "EMAIL"

    const/16 v2, 0x8

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->EMAIL:Lcom/android/vending/model/InputField;

    .line 16
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "PASSWORD"

    const/16 v2, 0x9

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->PASSWORD:Lcom/android/vending/model/InputField;

    .line 17
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "ADDR_COUNTRY_CODE"

    const/16 v2, 0xa

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->ADDR_COUNTRY_CODE:Lcom/android/vending/model/InputField;

    .line 18
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "ADDR_POSTAL_CODE"

    const/16 v2, 0xb

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->ADDR_POSTAL_CODE:Lcom/android/vending/model/InputField;

    .line 19
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "ADDR_ADDRESS1"

    const/16 v2, 0xc

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->ADDR_ADDRESS1:Lcom/android/vending/model/InputField;

    .line 20
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "ADDR_ADDRESS2"

    const/16 v2, 0xd

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->ADDR_ADDRESS2:Lcom/android/vending/model/InputField;

    .line 21
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "ADDR_CITY"

    const/16 v2, 0xe

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->ADDR_CITY:Lcom/android/vending/model/InputField;

    .line 22
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "ADDR_STATE"

    const/16 v2, 0xf

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->ADDR_STATE:Lcom/android/vending/model/InputField;

    .line 23
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "ADDR_PHONE"

    const/16 v2, 0x10

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->ADDR_PHONE:Lcom/android/vending/model/InputField;

    .line 24
    new-instance v0, Lcom/android/vending/model/InputField;

    const-string v1, "ADDR_WHOLE_ADDRESS"

    const/16 v2, 0x11

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/InputField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/InputField;->ADDR_WHOLE_ADDRESS:Lcom/android/vending/model/InputField;

    .line 6
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/vending/model/InputField;

    sget-object v1, Lcom/android/vending/model/InputField;->CC_NUMBER:Lcom/android/vending/model/InputField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/InputField;->CC_CVC:Lcom/android/vending/model/InputField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/InputField;->CC_EXP_YEAR:Lcom/android/vending/model/InputField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/model/InputField;->CC_EXP_MONTH:Lcom/android/vending/model/InputField;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/vending/model/InputField;->PERSON_NAME:Lcom/android/vending/model/InputField;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vending/model/InputField;->FIRST_NAME:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vending/model/InputField;->LAST_NAME:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/vending/model/InputField;->DATE_OF_BIRTH:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/vending/model/InputField;->EMAIL:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/vending/model/InputField;->PASSWORD:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_COUNTRY_CODE:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_POSTAL_CODE:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_ADDRESS1:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_ADDRESS2:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_CITY:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_STATE:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_PHONE:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_WHOLE_ADDRESS:Lcom/android/vending/model/InputField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/model/InputField;->$VALUES:[Lcom/android/vending/model/InputField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "inputField"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/android/vending/model/InputField;->mInputField:I

    .line 30
    return-void
.end method

.method public static fromProtoInputField(I)Lcom/android/vending/model/InputField;
    .locals 1
    .parameter "protoInputField"

    .prologue
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 34
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/InputField;->CC_NUMBER:Lcom/android/vending/model/InputField;

    .line 51
    :goto_0
    return-object v0

    .line 35
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/InputField;->CC_CVC:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 36
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/InputField;->CC_EXP_MONTH:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 37
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/InputField;->CC_EXP_YEAR:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 38
    :pswitch_4
    sget-object v0, Lcom/android/vending/model/InputField;->PERSON_NAME:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 39
    :pswitch_5
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_COUNTRY_CODE:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 40
    :pswitch_6
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_POSTAL_CODE:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 41
    :pswitch_7
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_ADDRESS1:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 42
    :pswitch_8
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_ADDRESS2:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 43
    :pswitch_9
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_CITY:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 44
    :pswitch_a
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_STATE:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 45
    :pswitch_b
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_PHONE:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 46
    :pswitch_c
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_WHOLE_ADDRESS:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 47
    :pswitch_d
    sget-object v0, Lcom/android/vending/model/InputField;->FIRST_NAME:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 48
    :pswitch_e
    sget-object v0, Lcom/android/vending/model/InputField;->LAST_NAME:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 49
    :pswitch_f
    sget-object v0, Lcom/android/vending/model/InputField;->DATE_OF_BIRTH:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 50
    :pswitch_10
    sget-object v0, Lcom/android/vending/model/InputField;->EMAIL:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 51
    :pswitch_11
    sget-object v0, Lcom/android/vending/model/InputField;->PASSWORD:Lcom/android/vending/model/InputField;

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/InputField;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/android/vending/model/InputField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/InputField;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/InputField;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/android/vending/model/InputField;->$VALUES:[Lcom/android/vending/model/InputField;

    invoke-virtual {v0}, [Lcom/android/vending/model/InputField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/InputField;

    return-object v0
.end method


# virtual methods
.method public toProtoInputField()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/vending/model/InputField;->mInputField:I

    return v0
.end method
