.class Landroid/webkit/FileLoader;
.super Landroid/webkit/StreamLoader;
.source "FileLoader.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field static final TYPE_ASSET:I = 0x1

.field static final TYPE_FILE:I = 0x3

.field static final TYPE_RES:I = 0x2


# instance fields
.field private mAllowFileAccess:Z

.field private mPath:Ljava/lang/String;

.field private mType:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V
    .registers 8
    .parameter "url"
    .parameter "loadListener"
    .parameter "type"
    .parameter "allowFileAccess"

    .prologue
    .line 63
    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    .line 64
    iput p3, p0, Landroid/webkit/FileLoader;->mType:I

    .line 65
    iput-boolean p4, p0, Landroid/webkit/FileLoader;->mAllowFileAccess:Z

    .line 68
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 69
    .local v0, index:I
    iget v1, p0, Landroid/webkit/FileLoader;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    .line 70
    if-lez v0, :cond_25

    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_22
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    .line 85
    :goto_24
    return-void

    .line 70
    :cond_25
    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 74
    :cond_34
    iget v1, p0, Landroid/webkit/FileLoader;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5b

    .line 75
    if-lez v0, :cond_4c

    const-string v1, "file:///android_res/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_49
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    goto :goto_24

    :cond_4c
    const-string v1, "file:///android_res/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    .line 80
    :cond_5b
    if-lez v0, :cond_6e

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6b
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    goto :goto_24

    :cond_6e
    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6b
.end method

.method private errString(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 6
    .parameter "ex"

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, exMessage:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    const v3, 0x104010d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, errString:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_26
    return-object v0
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 188
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .registers 20

    .prologue
    .line 99
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/FileLoader;->mType:I

    move v14, v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_4a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_27b

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5f

    .line 101
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1f} :catch_30
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1f} :catch_27b

    .line 172
    :cond_1f
    :goto_1f
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0xc8

    const-string v18, "OK"

    invoke-virtual/range {v14 .. v18}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    .line 182
    const/4 v14, 0x1

    :goto_2f
    return v14

    .line 102
    :catch_30
    move-exception v14

    move-object v7, v14

    .line 104
    .local v7, ex:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/content/res/AssetManager;->openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_49} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_49} :catch_27b

    goto :goto_1f

    .line 174
    .end local v7           #ex:Ljava/io/FileNotFoundException;
    :catch_4a
    move-exception v14

    move-object v7, v14

    .line 175
    .restart local v7       #ex:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xe

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/webkit/FileLoader;->errString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 176
    const/4 v14, 0x0

    goto :goto_2f

    .line 106
    .end local v7           #ex:Ljava/io/FileNotFoundException;
    :cond_5f
    :try_start_5f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/FileLoader;->mType:I

    move v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_236

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_79

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_9a

    .line 111
    :cond_79
    const-string/jumbo v14, "webkit"

    const-string v15, "Need a path to resolve the res file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x104010d

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 114
    const/4 v14, 0x0

    goto :goto_2f

    .line 117
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 118
    .local v11, slash:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    const/16 v15, 0x2e

    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 119
    .local v4, dot:I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_b6

    const/4 v14, -0x1

    if-ne v4, v14, :cond_ef

    .line 120
    :cond_b6
    const-string/jumbo v14, "webkit"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Incorrect res path: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x104010d

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 123
    const/4 v14, 0x0

    goto/16 :goto_2f

    .line 125
    :cond_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, subClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v14, v0

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v14, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_103
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_103} :catch_4a
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_103} :catch_27b

    move-result-object v9

    .line 127
    .local v9, fieldName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 129
    .local v6, errorMsg:Ljava/lang/String;
    :try_start_105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".R$"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 133
    .local v3, d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 134
    .local v8, field:Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 135
    .local v10, id:I
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 136
    .local v13, value:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v10, v13, v15}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 137
    iget v14, v13, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_192

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    iget v15, v13, Landroid/util/TypedValue;->assetCookie:I

    move-object v0, v13

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_176
    .catch Ljava/lang/ClassNotFoundException; {:try_start_105 .. :try_end_176} :catch_195
    .catch Ljava/lang/SecurityException; {:try_start_105 .. :try_end_176} :catch_1be
    .catch Ljava/lang/NoSuchFieldException; {:try_start_105 .. :try_end_176} :catch_1d4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_105 .. :try_end_176} :catch_208
    .catch Ljava/lang/IllegalAccessException; {:try_start_105 .. :try_end_176} :catch_21f
    .catch Ljava/io/FileNotFoundException; {:try_start_105 .. :try_end_176} :catch_4a
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_176} :catch_27b

    .line 157
    .end local v3           #d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v10           #id:I
    .end local v13           #value:Landroid/util/TypedValue;
    :goto_176
    if-eqz v6, :cond_1f

    .line 158
    :try_start_178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x104010d

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V
    :try_end_18f
    .catch Ljava/io/FileNotFoundException; {:try_start_178 .. :try_end_18f} :catch_4a
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_18f} :catch_27b

    .line 160
    const/4 v14, 0x0

    goto/16 :goto_2f

    .line 142
    .restart local v3       #d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v8       #field:Ljava/lang/reflect/Field;
    .restart local v10       #id:I
    .restart local v13       #value:Landroid/util/TypedValue;
    :cond_192
    :try_start_192
    const-string v6, "Only support TYPE_STRING for the res files"
    :try_end_194
    .catch Ljava/lang/ClassNotFoundException; {:try_start_192 .. :try_end_194} :catch_195
    .catch Ljava/lang/SecurityException; {:try_start_192 .. :try_end_194} :catch_1be
    .catch Ljava/lang/NoSuchFieldException; {:try_start_192 .. :try_end_194} :catch_1d4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_192 .. :try_end_194} :catch_208
    .catch Ljava/lang/IllegalAccessException; {:try_start_192 .. :try_end_194} :catch_21f
    .catch Ljava/io/FileNotFoundException; {:try_start_192 .. :try_end_194} :catch_4a
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_194} :catch_27b

    goto :goto_176

    .line 144
    .end local v3           #d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v10           #id:I
    .end local v13           #value:Landroid/util/TypedValue;
    :catch_195
    move-exception v14

    move-object v5, v14

    .line 145
    .local v5, e:Ljava/lang/ClassNotFoundException;
    :try_start_197
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t find class:  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".R$"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    goto :goto_176

    .line 147
    .end local v5           #e:Ljava/lang/ClassNotFoundException;
    :catch_1be
    move-exception v14

    move-object v5, v14

    .line 148
    .local v5, e:Ljava/lang/SecurityException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Caught SecurityException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    goto :goto_176

    .line 149
    .end local v5           #e:Ljava/lang/SecurityException;
    :catch_1d4
    move-exception v14

    move-object v5, v14

    .line 150
    .local v5, e:Ljava/lang/NoSuchFieldException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t find field:  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".R$"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    goto/16 :goto_176

    .line 152
    .end local v5           #e:Ljava/lang/NoSuchFieldException;
    :catch_208
    move-exception v14

    move-object v5, v14

    .line 153
    .local v5, e:Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Caught IllegalArgumentException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    goto/16 :goto_176

    .line 154
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    :catch_21f
    move-exception v14

    move-object v5, v14

    .line 155
    .local v5, e:Ljava/lang/IllegalAccessException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Caught IllegalAccessException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_176

    .line 163
    .end local v4           #dot:I
    .end local v5           #e:Ljava/lang/IllegalAccessException;
    .end local v6           #errorMsg:Ljava/lang/String;
    .end local v9           #fieldName:Ljava/lang/String;
    .end local v11           #slash:I
    .end local v12           #subClassName:Ljava/lang/String;
    :cond_236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/FileLoader;->mAllowFileAccess:Z

    move v14, v0

    if-nez v14, :cond_257

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x104010d

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 166
    const/4 v14, 0x0

    goto/16 :goto_2f

    .line 169
    :cond_257
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v15, v0

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;

    .line 170
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    move-object v15, v0

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/FileLoader;->mContentLength:J
    :try_end_279
    .catch Ljava/io/FileNotFoundException; {:try_start_197 .. :try_end_279} :catch_4a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_279} :catch_27b

    goto/16 :goto_1f

    .line 178
    :catch_27b
    move-exception v14

    move-object v7, v14

    .line 179
    .local v7, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    move-object v14, v0

    const/16 v15, -0xd

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/webkit/FileLoader;->errString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 180
    const/4 v14, 0x0

    goto/16 :goto_2f
.end method
