.class Lcom/asus/Viewer/ViewImage$1;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/Viewer/ViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/ViewImage;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/ViewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$1;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$1;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/asus/Viewer/ViewImage;->access$000(Lcom/asus/Viewer/ViewImage;I)V

    .line 163
    return-void
.end method
