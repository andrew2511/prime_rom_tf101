.class Lcom/layar/AudioActivity$MediaLoader$1;
.super Ljava/lang/Object;
.source "AudioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/layar/AudioActivity$MediaLoader$1;->this$1:Lcom/layar/AudioActivity$MediaLoader;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 141
    return-void
.end method
