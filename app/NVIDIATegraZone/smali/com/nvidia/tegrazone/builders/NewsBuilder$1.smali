.class final Lcom/nvidia/tegrazone/builders/NewsBuilder$1;
.super Ljava/lang/Object;
.source "NewsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/NewsBuilder;->buildNews(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$news:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

.field private final synthetic val$newsActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/NewsBuilder$1;->val$news:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/NewsBuilder$1;->val$newsActivity:Landroid/app/Activity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/NewsBuilder$1;->val$news:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getVideos()[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v1, v2

    .line 84
    .local v0, video:Lcom/nvidia/tegrazone/model/vo/VideoVO;
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/NewsBuilder$1;->val$newsActivity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/nvidia/tegrazone/model/vo/VideoVO;->videoURL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchVideo(Landroid/app/Activity;Ljava/lang/String;)V

    .line 85
    return-void
.end method
