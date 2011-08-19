.class Lnet/yostore/aws/view/navigate/PlayListActivity$10;
.super Ljava/lang/Object;
.source "PlayListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_play_control()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$10;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1165
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1194
    :goto_0
    return-void

    .line 1168
    :pswitch_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1183
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1186
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1171
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->play()V

    .line 1172
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$10;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$12(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1188
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1191
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1175
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->pause()V

    .line 1176
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$10;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$12(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
