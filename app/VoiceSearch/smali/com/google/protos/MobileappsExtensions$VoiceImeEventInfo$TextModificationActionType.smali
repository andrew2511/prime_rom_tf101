.class public final enum Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextModificationActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType; = null

.field public static final enum CHOOSE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType; = null

.field public static final CHOOSE_SUGGESTION_VALUE:I = 0x5

.field public static final enum TYPING_DELETION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType; = null

.field public static final TYPING_DELETION_VALUE:I = 0x4

.field public static final enum TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType; = null

.field public static final enum TYPING_INSERTION_PUNCTUATION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType; = null

.field public static final TYPING_INSERTION_PUNCTUATION_VALUE:I = 0x3

.field public static final TYPING_INSERTION_VALUE:I = 0x2

.field public static final enum VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType; = null

.field public static final VOICE_INSERTION_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11710
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    const-string v1, "VOICE_INSERTION"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 11711
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    const-string v1, "TYPING_INSERTION"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 11712
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    const-string v1, "TYPING_INSERTION_PUNCTUATION"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_INSERTION_PUNCTUATION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 11713
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    const-string v1, "TYPING_DELETION"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_DELETION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 11714
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    const-string v1, "CHOOSE_SUGGESTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->CHOOSE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 11708
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_INSERTION_PUNCTUATION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_DELETION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->CHOOSE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 11742
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 11751
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11752
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->value:I

    .line 11753
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11739
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    .locals 1
    .parameter

    .prologue
    .line 11727
    packed-switch p0, :pswitch_data_0

    .line 11733
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11728
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    goto :goto_0

    .line 11729
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    goto :goto_0

    .line 11730
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_INSERTION_PUNCTUATION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    goto :goto_0

    .line 11731
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->TYPING_DELETION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    goto :goto_0

    .line 11732
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->CHOOSE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    goto :goto_0

    .line 11727
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    .locals 1
    .parameter

    .prologue
    .line 11708
    const-class v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    .locals 1

    .prologue
    .line 11708
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 11724
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->value:I

    return v0
.end method
