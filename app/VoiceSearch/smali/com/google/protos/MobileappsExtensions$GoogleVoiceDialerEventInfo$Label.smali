.class public final enum Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final enum HISTORY:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final HISTORY_VALUE:I = 0x3

.field public static final enum INBOX:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final INBOX_VALUE:I = 0x1

.field public static final enum MISSED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final MISSED_VALUE:I = 0xb

.field public static final enum PLACED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final PLACED_VALUE:I = 0x9

.field public static final enum RECEIVED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final RECEIVED_VALUE:I = 0xa

.field public static final enum RECORDED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final RECORDED_VALUE:I = 0x8

.field public static final enum SMS:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final SMS_VALUE:I = 0x7

.field public static final enum SPAM:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final SPAM_VALUE:I = 0x4

.field public static final enum STARRED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final STARRED_VALUE:I = 0x2

.field public static final enum TRASH:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final TRASH_VALUE:I = 0x5

.field public static final enum USER_DEFINED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final USER_DEFINED_VALUE:I = 0xc

.field public static final enum VOICEMAIL:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label; = null

.field public static final VOICEMAIL_VALUE:I = 0x6

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;",
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

    .line 9317
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "INBOX"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9318
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "STARRED"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->STARRED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9319
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "HISTORY"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->HISTORY:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9320
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "SPAM"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->SPAM:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9321
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "TRASH"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->TRASH:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9322
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "VOICEMAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->VOICEMAIL:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9323
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "SMS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->SMS:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9324
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "RECORDED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->RECORDED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9325
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "PLACED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->PLACED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9326
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "RECEIVED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->RECEIVED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9327
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "MISSED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->MISSED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9328
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const-string v1, "USER_DEFINED"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->USER_DEFINED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9315
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->STARRED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->HISTORY:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->SPAM:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->TRASH:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->VOICEMAIL:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->SMS:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->RECORDED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->PLACED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->RECEIVED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->MISSED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->USER_DEFINED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->$VALUES:[Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    .line 9370
    new-instance v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 9379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9380
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->value:I

    .line 9381
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9367
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;
    .locals 1
    .parameter

    .prologue
    .line 9348
    packed-switch p0, :pswitch_data_0

    .line 9361
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 9349
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9350
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->STARRED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9351
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->HISTORY:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9352
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->SPAM:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9353
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->TRASH:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9354
    :pswitch_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->VOICEMAIL:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9355
    :pswitch_6
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->SMS:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9356
    :pswitch_7
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->RECORDED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9357
    :pswitch_8
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->PLACED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9358
    :pswitch_9
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->RECEIVED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9359
    :pswitch_a
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->MISSED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9360
    :pswitch_b
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->USER_DEFINED:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    goto :goto_0

    .line 9348
    nop

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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;
    .locals 1
    .parameter

    .prologue
    .line 9315
    const-class v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;
    .locals 1

    .prologue
    .line 9315
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->$VALUES:[Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 9345
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Label;->value:I

    return v0
.end method
