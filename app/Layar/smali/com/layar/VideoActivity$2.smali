.class Lcom/layar/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/VideoActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/VideoActivity;


# direct methods
.method constructor <init>(Lcom/layar/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/VideoActivity$2;->this$0:Lcom/layar/VideoActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/layar/VideoActivity$2;->this$0:Lcom/layar/VideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/VideoActivity;->dismissDialog(I)V

    .line 52
    return-void
.end method
