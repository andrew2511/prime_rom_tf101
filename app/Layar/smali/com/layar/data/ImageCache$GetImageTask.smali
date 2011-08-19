.class Lcom/layar/data/ImageCache$GetImageTask;
.super Landroid/os/AsyncTask;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_CATEGORY:I = 0x4

.field public static final ACTION_FAMILY:I = 0x5

.field public static final ACTION_FLOATICON:I = 0x6

.field public static final ACTION_GROUP:I = 0x8

.field public static final ACTION_LAYER:I = 0x2

.field public static final ACTION_LAYER_ICON:I = 0x3

.field public static final ACTION_POI:I = 0x1

.field public static final ACTION_SHARE:I = 0x7


# instance fields
.field private final mAction:I

.field private mCacheFile:Ljava/io/File;

.field private final mCacheId:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/data/ImageCache;

.field private final viewImage:Landroid/widget/ImageView;

.field private final viewProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/layar/data/ImageCache;ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 0
    .parameter
    .parameter "action"
    .parameter "url"
    .parameter "cacheFile"
    .parameter "cacheId"
    .parameter "imageView"
    .parameter "progressBar"

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    .line 1112
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1113
    iput-object p6, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    .line 1114
    iput-object p7, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewProgressBar:Landroid/widget/ProgressBar;

    .line 1115
    iput p2, p0, Lcom/layar/data/ImageCache$GetImageTask;->mAction:I

    .line 1116
    iput-object p4, p0, Lcom/layar/data/ImageCache$GetImageTask;->mCacheFile:Ljava/io/File;

    .line 1117
    iput-object p3, p0, Lcom/layar/data/ImageCache$GetImageTask;->mUrl:Ljava/lang/String;

    .line 1118
    iput-object p5, p0, Lcom/layar/data/ImageCache$GetImageTask;->mCacheId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/layar/data/ImageCache$GetImageTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->mUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "params"

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/layar/data/ImageCache$GetImageTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    const/4 v2, 0x0

    .line 1174
    :goto_0
    return-object v2

    .line 1146
    :cond_0
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->mCacheFile:Ljava/io/File;

    invoke-static {v2}, Lcom/layar/data/ImageCache;->access$8(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1149
    .local v1, result:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 1150
    iget v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->mAction:I

    packed-switch v2, :pswitch_data_0

    .line 1167
    :cond_1
    :goto_1
    iget v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->mAction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 1169
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v3}, Lcom/layar/data/ImageCache;->access$5(Lcom/layar/data/ImageCache;)I

    move-result v3

    iget-object v4, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v4}, Lcom/layar/data/ImageCache;->access$6(Lcom/layar/data/ImageCache;)I

    move-result v4

    iget-object v5, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v5}, Lcom/layar/data/ImageCache;->access$7(Lcom/layar/data/ImageCache;)I

    move-result v5

    .line 1168
    invoke-static {v1, v2, v3, v4, v5}, Lcom/layar/data/ImageCache;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1170
    .local v0, image:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v0

    .line 1171
    goto :goto_0

    .line 1151
    .end local v0           #image:Landroid/graphics/Bitmap;
    :pswitch_0
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/layar/data/ImageCache;->downloadPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 1152
    :pswitch_1
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/layar/data/ImageCache$GetImageTask;->mCacheFile:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/layar/data/ImageCache;->access$9(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 1158
    :pswitch_2
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/layar/data/ImageCache$GetImageTask;->mCacheFile:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/layar/data/ImageCache;->access$10(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 1160
    :pswitch_3
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/layar/data/ImageCache$GetImageTask;->mCacheFile:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/layar/data/ImageCache;->access$10(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1161
    invoke-static {v1}, Lcom/layar/data/ImageCache;->access$4(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 1174
    goto :goto_0

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/ImageCache$GetImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 1179
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1180
    iget-object v1, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v1}, Lcom/layar/data/ImageCache;->access$0(Lcom/layar/data/ImageCache;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 1181
    :try_start_0
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v2}, Lcom/layar/data/ImageCache;->access$1(Lcom/layar/data/ImageCache;)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/layar/data/ImageCache;->access$2(Lcom/layar/data/ImageCache;I)V

    .line 1182
    invoke-virtual {p0}, Lcom/layar/data/ImageCache$GetImageTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1183
    monitor-exit v1

    .line 1202
    :goto_0
    return-void

    .line 1184
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->mCacheId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1185
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v2}, Lcom/layar/data/ImageCache;->access$11(Lcom/layar/data/ImageCache;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/data/ImageCache$GetImageTask;->mCacheId:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    :cond_1
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v2}, Lcom/layar/data/ImageCache;->access$0(Lcom/layar/data/ImageCache;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1188
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v2}, Lcom/layar/data/ImageCache;->access$0(Lcom/layar/data/ImageCache;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/ImageCache$GetImageTask;

    .line 1189
    .local v0, task:Lcom/layar/data/ImageCache$GetImageTask;
    if-ne v0, p0, :cond_4

    .line 1190
    iget v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->mAction:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 1191
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1195
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_3

    .line 1197
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1198
    :cond_3
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    iget-object v3, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/layar/data/ImageCache;->access$12(Lcom/layar/data/ImageCache;Landroid/widget/ImageView;)V

    .line 1180
    .end local v0           #task:Lcom/layar/data/ImageCache$GetImageTask;
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1192
    .restart local v0       #task:Lcom/layar/data/ImageCache$GetImageTask;
    :cond_5
    if-eqz p1, :cond_2

    .line 1193
    :try_start_1
    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/layar/data/ImageCache$GetImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1123
    iget-object v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v0}, Lcom/layar/data/ImageCache;->access$0(Lcom/layar/data/ImageCache;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 1124
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v1}, Lcom/layar/data/ImageCache;->access$1(Lcom/layar/data/ImageCache;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/layar/data/ImageCache;->access$2(Lcom/layar/data/ImageCache;I)V

    .line 1123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    iget-object v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1128
    :cond_0
    iget v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/layar/data/ImageCache;->access$3(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1137
    :goto_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1138
    return-void

    .line 1123
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1130
    :cond_1
    iget v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->mAction:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1131
    iget-object v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/layar/data/ImageCache;->access$4(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1132
    :cond_2
    iget v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1133
    iget-object v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    .line 1134
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v2}, Lcom/layar/data/ImageCache;->access$5(Lcom/layar/data/ImageCache;)I

    move-result v2

    iget-object v3, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v3}, Lcom/layar/data/ImageCache;->access$6(Lcom/layar/data/ImageCache;)I

    move-result v3

    iget-object v4, p0, Lcom/layar/data/ImageCache$GetImageTask;->this$0:Lcom/layar/data/ImageCache;

    invoke-static {v4}, Lcom/layar/data/ImageCache;->access$7(Lcom/layar/data/ImageCache;)I

    move-result v4

    .line 1133
    invoke-static {v5, v1, v2, v3, v4}, Lcom/layar/data/ImageCache;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1136
    :cond_3
    iget-object v0, p0, Lcom/layar/data/ImageCache$GetImageTask;->viewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
