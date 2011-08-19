.class Lcom/google/android/music/DeleteConfirmationActivity$1;
.super Ljava/lang/Object;
.source "DeleteConfirmationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/DeleteConfirmationActivity;->performDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/DeleteConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/DeleteConfirmationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/music/DeleteConfirmationActivity$1;->this$0:Lcom/google/android/music/DeleteConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    sget-object v2, Lcom/google/android/music/DeleteConfirmationActivity$2;->$SwitchMap$com$google$android$music$DeleteConfirmationActivity$DeletionType:[I

    iget-object v3, p0, Lcom/google/android/music/DeleteConfirmationActivity$1;->this$0:Lcom/google/android/music/DeleteConfirmationActivity;

    invoke-static {v3}, Lcom/google/android/music/DeleteConfirmationActivity;->access$000(Lcom/google/android/music/DeleteConfirmationActivity;)Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationActivity$1;->this$0:Lcom/google/android/music/DeleteConfirmationActivity;

    invoke-static {v2}, Lcom/google/android/music/DeleteConfirmationActivity;->access$100(Lcom/google/android/music/DeleteConfirmationActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    .local v1, songUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationActivity$1;->this$0:Lcom/google/android/music/DeleteConfirmationActivity;

    invoke-virtual {v2}, Lcom/google/android/music/DeleteConfirmationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v1           #songUri:Landroid/net/Uri;
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationActivity$1;->this$0:Lcom/google/android/music/DeleteConfirmationActivity;

    invoke-static {v2}, Lcom/google/android/music/DeleteConfirmationActivity;->access$100(Lcom/google/android/music/DeleteConfirmationActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    .line 99
    .local v0, playListUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationActivity$1;->this$0:Lcom/google/android/music/DeleteConfirmationActivity;

    invoke-virtual {v2}, Lcom/google/android/music/DeleteConfirmationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
