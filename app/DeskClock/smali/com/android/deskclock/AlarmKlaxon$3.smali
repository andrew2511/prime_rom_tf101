.class Lcom/android/deskclock/AlarmKlaxon$3;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmKlaxon;->play(Lcom/android/deskclock/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$3;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 178
    const-string v0, "Error occurred while playing audio."

    invoke-static {v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 180
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 181
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$3;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmKlaxon;->access$302(Lcom/android/deskclock/AlarmKlaxon;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 182
    const/4 v0, 0x1

    return v0
.end method
