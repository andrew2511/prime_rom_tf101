.class Lcom/android/videoeditor/ProjectsActivity$ServiceListener;
.super Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
.source "ProjectsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/ProjectsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/ProjectsActivity;


# direct methods
.method private constructor <init>(Lcom/android/videoeditor/ProjectsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity$ServiceListener;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-direct {p0}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videoeditor/ProjectsActivity;Lcom/android/videoeditor/ProjectsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/videoeditor/ProjectsActivity$ServiceListener;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    return-void
.end method


# virtual methods
.method public onProjectsLoaded(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, projects:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    if-nez p2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity$ServiceListener;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/ProjectsActivity;->access$100(Lcom/android/videoeditor/ProjectsActivity;)Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->setProjects(Ljava/util/List;)V

    .line 84
    :cond_0
    return-void
.end method
