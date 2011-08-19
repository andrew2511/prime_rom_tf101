.class Lcom/infraware/evengine/EvOpenObj;
.super Lcom/infraware/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bLandScape:I

.field private m_eLoadType:I

.field private m_nHeight:I

.field private m_nLocale:I

.field private m_nOpenPageNum:I

.field private m_nOpenRotateAngle:I

.field private m_nOpenScale:I

.field private m_nOpenStartX:I

.field private m_nOpenStartY:I

.field private m_nPageBgColor:I

.field private m_nTextColor:I

.field private m_nWidth:I

.field private m_sBookMarkPath:Ljava/lang/String;

.field private m_sFilePath:Ljava/lang/String;

.field private m_sTempPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "a_Native"
    .parameter "a_sFilePath"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_eLoadType"
    .parameter "a_nPageBgColor"
    .parameter "a_nTextColor"
    .parameter "a_nOpenPageNum"
    .parameter "a_nOpenScale"
    .parameter "a_nOpenRotateAngle"
    .parameter "a_nOpenStartX"
    .parameter "a_nOpenStartY"
    .parameter "a_nLocale"
    .parameter "a_bLandScape"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/infraware/evengine/EvTaskObj;-><init>(Lcom/infraware/evengine/EvNative;)V

    .line 106
    iput-object p2, p0, Lcom/infraware/evengine/EvOpenObj;->m_sFilePath:Ljava/lang/String;

    .line 107
    iput p3, p0, Lcom/infraware/evengine/EvOpenObj;->m_nWidth:I

    .line 108
    iput p4, p0, Lcom/infraware/evengine/EvOpenObj;->m_nHeight:I

    .line 109
    iput p5, p0, Lcom/infraware/evengine/EvOpenObj;->m_eLoadType:I

    .line 110
    iput p6, p0, Lcom/infraware/evengine/EvOpenObj;->m_nPageBgColor:I

    .line 111
    iput p7, p0, Lcom/infraware/evengine/EvOpenObj;->m_nTextColor:I

    .line 112
    iput p8, p0, Lcom/infraware/evengine/EvOpenObj;->m_nOpenPageNum:I

    .line 113
    iput p10, p0, Lcom/infraware/evengine/EvOpenObj;->m_nOpenScale:I

    .line 114
    iput p11, p0, Lcom/infraware/evengine/EvOpenObj;->m_nOpenStartX:I

    .line 115
    iput p12, p0, Lcom/infraware/evengine/EvOpenObj;->m_nOpenStartY:I

    .line 116
    iput p13, p0, Lcom/infraware/evengine/EvOpenObj;->m_nLocale:I

    .line 117
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/infraware/evengine/EvOpenObj;->m_bLandScape:I

    .line 118
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/infraware/evengine/EvOpenObj;->m_sTempPath:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/infraware/evengine/EvOpenObj;->m_sBookMarkPath:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method doTask()V
    .locals 17

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/evengine/EvOpenObj;->Native:Lcom/infraware/evengine/EvNative;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_sFilePath:Ljava/lang/String;

    move-object v2, v0

    .line 125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_nWidth:I

    move v3, v0

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_nHeight:I

    move v4, v0

    .line 127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_eLoadType:I

    move v5, v0

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_nPageBgColor:I

    move v6, v0

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_nTextColor:I

    move v7, v0

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_nOpenPageNum:I

    move v8, v0

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_nOpenScale:I

    move v9, v0

    .line 132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_nOpenRotateAngle:I

    move v10, v0

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_nOpenStartX:I

    move v11, v0

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_nOpenStartY:I

    move v12, v0

    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_nLocale:I

    move v13, v0

    .line 136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_bLandScape:I

    move v14, v0

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_sTempPath:Ljava/lang/String;

    move-object v15, v0

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/evengine/EvOpenObj;->m_sBookMarkPath:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 124
    invoke-virtual/range {v1 .. v16}, Lcom/infraware/evengine/EvNative;->IOpen(Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method
