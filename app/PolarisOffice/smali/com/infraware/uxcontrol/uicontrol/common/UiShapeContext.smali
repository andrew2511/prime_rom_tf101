.class public Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;
.super Ljava/lang/Object;
.source "UiShapeContext.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_BORDER_STYLE;
.implements Lcom/infraware/evengine/E$EV_LINE_ARROW_TYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;,
        Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;,
        Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$ArrowStyle:[I

.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$BorderStyle:[I

.field private static m_oFunctionInterface:Lcom/infraware/common/CoCoreFunctionInterface;


# instance fields
.field public mObjectMaskAtt:I

.field public m_eObjectType:I

.field public m_nArrowStyle:I

.field public m_nBorderColor:I

.field public m_nBorderStyle:I

.field public m_nBorderThickness:I

.field public m_nFillColor:I

.field public m_nGradient:I

.field public m_nHeight:I

.field public m_nLeftArrowSelectedNum:I

.field public m_nRate:I

.field public m_nRightArrowSelectedNum:I

.field public m_nWidth:I

.field public mbLineColorAlert:Ljava/lang/Boolean;


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$ArrowStyle()[I
    .locals 3

    .prologue
    .line 7
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->$SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$ArrowStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->values()[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ARROW:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->CIRCLE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->DIAMOND:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->NORMAL:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->TRIANGLE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->$SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$ArrowStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$BorderStyle()[I
    .locals 3

    .prologue
    .line 7
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->$SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$BorderStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->values()[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASHED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASH_DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASH_DOUBLE_DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->SOLID:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->$SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$BorderStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_oFunctionInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/infraware/common/CoCoreFunctionInterface;)V
    .locals 2
    .parameter "a_oFunctionInterface"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mbLineColorAlert:Ljava/lang/Boolean;

    .line 34
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderThickness:I

    .line 35
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nGradient:I

    .line 36
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nLeftArrowSelectedNum:I

    .line 37
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nRightArrowSelectedNum:I

    .line 38
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderStyle:I

    .line 39
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nArrowStyle:I

    .line 40
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nFillColor:I

    .line 41
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderColor:I

    .line 42
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    .line 43
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_eObjectType:I

    .line 44
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nWidth:I

    .line 45
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nHeight:I

    .line 46
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nRate:I

    .line 50
    sput-object p1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_oFunctionInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 51
    return-void
.end method

.method private convertArrowStyleNativeToUi(I)Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;
    .locals 1
    .parameter "a_nArrowStyle"

    .prologue
    .line 171
    sparse-switch p1, :sswitch_data_0

    .line 185
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->NORMAL:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    :goto_0
    return-object v0

    .line 174
    :sswitch_0
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->TRIANGLE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    goto :goto_0

    .line 177
    :sswitch_1
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ARROW:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    goto :goto_0

    .line 180
    :sswitch_2
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->DIAMOND:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    goto :goto_0

    .line 183
    :sswitch_3
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->CIRCLE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method private convertArrowStyleUiToNative(Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;Z)I
    .locals 3
    .parameter "a_eArrowStyle"
    .parameter "a_bStart"

    .prologue
    const/4 v2, 0x0

    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->$SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$ArrowStyle()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v2

    .line 209
    :goto_1
    return v0

    .line 192
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 193
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    .line 194
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_1

    .line 195
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_4
    move v0, v2

    .line 196
    goto :goto_1

    .line 200
    :cond_0
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->$SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$ArrowStyle()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    move v0, v2

    .line 205
    goto :goto_1

    .line 201
    :pswitch_6
    const/16 v0, 0x10

    goto :goto_1

    .line 202
    :pswitch_7
    const/16 v0, 0x20

    goto :goto_1

    .line 203
    :pswitch_8
    const/16 v0, 0x40

    goto :goto_1

    .line 204
    :pswitch_9
    const/16 v0, 0x80

    goto :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 200
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private convertBorderStyleNativeToUi(I)Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;
    .locals 1
    .parameter "a_nBorderStyle"

    .prologue
    .line 149
    packed-switch p1, :pswitch_data_0

    .line 155
    :pswitch_0
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->SOLID:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    :goto_0
    return-object v0

    .line 150
    :pswitch_1
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    goto :goto_0

    .line 151
    :pswitch_2
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASHED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    goto :goto_0

    .line 152
    :pswitch_3
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASH_DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    goto :goto_0

    .line 153
    :pswitch_4
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASH_DOUBLE_DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private convertBorderStyleUiToNative(Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;)I
    .locals 2
    .parameter "a_eBorderStyle"

    .prologue
    .line 160
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->$SWITCH_TABLE$com$infraware$uxcontrol$uicontrol$common$UiShapeContext$BorderStyle()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    const/16 v0, 0xf

    :goto_0
    return v0

    .line 161
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 162
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 163
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 164
    :pswitch_3
    const/16 v0, 0xb

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public apply()V
    .locals 11

    .prologue
    .line 133
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderThickness:I

    if-eqz v0, :cond_0

    .line 134
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    .line 136
    :cond_0
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_oFunctionInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    .line 137
    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nFillColor:I

    .line 138
    iget v3, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nGradient:I

    .line 139
    iget v4, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderColor:I

    .line 140
    iget v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderThickness:I

    .line 141
    iget v6, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderStyle:I

    .line 142
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nWidth:I

    .line 143
    iget v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nHeight:I

    .line 144
    iget v9, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nArrowStyle:I

    .line 145
    iget v10, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nRate:I

    .line 136
    invoke-virtual/range {v0 .. v10}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectAttribute(IIIIIIIIII)V

    .line 146
    return-void
.end method

.method public getArrowStyle(Z)Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;
    .locals 3
    .parameter "a_bStart"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    const/16 v1, 0xf

    .line 127
    .local v1, nMask:I
    :goto_0
    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nArrowStyle:I

    and-int v0, v2, v1

    .line 129
    .local v0, nArrowStyle:I
    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->convertArrowStyleNativeToUi(I)Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    move-result-object v2

    return-object v2

    .line 125
    .end local v0           #nArrowStyle:I
    .end local v1           #nMask:I
    :cond_0
    const v1, 0xfff0

    .restart local v1       #nMask:I
    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderColor:I

    return v0
.end method

.method public getBorderStyle()Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderStyle:I

    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->convertBorderStyleNativeToUi(I)Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderThickness()Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;->values()[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    move-result-object v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderThickness:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nFillColor:I

    return v0
.end method

.method public initContext()V
    .locals 2

    .prologue
    .line 54
    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_oFunctionInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getGrapAttrInfo_Editor()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v0

    .line 55
    .local v0, oInfo:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_eObjectType:I

    .line 56
    iget v1, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nFillColor:I

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nFillColor:I

    .line 57
    iget v1, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nGradient:I

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nGradient:I

    .line 58
    iget v1, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderColor:I

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderColor:I

    .line 59
    iget v1, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderThickness:I

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderThickness:I

    .line 60
    iget v1, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderStyle:I

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderStyle:I

    .line 61
    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderStyle:I

    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderThickness:I

    .line 63
    :cond_0
    iget v1, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nArrowType:I

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nArrowStyle:I

    .line 64
    iget v1, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nWidth:I

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nWidth:I

    .line 65
    iget v1, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nHeight:I

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nHeight:I

    .line 66
    iget v1, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nRate:I

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nRate:I

    .line 67
    return-void
.end method

.method public setArrowStyle(Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;Z)V
    .locals 3
    .parameter "a_eArrowStyle"
    .parameter "a_bStart"

    .prologue
    .line 107
    if-eqz p2, :cond_0

    .line 108
    const v0, 0xfff0

    .line 109
    .local v0, nMask:I
    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    .line 116
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->convertArrowStyleUiToNative(Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;Z)I

    move-result v1

    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nArrowStyle:I

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nArrowStyle:I

    .line 117
    return-void

    .line 112
    .end local v0           #nMask:I
    :cond_0
    const/16 v0, 0xf

    .line 113
    .restart local v0       #nMask:I
    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    goto :goto_0
.end method

.method public setBorderColor(I)V
    .locals 1
    .parameter "a_nColor"

    .prologue
    .line 79
    iput p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderColor:I

    .line 80
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    .line 81
    return-void
.end method

.method public setBorderStyle(Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;)V
    .locals 1
    .parameter "a_eBorderStyle"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->convertBorderStyleUiToNative(Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;)I

    move-result v0

    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderStyle:I

    .line 98
    return-void
.end method

.method public setBorderThickness(Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;)V
    .locals 1
    .parameter "a_eBorderThickness"

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nBorderThickness:I

    .line 89
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    .line 90
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .parameter "a_nColor"

    .prologue
    .line 70
    iput p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->m_nFillColor:I

    .line 71
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;->mObjectMaskAtt:I

    .line 72
    return-void
.end method
