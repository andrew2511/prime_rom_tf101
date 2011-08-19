.class Lcom/android/videoeditor/service/ApiService$2;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService;->processIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/videoeditor/service/VideoEditorProject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService;)V
    .locals 0
    .parameter

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$2;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/VideoEditorProject;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 2101
    invoke-virtual {p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastSaved()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastSaved()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2102
    const/4 v0, -0x1

    .line 2106
    :goto_0
    return v0

    .line 2103
    :cond_0
    invoke-virtual {p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastSaved()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastSaved()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2104
    const/4 v0, 0x0

    goto :goto_0

    .line 2106
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2095
    check-cast p1, Lcom/android/videoeditor/service/VideoEditorProject;

    .end local p1
    check-cast p2, Lcom/android/videoeditor/service/VideoEditorProject;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/videoeditor/service/ApiService$2;->compare(Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/VideoEditorProject;)I

    move-result v0

    return v0
.end method
