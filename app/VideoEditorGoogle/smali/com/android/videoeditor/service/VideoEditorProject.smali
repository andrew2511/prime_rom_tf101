.class public Lcom/android/videoeditor/service/VideoEditorProject;
.super Ljava/lang/Object;
.source "VideoEditorProject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/service/VideoEditorProject$1;,
        Lcom/android/videoeditor/service/VideoEditorProject$Download;
    }
.end annotation


# static fields
.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_FILENAME:Ljava/lang/String; = "filename"

.field private static final ATTR_MIME:Ljava/lang/String; = "mime"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PLAYHEAD_POSITION:Ljava/lang/String; = "playhead"

.field private static final ATTR_SAVED:Ljava/lang/String; = "saved"

.field private static final ATTR_THEME:Ljava/lang/String; = "theme"

.field private static final ATTR_TIME:Ljava/lang/String; = "time"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_ZOOM_LEVEL:Ljava/lang/String; = "zoom_level"

.field public static final DEFAULT_ZOOM_LEVEL:I = 0x14

.field private static final PROJECT_METADATA_FILENAME:Ljava/lang/String; = "metadata.xml"

.field private static final TAG_DOWNLOAD:Ljava/lang/String; = "download"

.field private static final TAG_MOVIE:Ljava/lang/String; = "movie"

.field private static final TAG_PROJECT:Ljava/lang/String; = "project"


# instance fields
.field private mAspectRatio:I

.field private mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieAudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mClean:Z

.field private final mDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject$Download;",
            ">;"
        }
    .end annotation
.end field

.field private mExportedMovieUri:Landroid/net/Uri;

.field private mLastSaved:J

.field private mMediaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayheadPosMs:J

.field private final mProjectDurationMs:J

.field private mProjectName:Ljava/lang/String;

.field private final mProjectPath:Ljava/lang/String;

.field private mTheme:Ljava/lang/String;

.field private final mVideoEditor:Landroid/media/videoeditor/VideoEditor;

.field private mZoomLevel:I


# direct methods
.method constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJILandroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "videoEditor"
    .parameter "projectPath"
    .parameter "projectName"
    .parameter "lastSaved"
    .parameter "playheadPosMs"
    .parameter "durationMs"
    .parameter "zoomLevel"
    .parameter "exportedMovieUri"
    .parameter "theme"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/videoeditor/VideoEditor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJI",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject$Download;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p13, downloads:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject$Download;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    .line 152
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAspectRatio:I

    .line 157
    :cond_0
    if-eqz p13, :cond_1

    .line 158
    iput-object p13, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    .line 162
    :goto_0
    iput-object p2, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectPath:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectName:Ljava/lang/String;

    .line 164
    iput-wide p4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mLastSaved:J

    .line 165
    iput-wide p6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mPlayheadPosMs:J

    .line 166
    iput-wide p8, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectDurationMs:J

    .line 167
    iput p10, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mZoomLevel:I

    .line 168
    iput-object p11, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mExportedMovieUri:Landroid/net/Uri;

    .line 169
    iput-object p12, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mTheme:Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 171
    return-void

    .line 160
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    goto :goto_0
.end method

.method public static fromXml(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;
    .locals 28
    .parameter "videoEditor"
    .parameter "projectPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1166
    new-instance v3, Ljava/io/File;

    const-string v4, "metadata.xml"

    move-object v0, v3

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    .local v3, file:Ljava/io/File;
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1168
    .local v17, fis:Ljava/io/FileInputStream;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v16, downloads:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject$Download;>;"
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    .line 1172
    .local v20, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "UTF-8"

    .end local v3           #file:Ljava/io/File;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1173
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 1175
    .local v3, eventType:I
    const/4 v8, 0x0

    .line 1176
    .local v8, projectName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1177
    .local v15, themeId:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1178
    .local v14, exportedMovieUri:Landroid/net/Uri;
    const-wide/16 v4, 0x0

    .line 1179
    .local v4, lastSaved:J
    const-wide/16 v6, 0x0

    .line 1180
    .local v6, playheadPosMs:J
    const-wide/16 v11, 0x0

    .line 1181
    .local v11, durationMs:J
    const/16 v13, 0x14

    .local v13, zoomLevel:I
    move-wide/from16 v21, v6

    .end local v6           #playheadPosMs:J
    .local v21, playheadPosMs:J
    move-wide/from16 v18, v4

    .end local v4           #lastSaved:J
    .local v18, lastSaved:J
    move-object/from16 v23, v8

    .line 1182
    .end local v8           #projectName:Ljava/lang/String;
    .local v23, projectName:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1183
    const/4 v4, 0x0

    .line 1184
    .local v4, name:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    move-object v3, v4

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    move-wide/from16 v6, v21

    .end local v21           #playheadPosMs:J
    .restart local v6       #playheadPosMs:J
    move-object/from16 v8, v23

    .end local v23           #projectName:Ljava/lang/String;
    .restart local v8       #projectName:Ljava/lang/String;
    move-wide/from16 v4, v18

    .line 1213
    .end local v18           #lastSaved:J
    .local v4, lastSaved:J
    :goto_1
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, eventType:I
    move-wide/from16 v21, v6

    .end local v6           #playheadPosMs:J
    .restart local v21       #playheadPosMs:J
    move-wide/from16 v18, v4

    .end local v4           #lastSaved:J
    .restart local v18       #lastSaved:J
    move-object/from16 v23, v8

    .line 1214
    .end local v8           #projectName:Ljava/lang/String;
    .restart local v23       #projectName:Ljava/lang/String;
    goto :goto_0

    .line 1186
    .local v4, name:Ljava/lang/String;
    :pswitch_0
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1187
    .end local v4           #name:Ljava/lang/String;
    .local v10, name:Ljava/lang/String;
    const-string v3, "project"

    .end local v3           #eventType:I
    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1188
    const-string v3, ""

    const-string v4, "name"

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1189
    .end local v23           #projectName:Ljava/lang/String;
    .local v7, projectName:Ljava/lang/String;
    const-string v3, ""

    const-string v4, "theme"

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1190
    const-string v3, ""

    const-string v4, "saved"

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1191
    .end local v18           #lastSaved:J
    .local v3, lastSaved:J
    const-string v5, ""

    const-string v6, "playhead"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1193
    .end local v21           #playheadPosMs:J
    .local v5, playheadPosMs:J
    const-string v8, ""

    const-string v9, "duration"

    move-object/from16 v0, v20

    move-object v1, v8

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1195
    const-string v8, ""

    const-string v9, "zoom_level"

    move-object/from16 v0, v20

    move-object v1, v8

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object v8, v7

    .end local v7           #projectName:Ljava/lang/String;
    .restart local v8       #projectName:Ljava/lang/String;
    move-wide/from16 v24, v5

    .end local v5           #playheadPosMs:J
    .local v24, playheadPosMs:J
    move-wide/from16 v6, v24

    .end local v24           #playheadPosMs:J
    .restart local v6       #playheadPosMs:J
    move-wide/from16 v26, v3

    .end local v3           #lastSaved:J
    .local v26, lastSaved:J
    move-wide/from16 v4, v26

    .end local v26           #lastSaved:J
    .local v4, lastSaved:J
    move-object v3, v10

    .end local v10           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    goto :goto_1

    .line 1197
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #lastSaved:J
    .end local v6           #playheadPosMs:J
    .end local v8           #projectName:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v18       #lastSaved:J
    .restart local v21       #playheadPosMs:J
    .restart local v23       #projectName:Ljava/lang/String;
    :cond_0
    const-string v3, "movie"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1198
    const-string v3, ""

    const-string v4, "uri"

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object v3, v10

    .end local v10           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    move-wide/from16 v6, v21

    .end local v21           #playheadPosMs:J
    .restart local v6       #playheadPosMs:J
    move-wide/from16 v4, v18

    .end local v18           #lastSaved:J
    .restart local v4       #lastSaved:J
    move-object/from16 v8, v23

    .end local v23           #projectName:Ljava/lang/String;
    .restart local v8       #projectName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1199
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #lastSaved:J
    .end local v6           #playheadPosMs:J
    .end local v8           #projectName:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v18       #lastSaved:J
    .restart local v21       #playheadPosMs:J
    .restart local v23       #projectName:Ljava/lang/String;
    :cond_1
    const-string v3, "download"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1200
    new-instance v3, Lcom/android/videoeditor/service/VideoEditorProject$Download;

    const-string v4, ""

    const-string v5, "uri"

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "mime"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "filename"

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "time"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/videoeditor/service/VideoEditorProject$Download;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/videoeditor/service/VideoEditorProject$1;)V

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v10

    .end local v10           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    move-wide/from16 v6, v21

    .end local v21           #playheadPosMs:J
    .restart local v6       #playheadPosMs:J
    move-wide/from16 v4, v18

    .end local v18           #lastSaved:J
    .restart local v4       #lastSaved:J
    move-object/from16 v8, v23

    .end local v23           #projectName:Ljava/lang/String;
    .restart local v8       #projectName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1216
    .end local v4           #lastSaved:J
    .end local v6           #playheadPosMs:J
    .end local v8           #projectName:Ljava/lang/String;
    .local v3, eventType:I
    .restart local v18       #lastSaved:J
    .restart local v21       #playheadPosMs:J
    .restart local v23       #projectName:Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/android/videoeditor/service/VideoEditorProject;

    .end local v3           #eventType:I
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v23

    move-wide/from16 v7, v18

    move-wide/from16 v9, v21

    invoke-direct/range {v3 .. v16}, Lcom/android/videoeditor/service/VideoEditorProject;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJILandroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    if-eqz v17, :cond_3

    .line 1220
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    :cond_3
    return-object v3

    .line 1219
    .end local v11           #durationMs:J
    .end local v13           #zoomLevel:I
    .end local v14           #exportedMovieUri:Landroid/net/Uri;
    .end local v15           #themeId:Ljava/lang/String;
    .end local v18           #lastSaved:J
    .end local v20           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v21           #playheadPosMs:J
    .end local v23           #projectName:Ljava/lang/String;
    :catchall_0
    move-exception p0

    .end local p0
    if-eqz v17, :cond_4

    .line 1220
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw p0

    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #durationMs:J
    .restart local v13       #zoomLevel:I
    .restart local v14       #exportedMovieUri:Landroid/net/Uri;
    .restart local v15       #themeId:Ljava/lang/String;
    .restart local v18       #lastSaved:J
    .restart local v20       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21       #playheadPosMs:J
    .restart local v23       #projectName:Ljava/lang/String;
    .restart local p0
    :cond_5
    move-object v3, v10

    .end local v10           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    move-wide/from16 v6, v21

    .end local v21           #playheadPosMs:J
    .restart local v6       #playheadPosMs:J
    move-wide/from16 v4, v18

    .end local v18           #lastSaved:J
    .restart local v4       #lastSaved:J
    move-object/from16 v8, v23

    .end local v23           #projectName:Ljava/lang/String;
    .restart local v8       #projectName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1184
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static getEndTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 2
    .parameter "mediaItem"

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v0

    .line 641
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addAudioTrack(Lcom/android/videoeditor/service/MovieAudioTrack;)V
    .locals 1
    .parameter "audioTrack"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 911
    return-void
.end method

.method public addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "mediaUri"
    .parameter "mimeType"
    .parameter "filename"

    .prologue
    .line 1122
    iget-object v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    new-instance v0, Lcom/android/videoeditor/service/VideoEditorProject$Download;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/videoeditor/service/VideoEditorProject$Download;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/videoeditor/service/VideoEditorProject$1;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 1124
    return-void
.end method

.method addEffect(Ljava/lang/String;Lcom/android/videoeditor/service/MovieEffect;)V
    .locals 3
    .parameter "mediaItemId"
    .parameter "effect"

    .prologue
    .line 858
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 860
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v1

    .line 861
    .local v1, oldEffect:Lcom/android/videoeditor/service/MovieEffect;
    if-eqz v1, :cond_0

    .line 862
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieEffect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/service/MovieMediaItem;->removeEffect(Ljava/lang/String;)V

    .line 865
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/MovieMediaItem;->addEffect(Lcom/android/videoeditor/service/MovieEffect;)V

    .line 866
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 867
    return-void
.end method

.method addExportedMovieUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mExportedMovieUri:Landroid/net/Uri;

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 278
    return-void
.end method

.method addOverlay(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;)V
    .locals 3
    .parameter "mediaItemId"
    .parameter "overlay"

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 818
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v1

    .line 819
    .local v1, oldOverlay:Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/service/MovieMediaItem;->removeOverlay(Ljava/lang/String;)V

    .line 823
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/MovieMediaItem;->addOverlay(Lcom/android/videoeditor/service/MovieOverlay;)V

    .line 824
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 825
    return-void
.end method

.method addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)V
    .locals 9
    .parameter "transition"
    .parameter "afterMediaItemId"

    .prologue
    const/4 v8, 0x0

    .line 721
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 722
    .local v3, count:I
    if-eqz p2, :cond_4

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, afterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    const/4 v1, -0x1

    .line 725
    .local v1, afterMediaItemIndex:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 726
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 727
    .local v5, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 728
    move-object v0, v5

    .line 729
    move v1, v4

    .line 735
    .end local v5           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    if-nez v0, :cond_2

    .line 736
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Media item not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 725
    .restart local v5       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 739
    .end local v5           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 741
    const/4 v6, 0x1

    sub-int v6, v3, v6

    if-ge v1, v6, :cond_3

    .line 742
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 743
    .local v2, beforeMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v2, p1}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 754
    .end local v0           #afterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v1           #afterMediaItemIndex:I
    .end local v2           #beforeMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v4           #i:I
    :cond_3
    :goto_1
    iput-boolean v8, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 755
    return-void

    .line 746
    :cond_4
    if-nez v3, :cond_5

    .line 747
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Media item not found at the beginning"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 750
    :cond_5
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 751
    .restart local v2       #beforeMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v2, p1}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    goto :goto_1
.end method

.method public clearSurface(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0, p1}, Landroid/media/videoeditor/VideoEditor;->clearSurface(Landroid/view/SurfaceHolder;)V

    .line 1106
    :cond_0
    return-void
.end method

.method public computeDuration()J
    .locals 7

    .prologue
    .line 983
    const-wide/16 v3, 0x0

    .line 984
    .local v3, totalDurationMs:J
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 985
    .local v2, mediaItemsCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 986
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 987
    .local v1, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 989
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 990
    const/4 v5, 0x1

    sub-int v5, v2, v5

    if-ge v0, v5, :cond_0

    .line 991
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 985
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    .end local v1           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    return-wide v3
.end method

.method public getAspectRatio()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAspectRatio:I

    return v0
.end method

.method public getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;
    .locals 3
    .parameter "audioTrackId"

    .prologue
    .line 942
    iget-object v2, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 943
    .local v0, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 948
    .end local v0           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieAudioTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    return-object v0
.end method

.method public getDownloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject$Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    return-object v0
.end method

.method public getEffect(Ljava/lang/String;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieEffect;
    .locals 2
    .parameter "mediaItemId"
    .parameter "effectId"

    .prologue
    .line 889
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 890
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v1

    return-object v1
.end method

.method public getExportedMovieUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mExportedMovieUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFirstMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 453
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v0, p0

    goto :goto_0
.end method

.method public getInsertAfterMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 12
    .parameter "timeMs"

    .prologue
    .line 653
    const-wide/16 v0, 0x0

    .line 654
    .local v0, beginMs:J
    const-wide/16 v2, 0x0

    .line 655
    .local v2, endMs:J
    const/4 v7, 0x0

    .line 656
    .local v7, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v8, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 657
    .local v6, mediaItemsCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 658
    iget-object v8, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 660
    .local v5, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v8

    add-long v2, v0, v8

    .line 662
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 663
    const/4 v8, 0x1

    sub-int v8, v6, v8

    if-ge v4, v8, :cond_0

    .line 664
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 668
    :cond_0
    cmp-long v8, p1, v0

    if-ltz v8, :cond_2

    cmp-long v8, p1, v2

    if-gtz v8, :cond_2

    .line 669
    sub-long v8, p1, v0

    sub-long v10, v2, p1

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    move-object v8, v7

    .line 680
    .end local v5           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-object v8

    .restart local v5       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    move-object v8, v5

    .line 672
    goto :goto_1

    .line 676
    :cond_2
    move-wide v0, v2

    .line 677
    move-object v7, v5

    .line 657
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 680
    .end local v5           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public getLastMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 3

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 478
    .local v0, count:I
    if-nez v0, :cond_0

    .line 479
    const/4 v1, 0x0

    .line 481
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v1, p0

    goto :goto_0
.end method

.method public getLastSaved()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mLastSaved:J

    return-wide v0
.end method

.method public getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 3
    .parameter "mediaItemId"

    .prologue
    .line 437
    iget-object v2, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 438
    .local v1, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 443
    .end local v1           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMediaItemBeginTime(Ljava/lang/String;)J
    .locals 7
    .parameter "mediaItemId"

    .prologue
    .line 959
    const-wide/16 v0, 0x0

    .line 960
    .local v0, beginMs:J
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 961
    .local v3, mediaItemsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 962
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 963
    .local v4, mi:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 976
    .end local v4           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    return-wide v0

    .line 967
    .restart local v4       #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 969
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 970
    const/4 v5, 0x1

    sub-int v5, v3, v5

    if-ge v2, v5, :cond_2

    .line 971
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v5

    sub-long/2addr v0, v5

    .line 961
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMediaItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 10
    .parameter "positionMs"

    .prologue
    const/4 v9, 0x0

    .line 578
    const-wide/16 v3, 0x0

    .line 579
    .local v3, startTimeMs:J
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 580
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 581
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 582
    .local v2, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    cmp-long v5, p1, v3

    if-ltz v5, :cond_1

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getEndTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v5, p1, v5

    if-gez v5, :cond_1

    .line 585
    const/4 v5, 0x1

    sub-int v5, v0, v5

    if-ge v1, v5, :cond_0

    .line 586
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v5, p0

    .line 603
    .end local v2           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-object v5

    .restart local v2       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local p0
    :cond_0
    move-object v5, v9

    .line 588
    goto :goto_1

    .line 590
    :cond_1
    cmp-long v5, p1, v3

    if-ltz v5, :cond_3

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v5, v3

    cmp-long v5, p1, v5

    if-gez v5, :cond_3

    .line 592
    const/4 v5, 0x2

    sub-int v5, v0, v5

    if-ge v1, v5, :cond_2

    .line 593
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v6, v1, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v5, p0

    goto :goto_1

    .restart local p0
    :cond_2
    move-object v5, v9

    .line 595
    goto :goto_1

    .line 598
    :cond_3
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 599
    invoke-static {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getEndTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_4
    move-object v5, v9

    .line 603
    goto :goto_1
.end method

.method public getNextMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 5
    .parameter "mediaItemId"

    .prologue
    .line 527
    const/4 v1, 0x0

    .line 528
    .local v1, getNext:Z
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 529
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 530
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 531
    .local v3, mi:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v1, :cond_0

    move-object v4, v3

    .line 540
    .end local v3           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-object v4

    .line 534
    .restart local v3       #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 535
    const/4 v1, 0x1

    .line 529
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    .end local v3           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getOverlay(Ljava/lang/String;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieOverlay;
    .locals 2
    .parameter "mediaItemId"
    .parameter "overlayId"

    .prologue
    .line 847
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 848
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v1

    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayheadPos()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mPlayheadPosMs:J

    return-wide v0
.end method

.method public getPreviousMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 7
    .parameter "positionMs"

    .prologue
    .line 550
    const-wide/16 v3, 0x0

    .line 551
    .local v3, startTimeMs:J
    const/4 v2, 0x0

    .line 552
    .local v2, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 553
    .local v1, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    cmp-long v5, p1, v3

    if-nez v5, :cond_2

    .end local v1           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    move-object v5, v2

    .line 568
    :goto_1
    return-object v5

    .line 555
    .restart local v1       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    cmp-long v5, p1, v3

    if-lez v5, :cond_3

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v5, v3

    cmp-long v5, p1, v5

    if-gez v5, :cond_3

    move-object v5, v1

    .line 557
    goto :goto_1

    .line 559
    :cond_3
    move-object v2, v1

    .line 562
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 563
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 564
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v5

    sub-long/2addr v3, v5

    goto :goto_0
.end method

.method public getPreviousMediaItem(Lcom/android/videoeditor/service/MovieTransition;)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 5
    .parameter "transition"

    .prologue
    const/4 v4, 0x0

    .line 614
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 615
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 616
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 617
    .local v2, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v1, :cond_0

    .line 618
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move-object v3, v4

    .line 628
    .end local v2           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-object v3

    .line 623
    .restart local v2       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v3

    if-ne v3, p1, :cond_1

    move-object v3, v2

    .line 624
    goto :goto_1

    .line 615
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    move-object v3, v4

    .line 628
    goto :goto_1
.end method

.method public getPreviousMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 4
    .parameter "mediaItemId"

    .prologue
    .line 508
    const/4 v2, 0x0

    .line 509
    .local v2, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 510
    .local v1, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    .end local v1           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    return-object v2

    .line 513
    .restart local v1       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public getProjectDuration()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectDurationMs:J

    return-wide v0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTransition;
    .locals 7
    .parameter "transitionId"

    .prologue
    const/4 v6, 0x0

    .line 788
    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->getFirstMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v2

    .line 789
    .local v2, firstMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v2, :cond_0

    move-object v5, v6

    .line 805
    :goto_0
    return-object v5

    .line 793
    :cond_0
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    .line 794
    .local v0, beginTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    .line 795
    goto :goto_0

    .line 798
    :cond_1
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 799
    .local v4, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    .line 800
    .local v1, endTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v1

    .line 801
    goto :goto_0

    .end local v1           #endTransition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v4           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3
    move-object v5, v6

    .line 805
    goto :goto_0
.end method

.method public getUniqueAspectRatiosList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v1, aspectRatiosList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 705
    .local v3, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAspectRatio()I

    move-result v0

    .line 706
    .local v0, aspectRatio:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 707
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 711
    .end local v0           #aspectRatio:I
    .end local v3           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    return-object v1
.end method

.method public getZoomLevel()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mZoomLevel:I

    return v0
.end method

.method public hasMultipleAspectRatios()Z
    .locals 4

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, aspectRatio:I
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 689
    .local v2, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v0, :cond_1

    .line 690
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAspectRatio()I

    move-result v0

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAspectRatio()I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 692
    const/4 v3, 0x1

    .line 696
    .end local v2           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V
    .locals 8
    .parameter "mediaItem"
    .parameter "afterMediaItemId"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 319
    if-nez p2, :cond_1

    .line 320
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 323
    .local v0, firstMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 324
    invoke-virtual {v0, v7}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 328
    .end local v0           #firstMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v6, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 329
    iput-boolean v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 351
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 332
    .local v2, mediaItemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 333
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 334
    .local v3, mi:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 336
    invoke-virtual {v3, v7}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 338
    const/4 v4, 0x1

    sub-int v4, v2, v4

    if-ge v1, v4, :cond_2

    .line 339
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4, v7}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 343
    :cond_2
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 344
    iput-boolean v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    goto :goto_0

    .line 332
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    .end local v3           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaItem not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isClean()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    return v0
.end method

.method public isFirstMediaItem(Ljava/lang/String;)Z
    .locals 2
    .parameter "mediaItemId"

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->getFirstMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 466
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v0, :cond_0

    .line 467
    const/4 v1, 0x0

    .line 469
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isLastMediaItem(Ljava/lang/String;)Z
    .locals 2
    .parameter "mediaItemId"

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 494
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v0, :cond_0

    .line 495
    const/4 v1, 0x0

    .line 497
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 1112
    return-void
.end method

.method removeAudioTrack(Ljava/lang/String;)V
    .locals 4
    .parameter "audioTrackId"

    .prologue
    .line 919
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 920
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 921
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 922
    .local v0, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 923
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 924
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 928
    .end local v0           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_0
    return-void

    .line 920
    .restart local v0       #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeDownload(Ljava/lang/String;)V
    .locals 6
    .parameter "mediaUri"

    .prologue
    .line 1132
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1133
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1134
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/VideoEditorProject$Download;

    .line 1135
    .local v1, download:Lcom/android/videoeditor/service/VideoEditorProject$Download;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getMediaUri()Ljava/lang/String;

    move-result-object v4

    .line 1136
    .local v4, uri:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1138
    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getFilename()Ljava/lang/String;

    move-result-object v2

    .line 1139
    .local v2, filename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1142
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1143
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 1147
    .end local v1           #download:Lcom/android/videoeditor/service/VideoEditorProject$Download;
    .end local v2           #filename:Ljava/lang/String;
    .end local v4           #uri:Ljava/lang/String;
    :cond_0
    return-void

    .line 1133
    .restart local v1       #download:Lcom/android/videoeditor/service/VideoEditorProject$Download;
    .restart local v4       #uri:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method removeEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "mediaItemId"
    .parameter "effectId"

    .prologue
    .line 876
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 877
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/MovieMediaItem;->removeEffect(Ljava/lang/String;)V

    .line 878
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 879
    return-void
.end method

.method removeMediaItem(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 10
    .parameter "mediaItemId"
    .parameter "transition"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 390
    const/4 v5, 0x0

    .line 391
    .local v5, prevMediaItemId:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 392
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 393
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 394
    .local v2, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 395
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 396
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 397
    if-eqz p2, :cond_1

    .line 398
    invoke-virtual {p0, p2, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)V

    .line 415
    .end local v2           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    :goto_1
    return-void

    .line 400
    .restart local v2       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    if-lez v1, :cond_2

    .line 401
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    sub-int v7, v1, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 402
    .local v4, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4, v9}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 405
    .end local v4           #prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    sub-int v6, v0, v8

    if-ge v1, v6, :cond_0

    .line 406
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 407
    .local v3, nextMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v3, v9}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    goto :goto_1

    .line 413
    .end local v3           #nextMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeOverlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "mediaItemId"
    .parameter "overlayId"

    .prologue
    .line 834
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 835
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/MovieMediaItem;->removeOverlay(Ljava/lang/String;)V

    .line 836
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 837
    return-void
.end method

.method removeTransition(Ljava/lang/String;)V
    .locals 7
    .parameter "transitionId"

    .prologue
    const/4 v6, 0x0

    .line 763
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 764
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 765
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 766
    .local v4, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    .line 767
    .local v0, beginTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 768
    invoke-virtual {v4, v6}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 778
    .end local v0           #beginTransition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v4           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 779
    return-void

    .line 772
    .restart local v0       #beginTransition:Lcom/android/videoeditor/service/MovieTransition;
    .restart local v4       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v2

    .line 773
    .local v2, endTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 774
    invoke-virtual {v4, v6}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 764
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public renderMediaItemFrame(Landroid/view/SurfaceHolder;Ljava/lang/String;J)J
    .locals 3
    .parameter "surfaceHolder"
    .parameter "mediaItemId"
    .parameter "timeMs"

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v1, :cond_1

    .line 1038
    iget-object v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, p2}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    .line 1040
    .local v0, mediaItem:Landroid/media/videoeditor/MediaVideoItem;
    if-eqz v0, :cond_0

    .line 1041
    invoke-virtual {v0, p1, p3, p4}, Landroid/media/videoeditor/MediaVideoItem;->renderFrame(Landroid/view/SurfaceHolder;J)J

    move-result-wide v1

    .line 1046
    .end local v0           #mediaItem:Landroid/media/videoeditor/MediaVideoItem;
    :goto_0
    return-wide v1

    .line 1043
    .restart local v0       #mediaItem:Landroid/media/videoeditor/MediaVideoItem;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 1046
    .end local v0           #mediaItem:Landroid/media/videoeditor/MediaVideoItem;
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .locals 2
    .parameter "surfaceHolder"
    .parameter "timeMs"
    .parameter "overlayData"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/videoeditor/VideoEditor;->renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J

    move-result-wide v0

    .line 1018
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public saveToXml()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 1231
    .local v3, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 1232
    .local v4, writer:Ljava/io/StringWriter;
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1233
    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1234
    const-string v5, ""

    const-string v6, "project"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1235
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1236
    const-string v5, ""

    const-string v6, "name"

    iget-object v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectName:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1238
    :cond_0
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mTheme:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1239
    const-string v5, ""

    const-string v6, "theme"

    iget-object v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mTheme:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1242
    :cond_1
    const-string v5, ""

    const-string v6, "playhead"

    iget-wide v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mPlayheadPosMs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1243
    const-string v5, ""

    const-string v6, "duration"

    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1244
    const-string v5, ""

    const-string v6, "zoom_level"

    iget v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mZoomLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mLastSaved:J

    .line 1247
    const-string v5, ""

    const-string v6, "saved"

    iget-wide v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mLastSaved:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1248
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mExportedMovieUri:Landroid/net/Uri;

    if-eqz v5, :cond_2

    .line 1249
    const-string v5, ""

    const-string v6, "movie"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1250
    const-string v5, ""

    const-string v6, "uri"

    iget-object v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mExportedMovieUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1251
    const-string v5, ""

    const-string v6, "movie"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1254
    :cond_2
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/VideoEditorProject$Download;

    .line 1255
    .local v0, download:Lcom/android/videoeditor/service/VideoEditorProject$Download;
    const-string v5, ""

    const-string v6, "download"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1256
    const-string v5, ""

    const-string v6, "uri"

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getMediaUri()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    const-string v5, ""

    const-string v6, "mime"

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1258
    const-string v5, ""

    const-string v6, "filename"

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1259
    const-string v5, ""

    const-string v6, "time"

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    const-string v5, ""

    const-string v6, "download"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1262
    .end local v0           #download:Lcom/android/videoeditor/service/VideoEditorProject$Download;
    :cond_3
    const-string v5, ""

    const-string v6, "project"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1263
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1266
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "metadata.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1268
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1269
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1270
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1271
    return-void
.end method

.method setAspectRatio(I)V
    .locals 1
    .parameter "aspectRatio"

    .prologue
    .line 266
    iput p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAspectRatio:I

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 268
    return-void
.end method

.method setAudioTracks(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieAudioTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 899
    .local p1, audioTracks:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieAudioTrack;>;"
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    .line 900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 901
    return-void
.end method

.method public setClean(Z)V
    .locals 0
    .parameter "clean"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 178
    return-void
.end method

.method setMediaItems(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, mediaItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 310
    return-void
.end method

.method public setPlayheadPos(J)V
    .locals 0
    .parameter "playheadPosMs"

    .prologue
    .line 259
    iput-wide p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mPlayheadPosMs:J

    .line 260
    return-void
.end method

.method public setProjectName(Ljava/lang/String;)V
    .locals 1
    .parameter "projectName"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectName:Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 200
    return-void
.end method

.method setTheme(Ljava/lang/String;)V
    .locals 1
    .parameter "theme"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mTheme:Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 293
    return-void
.end method

.method public setZoomLevel(I)V
    .locals 0
    .parameter "zoomLevel"

    .prologue
    .line 238
    iput p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mZoomLevel:I

    .line 239
    return-void
.end method

.method public startPreview(Landroid/view/SurfaceHolder;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .locals 9
    .parameter "surfaceHolder"
    .parameter "fromMs"
    .parameter "toMs"
    .parameter "loop"
    .parameter "callbackAfterFrameCount"
    .parameter "listener"

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/media/videoeditor/VideoEditor;->startPreview(Landroid/view/SurfaceHolder;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V

    .line 1080
    :cond_0
    return-void
.end method

.method public stopPreview()J
    .locals 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->stopPreview()J

    move-result-wide v0

    .line 1093
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 9
    .parameter "newMediaItem"

    .prologue
    const/4 v8, 0x1

    .line 360
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, newMediaItemId:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 362
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 363
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 364
    .local v2, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 365
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 366
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 368
    if-lez v1, :cond_0

    .line 369
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    sub-int v7, v1, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 370
    .local v5, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 373
    .end local v5           #prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    sub-int v6, v0, v8

    if-ge v1, v6, :cond_1

    .line 374
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 375
    .local v4, nextMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 380
    .end local v2           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v4           #nextMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    return-void

    .line 362
    .restart local v2       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
