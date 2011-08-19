.class public final enum Lcom/android/vending/model/ModifyCommentRequest$FlagType;
.super Ljava/lang/Enum;
.source "ModifyCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/ModifyCommentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/ModifyCommentRequest$FlagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/ModifyCommentRequest$FlagType;

.field public static final enum GRAPHIC_VIOLENCE:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

.field public static final enum HARMFUL_TO_DEVICE:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

.field public static final enum HATEFUL_CONTENT:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

.field public static final enum IMPROPER_CONTENT_RATING:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

.field public static final enum OTHER_OBJECTION:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

.field private static final RADIO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/vending/model/ModifyCommentRequest$FlagType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SEXUAL_CONTENT:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

.field public static SHOW_ONLY_IF_OWNED:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/vending/model/ModifyCommentRequest$FlagType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFlagPromptStringResId:I

.field private mFlagRadioId:I

.field private mFlagRpcId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v15, 0x2

    const/4 v14, 0x1

    .line 22
    new-instance v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    const-string v1, "SEXUAL_CONTENT"

    const/4 v4, 0x0

    const v5, 0x7f0800ce

    invoke-direct {v0, v1, v4, v14, v5}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->SEXUAL_CONTENT:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 24
    new-instance v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    const-string v1, "GRAPHIC_VIOLENCE"

    const v4, 0x7f0800cf

    invoke-direct {v0, v1, v14, v15, v4}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->GRAPHIC_VIOLENCE:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 26
    new-instance v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    const-string v1, "HATEFUL_CONTENT"

    const v4, 0x7f0800d0

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->HATEFUL_CONTENT:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 28
    new-instance v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    const-string v1, "HARMFUL_TO_DEVICE"

    const v4, 0x7f0800d1

    const v5, 0x7f0700aa

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->HARMFUL_TO_DEVICE:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 30
    new-instance v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    const-string v1, "IMPROPER_CONTENT_RATING"

    const/4 v4, 0x6

    const v5, 0x7f0800d2

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->IMPROPER_CONTENT_RATING:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 32
    new-instance v4, Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    const-string v5, "OTHER_OBJECTION"

    const v8, 0x7f0800d3

    const v9, 0x7f0700a9

    move v7, v6

    invoke-direct/range {v4 .. v9}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->OTHER_OBJECTION:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->SEXUAL_CONTENT:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->GRAPHIC_VIOLENCE:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->HATEFUL_CONTENT:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    aput-object v1, v0, v15

    sget-object v1, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->HARMFUL_TO_DEVICE:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->IMPROPER_CONTENT_RATING:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->OTHER_OBJECTION:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->$VALUES:[Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 40
    sget-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->HARMFUL_TO_DEVICE:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->SHOW_ONLY_IF_OWNED:Ljava/util/EnumSet;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->RADIO_MAP:Ljava/util/Map;

    .line 87
    invoke-static {}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->values()[Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    move-result-object v10

    .local v10, arr$:[Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    array-length v13, v10

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v11, v10, v12

    .line 88
    .local v11, flag:Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    sget-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->RADIO_MAP:Ljava/util/Map;

    iget v1, v11, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->mFlagRadioId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 90
    .end local v11           #flag:Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 6
    .parameter
    .parameter
    .parameter "flagRpcId"
    .parameter "flagStringResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;-><init>(Ljava/lang/String;IIII)V

    .line 58
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "flagRpcId"
    .parameter "flagStringResId"
    .parameter "flagPromptStringResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->mFlagRpcId:I

    .line 62
    iput p4, p0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->mFlagRadioId:I

    .line 63
    iput p5, p0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->mFlagPromptStringResId:I

    .line 64
    return-void
.end method

.method public static forRadioId(I)Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    .locals 2
    .parameter "radioButtonId"

    .prologue
    .line 83
    sget-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->RADIO_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->$VALUES:[Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    invoke-virtual {v0}, [Lcom/android/vending/model/ModifyCommentRequest$FlagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    return-object v0
.end method


# virtual methods
.method public flagPromptStringResId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->mFlagPromptStringResId:I

    return v0
.end method

.method public flagRadioButtonId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->mFlagRadioId:I

    return v0
.end method

.method public flagRpcId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->mFlagRpcId:I

    return v0
.end method

.method public requireUserComment()Z
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->mFlagPromptStringResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
