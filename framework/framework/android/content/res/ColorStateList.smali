.class public Landroid/content/res/ColorStateList;
.super Ljava/lang/Object;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:[[I

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mColors:[I

.field private mDefaultColor:I

.field private mStateSpecs:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 312
    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/high16 v0, -0x1

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 72
    return-void
.end method

.method public constructor <init>([[I[I)V
    .registers 5
    .parameter "states"
    .parameter "colors"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/high16 v1, -0x1

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 79
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 80
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 82
    array-length v1, p1

    if-lez v1, :cond_23

    .line 83
    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 85
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v1, p1

    if-ge v0, v1, :cond_23

    .line 86
    aget-object v1, p1, v0

    array-length v1, v1

    if-nez v1, :cond_20

    .line 87
    aget v1, p2, v0

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 85
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 91
    .end local v0           #i:I
    :cond_23
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .registers 6
    .parameter "r"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 118
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 122
    .local v0, attrs:Landroid/util/AttributeSet;
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, type:I
    if-eq v1, v3, :cond_e

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 125
    :cond_e
    if-eq v1, v3, :cond_18

    .line 126
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_18
    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/res/ColorStateList;
    .registers 8
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, name:Ljava/lang/String;
    const-string/jumbo v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 144
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    .line 150
    .local v0, colorStateList:Landroid/content/res/ColorStateList;
    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 151
    return-object v0

    .line 146
    .end local v0           #colorStateList:Landroid/content/res/ColorStateList;
    :cond_16
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invalid drawable tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 30
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    add-int/lit8 v11, v23, 0x1

    .line 181
    .local v11, innerDepth:I
    const/16 v14, 0x14

    .line 182
    .local v14, listAllocated:I
    const/4 v15, 0x0

    .line 183
    .local v15, listSize:I
    new-array v6, v14, [I

    .line 184
    .local v6, colorList:[I
    move v0, v14

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    .line 187
    .local v21, stateSpecList:[[I
    :cond_10
    :goto_10
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, type:I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11d

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .local v8, depth:I
    if-ge v8, v11, :cond_2a

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11d

    .line 189
    :cond_2a
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 193
    if-gt v8, v11, :cond_10

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "item"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 197
    const/4 v7, 0x0

    .line 198
    .local v7, colorRes:I
    const/high16 v5, -0x1

    .line 199
    .local v5, color:I
    const/4 v9, 0x0

    .line 202
    .local v9, haveColor:Z
    const/4 v12, 0x0

    .line 203
    .local v12, j:I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v18

    .line 204
    .local v18, numAttrs:I
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 205
    .local v20, stateSpec:[I
    const/4 v10, 0x0

    .local v10, i:I
    move v13, v12

    .end local v12           #j:I
    .local v13, j:I
    :goto_51
    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_5f

    .line 206
    move-object/from16 v0, p3

    move v1, v10

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v19

    .line 207
    .local v19, stateResId:I
    if-nez v19, :cond_bf

    .line 221
    .end local v19           #stateResId:I
    :cond_5f
    move-object/from16 v0, v20

    move v1, v13

    invoke-static {v0, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v20

    .line 223
    if-eqz v7, :cond_fe

    .line 224
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 231
    :cond_6f
    if-eqz v15, :cond_78

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_7d

    .line 232
    :cond_78
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 235
    :cond_7d
    add-int/lit8 v23, v15, 0x1

    move/from16 v0, v23

    move v1, v14

    if-lt v0, v1, :cond_b7

    .line 236
    add-int/lit8 v23, v15, 0x1

    invoke-static/range {v23 .. v23}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v14

    .line 238
    move v0, v14

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 239
    .local v16, ncolor:[I
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v0, v6

    move/from16 v1, v23

    move-object/from16 v2, v16

    move/from16 v3, v24

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    move v0, v14

    new-array v0, v0, [[I

    move-object/from16 v17, v0

    .line 242
    .local v17, nstate:[[I
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    move-object/from16 v6, v16

    .line 245
    move-object/from16 v21, v17

    .line 248
    .end local v16           #ncolor:[I
    .end local v17           #nstate:[[I
    :cond_b7
    aput v5, v6, v15

    .line 249
    aput-object v20, v21, v15

    .line 250
    add-int/lit8 v15, v15, 0x1

    .line 251
    goto/16 :goto_10

    .line 208
    .restart local v19       #stateResId:I
    :cond_bf
    const v23, 0x10101a5

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_e4

    .line 209
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v7

    .line 211
    if-nez v7, :cond_15f

    .line 212
    move-object/from16 v0, p3

    move v1, v10

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v5

    .line 213
    const/4 v9, 0x1

    move v12, v13

    .line 205
    .end local v13           #j:I
    .restart local v12       #j:I
    :goto_df
    add-int/lit8 v10, v10, 0x1

    move v13, v12

    .end local v12           #j:I
    .restart local v13       #j:I
    goto/16 :goto_51

    .line 216
    :cond_e4
    add-int/lit8 v12, v13, 0x1

    .end local v13           #j:I
    .restart local v12       #j:I
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v23

    if-eqz v23, :cond_f8

    move/from16 v23, v19

    :goto_f5
    aput v23, v20, v13

    goto :goto_df

    :cond_f8
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v23, v0

    goto :goto_f5

    .line 225
    .end local v12           #j:I
    .end local v19           #stateResId:I
    .restart local v13       #j:I
    :cond_fe
    if-nez v9, :cond_6f

    .line 226
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": <item> tag requires a \'android:color\' attribute."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 253
    .end local v5           #color:I
    .end local v7           #colorRes:I
    .end local v8           #depth:I
    .end local v9           #haveColor:Z
    .end local v10           #i:I
    .end local v13           #j:I
    .end local v18           #numAttrs:I
    .end local v20           #stateSpec:[I
    :cond_11d
    move v0, v15

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mColors:[I

    .line 254
    move v0, v15

    new-array v0, v0, [[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 255
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mColors:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object v0, v6

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    return-void

    .restart local v5       #color:I
    .restart local v7       #colorRes:I
    .restart local v8       #depth:I
    .restart local v9       #haveColor:Z
    .restart local v10       #i:I
    .restart local v13       #j:I
    .restart local v18       #numAttrs:I
    .restart local v19       #stateResId:I
    .restart local v20       #stateSpec:[I
    :cond_15f
    move v12, v13

    .end local v13           #j:I
    .restart local v12       #j:I
    goto/16 :goto_df
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .registers 8
    .parameter "color"

    .prologue
    .line 98
    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v4

    .line 99
    :try_start_3
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 100
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    move-object v0, v3

    .line 102
    .local v0, csl:Landroid/content/res/ColorStateList;
    :goto_14
    if-eqz v0, :cond_1c

    .line 103
    monitor-exit v4

    move-object v1, v0

    .line 108
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .local v1, csl:Ljava/lang/Object;
    :goto_18
    return-object v1

    .line 100
    .end local v1           #csl:Ljava/lang/Object;
    :cond_19
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_14

    .line 106
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_1c
    new-instance v0, Landroid/content/res/ColorStateList;

    .end local v0           #csl:Landroid/content/res/ColorStateList;
    sget-object v3, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p0, v5, v6

    invoke-direct {v0, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 107
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    monitor-exit v4

    move-object v1, v0

    .restart local v1       #csl:Ljava/lang/Object;
    goto :goto_18

    .line 109
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .end local v1           #csl:Ljava/lang/Object;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getColorForState([II)I
    .registers 7
    .parameter "stateSet"
    .parameter "defaultColor"

    .prologue
    .line 273
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v3

    .line 274
    .local v1, setLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_18

    .line 275
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v3, v0

    .line 276
    .local v2, stateSpec:[I
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 277
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v0

    .line 280
    .end local v2           #stateSpec:[I
    :goto_14
    return v3

    .line 274
    .restart local v2       #stateSpec:[I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v2           #stateSpec:[I
    :cond_18
    move v3, p2

    .line 280
    goto :goto_14
.end method

.method public getDefaultColor()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public isStateful()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 260
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    if-le v0, v1, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .registers 7
    .parameter "alpha"

    .prologue
    .line 160
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v3, v3

    new-array v0, v3, [I

    .line 162
    .local v0, colors:[I
    array-length v2, v0

    .line 163
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_19

    .line 164
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 167
    :cond_19
    new-instance v3, Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v3, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 304
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v2

    .line 305
    .local v0, N:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 307
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 309
    :cond_13
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 310
    return-void
.end method
