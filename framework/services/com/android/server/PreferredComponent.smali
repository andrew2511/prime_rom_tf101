.class public Lcom/android/server/PreferredComponent;
.super Ljava/lang/Object;
.source "PreferredComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PreferredComponent$Callbacks;
    }
.end annotation


# instance fields
.field private final mCallbacks:Lcom/android/server/PreferredComponent$Callbacks;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mMatch:I

.field private mParseError:Ljava/lang/String;

.field private final mSetClasses:[Ljava/lang/String;

.field private final mSetComponents:[Ljava/lang/String;

.field private final mSetPackages:[Ljava/lang/String;

.field private final mShortComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 13
    .parameter "callbacks"
    .parameter "match"
    .parameter "set"
    .parameter "component"

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/PreferredComponent;->mCallbacks:Lcom/android/server/PreferredComponent$Callbacks;

    .line 55
    const/high16 v6, 0xfff

    and-int/2addr v6, p2

    iput v6, p0, Lcom/android/server/PreferredComponent;->mMatch:I

    .line 56
    iput-object p4, p0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 57
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 58
    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 59
    if-eqz p3, :cond_54

    .line 60
    array-length v0, p3

    .line 61
    .local v0, N:I
    new-array v5, v0, [Ljava/lang/String;

    .line 62
    .local v5, myPackages:[Ljava/lang/String;
    new-array v3, v0, [Ljava/lang/String;

    .line 63
    .local v3, myClasses:[Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    .line 64
    .local v4, myComponents:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    if-ge v2, v0, :cond_4d

    .line 65
    aget-object v1, p3, v2

    .line 66
    .local v1, cn:Landroid/content/ComponentName;
    if-nez v1, :cond_2c

    .line 67
    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 68
    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 69
    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 84
    .end local v0           #N:I
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v2           #i:I
    .end local v3           #myClasses:[Ljava/lang/String;
    .end local v4           #myComponents:[Ljava/lang/String;
    .end local v5           #myPackages:[Ljava/lang/String;
    :goto_2b
    return-void

    .line 72
    .restart local v0       #N:I
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #i:I
    .restart local v3       #myClasses:[Ljava/lang/String;
    .restart local v4       #myComponents:[Ljava/lang/String;
    .restart local v5       #myPackages:[Ljava/lang/String;
    :cond_2c
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 73
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 74
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 76
    .end local v1           #cn:Landroid/content/ComponentName;
    :cond_4d
    iput-object v5, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 77
    iput-object v3, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 78
    iput-object v4, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    goto :goto_2b

    .line 80
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #myClasses:[Ljava/lang/String;
    .end local v4           #myComponents:[Ljava/lang/String;
    .end local v5           #myPackages:[Ljava/lang/String;
    :cond_54
    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 81
    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 82
    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    goto :goto_2b
.end method

.method public constructor <init>(Lcom/android/server/PreferredComponent$Callbacks;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 21
    .parameter "callbacks"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mCallbacks:Lcom/android/server/PreferredComponent$Callbacks;

    .line 89
    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    move-object v15, v0

    if-nez v15, :cond_4d

    .line 92
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad activity name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 94
    :cond_4d
    const/4 v15, 0x0

    const-string v16, "match"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, matchStr:Ljava/lang/String;
    if-eqz v4, :cond_e6

    const/16 v15, 0x10

    invoke-static {v4, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    :goto_61
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PreferredComponent;->mMatch:I

    .line 96
    const/4 v15, 0x0

    const-string v16, "set"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 97
    .local v11, setCountStr:Ljava/lang/String;
    if-eqz v11, :cond_e9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v10, v15

    .line 99
    .local v10, setCount:I
    :goto_79
    if-lez v10, :cond_ec

    new-array v15, v10, [Ljava/lang/String;

    move-object v7, v15

    .line 100
    .local v7, myPackages:[Ljava/lang/String;
    :goto_7e
    if-lez v10, :cond_ef

    new-array v15, v10, [Ljava/lang/String;

    move-object v5, v15

    .line 101
    .local v5, myClasses:[Ljava/lang/String;
    :goto_83
    if-lez v10, :cond_f2

    new-array v15, v10, [Ljava/lang/String;

    move-object v6, v15

    .line 103
    .local v6, myComponents:[Ljava/lang/String;
    :goto_88
    const/4 v12, 0x0

    .line 105
    .local v12, setPos:I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 108
    .local v9, outerDepth:I
    :cond_8d
    :goto_8d
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, type:I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_195

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9d

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v9, :cond_195

    .line 110
    :cond_9d
    const/4 v15, 0x3

    if-eq v14, v15, :cond_8d

    const/4 v15, 0x4

    if-eq v14, v15, :cond_8d

    .line 115
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, tagName:Ljava/lang/String;
    const-string v15, "set"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_165

    .line 119
    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, name:Ljava/lang/String;
    if-nez v8, :cond_f5

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_e2

    .line 122
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No name in set tag in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 144
    :cond_e2
    :goto_e2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8d

    .line 95
    .end local v5           #myClasses:[Ljava/lang/String;
    .end local v6           #myComponents:[Ljava/lang/String;
    .end local v7           #myPackages:[Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #outerDepth:I
    .end local v10           #setCount:I
    .end local v11           #setCountStr:Ljava/lang/String;
    .end local v12           #setPos:I
    .end local v13           #tagName:Ljava/lang/String;
    .end local v14           #type:I
    :cond_e6
    const/4 v15, 0x0

    goto/16 :goto_61

    .line 97
    .restart local v11       #setCountStr:Ljava/lang/String;
    :cond_e9
    const/4 v15, 0x0

    move v10, v15

    goto :goto_79

    .line 99
    .restart local v10       #setCount:I
    :cond_ec
    const/4 v15, 0x0

    move-object v7, v15

    goto :goto_7e

    .line 100
    .restart local v7       #myPackages:[Ljava/lang/String;
    :cond_ef
    const/4 v15, 0x0

    move-object v5, v15

    goto :goto_83

    .line 101
    .restart local v5       #myClasses:[Ljava/lang/String;
    :cond_f2
    const/4 v15, 0x0

    move-object v6, v15

    goto :goto_88

    .line 125
    .restart local v6       #myComponents:[Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #outerDepth:I
    .restart local v12       #setPos:I
    .restart local v13       #tagName:Ljava/lang/String;
    .restart local v14       #type:I
    :cond_f5
    if-lt v12, v10, :cond_11d

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_e2

    .line 127
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Too many set tags in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_e2

    .line 131
    :cond_11d
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 132
    .local v3, cn:Landroid/content/ComponentName;
    if-nez v3, :cond_153

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_e2

    .line 134
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad set name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_e2

    .line 138
    :cond_153
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v12

    .line 139
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v12

    .line 140
    aput-object v8, v6, v12

    .line 141
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_e2

    .line 145
    .end local v3           #cn:Landroid/content/ComponentName;
    .end local v8           #name:Ljava/lang/String;
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mCallbacks:Lcom/android/server/PreferredComponent$Callbacks;

    move-object v15, v0

    move-object v0, v15

    move-object v1, v13

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/PreferredComponent$Callbacks;->onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v15

    if-nez v15, :cond_8d

    .line 146
    const-string v15, "PreferredComponent"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown element: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8d

    .line 151
    .end local v13           #tagName:Ljava/lang/String;
    :cond_195
    if-eq v12, v10, :cond_1d0

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_1d0

    .line 153
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not enough set tags (expected "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " but found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 158
    :cond_1d0
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 159
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 160
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "out"
    .parameter "prefix"
    .parameter "ident"

    .prologue
    .line 205
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 208
    iget-object v1, p0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    const-string v1, " match=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget v1, p0, Lcom/android/server/PreferredComponent;->mMatch:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 212
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Selected from:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    .local v0, i:I
    :goto_37
    iget-object v1, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4e

    .line 214
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 218
    .end local v0           #i:I
    :cond_4e
    return-void
.end method

.method public getParseError()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public sameSet(Ljava/util/List;I)Z
    .registers 14
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x0

    .line 182
    iget-object v8, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    if-nez v8, :cond_7

    move v8, v10

    .line 201
    :goto_6
    return v8

    .line 183
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 184
    .local v0, NQ:I
    iget-object v8, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v1, v8

    .line 185
    .local v1, NS:I
    const/4 v6, 0x0

    .line 186
    .local v6, numMatch:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_10
    if-ge v4, v0, :cond_47

    .line 187
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 188
    .local v7, ri:Landroid/content/pm/ResolveInfo;
    iget v8, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-eq v8, p2, :cond_1f

    .line 186
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 189
    :cond_1f
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 190
    .local v2, ai:Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 191
    .local v3, good:Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_23
    if-ge v5, v1, :cond_40

    .line 192
    iget-object v8, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v5

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    iget-object v8, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v5

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 194
    add-int/lit8 v6, v6, 0x1

    .line 195
    const/4 v3, 0x1

    .line 199
    :cond_40
    if-nez v3, :cond_1c

    move v8, v10

    goto :goto_6

    .line 191
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 201
    .end local v2           #ai:Landroid/content/pm/ActivityInfo;
    .end local v3           #good:Z
    .end local v5           #j:I
    .end local v7           #ri:Landroid/content/pm/ResolveInfo;
    :cond_47
    if-ne v6, v1, :cond_4b

    const/4 v8, 0x1

    goto :goto_6

    :cond_4b
    move v8, v10

    goto :goto_6
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 168
    iget-object v2, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    array-length v2, v2

    move v0, v2

    .line 169
    .local v0, NS:I
    :goto_9
    const-string v2, "name"

    iget-object v3, p0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    iget v2, p0, Lcom/android/server/PreferredComponent;->mMatch:I

    if-eqz v2, :cond_1f

    .line 171
    const-string v2, "match"

    iget v3, p0, Lcom/android/server/PreferredComponent;->mMatch:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    :cond_1f
    const-string v2, "set"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    const/4 v1, 0x0

    .local v1, s:I
    :goto_29
    if-ge v1, v0, :cond_44

    .line 175
    const-string v2, "set"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    const-string v2, "name"

    iget-object v3, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    const-string v2, "set"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 168
    .end local v0           #NS:I
    .end local v1           #s:I
    :cond_41
    const/4 v2, 0x0

    move v0, v2

    goto :goto_9

    .line 179
    .restart local v0       #NS:I
    .restart local v1       #s:I
    :cond_44
    return-void
.end method
