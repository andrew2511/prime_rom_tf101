.class Lcom/google/android/gm/provider/AttachmentManager$4;
.super Ljava/lang/Object;
.source "AttachmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V
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
    .line 931
    iput-object p1, p0, Lcom/google/android/gm/provider/AttachmentManager$4;->this$0:Lcom/google/android/gm/provider/AttachmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager$4;->this$0:Lcom/google/android/gm/provider/AttachmentManager;

    invoke-static {v0}, Lcom/google/android/gm/provider/AttachmentManager;->access$000(Lcom/google/android/gm/provider/AttachmentManager;)V

    .line 934
    return-void
.end method
