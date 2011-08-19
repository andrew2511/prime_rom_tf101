.class Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$4;
.super Ljava/lang/Object;
.source "AudioTrackLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$4;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$4;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$600(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$4;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$600(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;->onAddAudioTrack()V

    .line 285
    :cond_0
    return-void
.end method
