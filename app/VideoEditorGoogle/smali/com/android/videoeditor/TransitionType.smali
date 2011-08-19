.class public Lcom/android/videoeditor/TransitionType;
.super Ljava/lang/Object;
.source "TransitionType.java"


# static fields
.field public static final TRANSITION_RESOURCE_IDS:[I = null

.field public static final TRANSITION_TYPE_ALPHA_CONTOUR:I = 0x0

.field public static final TRANSITION_TYPE_ALPHA_DIAGONAL:I = 0x1

.field public static final TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final TRANSITION_TYPE_FADE_BLACK:I = 0x3

.field public static final TRANSITION_TYPE_SLIDING_BOTTOM_OUT_TOP_IN:I = 0x7

.field public static final TRANSITION_TYPE_SLIDING_LEFT_OUT_RIGHT_IN:I = 0x5

.field public static final TRANSITION_TYPE_SLIDING_RIGHT_OUT_LEFT_IN:I = 0x4

.field public static final TRANSITION_TYPE_SLIDING_TOP_OUT_BOTTOM_IN:I = 0x6


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/videoeditor/TransitionType;->TRANSITION_RESOURCE_IDS:[I

    return-void

    :array_0
    .array-data 0x4
        0x6bt 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "type"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/videoeditor/TransitionType;->mName:Ljava/lang/String;

    .line 93
    iput p2, p0, Lcom/android/videoeditor/TransitionType;->mType:I

    .line 94
    return-void
.end method

.method public static getTransitions(Landroid/content/Context;)[Lcom/android/videoeditor/TransitionType;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const/16 v1, 0x8

    new-array v0, v1, [Lcom/android/videoeditor/TransitionType;

    .line 56
    .local v0, transitions:[Lcom/android/videoeditor/TransitionType;
    new-instance v1, Lcom/android/videoeditor/TransitionType;

    const v2, 0x7f090072

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/TransitionType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 59
    new-instance v1, Lcom/android/videoeditor/TransitionType;

    const v2, 0x7f090073

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/videoeditor/TransitionType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 62
    new-instance v1, Lcom/android/videoeditor/TransitionType;

    const v2, 0x7f090074

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/android/videoeditor/TransitionType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 65
    new-instance v1, Lcom/android/videoeditor/TransitionType;

    const v2, 0x7f090075

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/android/videoeditor/TransitionType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    .line 68
    new-instance v1, Lcom/android/videoeditor/TransitionType;

    const v2, 0x7f090076

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/android/videoeditor/TransitionType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v7

    .line 71
    const/4 v1, 0x5

    new-instance v2, Lcom/android/videoeditor/TransitionType;

    const v3, 0x7f090077

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/android/videoeditor/TransitionType;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    .line 74
    const/4 v1, 0x6

    new-instance v2, Lcom/android/videoeditor/TransitionType;

    const v3, 0x7f090078

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lcom/android/videoeditor/TransitionType;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    .line 77
    const/4 v1, 0x7

    new-instance v2, Lcom/android/videoeditor/TransitionType;

    const v3, 0x7f090079

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4}, Lcom/android/videoeditor/TransitionType;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    .line 81
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/videoeditor/TransitionType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/videoeditor/TransitionType;->mType:I

    return v0
.end method
