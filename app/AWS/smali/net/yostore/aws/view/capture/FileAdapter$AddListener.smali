.class public Lnet/yostore/aws/view/capture/FileAdapter$AddListener;
.super Ljava/lang/Object;
.source "FileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddListener"
.end annotation


# instance fields
.field public holder:Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;

.field final synthetic this$0:Lnet/yostore/aws/view/capture/FileAdapter;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/capture/FileAdapter;Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter "holder"

    .prologue
    .line 181
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->this$0:Lnet/yostore/aws/view/capture/FileAdapter;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->holder:Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 184
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->holder:Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;

    invoke-virtual {v3}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->taggleAdd()V

    .line 185
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->holder:Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;

    iget-object v3, v3, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->path:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, parent:Ljava/lang/String;
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->holder:Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;

    invoke-static {v3}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->access$0(Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->holder:Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;

    invoke-static {v3}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->access$1(Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    new-instance v1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>()V

    .line 203
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->holder:Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;

    iget v3, v3, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->position:I

    int-to-long v3, v3

    iput-wide v3, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 208
    const/4 v3, 0x3

    iput v3, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 209
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->this$0:Lnet/yostore/aws/view/capture/FileAdapter;

    invoke-static {v3}, Lnet/yostore/aws/view/capture/FileAdapter;->access$0(Lnet/yostore/aws/view/capture/FileAdapter;)J

    move-result-wide v3

    iput-wide v3, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    .line 210
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->this$0:Lnet/yostore/aws/view/capture/FileAdapter;

    invoke-static {v3}, Lnet/yostore/aws/view/capture/FileAdapter;->access$1(Lnet/yostore/aws/view/capture/FileAdapter;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iput-object v3, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    .line 211
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->this$0:Lnet/yostore/aws/view/capture/FileAdapter;

    iget-object v3, v3, Lnet/yostore/aws/view/capture/FileAdapter;->hm:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 212
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->this$0:Lnet/yostore/aws/view/capture/FileAdapter;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lnet/yostore/aws/view/capture/FileAdapter;->hm:Ljava/util/HashMap;

    .line 213
    :cond_0
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->this$0:Lnet/yostore/aws/view/capture/FileAdapter;

    iget-object v3, v3, Lnet/yostore/aws/view/capture/FileAdapter;->hm:Ljava/util/HashMap;

    iget-object v4, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v1           #itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    :cond_1
    :goto_0
    const-string v3, "BA"

    const-string v4, ">> is pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 226
    :cond_2
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;->this$0:Lnet/yostore/aws/view/capture/FileAdapter;

    iget-object v3, v3, Lnet/yostore/aws/view/capture/FileAdapter;->hm:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
