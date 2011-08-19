.class Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$1;
.super Ljava/lang/Object;
.source "ProjectsCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->onCardSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$1;->this$0:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

    iput p2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$1;->this$0:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

    iget v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$1;->val$id:I

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->access$000(Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;I)V

    .line 357
    return-void
.end method
