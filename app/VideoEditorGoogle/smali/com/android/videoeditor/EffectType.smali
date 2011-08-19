.class public Lcom/android/videoeditor/EffectType;
.super Ljava/lang/Object;
.source "EffectType.java"


# static fields
.field public static final CATEGORY_IMAGE:I = 0x0

.field public static final CATEGORY_VIDEO:I = 0x1

.field public static final EFFECT_COLOR_FIFTIES:I = 0x4

.field public static final EFFECT_COLOR_GRADIENT:I = 0x1

.field public static final EFFECT_COLOR_NEGATIVE:I = 0x3

.field public static final EFFECT_COLOR_SEPIA:I = 0x2

.field public static final EFFECT_KEN_BURNS:I

.field public static final EFFECT_RESOURCE_IDS:[I


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/videoeditor/EffectType;->EFFECT_RESOURCE_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x25t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "type"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/videoeditor/EffectType;->mName:Ljava/lang/String;

    .line 101
    iput p2, p0, Lcom/android/videoeditor/EffectType;->mType:I

    .line 102
    return-void
.end method

.method public static getEffects(Landroid/content/Context;I)[Lcom/android/videoeditor/EffectType;
    .locals 8
    .parameter "context"
    .parameter "category"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 84
    new-array v0, v3, [Lcom/android/videoeditor/EffectType;

    .line 89
    .local v0, effects:[Lcom/android/videoeditor/EffectType;
    :goto_0
    return-object v0

    .line 58
    .end local v0           #effects:[Lcom/android/videoeditor/EffectType;
    :pswitch_0
    new-array v0, v7, [Lcom/android/videoeditor/EffectType;

    .line 59
    .restart local v0       #effects:[Lcom/android/videoeditor/EffectType;
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09006c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 61
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09006d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 63
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09006e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 65
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09006f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    goto :goto_0

    .line 71
    .end local v0           #effects:[Lcom/android/videoeditor/EffectType;
    :pswitch_1
    new-array v0, v7, [Lcom/android/videoeditor/EffectType;

    .line 72
    .restart local v0       #effects:[Lcom/android/videoeditor/EffectType;
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09006d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 74
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09006e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 76
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09006f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 78
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f090070

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/videoeditor/EffectType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/videoeditor/EffectType;->mType:I

    return v0
.end method
