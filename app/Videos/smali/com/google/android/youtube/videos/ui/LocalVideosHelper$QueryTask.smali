.class Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;
.super Landroid/os/AsyncTask;
.source "LocalVideosHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/ui/LocalVideosHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/videos/LocalVideo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;-><init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 23
    .parameter "voids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/videos/LocalVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$500(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 109
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 110
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v18, videos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/videos/LocalVideo;>;"
    const-string v19, "_id"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 112
    .local v16, idColumn:I
    const-string v19, "mime_type"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 113
    .local v17, mimeTypeColumn:I
    const-string v19, "_display_name"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 114
    .local v14, displayNameColumn:I
    const-string v19, "datetaken"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 115
    .local v13, dateColumn:I
    const-string v19, "duration"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 117
    .local v15, durationColumn:I
    const/4 v11, 0x0

    .line 119
    .local v11, count:I
    :cond_0
    move-object v0, v12

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 120
    .local v4, id:J
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 121
    .local v6, uri:Landroid/net/Uri;
    move-object v0, v12

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, mimeType:Ljava/lang/String;
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, displayName:Ljava/lang/String;
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move v10, v0

    .line 124
    .local v10, duration:I
    new-instance v9, Ljava/util/Date;

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-object v0, v9

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 125
    .local v9, date:Ljava/util/Date;
    new-instance v3, Lcom/google/android/youtube/videos/LocalVideo;

    invoke-direct/range {v3 .. v10}, Lcom/google/android/youtube/videos/LocalVideo;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V

    .line 126
    .local v3, video:Lcom/google/android/youtube/videos/LocalVideo;
    move-object/from16 v0, v18

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$600(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/LocalVideo;)V

    .line 128
    add-int/lit8 v11, v11, 0x1

    .line 129
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x64

    move v0, v11

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 134
    .end local v3           #video:Lcom/google/android/youtube/videos/LocalVideo;
    .end local v4           #id:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #displayName:Ljava/lang/String;
    .end local v9           #date:Ljava/util/Date;
    .end local v10           #duration:I
    .end local v11           #count:I
    .end local v13           #dateColumn:I
    .end local v14           #displayNameColumn:I
    .end local v15           #durationColumn:I
    .end local v16           #idColumn:I
    .end local v17           #mimeTypeColumn:I
    :cond_1
    :goto_0
    if-eqz v12, :cond_2

    .line 135
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_2
    return-object v18

    .line 131
    .end local v18           #videos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/videos/LocalVideo;>;"
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .restart local v18       #videos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/videos/LocalVideo;>;"
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/videos/LocalVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, videos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/videos/LocalVideo;>;"
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$200(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$300(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$702(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;)Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    .line 151
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$100(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->addAll(Ljava/util/List;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$400(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$100(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->clear()V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$200(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$300(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$400(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    return-void
.end method
