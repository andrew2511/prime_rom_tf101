.class Lcom/layar/AudioActivity$MediaLoader$2;
.super Ljava/lang/Object;
.source "AudioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/AudioActivity$MediaLoader;->onProgressUpdate([Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/AudioActivity$MediaLoader;


# direct methods
.method constructor <init>(Lcom/layar/AudioActivity$MediaLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/AudioActivity$MediaLoader$2;->this$1:Lcom/layar/AudioActivity$MediaLoader;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/layar/AudioActivity$MediaLoader$2;->this$1:Lcom/layar/AudioActivity$MediaLoader;

    invoke-static {v0}, Lcom/layar/AudioActivity$MediaLoader;->access$3(Lcom/layar/AudioActivity$MediaLoader;)Lcom/layar/AudioActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/AudioActivity;->finish()V

    .line 147
    return-void
.end method
