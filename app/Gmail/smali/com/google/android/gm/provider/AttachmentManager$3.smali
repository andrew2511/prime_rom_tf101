.class Lcom/google/android/gm/provider/AttachmentManager$3;
.super Ljava/lang/Object;
.source "AttachmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/AttachmentManager;->enqueueAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/AttachmentManager;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/AttachmentManager;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/gm/provider/AttachmentManager$3;->this$0:Lcom/google/android/gm/provider/AttachmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager$3;->this$0:Lcom/google/android/gm/provider/AttachmentManager;

    invoke-static {v0}, Lcom/google/android/gm/provider/AttachmentManager;->access$000(Lcom/google/android/gm/provider/AttachmentManager;)V

    .line 372
    return-void
.end method
