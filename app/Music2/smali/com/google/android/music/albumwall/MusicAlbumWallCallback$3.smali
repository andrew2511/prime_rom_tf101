.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onItemSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v3, -0x1

    .line 949
    iget-object v7, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    check-cast v7, Lcom/google/android/music/albumwall/MusicItem;

    .line 950
    .local v7, myItem:Lcom/google/android/music/albumwall/MusicItem;
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 994
    :goto_0
    return-void

    .line 952
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v3

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v4, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V

    goto :goto_0

    .line 955
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v3

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v4, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V

    goto :goto_0

    .line 958
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;J)V

    goto :goto_0

    .line 961
    :pswitch_3
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v8

    .line 962
    .local v8, playlistId:J
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v10

    .line 963
    .local v10, playlistName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1200(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    new-instance v12, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    .local v12, shortcutIntent:Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.playlist"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    cmp-long v0, v8, v3

    if-nez v0, :cond_0

    .line 969
    const-string v0, "playlistId"

    invoke-virtual {v12, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 975
    :goto_1
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 976
    .local v11, returnIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 977
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v11, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 980
    .local v2, size:I
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    check-cast v1, Lcom/google/android/music/albumwall/MusicItem;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1300(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 982
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 983
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v11}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->setResultData(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 972
    .end local v2           #size:I
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #returnIntent:Landroid/content/Intent;
    :cond_0
    const-string v0, "playlistId"

    invoke-virtual {v12, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 986
    .end local v12           #shortcutIntent:Landroid/content/Intent;
    :cond_1
    cmp-long v0, v8, v3

    if-nez v0, :cond_2

    .line 987
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    goto/16 :goto_0

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v0, v8, v9, v10}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1500(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
