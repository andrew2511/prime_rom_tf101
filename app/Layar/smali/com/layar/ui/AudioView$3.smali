.class Lcom/layar/ui/AudioView$3;
.super Ljava/lang/Object;
.source "AudioView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/AudioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/AudioView;


# direct methods
.method constructor <init>(Lcom/layar/ui/AudioView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/AudioView$3;->this$0:Lcom/layar/ui/AudioView;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/layar/ui/AudioView$3;->this$0:Lcom/layar/ui/AudioView;

    invoke-virtual {v0}, Lcom/layar/ui/AudioView;->stop()V

    .line 69
    return-void
.end method
