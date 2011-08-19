.class public Lcom/infraware/filemanager/FmLauncherActivity;
.super Landroid/app/Activity;
.source "FmLauncherActivity.java"


# static fields
.field private static final DM_EXT_HWP:Ljava/lang/String; = ".hwp"

.field private static final DM_EXT_PDF:Ljava/lang/String; = ".pdf"

.field private static final DM_EXT_SHEET:Ljava/lang/String; = ".xls"

.field private static final DM_EXT_SHEET_X:Ljava/lang/String; = ".xlsx"

.field private static final DM_EXT_SLIDE:Ljava/lang/String; = ".ppt"

.field private static final DM_EXT_SLIDE_SHOW:Ljava/lang/String; = ".pps"

.field private static final DM_EXT_SLIDE_X:Ljava/lang/String; = ".pptx"

.field private static final DM_EXT_TXT:Ljava/lang/String; = ".txt"

.field private static final DM_EXT_WORD:Ljava/lang/String; = ".doc"

.field private static final DM_EXT_WORD_X:Ljava/lang/String; = ".docx"

.field private static final ERROR_MESSAGE:Ljava/lang/String; = "Unsupported file type"

.field private static final EXTRA_FILE_NAME:Ljava/lang/String; = "key_filename"

.field private static final EXTRA_FILE_NEW:Ljava/lang/String; = "new_file"

.field private static final EXTRA_FILE_TYPE:Ljava/lang/String; = "file_type"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final TYPE_DOC:Ljava/lang/String; = "application/msword"

.field private static final TYPE_DOCX:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

.field private static final TYPE_HWP:Ljava/lang/String; = "application/haansofthwp"

.field private static final TYPE_PDF:Ljava/lang/String; = "application/pdf"

.field private static final TYPE_PPS:Ljava/lang/String; = "application/vnd.ms-powerpoint"

.field private static final TYPE_PPT:Ljava/lang/String; = "application/vnd.ms-powerpoint"

.field private static final TYPE_PPTX:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.presentationml.presentation"

.field private static final TYPE_TXT:Ljava/lang/String; = "text/plain"

.field private static final TYPE_XLS:Ljava/lang/String; = "application/vnd.ms-excel"

.field private static final TYPE_XLSX:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

.field private static final TYPE_X_HWP:Ljava/lang/String; = "application/unknown"


# instance fields
.field private m_oMsgDlg:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/FmLauncherActivity;->m_oMsgDlg:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 26
    return-void
.end method

.method private checkNull(Ljava/lang/Object;)Z
    .locals 3
    .parameter "a_oObject"

    .prologue
    const/4 v2, 0x0

    .line 153
    if-nez p1, :cond_0

    .line 154
    const-string v1, "Unsupported file type"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 155
    .local v0, oToast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-virtual {p0}, Lcom/infraware/filemanager/FmLauncherActivity;->finish()V

    .line 157
    const/4 v1, 0x1

    .line 160
    .end local v0           #oToast:Landroid/widget/Toast;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private getActivityClassByExtension(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "a_strExtension"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 267
    const-string v0, ".pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const-string v0, ".hwp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    const-class v0, Lcom/infraware/viewer/UxViewerActivity;

    .line 289
    :goto_0
    return-object v0

    .line 272
    :cond_1
    const-string v0, ".doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    const-string v0, ".docx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    :cond_2
    const-class v0, Lcom/infraware/word/UxWordEditorActivity;

    goto :goto_0

    .line 276
    :cond_3
    const-string v0, ".xls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 277
    const-string v0, ".xlsx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 278
    :cond_4
    const-class v0, Lcom/infraware/sheet/UxSheetEditorActivity;

    goto :goto_0

    .line 280
    :cond_5
    const-string v0, ".ppt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 281
    const-string v0, ".pptx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    :cond_6
    const-class v0, Lcom/infraware/slide/UxSlideEditorActivity;

    goto :goto_0

    .line 284
    :cond_7
    const-string v0, ".pps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 285
    const-class v0, Lcom/infraware/slide/UxSlideEditorShowActivity;

    goto :goto_0

    .line 289
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFileTypeByExtension(Ljava/lang/String;)I
    .locals 1
    .parameter "a_strExtension"

    .prologue
    .line 293
    const-string v0, ".pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x6

    .line 325
    :goto_0
    return v0

    .line 296
    :cond_0
    const-string v0, ".hwp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const/4 v0, 0x3

    goto :goto_0

    .line 299
    :cond_1
    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    const/16 v0, 0xc

    goto :goto_0

    .line 302
    :cond_2
    const-string v0, ".doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    const/4 v0, 0x2

    goto :goto_0

    .line 305
    :cond_3
    const-string v0, ".docx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    const/16 v0, 0x12

    goto :goto_0

    .line 308
    :cond_4
    const-string v0, ".xls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    const/4 v0, 0x5

    goto :goto_0

    .line 311
    :cond_5
    const-string v0, ".xlsx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    const/16 v0, 0x14

    goto :goto_0

    .line 314
    :cond_6
    const-string v0, ".ppt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :cond_7
    const-string v0, ".pptx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 318
    const/16 v0, 0x13

    goto :goto_0

    .line 320
    :cond_8
    const-string v0, ".pps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 321
    const/16 v0, 0x27

    goto :goto_0

    .line 325
    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getPathFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 25
    .parameter "a_oIntent"

    .prologue
    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 165
    .local v5, oUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    .line 167
    .local v24, strScheme:Ljava/lang/String;
    if-nez v24, :cond_0

    .line 168
    const/4 v6, 0x0

    .line 262
    :goto_0
    return-object v6

    .line 170
    :cond_0
    const-string v6, "file"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 173
    :cond_1
    const-string v6, "content"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 174
    const/16 v19, 0x0

    .line 177
    .local v19, oTempFile:Ljava/io/File;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/filemanager/FmLauncherActivity;->getCacheDir()Ljava/io/File;

    move-result-object v13

    .line 179
    .local v13, defaultDir:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 180
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 182
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/filemanager/FmLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v23

    .line 183
    .local v23, strMimeType:Ljava/lang/String;
    if-nez v23, :cond_3

    .line 184
    const/4 v6, 0x0

    goto :goto_0

    .line 186
    :cond_3
    const/16 v22, 0x0

    .line 187
    .local v22, strExtension:Ljava/lang/String;
    const-string v6, "application/msword"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 188
    const-string v22, ".doc"

    .line 209
    :cond_4
    :goto_1
    if-nez v22, :cond_f

    .line 210
    const/4 v6, 0x0

    goto :goto_0

    .line 189
    :cond_5
    const-string v6, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 190
    const-string v22, ".docx"

    goto :goto_1

    .line 191
    :cond_6
    const-string v6, "application/vnd.ms-excel"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 192
    const-string v22, ".xls"

    goto :goto_1

    .line 193
    :cond_7
    const-string v6, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 194
    const-string v22, ".xlsx"

    goto :goto_1

    .line 195
    :cond_8
    const-string v6, "application/vnd.ms-powerpoint"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    .line 196
    const-string v22, ".ppt"

    goto :goto_1

    .line 197
    :cond_9
    const-string v6, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    .line 198
    const-string v22, ".pptx"

    goto :goto_1

    .line 199
    :cond_a
    const-string v6, "application/vnd.ms-powerpoint"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    .line 200
    const-string v22, ".pps"

    goto :goto_1

    .line 201
    :cond_b
    const-string v6, "application/pdf"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_c

    .line 202
    const-string v22, ".pdf"

    goto :goto_1

    .line 203
    :cond_c
    const-string v6, "application/unknown"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_d

    .line 204
    const-string v6, "application/haansofthwp"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_e

    .line 205
    :cond_d
    const-string v22, ".hwp"

    goto :goto_1

    .line 206
    :cond_e
    const-string v6, "text/plain"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 207
    const-string v22, ".txt"

    goto/16 :goto_1

    .line 212
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/filemanager/FmLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 213
    .local v17, oInputStream:Ljava/io/InputStream;
    if-nez v17, :cond_10

    .line 214
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 216
    :cond_10
    const/4 v15, 0x0

    .line 217
    .local v15, filename:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/filemanager/FmLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 218
    .local v4, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_display_name"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 219
    .local v12, conversations:Landroid/database/Cursor;
    if-eqz v12, :cond_11

    .line 221
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 222
    const/4 v10, 0x0

    .local v10, a:I
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lt v10, v6, :cond_13

    .line 227
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 230
    .end local v10           #a:I
    :cond_11
    if-eqz v15, :cond_12

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_14

    .line 231
    :cond_12
    const-string v6, "download"

    move-object v0, v6

    move-object/from16 v1, v22

    move-object v2, v13

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v19

    .line 236
    :goto_3
    new-instance v18, Ljava/io/FileOutputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 237
    .local v18, oOutputStream:Ljava/io/FileOutputStream;
    const/16 v6, 0x2800

    new-array v11, v6, [B

    .line 240
    .local v11, buf:[B
    :goto_4
    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .line 241
    .local v16, numread:I
    if-gtz v16, :cond_15

    .line 248
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 249
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 223
    .end local v11           #buf:[B
    .end local v16           #numread:I
    .end local v18           #oOutputStream:Ljava/io/FileOutputStream;
    .restart local v10       #a:I
    :cond_13
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 225
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 222
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 233
    .end local v10           #a:I
    :cond_14
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object v1, v13

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v19           #oTempFile:Ljava/io/File;
    .local v20, oTempFile:Ljava/io/File;
    move-object/from16 v19, v20

    .end local v20           #oTempFile:Ljava/io/File;
    .restart local v19       #oTempFile:Ljava/io/File;
    goto :goto_3

    .line 244
    .restart local v11       #buf:[B
    .restart local v16       #numread:I
    .restart local v18       #oOutputStream:Ljava/io/FileOutputStream;
    :cond_15
    const/4 v6, 0x0

    move-object/from16 v0, v18

    move-object v1, v11

    move v2, v6

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 251
    .end local v4           #contentResolver:Landroid/content/ContentResolver;
    .end local v11           #buf:[B
    .end local v12           #conversations:Landroid/database/Cursor;
    .end local v13           #defaultDir:Ljava/io/File;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #numread:I
    .end local v17           #oInputStream:Ljava/io/InputStream;
    .end local v18           #oOutputStream:Ljava/io/FileOutputStream;
    .end local v22           #strExtension:Ljava/lang/String;
    .end local v23           #strMimeType:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v14, v6

    .line 253
    .local v14, e:Ljava/io/IOException;
    const-string v6, "Unsupported file type"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    .line 254
    .local v21, oToast:Landroid/widget/Toast;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 255
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 262
    .end local v14           #e:Ljava/io/IOException;
    .end local v19           #oTempFile:Ljava/io/File;
    .end local v21           #oToast:Landroid/widget/Toast;
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/infraware/filemanager/FmLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 67
    .local v4, oIntent:Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/infraware/filemanager/FmLauncherActivity;->checkNull(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 70
    .local v5, oUri:Landroid/net/Uri;
    invoke-direct {p0, v5}, Lcom/infraware/filemanager/FmLauncherActivity;->checkNull(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 72
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, strScheme:Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/infraware/filemanager/FmLauncherActivity;->checkNull(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 74
    const-string v10, "POLAUNCHER"

    invoke-static {v10, v9}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, v4}, Lcom/infraware/filemanager/FmLauncherActivity;->getPathFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, strPath:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/infraware/filemanager/FmLauncherActivity;->checkNull(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 80
    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, nExtensionSeparatorIndex:I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_2

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/infraware/filemanager/FmLauncherActivity;->checkNull(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, strExtension:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 85
    const-string v10, "POLAUNCHER"

    invoke-static {v10, v7}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, v7}, Lcom/infraware/filemanager/FmLauncherActivity;->getFileTypeByExtension(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, nFileType:I
    if-gez v1, :cond_3

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/infraware/filemanager/FmLauncherActivity;->checkNull(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_3
    const-string v10, "POLAUNCHER"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v7}, Lcom/infraware/filemanager/FmLauncherActivity;->getActivityClassByExtension(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 92
    .local v2, oClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v2}, Lcom/infraware/filemanager/FmLauncherActivity;->checkNull(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 93
    const-string v10, "POLAUNCHER"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v6, oViewerIntent:Landroid/content/Intent;
    const-string v10, "key_filename"

    invoke-virtual {v6, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v10, "file_type"

    invoke-virtual {v6, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, oFile:Ljava/io/File;
    const-string v10, "file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 101
    const-string v10, "file_type"

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_4

    .line 102
    const-string v10, "file_type"

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 103
    const-string v10, "file_type"

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    .line 104
    const-string v10, "file_type"

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x14

    if-eq v10, v11, :cond_4

    .line 105
    const-string v10, "file_type"

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x13

    if-eq v10, v11, :cond_4

    .line 106
    const-string v10, "file_type"

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x27

    if-eq v10, v11, :cond_4

    .line 107
    const-string v10, "file_type"

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x12

    if-ne v10, v11, :cond_5

    .line 109
    :cond_4
    const-string v10, "new_file"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    :cond_5
    invoke-static {}, Lcom/infraware/PolarisOffice;->getInstance()Lcom/infraware/PolarisOffice;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/PolarisOffice;->getCurrentViewer()Lcom/infraware/common/UxDocViewerBase;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 144
    invoke-static {}, Lcom/infraware/PolarisOffice;->getInstance()Lcom/infraware/PolarisOffice;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/PolarisOffice;->getCurrentViewer()Lcom/infraware/common/UxDocViewerBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/common/UxDocViewerBase;->finish()V

    .line 147
    :cond_6
    invoke-virtual {p0, v6}, Lcom/infraware/filemanager/FmLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Lcom/infraware/filemanager/FmLauncherActivity;->finish()V

    goto/16 :goto_0
.end method
