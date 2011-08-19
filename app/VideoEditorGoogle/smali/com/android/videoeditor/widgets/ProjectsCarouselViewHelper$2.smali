.class Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$2;
.super Ljava/lang/Object;
.source "ProjectsCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->onCardLongPress(I[ILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

.field final synthetic val$id:I

.field final synthetic val$touchPosition:[I


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;I[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$2;->this$0:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

    iput p2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$2;->val$id:I

    iput-object p3, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$2;->val$touchPosition:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$2;->this$0:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

    iget v1, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$2;->val$id:I

    iget-object v2, p0, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$2;->val$touchPosition:[I

    invoke-static {v0, v1, v2}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->access$100(Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;I[I)V

    .line 372
    return-void
.end method
