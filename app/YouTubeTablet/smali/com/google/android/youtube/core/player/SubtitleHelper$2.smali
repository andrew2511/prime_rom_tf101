.class Lcom/google/android/youtube/core/player/SubtitleHelper$2;
.super Ljava/lang/Object;
.source "SubtitleHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/SubtitleHelper;->onButtonClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/SubtitleTrack;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/SubtitleHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 163
    const-string v0, "error retrieving subtitle tracks"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$300(Lcom/google/android/youtube/core/player/SubtitleHelper;)V

    .line 166
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->onResponse(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p2, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$400(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0067

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 160
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$500(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v4}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$400(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1090011

    invoke-direct {v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$502(Lcom/google/android/youtube/core/player/SubtitleHelper;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    .line 154
    :goto_1
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$500(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/model/SubtitleTrack;

    const-string v4, ""

    iget-object v5, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v5}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$400(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0d0066

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 157
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$500(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-direct {v4, v2, p1}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 152
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$500(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_1

    .line 159
    .restart local v0       #i:I
    .restart local v1       #n:I
    :cond_2
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$2;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->showDialog()V

    goto :goto_0
.end method
