.class Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$4;
.super Ljava/lang/Object;
.source "AWSBrowseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->initNavigate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$4;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$4;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->FLOAT:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;)V

    .line 219
    return-void
.end method
