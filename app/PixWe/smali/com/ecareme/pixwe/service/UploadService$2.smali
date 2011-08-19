.class Lcom/ecareme/pixwe/service/UploadService$2;
.super Ljava/lang/Object;
.source "UploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/service/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/service/UploadService;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/service/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/service/UploadService$2;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/service/UploadService$2;)Lcom/ecareme/pixwe/service/UploadService;
    .locals 1
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService$2;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lcom/ecareme/pixwe/service/UploadService$2$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/service/UploadService$2$1;-><init>(Lcom/ecareme/pixwe/service/UploadService$2;)V

    .line 441
    invoke-virtual {v0}, Lcom/ecareme/pixwe/service/UploadService$2$1;->start()V

    .line 442
    return-void
.end method
