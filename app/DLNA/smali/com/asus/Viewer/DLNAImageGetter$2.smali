.class Lcom/asus/Viewer/DLNAImageGetter$2;
.super Ljava/lang/Object;
.source "DLNAImageGetter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/DLNAImageGetter;->completedCallback()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/DLNAImageGetter;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/DLNAImageGetter;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/asus/Viewer/DLNAImageGetter$2;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/asus/Viewer/DLNAImageGetter$2;->this$0:Lcom/asus/Viewer/DLNAImageGetter;

    invoke-static {v0}, Lcom/asus/Viewer/DLNAImageGetter;->access$000(Lcom/asus/Viewer/DLNAImageGetter;)Lcom/asus/Viewer/DLNAImageGetterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/asus/Viewer/DLNAImageGetterCallback;->completed()V

    .line 83
    return-void
.end method
