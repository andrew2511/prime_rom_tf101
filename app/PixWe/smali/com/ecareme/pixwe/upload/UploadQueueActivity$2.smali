.class Lcom/ecareme/pixwe/upload/UploadQueueActivity$2;
.super Ljava/lang/Object;
.source "UploadQueueActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/upload/UploadQueueActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$2;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$2;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->doTaggle()V

    .line 68
    return-void
.end method
