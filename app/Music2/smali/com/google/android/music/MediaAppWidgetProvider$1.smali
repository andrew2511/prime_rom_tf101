.class Lcom/google/android/music/MediaAppWidgetProvider$1;
.super Ljava/lang/Object;
.source "MediaAppWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/google/android/music/MusicPlaybackService;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaAppWidgetProvider;

.field final synthetic val$appWidgetIds:[I

.field final synthetic val$service:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaAppWidgetProvider;Lcom/google/android/music/MusicPlaybackService;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/music/MediaAppWidgetProvider$1;->this$0:Lcom/google/android/music/MediaAppWidgetProvider;

    iput-object p2, p0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    iput-object p3, p0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$appWidgetIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 176
    .local v18, res:Landroid/content/res/Resources;
    new-instance v20, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040002

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 179
    .local v20, views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v19

    .line 180
    .local v19, titleName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v14

    .line 181
    .local v14, artistName:Ljava/lang/CharSequence;
    const/16 v16, 0x0

    .line 185
    .local v16, errorState:Ljava/lang/CharSequence;
    if-nez v19, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService;->getQueuePosition()I

    move-result v5

    if-ltz v5, :cond_0

    .line 247
    :goto_0
    return-void

    .line 191
    :cond_0
    const v5, 0x7f0c0079

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 194
    :cond_1
    if-eqz v16, :cond_3

    .line 196
    const v5, 0x7f0f0004

    const/16 v6, 0x8

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 197
    const/high16 v5, 0x7f0f

    move-object/from16 v0, v20

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 205
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->this$0:Lcom/google/android/music/MediaAppWidgetProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/google/android/music/MediaAppWidgetProvider;->access$100(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;)V

    .line 207
    invoke-static {}, Lcom/google/android/music/MediaAppWidgetProvider;->access$200()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService;->getAlbumId()J

    move-result-wide v6

    .line 211
    .local v6, album:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v13

    .line 212
    .local v13, albumName:Ljava/lang/CharSequence;
    if-nez v13, :cond_4

    const/4 v5, 0x0

    move-object v11, v5

    .line 213
    .local v11, albumstring:Ljava/lang/String;
    :goto_2
    if-nez v14, :cond_5

    const/4 v5, 0x0

    move-object v12, v5

    .line 214
    .local v12, artiststring:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v5, v0

    const/16 v8, 0x3c

    const/16 v9, 0x3c

    const/4 v10, 0x1

    invoke-static/range {v5 .. v12}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 216
    .local v15, b:Landroid/graphics/Bitmap;
    const v5, 0x7f0f0008

    move-object/from16 v0, v20

    move v1, v5

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 223
    .end local v6           #album:J
    .end local v11           #albumstring:Ljava/lang/String;
    .end local v12           #artiststring:Ljava/lang/String;
    .end local v13           #albumName:Ljava/lang/CharSequence;
    .end local v15           #b:Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v17

    .line 224
    .local v17, playing:Z
    invoke-static {}, Lcom/google/android/music/MediaAppWidgetProvider;->access$300()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 225
    if-eqz v17, :cond_6

    .line 226
    const v5, 0x7f0f0005

    const v6, 0x7f02018d

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 243
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->this$0:Lcom/google/android/music/MediaAppWidgetProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move/from16 v3, v17

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/MediaAppWidgetProvider;->access$400(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->this$0:Lcom/google/android/music/MediaAppWidgetProvider;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, v20

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MediaAppWidgetProvider;->access$500(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/widget/RemoteViews;Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->this$0:Lcom/google/android/music/MediaAppWidgetProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$service:Lcom/google/android/music/MusicPlaybackService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaAppWidgetProvider$1;->val$appWidgetIds:[I

    move-object v7, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/MediaAppWidgetProvider;->access$600(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 200
    .end local v17           #playing:Z
    :cond_3
    const v5, 0x7f0f0004

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    const/high16 v5, 0x7f0f

    move-object/from16 v0, v20

    move v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 202
    const v5, 0x7f0f0004

    move-object/from16 v0, v20

    move v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 212
    .restart local v6       #album:J
    .restart local v13       #albumName:Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    goto/16 :goto_2

    .line 213
    .restart local v11       #albumstring:Ljava/lang/String;
    :cond_5
    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto/16 :goto_3

    .line 229
    .end local v6           #album:J
    .end local v11           #albumstring:Ljava/lang/String;
    .end local v13           #albumName:Ljava/lang/CharSequence;
    .restart local v17       #playing:Z
    :cond_6
    const v5, 0x7f0f0005

    const v6, 0x7f02018e

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4

    .line 233
    :cond_7
    if-eqz v17, :cond_8

    .line 234
    const v5, 0x7f0f0005

    const v6, 0x7f020138

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 237
    :cond_8
    const v5, 0x7f0f0005

    const v6, 0x7f020139

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4
.end method
