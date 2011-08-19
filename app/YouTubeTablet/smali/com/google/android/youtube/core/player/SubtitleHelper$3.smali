.class Lcom/google/android/youtube/core/player/SubtitleHelper$3;
.super Ljava/lang/Object;
.source "SubtitleHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/SubtitleHelper;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/SubtitleHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 177
    if-nez p2, :cond_0

    .line 178
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$002(Lcom/google/android/youtube/core/player/SubtitleHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$600(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/player/SubtitleOverlay;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setSubtitle(Lcom/google/android/youtube/core/model/Subtitle;)V

    .line 180
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$700(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setCC(Z)V

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$800(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "subtitles_language_code"

    iget-object v3, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$000(Lcom/google/android/youtube/core/player/SubtitleHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 189
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$500(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .line 183
    .local v0, selected:Lcom/google/android/youtube/core/model/SubtitleTrack;
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$002(Lcom/google/android/youtube/core/player/SubtitleHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requesting subtitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$200(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$100(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/async/ActivityCallback;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method
